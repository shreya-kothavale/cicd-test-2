- dashboard: agent_transfer_analytics
  title: Agent Transfer Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: LNgA3HV0T0wRouS9vTKKs8
  elements:
  - title: Total Agent Transfers
    name: Total Agent Transfers
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.total_agent_transfer]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Total Agent Transfers
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    note_text: Total number of calls transferred to an agent within the defined parameters
      of the filters
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 6
    col: 10
    width: 5
    height: 2
  - title: Agent Transfer Rate
    name: Agent Transfer Rate
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.agent_routing_rate]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [cx_logs_extract.count_session], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: cx_logs_extract.count_session, label: Percent
          of Cx Logs Extract Count Session, source_field: cx_logs_extract.count_session,
        table_calculation: percent_of_cx_logs_extract_count_session, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Agent Transfer Rate
    conditional_formatting: [{type: greater than, value: 0.75, background_color: '',
        font_color: "#cf3f2d", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.5, 0.75],
        background_color: '', font_color: "#e3ae0e", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.5, background_color: '',
        font_color: "#06a117", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#129fd9"
    waveHeight: 0.25
    waveCount: 1
    waveRiseTime: 1050
    waveAnimateTime: 1951
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#005495"
    waveOffset: 0.05
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    limit_displayed_rows: false
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
    note_text: The percentage of calls transferred to a live agent
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 8
    col: 10
    width: 5
    height: 2
  - title: Caller Requested Transfers
    name: Caller Requested Transfers
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.caller_requested_agent_transfer_rate]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [cx_logs_extract.count_session], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: cx_logs_extract.count_session, label: Percent
          of Cx Logs Extract Count Session, source_field: cx_logs_extract.count_session,
        table_calculation: percent_of_cx_logs_extract_count_session, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Caller Requested Transfers
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#129fd9"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1801
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#005495"
    waveOffset: 0
    textVertPosition: 0.52
    textSize: 0.88
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    limit_displayed_rows: false
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
    note_text: The percentage of callers requesting to transfer to an agent
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 10
    col: 0
    width: 7
    height: 2
  - title: Agent Transfers by Day
    name: Agent Transfers by Day
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_column
    fields: [cx_logs_session_level.total_agent_transfer, cx_logs_session_level.flowName,
      cx_logs_session_level.request_date]
    pivots: [cx_logs_session_level.flowName]
    fill_fields: [cx_logs_session_level.request_date]
    sorts: [cx_logs_session_level.flowName, cx_logs_session_level.request_date]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 763cbfc0-f23c-ba56-597b-b9ba6b4fc580
        label: Custom
        type: discrete
        colors:
        - "#129fd9"
        - "#005495"
        - "#E52592"
        - "#E8710A"
        - "#F9AB00"
        - "#7CB342"
        - "#9334E6"
        - "#80868B"
        - "#079c98"
        - "#A8A116"
        - "#EA4335"
        - "#FF8168"
      options:
        steps: 5
    y_axes: [{label: Total Agent Transfers, orientation: left, series: [{axisId: cx_logs_session_level.total_agent_transfer,
            id: cx_logs_session_level.total_agent_transfer, name: Total Agent Transfer}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Call Date
    series_types: {}
    series_colors:
      Address Change - cx_logs_session_level.total_agent_transfer: "#005495"
      give-a-moment - cx_logs_session_level.total_agent_transfer: "#129fd9"
    series_labels:
      address-change - cx_logs_session_level.total_agent_transfer: Address Change
      test-deposit - cx_logs_session_level.total_agent_transfer: Test Deposit
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The graph represents the total number of calls transfers per day
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_session_level.request_date
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Agent Transfer Breakdown
    name: Agent Transfer Breakdown
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_pie
    fields: [cx_logs_session_level.Planned_Unplanned, cx_logs_session_level.count_session]
    filters:
      cx_logs_session_level.Planned_Unplanned: "-No Agent Transfer"
    sorts: [cx_logs_session_level.count_session desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${cx_logs_session_level.count_session}",
        label: Total Sessions, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_sessions, _type_hint: number,
        is_disabled: true}]
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    start_angle: 45
    end_angle:
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_colors:
      Handled Queries: "#005495"
      Unhandled Queries: "#129fd9"
      'No': "#005495"
      'Yes': "#129fd9"
      Planned Agent Transfer: "#005495"
      UnPlanned Agent Transfer: "#129fd9"
    series_labels:
      'No': Unplanned Agent Transfer
      'Yes': Planned Agent Transfer
      UnPlanned Agent Transfer: Unplanned Agent Transfer
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
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: |-
      The chart provides the distribution of planned and unplanned agent transfers

      <u>Planned Agent Transfer</u>: Helps in understanding the total live agent transfers that happened as expected according to the designed conversation flow
      <br>
      <u>Unplanned Agent Transfer</u>: Helps in understanding the total live agent transfers that happened whenever the virtual agent is unable to understand the user request after certain attempts
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 4
    col: 15
    width: 9
    height: 8
  - title: Total Calls
    name: Total Calls
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.count_session]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Total Calls
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Total number of calls within the defined parameters of the filters
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 4
    col: 0
    width: 15
    height: 2
  - title: Deflected Rate
    name: Deflected Rate
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.containment_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: ''
    value_format: 0.00%
    conditional_formatting: [{type: greater than, value: 0.7499, background_color: '',
        font_color: "#06a117", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.4999,
          0.75], background_color: '', font_color: "#e3ae0e", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.5, background_color: '', font_color: "#cf3f2d", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    limit_displayed_rows: false
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
    note_text: The percentage of calls handled by the voice bot & planned agent transfer.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 10
    col: 7
    width: 8
    height: 2
  - title: Total Contained Calls
    name: Total Contained Calls
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.total_contained_calls]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Total Contained Calls
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The number of inbound calls completely handled by the voice bot.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 6
    col: 0
    width: 5
    height: 2
  - title: Total Hung-Up Calls
    name: Total Hung-Up Calls
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.total_hung_up_calls]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Total Hung-Up Calls
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The number of calls hung up in between without finishing the complete
      journey on the voice bot.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 6
    col: 5
    width: 5
    height: 2
  - title: Containment Rate
    name: Containment Rate
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.containment_rate_excluding_AT]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: ''
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Percentage of inbound calls completely handled by the voice bot, divided
      by the number of total incoming calls.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 8
    col: 0
    width: 5
    height: 2
  - title: Hung-Up Rate
    name: Hung-Up Rate
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.hung_up_rate]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#005495"
    single_value_title: Hung-Up Rate
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Percentage of calls hung up in between without finishing the complete
      journey on the voice bot.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 8
    col: 5
    width: 5
    height: 2
  - title: Cause of Agent Transfer [Page name]
    name: Cause of Agent Transfer [Page name]
    model: "@{model_name}"
    explore: cx_logs_extract
    type: looker_grid
    fields: [next_user_query.previous_page, next_user_query.count]
    filters:
      cx_logs_extract.agentTransfer_flag: 'Yes'
    sorts: [next_user_query.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
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
      next_user_query.count: Frequency
      next_user_query.previous_page: Page Name
    series_cell_visualizations:
      next_user_query.count:
        is_active: true
        palette:
          palette_id: 23f13e3d-19e5-e50f-8eef-3d694d0877b4
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#95D9F7"
          - "#005495"
    header_font_color: "#ffffff"
    header_background_color: "#135280"
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Page at which the users are transferred to the live agent.
    listen:
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Navigation
    name: Navigation
    model: "@{model_name}"
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.dashboard_navigation_agent_transfer_analytics]
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
      Use Case: cx_logs_extract.flowName
      Date: cx_logs_extract.request_date
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