prompt --application/pages/page_00559
begin
--   Manifest
--     PAGE: 00559
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
 p_id=>559
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC \06A9\06CC\0641 \067E\0648\0644')
,p_alias=>unistr('\0627\0641\0632\0627\06CC\0634-\0645\0648\062C\0648\062F\06CC-\06A9\06CC\0641-\067E\0648\0644')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC \06A9\06CC\0641 \067E\0648\0644')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221010141833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29821443481907860)
,p_plug_name=>unistr('\0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC \06A9\06CC\0641 \067E\0648\0644')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22855140490303925)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBL_USER_WALLET'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29823918658907868)
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
 p_id=>wwv_flow_api.id(29824335136907868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(29823918658907868)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\0644\063A\0648')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29825637241907882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(29823918658907868)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_image_alt=>unistr('\062D\0630\0641')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29826039505907882)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29823918658907868)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0648\0627\0631\06CC\0632')
,p_button_position=>'NEXT'
,p_button_condition=>'P559_WELLET_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29826499666907884)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(29823918658907868)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0648\0627\0631\06CC\0632')
,p_button_position=>'NEXT'
,p_button_condition=>'P559_WELLET_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26720652231748047)
,p_name=>'AM_TO_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(29821443481907860)
,p_prompt=>unistr('\0645\0628\0644\063A \0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29821801601907862)
,p_name=>'P559_WELLET_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29821443481907860)
,p_item_source_plug_id=>wwv_flow_api.id(29821443481907860)
,p_source=>'WELLET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29822212009907867)
,p_name=>'P559_FK_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29821443481907860)
,p_item_source_plug_id=>wwv_flow_api.id(29821443481907860)
,p_source=>'FK_USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29822696930907867)
,p_name=>'P559_BALANCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(29821443481907860)
,p_item_source_plug_id=>wwv_flow_api.id(29821443481907860)
,p_source=>'BALANCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29824431893907868)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(29824335136907868)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29825172089907881)
,p_event_id=>wwv_flow_api.id(29824431893907868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29827260390907890)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Process form \0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC \06A9\06CC\0641 \067E\0648\0644')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'WID number;',
'UIDz NUMBER;',
'BEGIN',
'',
'UIDz := :P559_FK_USER_ID;',
'',
'WID := :P559_WELLET_ID;',
'',
'IF WID is not null then',
'UPDATE TBL_USER_WALLET',
' SET BALANCE = BALANCE + :AM_TO_ADD',
' WHERE FK_USER_ID = :P559_FK_USER_ID AND WELLET_ID = :P559_WELLET_ID;',
' ELSE ',
' INSERT INTO TBL_USER_WALLET(FK_USER_ID,BALANCE)',
' VALUES(UIDz,:AM_TO_ADD);',
' END IF;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29827671907907890)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29826895581907890)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(29821443481907860)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form \0627\0641\0632\0627\06CC\0634 \0645\0648\062C\0648\062F\06CC \06A9\06CC\0641 \067E\0648\0644')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
