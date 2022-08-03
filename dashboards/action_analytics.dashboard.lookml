- dashboard: action_analytics
  title: Action Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: HAkjpf9adVkxgSVJZ2rz3w
  elements:
  - title: Action Analysis
    name: Action Analysis
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_grid
    fields: [cx_logs_extract.count, cx_logs_extract.count_session, cx_logs_extract.avg_confidence_score,
      cx_logs_extract.avg_sentiment_score, cx_logs_extract.intent_for_logs]
    sorts: [cx_logs_extract.count desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      cx_logs_extract.count: Frequency
      cx_logs_extract.count_session: Total Calls
      cx_logs_extract.avg_confidence_score: Average Confidence Score
      cx_logs_extract.avg_sentiment_score: Average Sentiment Score
      cx_logs_extract.intent_triggered: Intent
      cx_logs_extract.intent_for_logs: Action
    series_column_widths:
      cx_logs_extract.intent_triggered: 150
    series_cell_visualizations:
      cx_logs_extract.count:
        is_active: false
    series_text_format:
      cx_logs_extract.count:
        align: right
      cx_logs_extract.count_session:
        align: right
      cx_logs_extract.avg_confidence_score:
        align: right
      cx_logs_extract.avg_sentiment_score:
        align: right
    header_font_color: "#ffffff"
    header_background_color: "#005495"
    conditional_formatting: [{type: between, value: [-0.334, 0.332], background_color: "#ffed6f",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]}, {type: greater
          than, value: 0.332, background_color: "#7FCDAE", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]},
      {type: less than, value: -0.333, background_color: "#EE7772", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {
            id: cff39f08-c838-2efc-684f-c4df2ee7911d, label: Custom, type: continuous,
            stops: [{color: "#cef0ff", offset: 0}, {color: "#0d9ad3", offset: 50},
              {color: "#226aa3", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: middle}, max: {type: maximum}}, mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [cx_logs_extract.count, cx_logs_extract.count_session]}, {type: greater
          than, value: 0.8499999, background_color: "#7FCDAE", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {
            id: 783e3869-3657-9e56-362f-bcf0e7668fce, label: Custom, type: continuous,
            stops: [{color: "#ff9475", offset: 0}, {color: "#ffe56c", offset: 50},
              {color: "#5ae899", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: middle}, max: {type: maximum}}, mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [cx_logs_extract.avg_confidence_score]}, {type: between, value: [
          0.4999999, 0.8499999], background_color: "#FFED6F", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_confidence_score]},
      {type: less than, value: 0.5, background_color: "#EE7772", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_confidence_score]}]
    series_value_format:
      cx_logs_extract.avg_confidence_score:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The table gives the analysis for each action.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 10
    col: 0
    width: 14
    height: 6
  - title: User Response
    name: User Response
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_grid
    fields: [cx_logs_extract.user_query, cx_logs_extract.count, cx_logs_extract.avg_confidence_score]
    sorts: [cx_logs_extract.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      cx_logs_extract.count: Frequency
      cx_logs_extract.user_query: User Request
    series_cell_visualizations:
      cx_logs_extract.count:
        is_active: true
        palette:
          palette_id: a34e9c99-57fd-1916-9715-98c73a6fdbf5
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#cef0ff"
          - "#005495"
    series_text_format:
      cx_logs_extract.avg_confidence_score:
        align: left
    header_font_color: "#ffffff"
    header_background_color: "#005495"
    conditional_formatting: [{type: greater than, value: 0.8499999, background_color: "#7FCDAE",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: b944aea7-3dbd-998f-f8bc-b6f88a3c3c9e, label: Custom, type: continuous,
            stops: [{color: "#ff9475", offset: 0}, {color: "#ffe56c", offset: 50},
              {color: "#5ae899", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [cx_logs_extract.avg_confidence_score]},
      {type: between, value: [0.4999999, 0.8499999], background_color: "#FFED6F",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [cx_logs_extract.avg_confidence_score]}, {type: less
          than, value: 0.5, background_color: "#EE7772", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_confidence_score]}]
    series_value_format:
      cx_logs_extract.avg_confidence_score:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The table provides the actual response provided by the caller.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 16
    col: 0
    width: 24
    height: 6
  - title: List of Interaction IDs, Call IDs and Journeys
    name: List of Interaction IDs, Call IDs and Journeys
    model: "@{model_name}"
    explore: cx_logs_extract
    type: table
    fields: [cx_logs_extract.interactionid, cx_logs_extract.session_id, cx_logs_extract.conversation_journey]
    sorts: [cx_logs_extract.session_id]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      cx_logs_extract.customer_journey: Conversation Journey
      cx_logs_extract.session_id: Call ID
      cx_logs_extract.interactionid: Interaction ID
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_font_color: "#ffffff"
    header_background_color: "#005495"
    series_types: {}
    defaults_version: 1
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 10
    col: 14
    width: 10
    height: 6
  - title: Initial Page Capture
    name: Initial Page Capture
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_bar
    fields: [cx_logs_session_level.count_session, cx_logs_session_level.entry_page]
    sorts: [cx_logs_session_level.count_session desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Calls, orientation: bottom, series: [{axisId: cx_logs_session_level.count_session,
            id: cx_logs_session_level.count_session, name: Total Sessions}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Entry Page
    series_types: {}
    series_colors:
      cx_logs_session_level.count_session: "#005495"
    series_labels:
      cx_logs_session_level.count_session: Total Calls
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: Initial page captured on a call.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 0
    width: 8
    height: 6
  - title: Final Page Captured [Top 10]
    name: Final Page Captured [Top 10]
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_bar
    fields: [cx_logs_session_level.count_session, cx_logs_session_level.exit_page]
    sorts: [cx_logs_session_level.count_session desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Calls, orientation: bottom, series: [{axisId: cx_logs_session_level.count_session,
            id: cx_logs_session_level.count_session, name: Total Sessions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Exit Page
    series_types: {}
    series_colors:
      cx_logs_session_level.count_session: "#005495"
    series_labels:
      cx_logs_session_level.count_session: Total Calls
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: Final page captured on a call.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 8
    width: 8
    height: 6
  - title: Step Before Final Page [Top 10]
    name: Step Before Final Page [Top 10]
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_bar
    fields: [cx_logs_session_level.count_session, cx_logs_session_level.second_last_exit_page]
    sorts: [cx_logs_session_level.count_session desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Exit Page Breakdown
    series_types: {}
    series_colors:
      cx_logs_session_level.count_session: "#005495"
    series_labels:
      cx_logs_session_level.count_session: Total Calls
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Page prior to the prompt that results in the call exiting the Voice
      Bot.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 16
    width: 8
    height: 6
  - title: Navigation
    name: Navigation
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.dashboard_navigation_action_analytics]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: "@{model_name}"
    explore: cx_logs_extract
    listens_to_filters: []
    field: cx_logs_extract.request_date
  - name: Use Case
    title: Use Case
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: "@{model_name}"
    explore: cx_logs_extract
    listens_to_filters: [Date]
    field: cx_logs_extract.flowName