prompt --application/shared_components/user_interface/lovs/lov_order_status
begin
--   Manifest
--     LOV_ORDER_STATUS
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
 p_id=>wwv_flow_api.id(29505885236118535)
,p_lov_name=>'LOV_ORDER_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(29505885236118535)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(29506124018118559)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\067E\0631\062F\0627\062E\062A \0646\0634\062F\0647')
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(29506510551118567)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\067E\0631\062F\0627\062E\062A \0634\062F\0647')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(29506801568118567)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\0644\063A\0648 \0634\062F\0647')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(29507293558118567)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\062A\06A9\0645\06CC\0644 \0634\062F\0647')
,p_lov_return_value=>'2'
);
wwv_flow_api.component_end;
end;
/
