- dashboard: voice_bot_performance_and_call_analytics
  title: Voice Bot Performance and Call Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: PnebUaVe9oy52F16iTHLoO
  elements:
  - title: Total Calls
    name: Total Calls
    model: test_bpa_model
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
    note_text: Total number of calls within the defined parameters of the filters.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Average Calls/Day
    name: Average Calls/Day
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.avg_session_per_day]
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
    note_text: " Average number of calls within the defined parameters of the filters."
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Average Requests/Call
    name: Average Requests/Call
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.avg_query_per_session]
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
    note_text: Average requests users make per call within the defined parameters
      of the filters
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Busiest Hour
    name: Busiest Hour
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.count_session, cx_logs_extract.time_bucket]
    filters:
      cx_logs_extract.count_session: NOT NULL
    sorts: [cx_logs_extract.count_session desc]
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
    defaults_version: 1
    hidden_fields: [cx_logs_extract.count_session]
    note_state: collapsed
    note_display: hover
    note_text: The hour with the highest call volume.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Voice Bot Success Rate
    name: Voice Bot Success Rate
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.va_offer_rate, cx_logs_extract.count]
    sorts: [cx_logs_extract.va_offer_rate]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [cx_logs_extract.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: cx_logs_extract.count, label: Percent
          of Cx Logs Extract Count, source_field: cx_logs_extract.count, table_calculation: percent_of_cx_logs_extract_count,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
    single_value_title: Voice Bot Success Rate
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
    hidden_fields: [cx_logs_extract.va_offer_rate, cx_logs_extract.count]
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
    waveAnimate: true
    waveColor: "#005495"
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
    note_text: The percentage of requests successfully responded to by the voice bot.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 6
    col: 6
    width: 6
    height: 2
  - title: Average Voice Bot Handle Time
    name: Average Voice Bot Handle Time
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.avg_duration]
    sorts: [cx_logs_session_level.avg_duration desc]
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The average time taken by the voice bot to handle a Call
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 6
    col: 0
    width: 6
    height: 2
  - title: Weekly Traffic Distribution
    name: Weekly Traffic Distribution
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_bar
    fields: [cx_logs_extract.request_day_of_week, cx_logs_extract.count_session]
    fill_fields: [cx_logs_extract.request_day_of_week]
    filters:
      cx_logs_extract.intent_triggered: ''
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Calls, orientation: bottom, series: [{axisId: cx_logs_extract.count_session,
            id: cx_logs_extract.count_session, name: Total Sessions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day of Week
    series_types: {}
    series_colors:
      cx_logs_extract.count_session: "#005495"
    series_labels:
      cx_logs_extract.count_session: Total Calls
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The graph represents the total number of calls per weekday
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 10
    col: 0
    width: 9
    height: 6
  - title: Hourly Traffic Distribution
    name: Hourly Traffic Distribution
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_line
    fields: [cx_logs_extract.count_session, cx_logs_extract.time_bucket]
    fill_fields: [cx_logs_extract.time_bucket]
    filters:
      cx_logs_extract.intent_triggered: ''
    sorts: [cx_logs_extract.time_bucket]
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: Total Calls, orientation: left, series: [{axisId: cx_logs_extract.count_session,
            id: cx_logs_extract.count_session, name: Total Sessions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Hour Frame
    series_types: {}
    series_colors:
      cx_logs_extract.count_session: "#005495"
    series_labels:
      cx_logs_extract.count_session: Total Calls
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The graph represents the total number of calls per hour
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 10
    col: 9
    width: 15
    height: 6
  - name: ''
    type: text
    title_text: ''
    body_text: '<h2 style="color:#005495;border-bottom:1px solid #CCC;" >Call Analytics</h2>

      '
    row: 8
    col: 0
    width: 24
    height: 2
  - title: ''
    name: " (2)"
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_grid
    fields: [cx_logs_session_level.duration_bucket, cx_logs_session_level.count_session,
      cx_logs_extract.avg_query_per_session, cx_logs_session_level.average_sentiment_score]
    filters:
      cx_logs_extract.intent_triggered: ''
      cx_logs_session_level.count_session: NOT NULL
    sorts: [cx_logs_session_level.duration_bucket, cx_logs_session_level.count_session
        desc]
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
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      cx_logs_session_level.duration_bucket: Call Duration
      cx_logs_session_level.count_session: Total Calls
      cx_logs_extract.avg_query_per_session: Average Requests/Call
      cx_logs_session_level.average_sentiment_score: Average Sentiment Score
    series_cell_visualizations:
      cx_logs_session_level.count_session:
        is_active: true
        palette:
          palette_id: 7d2cbe96-3bed-8c7f-7a3e-7e79967265af
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#95D9F7"
          - "#005495"
      cx_logs_extract.avg_query_per_session:
        is_active: true
        palette:
          palette_id: fb5f0baa-629e-2f6f-5f3d-9f8dd8161dcb
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#95D9F7"
          - "#005495"
      cx_logs_session_level.average_sentiment_score:
        is_active: false
        palette:
          palette_id: 9f2848e8-21d5-8565-5b83-39caccba1b6d
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#fc0404"
          - "#fbfb04"
          - "#fbfb04"
          - "#05fc04"
    header_font_color: "#ffffff"
    header_background_color: "#005495"
    conditional_formatting: [{type: between, value: [-0.334, 0.333], background_color: "#ffed6f",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cx_logs_session_level.average_sentiment_score]},
      {type: less than, value: -0.333, background_color: "#EE7772", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_session_level.average_sentiment_score]},
      {type: greater than, value: 0.332, background_color: "#7FCDAE", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cx_logs_session_level.average_sentiment_score]}]
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
    y_axes: [{label: Total Session, orientation: left, series: [{axisId: cx_logs_session_level.count_session,
            id: cx_logs_session_level.count_session, name: Count Session}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Call Duration
    series_types: {}
    series_colors:
      cx_logs_session_level.count_session: "#005495"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The table gives the analysis with respect to the overall duration of
      the call.
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 16
    col: 0
    width: 24
    height: 5
  - title: Containment Rate
    name: Containment Rate
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_session_level.containment_rate_excluding_AT]
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
    single_value_title: Containment Rate
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
    note_text: Percentage of inbound calls completely handled by the voice bot, divided
      by the number of total incoming calls
    listen:
      Date: cx_logs_extract.request_date
      Use Case: cx_logs_extract.flowName
    row: 6
    col: 12
    width: 6
    height: 2
  - title: Repeat Calls
    name: Repeat Calls
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [repeat_caller_flag.average_repeat_call_flag]
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
    single_value_title: Repeat Calls
    value_format: 0.00%
    conditional_formatting: [{type: greater than, value: 0.7499, background_color: '',
        font_color: "#cf3f2d", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.4999,
          0.75], background_color: '', font_color: "#e3ae0e", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.5, background_color: '', font_color: "#06a117", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The percentage of callers where the same caller calls for the same
      usecase within a 24 hour period
    listen:
      Date: repeat_caller_flag.request_date
      Use Case: cx_logs_extract.flowName
    row: 6
    col: 18
    width: 6
    height: 2
  - title: Navigation
    name: Navigation
    model: test_bpa_model
    explore: cx_logs_extract
    type: single_value
    fields: [cx_logs_extract.dashboard_navigation_voice_bot_performance]
    limit: 500
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
    default_value: 2 week
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