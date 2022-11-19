prompt --application/pages/page_01005
begin
--   Manifest
--     PAGE: 01005
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
 p_id=>1005
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_alias=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_step_title=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27307748632134410)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107094142'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23870859886510975)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22905226243303954)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PROD_ID,',
'        FK_CAT_ID,',
'       PROD_TITLE,',
'       FK_COMPANY_ID,',
'       PROD_DESC,',
'       PROD_QUANTITY,',
'       PROD_DATE,',
'       PROD_STATUS,',
'       CREATED_BY,',
'       CREATED_AT,',
'       MODIFIED_AT,',
'       MODIFIED_BY,',
'       ',
unistr('       ''\0645\0634\062E\0635\0627\062A'''),
'  from PRODUCTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23871277571510975)
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
,p_detail_link=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.:RP:P1006_PK_PROD_ID:\#PK_PROD_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>23871277571510975
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23871339675510975)
,p_db_column_name=>'PK_PROD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Prod Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23875753331510976)
,p_db_column_name=>'FK_CAT_ID'
,p_display_order=>11
,p_column_identifier=>'L'
,p_column_label=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(23700428579218985)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23871723110510975)
,p_db_column_name=>'PROD_TITLE'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>unistr('\0646\0627\0645 \0645\062D\0635\0648\0644')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23872139456510976)
,p_db_column_name=>'FK_COMPANY_ID'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>unistr('\0628\0631\0646\062F')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(23700249759217368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23872574521510976)
,p_db_column_name=>'PROD_DESC'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>unistr('\062A\0648\0636\06CC\062D\0627\062A')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23872960494510976)
,p_db_column_name=>'PROD_QUANTITY'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>unistr('\062A\0639\062F\0627\062F')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23873350383510976)
,p_db_column_name=>'PROD_DATE'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>unistr('\062A\0627\0631\06CC\062E \062A\0648\0644\06CC\062F')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23873764025510976)
,p_db_column_name=>'PROD_STATUS'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>unistr('\0648\0636\0639\06CC\062A')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(23702567304236717)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874112876510976)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>81
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874588065510976)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>91
,p_column_identifier=>'I'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23875372662510976)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874975443510976)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>111
,p_column_identifier=>'J'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21011423015537848)
,p_db_column_name=>unistr('''\0645\0634\062E\0635\0627\062A''')
,p_display_order=>131
,p_column_identifier=>'M'
,p_column_label=>unistr('\0645\0634\062E\0635\0627\062A')
,p_column_link=>'f?p=&APP_ID.:1059:&SESSION.::&DEBUG.::PROD_ID:#PK_PROD_ID#'
,p_column_linktext=>unistr('#''\0645\0634\062E\0635\0627\062A''#')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23878241650513817)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'238783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('PK_PROD_ID:PROD_TITLE:FK_COMPANY_ID:PROD_DESC:PROD_QUANTITY:PROD_DATE:PROD_STATUS:CREATED_BY:CREATED_AT:MODIFIED_AT:MODIFIED_BY:FK_CAT_ID:''\0645\0634\062E\0635\0627\062A''')
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23877844506510978)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23870859886510975)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0641\0632\0648\062F\0646 \0645\062D\0635\0648\0644 \062C\062F\06CC\062F +')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.:1006'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23876816127510978)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(23870859886510975)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23877364179510978)
,p_event_id=>wwv_flow_api.id(23876816127510978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23870859886510975)
);
wwv_flow_api.component_end;
end;
/
