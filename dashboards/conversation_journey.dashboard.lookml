- dashboard: conversation_journey
  title: Conversation Journey
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 761dka0Mnq3YfDrgLVuZTb
  elements:
  - title: Conversation Journey
    name: Conversation Journey
    model: test_bpa_model
    explore: cx_logs_extract
    type: looker_grid
    fields: [cx_logs_extract.interactionid, cx_logs_extract.session_id, cx_logs_extract.user_query,
      next_user_query.redacted_bot_response, cx_logs_extract.intent_for_logs, cx_logs_extract.request_millisecond]
    sorts: [cx_logs_extract.request_millisecond]
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
      cx_logs_extract.request_time: Date Time
      cx_logs_extract.request_millisecond: Date Time
      cx_logs_extract.intent_for_logs: Action
      cx_logs_extract.session_id: Call ID
      next_user_query.redacted_bot_response: Bot Response
    header_font_color: "#ffffff"
    header_background_color: "#005495"
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
    note_text: Gives the entire conversation of the selected Interaction ID/ Call
      ID.
    listen:
      Interaction ID: cx_logs_extract.interactionid
      Call ID: cx_logs_extract.session_id
    row: 3
    col: 0
    width: 24
    height: 9
  - name: ''
    type: text
    title_text: ''
    body_text: |
      <div class="vis" >
      <h1 style="color:#005495;" > Voice Bot Performance Analytics </h1>

      <b>
      <a href="https://tiaa.cloud.looker.com/dashboards/68">
      <font color="#005495" size="2.5"> Voice Bot Performance and Call Analytics </font></a>
      &nbsp;&nbsp;|

      &nbsp;&nbsp; <a href="https://tiaa.cloud.looker.com/dashboards/67"> <font color="#005495" size="2.5"> User Analytics </font></a>
      &nbsp;&nbsp;|

      &nbsp;&nbsp; <a href="https://tiaa.cloud.looker.com/dashboards/65"><font color="#005495" size="2.5"> Action Analytics </font>
      </a>&nbsp;&nbsp;|

      &nbsp;&nbsp; <a href="https://tiaa.cloud.looker.com/dashboards/66"><font color="#005495" size="2.5"> Agent Transfer Analytics </font>
      </a>&nbsp;&nbsp;|

      &nbsp;&nbsp; <a href="https://tiaa.cloud.looker.com/dashboards/73"><font color="#005495" size="2.5"> Call Flow [Sankey] </font>
      </a>&nbsp;&nbsp;|

      &nbsp;&nbsp; <a href="https://tiaa.cloud.looker.com/dashboards/75"><font color="#005495" size="2.5"> Call Flow [Collapsible Tree] </font>
      </a>&nbsp;&nbsp;

      </b>
      <br/>
      </div>
    row: 0
    col: 0
    width: 20
    height: 3
  - name: <img width="142" height="142"  align="right" src="https://wwwtiaaorg/public/images/694/7204/50000506947204/TIAA_logo_header_480_1xsvg"/>
    type: text
    title_text: <img width="142" height="142"  align="right" src="https://www.tiaa.org/public/images/694/7204/50000506947204/TIAA_logo_header_480_1x.svg"/>
    body_text: ''
    row: 0
    col: 20
    width: 4
    height: 3
  filters:
  - name: Interaction ID
    title: Interaction ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: test_bpa_model
    explore: cx_logs_extract
    listens_to_filters: []
    field: cx_logs_extract.interactionid
  - name: Call ID
    title: Call ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: test_bpa_model
    explore: cx_logs_extract
    listens_to_filters: []
    field: cx_logs_extract.session_id