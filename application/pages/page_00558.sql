prompt --application/pages/page_00558
begin
--   Manifest
--     PAGE: 00558
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
 p_id=>558
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\06A9\06CC\0641 \067E\0648\0644')
,p_alias=>unistr('\06A9\06CC\0641-\067E\0648\0644')
,p_step_title=>unistr('\06A9\06CC\0641 \067E\0648\0644')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107083832'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31072317463503504)
,p_name=>unistr('\062A\0627\0631\06CC\062E\0686\0647 \062A\063A\06CC\06CC\0631\0627\062A \0645\0648\062C\0648\062F\06CC')
,p_template=>wwv_flow_api.id(22909560950303956)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'TBL_WALLET_HISTORY'
,p_query_where=>'UIDs = :UIDS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(22944579053303981)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31072456968503505)
,p_query_column_id=>1
,p_column_alias=>'PK_WALH_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31072567350503506)
,p_query_column_id=>2
,p_column_alias=>'WIDS'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31072613710503507)
,p_query_column_id=>3
,p_column_alias=>'UIDS'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\06A9\0627\0631\0628\0631')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(29508867249139081)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31072757607503508)
,p_query_column_id=>4
,p_column_alias=>'BALANCES'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\0645\0648\062C\0648\062F\06CC')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31072832271503509)
,p_query_column_id=>5
,p_column_alias=>'DATES'
,p_column_display_sequence=>50
,p_column_heading=>unistr('\062A\0627\0631\06CC\062E')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56558774796011771)
,p_plug_name=>unistr('\200CNavigation')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(22909560950303956)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29841714877263762)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(56558774796011771)
,p_button_name=>'order'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_image_alt=>unistr('\0633\0641\0627\0631\0634\0627\062A')
,p_button_redirect_url=>'f?p=&APP_ID.:108888:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-shopping-cart'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29842157603263762)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(56558774796011771)
,p_button_name=>'profile_settings'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_image_alt=>unistr('\0645\0634\062E\0635\0627\062A \062D\0633\0627\0628')
,p_button_redirect_url=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.::P556_PK_USER_ID:&UID.'
,p_icon_css_classes=>'fa-user-edit'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26720488428748045)
,p_button_sequence=>70
,p_button_name=>'ADD_FUND'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC')
,p_button_redirect_url=>'f?p=&APP_ID.:559:&SESSION.::&DEBUG.::P559_WELLET_ID,P559_FK_USER_ID:&WID.,&UIDS.'
,p_icon_css_classes=>'fa-cart-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29841377231263760)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(56558774796011771)
,p_button_name=>'inventory'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_image_alt=>unistr('\0645\0648\062C\0648\062F\06CC \062D\0633\0627\0628')
,p_button_redirect_url=>'f?p=&APP_ID.:558:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-money'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26720264637748043)
,p_name=>'WID'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WELLET_ID',
'  from TBL_USER_WALLET W JOIN TBS_USERS U ON W.FK_USER_ID = U.PK_USER_ID',
'  WHERE UPPER(:APP_USER) = UPPER(U.USER_NAME)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26720597734748046)
,p_name=>'UIDS'
,p_item_sequence=>30
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_USER_ID',
'  from TBS_USERS U ',
'  WHERE UPPER(:APP_USER) = UPPER(U.USER_NAME)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29842500319263767)
,p_name=>'558_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56558774796011771)
,p_prompt=>unistr('\0646\0627\0645 \06A9\0627\0631\0628\0631\06CC')
,p_source=>':APP_USER'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29842995400263768)
,p_name=>'558_UID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56558774796011771)
,p_prompt=>unistr('\0634\0646\0627\0633\0647 \06A9\0627\0631\0628\0631\06CC')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PK_USER_ID FROM ',
'TBS_USERS U JOIN TBL_USER_ROLE UR ON U.PK_USER_ID = UR.FK_USER_ID',
'JOIN TBS_ROLES R ON R.PK_ROLE_ID = UR.FK_ROLE_ID ',
'WHERE  UPPER(U.USER_NAME) = UPPER(:app_user)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29843366515263768)
,p_name=>'558_ROLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56558774796011771)
,p_prompt=>unistr('\0646\0642\0634 \06A9\0627\0631\0628\0631\06CC')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE_NAME FROM ',
'TBS_USERS U JOIN TBL_USER_ROLE UR ON U.PK_USER_ID = UR.FK_USER_ID',
'JOIN TBS_ROLES R ON R.PK_ROLE_ID = UR.FK_ROLE_ID ',
'WHERE  UPPER(U.USER_NAME) = UPPER(:app_user)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31072249339503503)
,p_name=>'BALANCE'
,p_item_sequence=>60
,p_prompt=>unistr('\0645\0648\062C\0648\062F\06CC \062D\0633\0627\0628 \0634\0645\0627')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select (BALANCE ||  '' \062A\0648\0645\0627\0646 '')'),
'  from TBL_USER_WALLET W JOIN TBS_USERS U ON W.FK_USER_ID = U.PK_USER_ID',
'  WHERE UPPER(:APP_USER) = UPPER(U.USER_NAME)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.component_end;
end;
/
