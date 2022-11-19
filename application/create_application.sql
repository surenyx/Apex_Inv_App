prompt --application/create_application
begin
--   Manifest
--     FLOW: 105
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'INVMGR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('\0645\062F\06CC\0631\06CC\062A \0627\0646\0628\0627\0631 \0646\0633\062E\0647 \062A\0648\0633\0639\0647'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'INVENTORY-MANAGEMENT')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4A1D41EBA3A4540A60631B3FCC1E38CF8A9FC624E352A781FC44959C9D62AD32'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'fa'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'YYYY/MM/DD'
,p_date_time_format=>'YYYY/MM/DD HH24:MM:SS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'Y'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(27306473730924684)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'INVENTORY MANAGEMENT'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Beta 2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_vpd=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'EXECUTE immediate ''ALTER SESSION SET NLS_CALENDAR=PERSIAN'';',
'EXECUTE immediate ''ALTER SESSION SET NLS_DATE_FORMAT=''''YYYY/MM/DD'''''';',
'END;'))
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(23011066470304126)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'INVENTORY MANAGEMENT'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221119103614'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_manifest_icon_url=>'#APEX_FILES#pwa/app-icon-512.png'
);
wwv_flow_api.component_end;
end;
/
