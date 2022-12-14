prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC \0645\062D\0635\0648\0644\0627\062A')
,p_alias=>unistr('\062F\0633\062A\0647-\0628\0646\062F\06CC-\0645\062D\0635\0648\0644\0627\062A')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC \0645\062D\0635\0648\0644\0627\062A')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220904074517'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26400363883085940)
,p_plug_name=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC \0645\062D\0635\0648\0644\0627\062A')
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26405540939085981)
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
 p_id=>wwv_flow_api.id(26405910902085982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26405540939085981)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26407223259086003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26405540939085981)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26407677609086003)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26405540939085981)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26408048610086003)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26405540939085981)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_PK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26409614181086010)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:2000:&APP_SESSION.::&DEBUG.:RP:P2000_PK_CAT_ID:&P3_PK_CAT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26408048610086003)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26410030670086014)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:2000:&APP_SESSION.::&DEBUG.:RP,2000::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26407223259086003)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26400636936085950)
,p_name=>'P3_PK_CAT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
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
 p_id=>wwv_flow_api.id(26401063742085973)
,p_name=>'P3_CAT_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cat Title'
,p_source=>'CAT_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26401411084085979)
,p_name=>'P3_CAT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cat Desc'
,p_source=>'CAT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26401823863085979)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26402297895085979)
,p_name=>'P3_CREATED_AT'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26402637681085979)
,p_name=>'P3_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified By'
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26403007734085979)
,p_name=>'P3_MODIFIED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26400363883085940)
,p_item_source_plug_id=>wwv_flow_api.id(26400363883085940)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified At'
,p_source=>'MODIFIED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26406065362085982)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26405910902085982)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26406835440086001)
,p_event_id=>wwv_flow_api.id(26406065362085982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26408845872086009)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26400363883085940)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form \062F\0633\062A\0647 \0628\0646\062F\06CC \0645\062D\0635\0648\0644\0627\062A')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26409292995086009)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26407677609086003)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26408496948086007)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(26400363883085940)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form \062F\0633\062A\0647 \0628\0646\062F\06CC \0645\062D\0635\0648\0644\0627\062A')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
