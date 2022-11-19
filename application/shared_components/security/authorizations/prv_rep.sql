prompt --application/shared_components/security/authorizations/prv_rep
begin
--   Manifest
--     SECURITY SCHEME: PRV_REP
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(27311009877194540)
,p_name=>'PRV_REP'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'RETURN REP_CHECK (:APP_USER,:APP_PAGE_ID);'
,p_caching=>'NOCACHE'
);
wwv_flow_api.component_end;
end;
/
