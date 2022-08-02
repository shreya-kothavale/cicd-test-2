view: next_user_query {
  derived_table: {
    sql:
    SELECT
    responseid,
    LEAD(LOWER(user_query)) OVER (PARTITION BY session_id ORDER BY request_time ASC) AS next_user_query,
    LEAD(pagename) OVER (PARTITION BY session_id ORDER BY request_time DESC) AS previous_page,
    ---- address redaction regexp
    IF(pagename IN ('address-confirmation', 'address-override-confirmation', 'confirm-api-response-address','confirm-address-final'),
       REGEXP_REPLACE(
         REGEXP_REPLACE(
           REGEXP_REPLACE(
             REGEXP_REPLACE(
               bot_response,
               r"identified address as per your input is\s*([\s\S]*?)\s*Did we get that right",
               "identified address as per your input is $address_redacted Did we get that right"
             ),
             r"address (as|is)\s*([\s\S]*?)\s*Is that correct",
             "address as $address_redacted Is that correct"
           ),
           r"address we have captured is\s*([\s\S]*?)\s*Is that correct",
           "address we have captured is $address_redacted Is that correct"
         ),
         r"address is\s*([\s\S]*?)\s*Did we get that right",
         "address is $address_redacted Did we get that right"
       ), bot_response
     )as redacted_bot_response,
    ----
    request_time
    FROM `@{gcp_project}.@{dataset}.Query_level_extract`
    WHERE {% condition request_date %} request_time {% endcondition %}
    ;;
  }

  dimension: bucket_next_user_query {
    label: "Next User Request"
    type: string
    sql: case when REGEXP_CONTAINS(${next_user_query},"yes") or REGEXP_CONTAINS(${next_user_query},"yeah")
        or REGEXP_CONTAINS(${next_user_query},"yep") or REGEXP_CONTAINS(${next_user_query},"yup") then "yes"
          when REGEXP_CONTAINS(${next_user_query},"no ") then "no"
          else ${next_user_query} end
    ;;
  }

  dimension: next_user_query {
    type: string
    sql: ${TABLE}.next_user_query ;;
  }

  dimension: previous_page {
    label: "Page Name"
    type: string
    sql: ${TABLE}.previous_page ;;
  }

  dimension: redacted_bot_response {
    label: "Bot Response"
    type: string
    sql: ${TABLE}.redacted_bot_response ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      millisecond,
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

  dimension: responseid {
    type: string
    sql: ${TABLE}.responseid ;;
    primary_key: yes
  }

  measure: count {
    type: count
  }

}
