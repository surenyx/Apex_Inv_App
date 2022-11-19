prompt --application/pages/page_10001
begin
--   Manifest
--     PAGE: 10001
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
 p_id=>100012
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_alias=>unistr('\0644\06CC\0633\062A-\0645\062D\0635\0648\0644\0627\062A')
,p_step_title=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(22831742439303881)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221026083419'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26600980154946645)
,p_plug_name=>unistr('\0646\062A\0627\06CC\062C \062C\0633\062A\0648\062C\0648')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22862249743303932)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PK_PROD_ID",',
'       "PROD_TITLE",',
'       "FK_COMPANY_ID",',
'       ( select l1."COM_TITLE" from "COMPANIES" l1 where l1."PK_COM_ID" = m."FK_COMPANY_ID") "FK_COMPANY_ID_L$1",',
'       "PROD_DESC",',
'       "PROD_QUANTITY",',
'       "PROD_DATE",',
'       "PROD_STATUS",',
'       "CREATED_BY",',
'       "CREATED_AT",',
'       "MODIFIED_AT",',
'       "MODIFIED_BY",',
'       "FK_CAT_ID",',
'       "PRICE",',
'       ( select l2."CAT_TITLE" from "CATEGORIES" l2 where l2."PK_CAT_ID" = m."FK_CAT_ID") "FK_CAT_ID_L$2"',
'from PRODUCTS m LEFT JOIN TBL_PROD_PRICES n ON m.PK_PROD_ID = n.FK_PROD_ID ',
'WHERE   n.PK_PRICE_ID = (SELECT PK_PRICE_ID',
'                          FROM (SELECT S.PK_PRICE_ID',
'                                  FROM TBL_PROD_PRICES S',
'                                 WHERE S.FK_PROD_ID = m.PK_PROD_ID',
'                                   AND S.EFF_TIME <= SYSDATE',
'                                 ORDER BY S.EFF_TIME DESC)',
'                         WHERE ROWNUM = 1) OR EFF_TIME IS NULL or n.PK_PRICE_ID != null',
'',
'',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(26603090908946667)
,p_region_id=>wwv_flow_api.id(26600980154946645)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PROD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'PROD_DESC'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'&PRICE.'
,p_media_adv_formatting=>false
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(25967412593033031)
,p_card_id=>wwv_flow_api.id(26603090908946667)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1059:&SESSION.::&DEBUG.::PROD_ID:&PK_PROD_ID.'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(25967509306033032)
,p_card_id=>wwv_flow_api.id(26603090908946667)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>30
,p_label=>unistr('\0633\0641\0627\0631\0634')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:108888:&SESSION.::&DEBUG.:::'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26601043980946645)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22909560950303956)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(26600980154946645)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26601818692946654)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:js-headingLevel-2:t-Form--standardPadding'
,p_plug_template=>wwv_flow_api.id(22857978607303931)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26602363909946657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26601818692946654)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_image_alt=>unistr('\0628\0627\0632\0646\0634\0627\0646\06CC')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100012:&SESSION.::&DEBUG.:RR,100012::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25966963337033026)
,p_name=>'P100012_CAT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26601043980946645)
,p_prompt=>unistr('\062F\0633\062A\0647 \0645\062D\0635\0648\0644\0627\062A')
,p_source=>'FK_CAT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_CAT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_05=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25967210858033029)
,p_name=>'P100012_COM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26601043980946645)
,p_prompt=>unistr('\0634\0631\06A9\062A \0633\0627\0632\0646\062F\0647')
,p_source=>'FK_COMPANY_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_COM'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25967359127033030)
,p_name=>'P100012_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26601043980946645)
,p_prompt=>unistr('\0648\0636\0639\06CC\062A')
,p_source=>'PROD_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23702567304236717)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26601516523946653)
,p_name=>'P100012_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26601043980946645)
,p_prompt=>unistr('\062C\0633\062A\0648\062C\0648')
,p_source=>'PROD_TITLE,FK_COMPANY_ID,PROD_DESC,CREATED_BY,MODIFIED_BY,FK_CAT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
);
wwv_flow_api.component_end;
end;
/
