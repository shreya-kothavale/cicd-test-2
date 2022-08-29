# Define the database connection to be used for this model.
connection: "@{connection_name}"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: tiaa_bpa_business_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "15 minutes"
}

persist_with: tiaa_bpa_business_analytics_default_datagroup

explore: cx_logs_extract {
  sql_always_where: ${channel} = "VOICE" and ${testmode}="LIVE";;
  join: cx_logs_session_level {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cx_logs_extract.session_id}=${cx_logs_session_level.session_id} ;;
  }

  join: repeat_caller_flag {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cx_logs_extract.session_id}=${repeat_caller_flag.session_id} ;;
  }

  # join: sankey_pagename {
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${cx_logs_extract.session_id}=${sankey_pagename.session_id} ;;
  # }

  # join: collapsible_tree_pagename {
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${cx_logs_extract.session_id}=${collapsible_tree_pagename.session_id} ;;
  # }

  join: next_user_query {
    type: left_outer
    relationship: one_to_one
    sql_on: ${cx_logs_extract.responseid}=${next_user_query.responseid} ;;
  }

  # join: collapsible_tree_pagename_ndt {
  #   type: left_outer
  #   relationship: one_to_one
  #   sql_on: ${cx_logs_extract.session_id}=${collapsible_tree_pagename_ndt.session_id} ;;
  # }

}
