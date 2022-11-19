prompt --application/pages/page_00555
begin
--   Manifest
--     PAGE: 00555
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
 p_id=>555
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0635\0641\062D\0647 \06A9\0627\0631\0628\0631\06CC')
,p_alias=>unistr('\0635\0641\062D\0647-\06A9\0627\0631\0628\0631\06CC')
,p_step_title=>unistr('\0635\0641\062D\0647 \06A9\0627\0631\0628\0631\06CC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107083734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26717753174748018)
,p_plug_name=>unistr('\200CNavigation')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(22909560950303956)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>9
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26718360211748024)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26717753174748018)
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
 p_id=>wwv_flow_api.id(26718485084748025)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(26717753174748018)
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
 p_id=>wwv_flow_api.id(26718542923748026)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(26717753174748018)
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
 p_id=>wwv_flow_api.id(26717907735748020)
,p_name=>'USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26717753174748018)
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
 p_id=>wwv_flow_api.id(26718213274748023)
,p_name=>'ROLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26717753174748018)
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
 p_id=>wwv_flow_api.id(26720148785748042)
,p_name=>'UID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26717753174748018)
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
wwv_flow_api.component_end;
end;
/
