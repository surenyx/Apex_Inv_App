prompt --application/shared_components/user_interface/lovs/lov_com
begin
--   Manifest
--     LOV_COM
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(23700249759217368)
,p_lov_name=>'LOV_COM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'COMPANIES'
,p_return_column_name=>'PK_COM_ID'
,p_display_column_name=>'COM_TITLE'
,p_default_sort_column_name=>'COM_TITLE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
