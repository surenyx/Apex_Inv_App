prompt --application/shared_components/user_interface/lovs/lov_cat
begin
--   Manifest
--     LOV_CAT
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
 p_id=>wwv_flow_api.id(23700428579218985)
,p_lov_name=>'LOV_CAT'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CATEGORIES'
,p_return_column_name=>'PK_CAT_ID'
,p_display_column_name=>'CAT_TITLE'
,p_default_sort_column_name=>'CAT_TITLE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
