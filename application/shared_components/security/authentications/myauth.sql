prompt --application/shared_components/security/authentications/myauth
begin
--   Manifest
--     AUTHENTICATION: MyAuth
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(27306473730924684)
,p_name=>'MyAuth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'MyAuth'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function MyAuth (',
'    p_username in varchar2,',
'    p_password in varchar2 )',
'    return boolean',
'is',
'    l_user TBS_USERS.USER_NAME%type := upper(p_username);',
'    l_id   TBS_USERS.PK_USER_ID%type;',
'    l_hash TBS_USERS.USER_PASS%type;',
'begin',
'    begin',
'        select PK_USER_ID  , USER_PASS',
'          into l_id, l_hash',
'          from TBS_USERS',
'         where UPPER(USER_NAME) = UPPER(l_user);',
'    exception when no_data_found then',
'        l_hash := ''-invalid-'';',
'    end;',
'',
'    return l_hash = p_password;',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
