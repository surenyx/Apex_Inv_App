prompt --application/pages/page_01002
begin
--   Manifest
--     PAGE: 01002
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
 p_id=>1002
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0648\06CC\0631\0627\06CC\0634 \062F\0633\062A\0647')
,p_alias=>'CATEGORY-MODIFICATON'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0648\06CC\0631\0627\06CC\0634 \062F\0633\062A\0647')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27307748632134410)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107093920'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23476865894750142)
,p_plug_name=>unistr('\0648\06CC\0631\0627\0633\062A\0627\0631 \062F\0633\062A\0647')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22855140490303925)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CATEGORIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23482019806750160)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22857978607303931)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23482481519750160)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23482019806750160)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23483875647750165)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23482019806750160)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P1002_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23484284162750165)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23482019806750160)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0630\062E\06CC\0631\0647')
,p_button_position=>'NEXT'
,p_button_condition=>'P1002_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23484694523750167)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23482019806750160)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F')
,p_button_position=>'NEXT'
,p_button_condition=>'P1002_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23477100753750146)
,p_name=>'P1002_PK_CAT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Cat Id'
,p_source=>'PK_CAT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23477518906750156)
,p_name=>'P1002_CAT_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_prompt=>unistr('\0646\0627\0645 \062F\0633\062A\0647 \0628\0646\062F\06CC')
,p_source=>'CAT_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23477988083750156)
,p_name=>'P1002_CAT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_prompt=>unistr('\062A\0648\0636\06CC\062D\0627\062A \062F\0633\062A\0647')
,p_source=>'CAT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23478356693750157)
,p_name=>'P1002_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002_PK_CAT_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23478715996750157)
,p_name=>'P1002_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002_PK_CAT_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23479167817750157)
,p_name=>'P1002_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002_PK_CAT_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23479514826750157)
,p_name=>'P1002_MODIFIED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_source_plug_id=>wwv_flow_api.id(23476865894750142)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'MODIFIED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002_PK_CAT_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21009202383537826)
,p_computation_sequence=>10
,p_computation_item=>'P1002_MODIFIED_BY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>':app_user'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21009394448537827)
,p_computation_sequence=>10
,p_computation_item=>'P1002_MODIFIED_AT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'sysdate'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23482511546750160)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23482481519750160)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23483388722750165)
,p_event_id=>wwv_flow_api.id(23482511546750160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23485485481750170)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(23476865894750142)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form CATEGORY MODIFICATON'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23485870850750170)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23485098074750167)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(23476865894750142)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CATEGORY MODIFICATON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
