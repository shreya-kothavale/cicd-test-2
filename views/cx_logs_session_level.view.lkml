# The name of this view in Looker is "Cx Logs Session Level"
view: cx_logs_session_level {
  sql_table_name: `@{gcp_project}.@{dataset}.Session_level_extract`;;

  dimension: conversation_length_in_seconds {
    type: number
    sql: ${TABLE}.conversation_length_in_seconds ;;
  }

  dimension: agentTransfer_flag {
    type: number
    sql: ${TABLE}.agentTransfer_flag ;;
  }

  dimension: requested_agent_flag {
    type: number
    sql: ${TABLE}.requested_agent_flag ;;
  }

  dimension: caller_requested_agent_transfer {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${requested_agent_flag} = 1 then 1 else 0 end;;
  }

  dimension: plannedAgentTransfer_flag {
    type: number
    hidden: yes
    sql: ${TABLE}.plannedAgentTransfer_flag ;;
  }

  dimension: flowName {
    type: string
    sql: case when ${TABLE}.flowName ="address-change" then "Address Change"
              when ${TABLE}.flowName ="test-deposit" then "Test Deposit"
              else ${TABLE}.flowName end ;;
  }

  dimension: planned_flag {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 1 then 1 else 0 end ;;
  }

  dimension: unplanned_flag {
    type: number
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 0 then 1 else 0 end ;;
  }

  dimension: flow_count {
    type: number
    sql: ${TABLE}.flow_count ;;
  }

  dimension: flowEnd_count {
    type: number
    sql: ${TABLE}.flowEnd_count ;;
  }

  dimension: containment_flag {
    type: number
    sql: case when ${flow_count} = ${flowEnd_count} and ${flow_count} != 0
      and ${unplanned_flag}!=1 then 1 else 0 end ;;
  }

  dimension: containment_flag_excluding_AT {
    type: number
    sql:case when ${flow_count} = ${flowEnd_count} and ${flow_count} != 0 and ${agentTransfer_flag}=0
      then 1 else 0 end ;;
  }

  dimension: hung_up_flag {
    type: number
    sql: case when ${agentTransfer_flag}=0 and ${containment_flag_excluding_AT}=0 then 1 else 0 end ;;
  }

  dimension: count_of_msg {
    type: number
    sql: ${TABLE}.count_of_msg ;;
  }

  dimension: entry_intent {
    label: "Entry Action"
    type: string
    sql: ${TABLE}.entry_intent ;;
  }

  dimension: exit_intent {
    label: "Exit Action"
    type: string
    sql: ${TABLE}.exit_intent ;;
  }

  dimension: entry_page {
    type: string
    sql: ${TABLE}.entry_page ;;
  }

  dimension: exit_page {
    type: string
    sql: ${TABLE}.exit_page ;;
  }

# dimension: last_user_query {
#   type: string
#   sql: ${TABLE}.last_user_query ;;
# }

  dimension: sentiment_score_session {
    type: number
    sql: ${TABLE}.average_sentiment_score;;
  }

  dimension: Planned_Unplanned {
    label: "Agent Transfer Breakdown"
    type: string
    sql: case when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 1 then "Planned Agent Transfer"
            when ${agentTransfer_flag} = 1 and ${plannedAgentTransfer_flag} = 0 then "UnPlanned Agent Transfer"
            else "No Agent Transfer" end ;;
  }

  dimension: second_last_exit_intent {
    label: "Exit Action Breakdown"
    type: string
    sql: ${TABLE}.second_last_exit_intent ;;
  }

  dimension: second_last_exit_page {
    label: "Exit Page Breakdown"
    type: string
    sql: ${TABLE}.second_last_exit_page ;;
  }

#change session_date to request_date
  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.session_date_time ;;
  }

  dimension: hour_bucket {
    type: string
    case: {
      when: {
        sql: ${request_hour_of_day}=0;;
        label: "12AM - 01AM"
      }
      when: {
        sql: ${request_hour_of_day}=1;;
        label: "01AM - 02AM"
      }
      when: {
        sql: ${request_hour_of_day}=2;;
        label: "02AM - 03AM"
      }
      when: {
        sql: ${request_hour_of_day}=3;;
        label: "03AM - 04AM"
      }
      when: {
        sql: ${request_hour_of_day}=4;;
        label: "04AM - 05AM"
      }
      when: {
        sql: ${request_hour_of_day}=5;;
        label: "05AM - 06AM"
      }
      when: {
        sql: ${request_hour_of_day}=6;;
        label: "06AM - 07AM"
      }
      when: {
        sql: ${request_hour_of_day}=7;;
        label: "07AM - 08AM"
      }
      when: {
        sql: ${request_hour_of_day}=8;;
        label: "08AM - 09AM"
      }
      when: {
        sql: ${request_hour_of_day}=9;;
        label: "09AM - 10AM"
      }
      when: {
        sql: ${request_hour_of_day}=10;;
        label: "10AM - 11AM"
      }
      when: {
        sql: ${request_hour_of_day}=11;;
        label: "11AM - 12AM"
      }
      when: {
        sql: ${request_hour_of_day}=12;;
        label: "12AM - 01PM"
      }
      when: {
        sql: ${request_hour_of_day}=13;;
        label: "01PM - 02PM"
      }
      when: {
        sql: ${request_hour_of_day}=14;;
        label: "02PM - 03PM"
      }
      when: {
        sql: ${request_hour_of_day}=15;;
        label: "03PM - 04PM"
      }
      when: {
        sql: ${request_hour_of_day}=16;;
        label: "04PM - 05PM"
      }
      when: {
        sql: ${request_hour_of_day}=17;;
        label: "05PM - 06PM"
      }
      when: {
        sql: ${request_hour_of_day}=18;;
        label: "06PM - 07PM"
      }
      when: {
        sql: ${request_hour_of_day}=19;;
        label: "07PM - 08PM"
      }
      when: {
        sql: ${request_hour_of_day}=20;;
        label: "08PM - 09PM"
      }
      when: {
        sql: ${request_hour_of_day}=21;;
        label: "09PM - 10PM"
      }
      when: {
        sql: ${request_hour_of_day}=22;;
        label: "10PM - 11PM"
      }
      when: {
        sql: ${request_hour_of_day}=23;;
        label: "11PM - 12AM"
      }

    }
  }

  dimension: duration_bucket{
    label: "Call Duration"
    type: string
    case: {
      when: {
        sql: ${conversation_length_in_seconds}<=60;;
        label: "<1 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>60 and ${conversation_length_in_seconds}<=180;;
        label: "1-3 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>180 and ${conversation_length_in_seconds}<=300;;
        label: "3-5 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>300 and ${conversation_length_in_seconds}<=420;;
        label: "5-7 min"
      }
      when: {
        sql: ${conversation_length_in_seconds}>420 ;;
        label: ">7 min"
      }
    }
  }


  dimension: session_id {
    label: "Call ID"
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: avg_duration {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql:(${conversation_length_in_seconds}/86400.0) ;;
    value_format: "[mm]\" m \"ss\" s\""
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_session {
    label: "Total calls"
    type: count_distinct
    sql:${session_id}  ;;
  }

  measure: avg_query_per_session {
    type: number
    sql: sum(${count_of_msg})/nullif(count(Distinct ${session_id}),0) ;;
    value_format: "0"
  }

  measure: average_sentiment_score {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: trunc(round(${TABLE}.average_sentiment_score,3),3) ;;
    value_format: "0.000"
  }



  measure: total_planned_agent {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${planned_flag} ;;
  }

  measure: total_unplanned_agent {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${unplanned_flag} ;;
  }

  measure: total_unplanned_agent_transfer_percent {
    type: number
    sql: round((${total_unplanned_agent}/${total_agent_transfer})*100,2) ;;
  }

  measure: total_agent_transfer {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${agentTransfer_flag} ;;
  }

  measure: total_contained_calls {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${containment_flag_excluding_AT} ;;
  }

  measure: total_hung_up_calls {
    type: sum_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${hung_up_flag} ;;
  }

  measure: containment_rate {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql:${containment_flag} ;;
    value_format: "0.00%"
  }

  measure: containment_rate_excluding_AT {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${containment_flag_excluding_AT} ;;
    value_format: "0.00%"
  }

  measure: hung_up_rate {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${hung_up_flag} ;;
    value_format: "0.00%"
  }

  measure: agent_routing_rate {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql: ${agentTransfer_flag} ;;
    value_format: "0.00%"
  }

#### metrics with embedded titles
  measure: containment_rate_with_title {
    type: number
    sql: ${containment_rate} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 4 | times: 100}}% <br><h4 style="margin-top:0; font-size: 16px;">Containment Rate</h4>;;
  }

  measure: agent_routing_rate_with_title {
    type: number
    sql: ${agent_routing_rate} ;;
    html: {{value | number_with_delimiter | divided_by: 1 | round: 4 | times: 100}}% <br><h4 style="margin-top:0; font-size: 16px;">Agent Transfer Rate</h4>;;
  }
####

  measure: caller_requested_agent_transfer_rate{
    type: average_distinct
    sql_distinct_key: ${session_id};;
    sql: ${caller_requested_agent_transfer} ;;
    value_format: "0.00%"
  }

}
