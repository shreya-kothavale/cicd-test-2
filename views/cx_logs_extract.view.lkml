# The name of this view in Looker is "Cx Logs Extract"
view: cx_logs_extract {
  sql_table_name: `@{gcp_project}.@{dataset}.Query_level_extract`;;


  dimension: bot_response {
    type: string
    sql: ${TABLE}.bot_response ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.Intent_triggered ;;
  }

  dimension: intent_for_logs {
    label: "Action"
    type: string
    sql: case when ${matchtype}="INTENT" or ${matchtype}="DIRECT_INTENT" then ${intent_triggered} else ${matchtype} end ;;
  }

  dimension: phone_number{
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: intentdetectionconfidence {
    type: number
    sql: ${TABLE}.intentdetectionconfidence ;;
  }

  dimension: matchtype {
    type: string
    sql: ${TABLE}.matchtype ;;
  }


  dimension: pageid {
    type: string
    sql: ${TABLE}.pageid ;;
  }

  dimension: pagename {
    type: string
    sql: ${TABLE}.pagename ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: age {
    type: string
    sql: safe_cast(safe_cast(${TABLE}.age as INT64) as STRING) ;;
  }

  dimension: apienvironment {
    type: string
    sql: ${TABLE}.apienvironment ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: employer {
    type: string
    sql: ${TABLE}.employer ;;
  }

  dimension: testmode {
    type: string
    sql: ${TABLE}.testmode ;;
  }

  dimension: tenure {
    type: string
    sql: ${TABLE}.tenure ;;
  }

  dimension: corppin {
    type: string
    sql: safe_cast(safe_cast(${TABLE}.corppin as INT64)as STRING) ;;
  }

  dimension: interactionid {
    type: string
    sql: ${TABLE}.interactionid ;;
  }

  dimension: tfn {
    type: string
    sql: ${TABLE}.tfn ;;
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

  dimension: date {
    type: date
    sql:${TABLE}.request_time  ;;
  }

  dimension_group: response {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.response_time ;;
  }

  dimension: time_bucket {
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


  dimension: responseid {
    type: string
    sql: ${TABLE}.responseid ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentiment_magnitude ;;
  }

  dimension: agentTransfer_flag {
    type: yesno
    sql: ${TABLE}.agentTransfer_flag ;;
  }

  dimension: flowEnd {
    type: yesno
    sql: ${TABLE}.flowEnd ;;
  }

  dimension: flowName {
    type: string
    sql: case when ${TABLE}.flowName ="address-change" then "Address Change"
              when ${TABLE}.flowName ="test-deposit" then "Test Deposit"
              else ${TABLE}.flowName end;;
  }

  dimension: plannedAgentTransfer_flag {
    type: yesno
    sql: ${TABLE}.plannedAgentTransfer_flag ;;
  }

  measure: avg_sentiment_score {
    type: average
    sql: trunc(round(ifnull(${TABLE}.sentiment_score,0.001),3),3) ;;
    value_format: "0.000"
  }

  dimension: session_id {
    label: "Call ID"
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: conversation_journey {
    label: "Conversation Journey"
    type: string
    sql: ${TABLE}.interactionid ;;
    html:  <a target="new"
          href="https://tiaa.cloud.looker.com/dashboards/106?Interaction+ID={{ value }}&Call+ID={{cx_logs_extract.session_id._value}}"><button style="
                flex: 1 1 auto;
                margin: 10px;
                padding: 7px;
                border: none;
                background: none;
                text-align: center;
                transition: 0.5s;
                background-size: 200% auto;
                color: white;
                box-shadow: 0 0 20px #eee;
                border-radius: 7px;
                background-image: linear-gradient(to right, #005495 0%, #348bbc 51%,  #19a3dc 100%)
                ">Click Here</button></a> ;;
                # html: <a target="new" href="https://tiaa.cloud.looker.com/dashboards/28?Session+ID={{ value }}"><img src="https://media1.giphy.com/media/hHjOpLaawe5rvWvcTn/giphy.gif" width="100%" height="100%"></a> ;;
    }

    dimension: user_query {
      label: "User Request"
      type: string
      sql: ${TABLE}.user_query ;;
    }

    dimension: va_offer_rate {
      type: string
      sql: case when ${matchtype}="NO_MATCH" then "No Match" else "Match" end;;
      #change name to success rate
    }

    dimension: query_breakdown {
      label: "User Request Breakdown"
      type: string
      sql: case when ${matchtype}="NO_MATCH" then "Unhandled Queries" else "Handled Queries" end;;
    }


    measure: count_session {
      label: "Total calls"
      type: count_distinct
      sql:${session_id}  ;;
    }

    measure: avg_session_per_day {
      type: number
      sql:count(distinct ${session_id})/nullif(count(distinct ${request_date}),0)  ;;
      value_format: "0"
    }

    measure: avg_query_per_session {
      type: number
      sql: count(${responseid})/nullif(count(Distinct ${session_id}),0) ;;
      value_format: "0"
    }

    measure: avg_confidence_score {
      type: average
      sql: ${intentdetectionconfidence} ;;
      value_format: "0.00"
    }

    measure: agent_routing_rate {
      type: number
      sql: count(distinct (case when ${intent_triggered}="Agent" then ${session_id} end))/
        nullif(count(distinct ${session_id}),0);;
      value_format: "0.00%"
    }

    # measure: va_offer_rate_intent {
    #   type: number
    #   sql: count(case when ${matchtype}="INTENT" then ${responseid} end)/ nullif(count(${responseid}),0) ;;
    #   value_format: "0.00%"
    # }

    # measure: va_offer_rate_event {
    #   type: number
    #   sql: count(case when ${matchtype}="EVENT" then ${responseid} end)/ nullif(count(${responseid}),0) ;;
    #   value_format: "0.00%"
    # }

    # measure: va_offer_rate_no_input {
    #   type: number
    #   sql: count(case when ${matchtype}="NO_INPUT" then ${responseid} end)/ nullif(count(${responseid}),0) ;;
    #   value_format: "0.00%"
    # }

    # measure: va_offer_rate_no_match {
    #   type: number
    #   sql: count(case when ${matchtype}="NO_MATCH" then ${responseid} end)/ nullif(count(${responseid}),0) ;;
    #   value_format: "0.00%"
    # }
# remove va_offer_rate breakdowns

    measure: influenced_agent {
      type: number
      sql: count(distinct case when ${intent_triggered}="Agent" then ${session_id} end)/ nullif(count(distinct ${session_id}),0) ;;
      value_format: "0.00%"
    }

    measure: count {
      type: count
      drill_fields: []
    }

    #### metrics with title embedded
    measure: va_offer_rate_with_title{
      type: percent_of_total
      sql: ${count} ;;
      html: {{value | number_with_delimiter | divided_by: 1 | round: 2 | times: 1}}% <br><h4 style="margin-top:0; font-size: 16px;">Voice Bot Success Rate</h4>;;
    }
    ####

    #### measure for dashboard menu with report level filter
    measure: dashboard_navigation_voice_bot_performance {
      type: string
      sql: ${count} ;;
      html:
        <table style="width:100%;"><tr>
          <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
            <h1 style="color:#005495;" > Voice Bot Performance Analytics </h1>
            <div style="letter-spacing:0.3px;line-height:1;">

        <font color="#129fd9" size="2"> Voice Bot Performance and Call Analytics &nbsp;</font>

        <a href="/dashboards/test_bpa_model::user_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; User Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::action_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Action Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::agent_transfer_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Agent Transfer Analytics &nbsp;</font></a>

        </div>
        </td>
        <td style="padding-right:5%;">
        <img width="142" height="142"  align="right" src="https://www.tiaa.org/public/images/694/7204/50000506947204/TIAA_logo_header_480_1x.svg"/>
        </td>
        </tr></table>;;
    }

    measure: dashboard_navigation_user_analytics {
      type: string
      sql: ${count} ;;
      html:
        <table style="width:100%;"><tr>
          <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
            <h1 style="color:#005495;" > Voice Bot Performance Analytics </h1>
            <div style="letter-spacing:0.3px;line-height:1;">

        <a href="https://tiaa.cloud.looker.com/dashboards/test_bpa_model::voice_bot_performance_and_call_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2"> Voice Bot Performance and Call Analytics &nbsp;</font></a>

        <font color="#129fd9" size="2">|&nbsp; User Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::action_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Action Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::agent_transfer_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Agent Transfer Analytics &nbsp;</font></a>

        <br/>
        </div>
        </td>
        <td style="padding-right:5%;">
        <img width="142" height="142"  align="right" src="https://www.tiaa.org/public/images/694/7204/50000506947204/TIAA_logo_header_480_1x.svg"/>
        </td>
        </tr></table>;;
    }

    measure: dashboard_navigation_action_analytics {
      type: string
      sql: ${count} ;;
      html:
        <table style="width:100%;"><tr>
          <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
            <h1 style="color:#005495;" > Voice Bot Performance Analytics </h1>
            <div style="letter-spacing:0.3px;line-height:1;">

        <a href="https://tiaa.cloud.looker.com/dashboards/test_bpa_model::voice_bot_performance_and_call_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2"> Voice Bot Performance and Call Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::user_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; User Analytics &nbsp;</font></a>

        <font color="#129fd9" size="2">|&nbsp; Action Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::agent_transfer_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Agent Transfer Analytics &nbsp;</font></a>

        <br/>
        </div>
        </td>
        <td style="padding-right:5%;">
        <img width="142" height="142"  align="right" src="https://www.tiaa.org/public/images/694/7204/50000506947204/TIAA_logo_header_480_1x.svg"/>
        </td>
        </tr></table>;;
    }

    measure: dashboard_navigation_agent_transfer_analytics {
      type: string
      sql: ${count} ;;
      html:
      <table style="width:100%;"><tr>
          <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
            <h1 style="color:#005495;" > Voice Bot Performance Analytics </h1>
            <div style="letter-spacing:0.3px;line-height:1;">

        <a href="https://tiaa.cloud.looker.com/dashboards/test_bpa_model::voice_bot_performance_and_call_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2"> Voice Bot Performance and Call Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::user_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; User Analytics &nbsp;</font></a>

        <a href="/dashboards/test_bpa_model::action_analytics?Date={{ _filters['cx_logs_extract.request_date'] | url_encode }}&Action={{ _filters['cx_logs_extract.intent_triggered'] | url_encode }}&Age={{ _filters['cx_logs_extract.age'] | url_encode }}&Employer={{ _filters['cx_logs_extract.employer'] | url_encode }}&Gender={{ _filters['cx_logs_extract.gender'] | url_encode }}&Tenure={{ _filters['cx_logs_extract.tenure'] | url_encode }}&Use+Case={{ _filters['cx_logs_extract.flowName'] | url_encode }}&Test+Mode={{ _filters['cx_logs_extract.testmode'] | url_encode }}">
        <font color="#005495" size="2">|&nbsp; Action Analytics &nbsp;</font></a>

        <font color="#129fd9" size="2">|&nbsp; Agent Transfer Analytics &nbsp;</font></a>

        <br/>
        </div>
        </td>
        <td style="padding-right:5%;">
        <img width="142" height="142"  align="right" src="https://www.tiaa.org/public/images/694/7204/50000506947204/TIAA_logo_header_480_1x.svg"/>
        </td>
        </tr></table>;;
    }

    ####
  }