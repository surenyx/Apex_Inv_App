prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\062B\0628\062A \0646\0627\0645')
,p_alias=>unistr('\062B\0628\062A-\0646\0627\0645')
,p_step_title=>unistr('\062B\0628\062A \0646\0627\0645')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(22827936863303871)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221022012054'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53713767501869349)
,p_plug_name=>unistr('\062B\0628\062A \0646\0627\0645')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22907063045303954)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30701333212565239)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(53713767501869349)
,p_button_name=>'SIGN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\062B\0628\062A \0646\0627\0645')
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30701023771565232)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(53713767501869349)
,p_button_name=>'LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\0627\06A9\0627\0646\062A \062F\0627\0631\06CC\062F\061F\0648\0627\0631\062F \0634\0648\06CC\062F')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30701761367565242)
,p_name=>'P9998_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(53713767501869349)
,p_prompt=>unistr('\0646\0627\0645 \06A9\0627\0631\0628\0631\06CC')
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979379498304006)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30702177794565256)
,p_name=>'P9998_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(53713767501869349)
,p_prompt=>unistr('\06A9\0644\0645\0647 \0639\0628\0648\0631')
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979379498304006)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30702518044565256)
,p_name=>'P9998_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(53713767501869349)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30703866694565295)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9998_USERNAME),',
'    p_consent  => :P9998_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30703412730565290)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SIGN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'UID NUMBER;',
'BEGIN',
'INSERT INTO TBS_USERS(USER_NAME,USER_PASS,IS_DELETED,STATUS,LOGIN_ATMP) ',
'VALUES(:P9998_USERNAME,:P9998_PASSWORD,0,1,1);',
'',
'SELECT PK_USER_ID INTO UID FROM TBS_USERS WHERE USER_NAME = :P9998_USERNAME AND USER_PASS = :P9998_PASSWORD;',
'',
'INSERT INTO TBL_USER_ROLE(FK_USER_ID,FK_ROLE_ID) ',
'VALUES(UID,21);',
'apex_authentication.login(',
'    p_username => :P9998_USERNAME,',
'    p_password => :P9998_PASSWORD );',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\062E\0637\0627\06CC\06CC \0631\062E \062F\0627\062F. \0646\0627\0645 \06A9\0627\0631\0628\0631\06CC \0634\0645\0627 \062A\06A9\0631\0627\0631\06CC \0645\06CC \0628\0627\0634\062F.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30704642505565295)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30704283565565295)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9998_USERNAME := apex_authentication.get_login_username_cookie;',
':P9998_REMEMBER := case when :P9998_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
