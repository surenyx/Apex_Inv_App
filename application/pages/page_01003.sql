prompt --application/pages/page_01003
begin
--   Manifest
--     PAGE: 01003
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
 p_id=>1003
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0628\0631\0646\062F \0647\0627')
,p_alias=>unistr('\0628\0631\0646\062F-\0647\0627')
,p_step_title=>unistr('\0628\0631\0646\062F \0647\0627')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27307748632134410)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107093944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23610727205041875)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22905226243303954)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COMPANIES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23611146051041875)
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
,p_detail_link=>'f?p=&APP_ID.:1004:&SESSION.::&DEBUG.:RP:P1004_PK_COM_ID:\#PK_COM_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>23611146051041875
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23611200937041876)
,p_db_column_name=>'PK_COM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Com Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23611632457041879)
,p_db_column_name=>'COM_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\0646\0627\0645 \0628\0631\0646\062F')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23612445904041881)
,p_db_column_name=>'COM_WEB'
,p_display_order=>12
,p_column_identifier=>'D'
,p_column_label=>unistr('\0646\0634\0627\0646\06CC \0648\0628\0633\0627\06CC\062A')
,p_column_link=>'#COM_WEB#'
,p_column_linktext=>'#COM_WEB#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23612063985041881)
,p_db_column_name=>'COM_ADRESS'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>unistr('\0622\062F\0631\0633 \0634\0631\06A9\062A')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23612845662041881)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>unistr('\0633\0627\0632\0646\062F\0647')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23613274631041881)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>52
,p_column_identifier=>'F'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0633\0627\062E\062A')
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23613664129041881)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>62
,p_column_identifier=>'G'
,p_column_label=>unistr('\0648\06CC\0631\0627\0633\062A\0627\0631')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23614096796041881)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>72
,p_column_identifier=>'H'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \0648\06CC\0631\0627\06CC\0634')
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23616565749042862)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'236166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_COM_ID:COM_TITLE:COM_ADRESS:COM_WEB:CREATED_BY:CREATED_AT:MODIFIED_BY:MODIFIED_AT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23616194301041892)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23610727205041875)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0641\0632\0648\062F\0646 \0628\0631\0646\062F +')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1004:&SESSION.::&DEBUG.:1004'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23615180054041890)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(23610727205041875)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23615692174041892)
,p_event_id=>wwv_flow_api.id(23615180054041890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23610727205041875)
);
wwv_flow_api.component_end;
end;
/
