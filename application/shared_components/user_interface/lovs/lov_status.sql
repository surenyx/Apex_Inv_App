prompt --application/shared_components/user_interface/lovs/lov_status
begin
--   Manifest
--     LOV_STATUS
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
 p_id=>wwv_flow_api.id(23702567304236717)
,p_lov_name=>'LOV_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(23702567304236717)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23702851882236718)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\0646\0627\0645\0648\062C\0648\062F')
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23703207489236721)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\0645\0648\062C\0648\062F')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23703849489248579)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\0628\0632\0648\062F\06CC')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23704332746251287)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\062A\0648\0642\0641 \062A\0648\0644\06CC\062F')
,p_lov_return_value=>'4'
);
wwv_flow_api.component_end;
end;
/
