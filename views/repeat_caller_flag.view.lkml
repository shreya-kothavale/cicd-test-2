# The name of this view in Looker is "Repeat Caller Flag"
view: repeat_caller_flag {
  #sql_table_name: `@{gcp_project}.@{dataset}.repeat_caller_flag`;;
  derived_table: {
    sql: ---Selecting all phone numbers and flowname, timestamp grouping by flowname
            with flowname_group as (SELECT session_id, phone_number,flowName, min(request_time) as request_time
            FROM `@{gcp_project}.@{dataset}.Query_level_extract`
            where phone_number is not null and flowName is not null
            and {% condition request_date %} request_time {% endcondition %}
            group by session_id,phone_number,flowName
            order by session_id,phone_number,flowName),
            ---Creating a new column next_timestamp which is next in partition group for timestamp difference
            flowname_lead as (
            select flowname_group.*,
            --adding a lead column over flowname to check timestamp difference
            LEAD(request_time) OVER (PARTITION BY phone_number,flowName ORDER BY request_time desc) AS next_timestamp
            from flowname_group),
            ---Finding which two consecutive timestamp has less than 24 hours difference
            ---Finding which caller who has called for same flow and storing 1 as a floag for the phone number
            repeat_caller as(select
            flowname_lead.*,
            case when timestamp_diff(request_time, next_timestamp, hour)<=24 then 1 else 0 end as repeat_call,
            max(case when timestamp_diff(request_time, next_timestamp, hour)<=24 then 1 else 0 end) over (partition by phone_number) as repeat_call_flag
            from flowname_lead)
            select
            repeat_caller.session_id,
            repeat_caller.phone_number,
            repeat_caller.flowName,
            repeat_caller.request_time,
            --repeat_caller.date,
            repeat_caller.repeat_call_flag
            from repeat_caller
            --where {% condition request_time %} request_date {% endcondition %}
            ;;
  }

  dimension: flowName {
    type: string
    sql: case when ${TABLE}.flowName ="address-change" then "Address Change"
              when ${TABLE}.flowName ="test-deposit" then "Test Deposit"
              else ${TABLE}.flowName end;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: repeat_call_flag {
    type: number
    sql: ${TABLE}.repeat_call_flag ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: total_repeat_call_flag {
  #   type: sum
  #   sql: ${repeat_call_flag} ;;
  # }

  measure: average_repeat_call_flag {
    type: average_distinct
    sql_distinct_key: ${phone_number} ;;
    sql: ${repeat_call_flag} ;;
    value_format: "0.00%"
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.
  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      hour_of_day,
      day_of_week,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  # dimension_group: request_time {
  #   type: time
  #   hidden: yes
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.request_time ;;
  # }

  measure: count {
    type: count
  }

#### metrics with embedded titles
  measure: average_repeat_call_flag_with_title {
    type: number
    sql: ${average_repeat_call_flag} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 4 | times: 100}}% <br><h4 style="margin-top:0; font-size: 16px;">Repeat Calls</h4>;;
  }
####
}

