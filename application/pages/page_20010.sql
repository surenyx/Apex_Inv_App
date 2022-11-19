prompt --application/pages/page_20010
begin
--   Manifest
--     PAGE: 20010
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
 p_id=>20010
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0642\06CC\0645\062A \06AF\0630\0627\0631\06CC')
,p_alias=>unistr('\0642\06CC\0645\062A-\06AF\0630\0627\0631\06CC')
,p_step_title=>unistr('\0642\06CC\0645\062A \06AF\0630\0627\0631\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27307748632134410)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107140343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26807960396178298)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22905226243303954)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBL_PROD_PRICES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26808323198178298)
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
,p_detail_link=>'f?p=&APP_ID.:20011:&SESSION.::&DEBUG.:RP:P20011_PK_PRICE_ID:\#PK_PRICE_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>26808323198178298
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26808449955178307)
,p_db_column_name=>'PK_PRICE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Price Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26808817250178329)
,p_db_column_name=>'FK_PROD_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\0645\062D\0635\0648\0644')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(23979473461268418)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26809183086178329)
,p_db_column_name=>'PRICE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\0642\06CC\0645\062A')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26809580380178329)
,p_db_column_name=>'EFF_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\0632\0645\0627\0646 \0645\0648\062B\0631')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26813814667188390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'268139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_PRICE_ID:FK_PROD_ID:PRICE:EFF_TIME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26811681076178348)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26807960396178298)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0642\06CC\0645\062A \06AF\0630\0627\0631\06CC \062C\062F\06CC\062F')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20011:&SESSION.::&DEBUG.:20011'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26810610923178348)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(26807960396178298)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26811156073178348)
,p_event_id=>wwv_flow_api.id(26810610923178348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26807960396178298)
);
wwv_flow_api.component_end;
end;
/
