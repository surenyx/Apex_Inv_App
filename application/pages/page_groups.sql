prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 105
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(23012579116304140)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
