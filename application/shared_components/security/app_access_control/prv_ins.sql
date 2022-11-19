prompt --application/shared_components/security/app_access_control/prv_ins
begin
--   Manifest
--     ACL ROLE: PRV_INS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(27312353703206740)
,p_static_id=>'PRV_INS'
,p_name=>'PRV_INS'
);
wwv_flow_api.component_end;
end;
/
