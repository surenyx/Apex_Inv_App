prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('\062E\0627\0646\0647')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221114085029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23018944850304250)
,p_plug_name=>'INVENTORY MANAGEMENT'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22887462615303946)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31073625796503517)
,p_plug_name=>unistr('  \062C\062F\06CC\062F\062A\0631\06CC\0646 \0645\062D\0635\0648\0644\0627\062A')
,p_region_template_options=>'t-Region--accent1:js-headingLevel-2:t-Region--hiddenOverflow:t-Form--slimPadding:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22863866218303935)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTS'
,p_query_where=>'ROWNUM < 6 AND PROD_STATUS = 1 or PROD_STATUS  = 3'
,p_query_order_by=>'CREATED_AT'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(31073743889503518)
,p_region_id=>wwv_flow_api.id(31073625796503517)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PROD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'PROD_DESC'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PK_PROD_ID'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(31073954790503520)
,p_card_id=>wwv_flow_api.id(31073743889503518)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1059:&SESSION.::&DEBUG.::PROD_ID:&PK_PROD_ID.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31074024289503521)
,p_plug_name=>unistr('ARAKALA \0622\0631\0627\06A9\0627\0644\0627')
,p_icon_css_classes=>'fa-shopping-cart'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured t-HeroRegion--centered:t-HeroRegion--iconsCircle'
,p_plug_template=>wwv_flow_api.id(22887462615303946)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>unistr('\0628\0647 \0641\0631\0648\0634\06AF\0627\0647 \0645\0627 \062E\0648\0634 \0622\0645\062F\06CC\062F')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31074153814503522)
,p_plug_name=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC \0647\0627\06CC \0645\062D\0635\0648\0644\0627\062A')
,p_region_template_options=>'t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22863866218303935)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'CATEGORIES'
,p_query_order_by=>'CAT_TITLE'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(31074201986503523)
,p_region_id=>wwv_flow_api.id(31074153814503522)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CAT_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PK_CAT_ID'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(31074344018503524)
,p_card_id=>wwv_flow_api.id(31074201986503523)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:100012:&SESSION.::&DEBUG.::P100012_CAT:&PK_CAT_ID.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31074546755503526)
,p_plug_name=>unistr('\062E\0631\06CC\062F \0647\0627\06CC \0634\0645\0627')
,p_region_template_options=>'t-Region--accent1:js-headingLevel-2:t-Region--hiddenOverflow:t-Form--slimPadding:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22863866218303935)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT PK_PROD_ID,',
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
'       FK_CAT_ID',
'  from PRODUCTS P JOIN TBL_USER_CART UC ON P.PK_PROD_ID = UC.FK_PROD_ID ',
'  JOIN TBL_USER_ORDER O ON O.PK_ORDER_ID = UC.FK_ORDER_ID',
'  JOIN TBS_USERS U ON U.PK_USER_ID = O.FK_USER_ID',
' where UPPER(:APP_USER) = UPPER(U.USER_NAME)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(31074685640503527)
,p_region_id=>wwv_flow_api.id(31074546755503526)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PROD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'PROD_DESC'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PK_PROD_ID'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(31074742973503528)
,p_card_id=>wwv_flow_api.id(31074685640503527)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1059:&SESSION.::&DEBUG.::PROD_ID:&PK_PROD_ID.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31074836185503529)
,p_plug_name=>unistr('\0645\062D\0635\0648\0644\0627\062A \067E\06CC\0634\0646\0647\0627\062F\06CC')
,p_region_template_options=>'t-Region--accent1:js-headingLevel-2:t-Region--hiddenOverflow:t-Form--slimPadding:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22863866218303935)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM PRODUCTS',
' WHERE FK_CAT_ID IN (select DISTINCT FK_CAT_ID',
'                       from PRODUCTS Ps',
'                       JOIN TBL_USER_CART UC',
'                         ON Ps.PK_PROD_ID = UC.FK_PROD_ID',
'                       JOIN TBL_USER_ORDER O',
'                         ON O.PK_ORDER_ID = UC.FK_ORDER_ID',
'                       JOIN TBS_USERS U',
'                         ON O.FK_USER_ID = U.PK_USER_ID',
'                      where UPPER(:APP_USER) = UPPER(U.USER_NAME) ',
'                     ',
'                     ) AND ROWNUM <= 5',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(31074922098503530)
,p_region_id=>wwv_flow_api.id(31074836185503529)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PROD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'PROD_DESC'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PK_PROD_ID'
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(31075035140503531)
,p_card_id=>wwv_flow_api.id(31074922098503530)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1059:&SESSION.::&DEBUG.::PROD_ID:&PK_PROD_ID.'
);
wwv_flow_api.component_end;
end;
/
