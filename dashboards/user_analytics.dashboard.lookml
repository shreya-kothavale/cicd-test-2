- dashboard: user_analytics
  title: User Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: b0jr3pw6zwoqXihNCHY81P
  elements:
  - title: Voice Bot Average Sentiment Score
    name: Voice Bot Average Sentiment Score
    model: test_bpa_model
    explore: cx_logs_extract
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [cx_logs_extract.avg_sentiment_score]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 50
    spinner_length: 115
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: -1
    range_max: 1
    value_label_type: value
    value_label_font: 12
    value_label_padding: 60
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_label_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#243d7f"
    range_color: "#000000"
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
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
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Average user sentiment across all requests. Sentiment ranges from -1
      to 1 with -1 being highly negative and 1 being highly positive. A sentiment
      on the negative side indicates that the customer is not satisfied overall with
      the interaction.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 15
    width: 9
    height: 6
  - title: Average Sentiment vs Weekdays
    name: Average Sentiment vs Weekdays
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_area
    fields: [cx_logs_extract.request_day_of_week, cx_logs_extract.avg_sentiment_score]
    fill_fields: [cx_logs_extract.request_day_of_week]
    sorts: [cx_logs_extract.request_day_of_week]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Average Sentiment Score, orientation: left, series: [{axisId: cx_logs_extract.avg_sentiment_score,
            id: cx_logs_extract.avg_sentiment_score, name: Avg Sentiment Score}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of Week
    font_size: '12'
    series_types: {}
    series_colors:
      cx_logs_extract.avg_sentiment_score: "#005495"
    series_labels: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    hidden_fields: []
    hidden_points_if_no: []
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    note_state: collapsed
    note_display: hover
    note_text: Average sentiment trend over the week. It helps to understand how sentiment
      score is fluctuating on a weekly basis.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Total Requests
    name: Total Requests
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.count]
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
    note_text: Total number of Requests
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 0
    width: 5
    height: 6
  - title: Unhandled Request Analysis
    name: Unhandled Request Analysis
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_grid
    fields: [cx_logs_extract.user_query, cx_logs_extract.count, cx_logs_extract.count_session,
      cx_logs_extract.avg_sentiment_score]
    filters:
      cx_logs_extract.matchtype: '"NO_MATCH"'
    sorts: [cx_logs_extract.count desc]
    limit: 500
    column_limit: 50
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
    conditional_formatting_include_nulls: true
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      cx_logs_extract.count: Frequency
      cx_logs_extract.count_session: Total Calls
      cx_logs_extract.avg_sentiment_score: Average Sentiment Score
      cx_logs_extract.user_query: User Requests
    series_cell_visualizations:
      cx_logs_extract.count:
        is_active: false
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      cx_logs_extract.avg_sentiment_score:
        is_active: false
        value_display: true
        palette:
          palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    series_text_format:
      cx_logs_extract.count:
        align: right
    header_font_color: "#f8fff8"
    header_background_color: "#005495"
    conditional_formatting: [{type: between, value: [-0.334, 0.332], background_color: "#ffed6f",
        font_color: '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {steps: 5, reverse: true}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]},
      {type: greater than, value: 0.332, background_color: "#7FCDAE", font_color: '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]},
      {type: less than, value: -0.333, background_color: "#EE7772", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.avg_sentiment_score]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {
            id: 95aff805-0e26-39e3-aea2-946a11718f63, label: Custom, type: continuous,
            stops: [{color: "#cef0ff", offset: 0}, {color: "#0d9ad3", offset: 50},
              {color: "#226aa3", offset: 100}]}, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_extract.count,
          cx_logs_extract.count_session]}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: The table gives the analysis of the unhandled requests.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 24
    col: 0
    width: 14
    height: 7
  - title: User Requests Breakdown
    name: User Requests Breakdown
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_pie
    fields: [cx_logs_extract.query_breakdown, cx_logs_extract.count]
    sorts: [cx_logs_extract.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${cx_logs_extract.count}",
        label: Total Requests, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_requests, _type_hint: number}]
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_colors:
      Handled Queries: "#005495"
      Unhandled Queries: "#129fd9"
    series_labels:
      Handled Queries: Handled Requests
      Unhandled Queries: Unhandled Requests
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
    hidden_fields: [cx_logs_extract.count]
    note_state: collapsed
    note_display: hover
    note_text: |-
      Provides the distribution of the handled and unhandled user requests by the Voice Bot
      <b>Handled Requests :</b> Represents the user requests that the Voice Bot was able to answer
      <b>Unhandled Requests :</b> Represents the user requests that the Voice Bot was unable to answer
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 5
    width: 10
    height: 6
  - title: List of Interaction IDs, Call IDs and Journeys
    name: List of Interaction IDs, Call IDs and Journeys
    model: test_bpa_model
    explore: cx_logs_extract
    type: table
    fields: [cx_logs_extract.interactionid, cx_logs_extract.session_id, cx_logs_extract.conversation_journey]
    filters:
      cx_logs_extract.matchtype: '"NO_MATCH"'
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
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    row: 24
    col: 14
    width: 10
    height: 7
  - title: Voice Bot Response
    name: Voice Bot Response
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_grid
    fields: [next_user_query.redacted_bot_response, next_user_query.count]
    sorts: [next_user_query.count desc]
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
      cx_logs_extract.count: Frequency
      cx_logs_extract.bot_response: Voice Bot Response
      next_user_query.redacted_bot_response: Voice Bot Response
      next_user_query.count: Frequency
    series_cell_visualizations:
      cx_logs_extract.count:
        is_active: true
        palette:
          palette_id: 1229ab19-e4de-d42a-fbb7-c21acdd785a5
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#95D9F7"
          - "#005495"
      next_user_query.count:
        is_active: true
        palette:
          palette_id: c800c7e4-ec71-065e-e4dc-3f815a88cca4
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
    note_text: The table consists of the questions asked by the voice bot during the
      user journey.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 31
    col: 0
    width: 14
    height: 7
  - title: Next User Request
    name: Next User Request
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_grid
    fields: [next_user_query.count, next_user_query.bucket_next_user_query]
    filters:
      next_user_query.next_user_query: "-NULL"
    sorts: [next_user_query.count desc]
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
      cx_logs_extract.count: Frequency
      next_user_query.count: Frequency
      next_user_query.bucket_next_user_query: Next User Request
    series_cell_visualizations:
      cx_logs_extract.count:
        is_active: true
        palette:
          palette_id: 1229ab19-e4de-d42a-fbb7-c21acdd785a5
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#95D9F7"
          - "#005495"
      next_user_query.count:
        is_active: true
        palette:
          palette_id: 40a937c5-4b12-4118-3982-426456c8aa48
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
    note_text: The table gives a list of different responses users have given to the
      questions asked by the voice bot (selected from the voice bot response table
      on the dashboard).
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 31
    col: 14
    width: 10
    height: 7
  - title: Average Sentiment, Total Calls vs Day of week
    name: Average Sentiment, Total Calls vs Day of week
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_column
    fields: [cx_logs_extract.avg_sentiment_score, cx_logs_extract.request_week, cx_logs_extract.count_session]
    fill_fields: [cx_logs_extract.request_week]
    sorts: [cx_logs_extract.request_week desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Average Sentiment Score, orientation: left, series: [{axisId: cx_logs_extract.avg_sentiment_score,
            id: cx_logs_extract.avg_sentiment_score, name: Avg Sentiment Score}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: cx_logs_extract.count_session, id: cx_logs_extract.count_session,
            name: Count Session}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of Week
    font_size: '12'
    series_types:
      cx_logs_extract.avg_sentiment_score: line
    series_colors:
      cx_logs_extract.avg_sentiment_score: "#129fd9"
      cx_logs_extract.count_session: "#005495"
    series_labels:
      cx_logs_extract.count_session: Total Calls
      cx_logs_extract.avg_sentiment_score: Average User Sentiment
    x_axis_datetime_label: ''
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    note_state: collapsed
    note_display: hover
    note_text: Average sentiment & total calls trend over the week. It helps to understand
      how sentiment score & the total number of calls are fluctuating on a weekly
      basis.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 17
    col: 0
    width: 24
    height: 7
  - title: Navigation
    name: Navigation
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.dashboard_navigation_user_analytics]
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
    default_value: 14 day
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: test_bpa_model
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
    model: test_bpa_model
    explore: cx_logs_extract
    listens_to_filters: [Date]
    field: cx_logs_extract.flowName