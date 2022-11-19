prompt --application/pages/page_01050
begin
--   Manifest
--     PAGE: 01050
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_page(
 p_id=>1050
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\067E\0627\0631\0627\0645\062A\0631 \0647\0627')
,p_alias=>unistr('\067E\0627\0631\0627\0645\062A\0631-\0647\0627')
,p_step_title=>unistr('\067E\0627\0631\0627\0645\062A\0631 \0647\0627')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27307748632134410)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221114085053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23902201523692014)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22905226243303954)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PARAM_ID,',
'       PARAM_TITLE,',
'       CREATED_BY,',
'       CREATED_AT,',
'       MODIFIED_BY,',
'       MODIFIED_AT,',
unistr('       ''\0645\0634\0627\0647\062F\0647 \0645\0642\0627\062F\06CC\0631 \0645\0631\0628\0648\0637\0647'''),
'  from PARAMETERS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23902661670692014)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1051:&SESSION.::&DEBUG.:RP:P1051_PK_PARAM_ID:\#PK_PARAM_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>23902661670692014
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23902752244692014)
,p_db_column_name=>'PK_PARAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Param Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23903160005692023)
,p_db_column_name=>'PARAM_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\0639\0646\0648\0627\0646 \067E\0627\0631\0627\0645\062A\0631')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23903420577692023)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\0633\0627\0632\0646\062F\0647')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23903814228692023)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0633\0627\062E\062A')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23904291935692023)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\0648\06CC\0631\0627\0633\062A\0627\0631')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23904626938692023)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0648\06CC\0631\0627\06CC\0634')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24009762039908947)
,p_db_column_name=>unistr('''\0645\0634\0627\0647\062F\0647\0645\0642\0627\062F\06CC\0631\0645\0631\0628\0648\0637\0647''')
,p_display_order=>16
,p_column_identifier=>'H'
,p_column_label=>unistr('\0645\0642\0627\062F\06CC\0631 \0645\0631\0628\0648\0637\0647')
,p_column_link=>'f?p=&APP_ID.:10057:&SESSION.::&DEBUG.::P10057_PK:#PK_PARAM_ID#'
,p_column_linktext=>unistr('#''\0645\0634\0627\0647\062F\0647\0645\0642\0627\062F\06CC\0631\0645\0631\0628\0648\0637\0647''#')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23907173521695535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('PK_PARAM_ID:PARAM_TITLE:CREATED_BY:CREATED_AT:MODIFIED_BY:MODIFIED_AT:''\0645\0634\0627\0647\062F\0647\0645\0642\0627\062F\06CC\0631\0645\0631\0628\0648\0637\0647''')
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23906725711692029)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23902201523692014)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F \067E\0627\0631\0627\0645\062A\0631 \062C\062F\06CC\062F ')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1051:&SESSION.::&DEBUG.:1051'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23905732892692029)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(23902201523692014)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23906289810692029)
,p_event_id=>wwv_flow_api.id(23905732892692029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23902201523692014)
);
wwv_flow_api.component_end;
end;
/
