prompt --application/pages/page_01006
begin
--   Manifest
--     PAGE: 01006
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
 p_id=>1006
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0648\06CC\0631\0627\06CC\0634 \0645\062D\0635\0648\0644')
,p_alias=>unistr('\0648\06CC\0631\0627\06CC\0634-\0645\062D\0635\0648\0644')
,p_step_title=>unistr('\0648\06CC\0631\0627\06CC\0634 \0645\062D\0635\0648\0644')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(27310287047186401)
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221107094156'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23857621381510968)
,p_plug_name=>unistr('\0648\06CC\0631\0627\06CC\0634 \0645\062D\0635\0648\0644')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22855140490303925)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23866479596510973)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_api.id(23857621381510968)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22857978607303931)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23866889426510973)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23866479596510973)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23868215235510973)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23866479596510973)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P1006_PK_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23868651995510973)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23866479596510973)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0630\062E\06CC\0631\0647')
,p_button_position=>'NEXT'
,p_button_condition=>'P1006_PK_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23869052864510973)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23866479596510973)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\06CC\062C\0627\062F')
,p_button_position=>'NEXT'
,p_button_condition=>'P1006_PK_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21011071441537844)
,p_branch_name=>'ToValuesCreate'
,p_branch_action=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.::P1007_FK_PROD_ID:&P1006_PK_PROD_ID.#P1006_PK_PROD_ID#&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(23869052864510973)
,p_branch_sequence=>50
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21011180982537845)
,p_branch_name=>'ToProdDel'
,p_branch_action=>'f?p=&APP_ID.:1005:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(23868215235510973)
,p_branch_sequence=>60
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21011233021537846)
,p_branch_name=>'ToProdCancel'
,p_branch_action=>'f?p=&APP_ID.:1005:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(23866889426510973)
,p_branch_sequence=>70
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21011348323537847)
,p_branch_name=>'ToValuesSave'
,p_branch_action=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.::P1007_FK_PROD_ID:&P1006_PK_PROD_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>80
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23858077658510968)
,p_name=>'P1006_PK_PROD_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Prod Id'
,p_source=>'PK_PROD_ID'
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
 p_id=>wwv_flow_api.id(23858471920510970)
,p_name=>'P1006_PROD_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\0646\0627\0645 \0645\062D\0635\0648\0644')
,p_source=>'PROD_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23858817290510970)
,p_name=>'P1006_FK_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\0628\0631\0646\062F')
,p_source=>'FK_COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_COM'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23859273763510970)
,p_name=>'P1006_PROD_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\062A\0648\0636\06CC\062D\0627\062A \0645\062D\0635\0648\0644')
,p_source=>'PROD_DESC'
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
 p_id=>wwv_flow_api.id(23859628079510970)
,p_name=>'P1006_PROD_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\062A\0639\062F\0627\062F')
,p_source=>'PROD_QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860041511510970)
,p_name=>'P1006_PROD_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\062A\0627\0631\06CC\062E \062A\0648\0644\06CC\062F')
,p_source=>'PROD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_ALBORZ_APEX_PERSIAN_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860479035510970)
,p_name=>'P1006_PROD_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\0648\0636\0639\06CC\062A')
,p_source=>'PROD_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23702567304236717)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860863001510970)
,p_name=>'P1006_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1006_PK_PROD_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23861234060510970)
,p_name=>'P1006_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1006_PK_PROD_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23861604693510970)
,p_name=>'P1006_MODIFIED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_source=>'MODIFIED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1006_PK_PROD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23862009651510971)
,p_name=>'P1006_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1006_PK_PROD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23862442184510971)
,p_name=>'P1006_FK_CAT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_item_source_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC')
,p_source=>'FK_CAT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CAT'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(22980946939304010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25967769722033034)
,p_name=>'P1006_UPD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23857621381510968)
,p_prompt=>unistr('\0628\0627\0631\06AF\0630\0627\0631\06CC \0641\0627\06CC\0644')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_11=>'image/png,image/jpg'
,p_attribute_12=>'INLINE'
,p_attribute_13=>unistr('\0628\0627\0631\06AF\0630\0627\0631\06CC \0639\06A9\0633')
,p_attribute_15=>'10000'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21009838405537832)
,p_computation_sequence=>10
,p_computation_item=>'P1006_MODIFIED_AT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'sysdate'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21009921839537833)
,p_computation_sequence=>20
,p_computation_item=>'P1006_MODIFIED_BY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23866942745510973)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23866889426510973)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23867782758510973)
,p_event_id=>wwv_flow_api.id(23866942745510973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23869891418510975)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(23857621381510968)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form \0648\06CC\0631\0627\06CC\0634 \0645\062D\0635\0648\0644')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25967681218033033)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_FILES             APEX_T_VARCHAR2;',
'  V_PRODFILE_ID NUMBER;',
'',
'BEGIN ',
'V_PRODFILE_ID := :P1006_PK_PROD_ID;',
'  IF :P1006_UPD IS NOT NULL THEN',
'    L_FILES := APEX_STRING.SPLIT(:P1006_UPD,'':'');',
'    --L_FILES := APEX_STRING.SPLIT(:P1006_UPD,'''','''');',
'',
'--Raise_Application_Error (-20343, :P1006_UPD);',
'    FOR I IN 1..L_FILES.COUNT LOOP',
'        FOR C IN (SELECT ID,',
'                          NAME,',
'                         FILENAME,',
'                          MIME_TYPE,',
'                          FILE_TYPE,',
'                         DOC_SIZE,',
'                         CONTENT_TYPE,',
'                         BLOB_CONTENT,',
'                         CREATED_BY,',
'                         CREATED_ON',
'                     FROM apex_210200.VW_APEX_APPLICATION_TEMP_FILES',
'                    WHERE NAME = L_FILES(I))                   ',
'        LOOP',
'          INSERT INTO TBL_FILES(FK_PROD_ID,',
'                                      FILE_NAME,',
'                                      MIME_TYPE,',
'                                      FILE_TYPE,',
'                                      DOC_SIZE,',
'                                      CONTENT_TYPE,',
'                                      BLOB_CONTENT,',
'                                      CREATED_BY,',
'                                      CREATED_AT)',
'                                      VALUES',
'                                      (V_PRODFILE_ID,',
'                                       C.FILENAME,',
'                                       C.MIME_TYPE,',
'                                      C.FILE_TYPE,',
'                                      C.DOC_SIZE,',
'                                       C.CONTENT_TYPE,',
'                                       C.BLOB_CONTENT,',
'                                     C.CREATED_BY,',
'                                      SYSDATE);',
'     ',
'        END LOOP;',
'    END LOOP;',
'  END IF;                                 ',
'COMMIT;              ',
'END;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23869401465510975)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(23857621381510968)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form \0648\06CC\0631\0627\06CC\0634 \0645\062D\0635\0648\0644')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
