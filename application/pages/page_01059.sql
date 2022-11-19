prompt --application/pages/page_01059
begin
--   Manifest
--     PAGE: 01059
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
 p_id=>1059
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\0645\0634\062E\0635\0627\062A \0645\062D\0635\0648\0644')
,p_alias=>unistr('\0645\0634\062E\0635\0627\062A-\0645\062D\0635\0648\06441')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0645\0634\062E\0635\0627\062A \0645\062D\0635\0648\0644')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'img {   display: block;   width: 210px;   border: 1px solid #999;   padding: 4px;   background: #f6f6f6; }'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221026085327'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23993675669890737)
,p_name=>unistr('\062C\0632\06CC\06CC\0627\062A \0645\062D\0635\0648\0644')
,p_template=>wwv_flow_api.id(22909560950303956)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PROD_VALUE,',
'       FK_PROD_ID,',
'       FK_PV_ID,',
'       PROD_UNIT,',
'       FK_PARAM_ID,',
unistr('       ''\0648\06CC\0631\0627\06CC\0634'''),
'  from PROD_VALUES',
'   where  FK_PROD_ID = :PROD_ID',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(22944579053303981)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\062F\0627\062F\0647 \0627\06CC \06CC\0627\0641\062A \0646\0634\062F')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23994016321890740)
,p_query_column_id=>1
,p_column_alias=>'PK_PROD_VALUE'
,p_column_display_sequence=>10
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24008403935908934)
,p_query_column_id=>2
,p_column_alias=>'FK_PROD_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23994881712890745)
,p_query_column_id=>3
,p_column_alias=>'FK_PV_ID'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\0645\0642\062F\0627\0631')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(23979293144263335)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24008929343908939)
,p_query_column_id=>4
,p_column_alias=>'PROD_UNIT'
,p_column_display_sequence=>90
,p_column_heading=>unistr('\0648\0627\062D\062F')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(23975106756226950)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24005377913908903)
,p_query_column_id=>5
,p_column_alias=>'FK_PARAM_ID'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\0645\0634\062E\0635\0647')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(24200124722131085)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24009032953908940)
,p_query_column_id=>6
,p_column_alias=>unistr('''\0648\06CC\0631\0627\06CC\0634''')
,p_column_display_sequence=>100
,p_column_heading=>unistr('\0648\06CC\0631\0627\06CC\0634')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.::P1007_PK_PROD_VALUE:#PK_PROD_VALUE#'
,p_column_linktext=>unistr('#''\0648\06CC\0631\0627\06CC\0634''#')
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_api.id(27310402265188251)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25968040338033037)
,p_plug_name=>unistr('\062A\0635\0627\0648\06CC\0631 \0645\062D\0635\0648\0644')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22862249743303932)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_FILES_ID,',
'       FK_PROD_ID,',
'       FILE_NAME,',
'       MIME_TYPE,',
'       FILE_TYPE,',
'       DOC_SIZE,',
'       CONTENT_TYPE,',
'       BLOB_CONTENT,',
'       IS_DELETED,',
'       CREATED_BY,',
'       CREATED_AT,',
'       MODIFIED_BY,',
'       MODIFIED_AT',
'  from TBL_FILES',
'  WHERE FK_PROD_ID = :PROD_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(26716581563748006)
,p_region_id=>wwv_flow_api.id(25968040338033037)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'BLOB_CONTENT'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'PK_FILES_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26717001295748011)
,p_button_sequence=>80
,p_button_name=>'ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0633\0641\0627\0631\0634')
,p_button_condition=>'P1059_STATUS'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24005628036908906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23993675669890737)
,p_button_name=>'Add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22982101947304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0641\0632\0648\062F\0646 \0645\0634\062E\0635\0647')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.::P1007_FK_PROD_ID:&PROD_ID.'
,p_security_scheme=>wwv_flow_api.id(27310287047186401)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24005128369908901)
,p_name=>'PROD_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25965962655033016)
,p_name=>'P1059_NAME'
,p_item_sequence=>10
,p_prompt=>unistr('\0646\0627\0645 \0645\062D\0635\0648\0644')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROD_TITLE',
'  from PRODUCTS',
'   where  PK_PROD_ID = :PROD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25966032683033017)
,p_name=>'P1059_DESC'
,p_item_sequence=>20
,p_prompt=>unistr('\062A\0648\0636\06CC\062D\0627\062A \0645\062D\0635\0648\0644')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROD_DESC',
'  from PRODUCTS',
'   where  PK_PROD_ID = :PROD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25966198967033018)
,p_name=>'P1059_STATUS'
,p_item_sequence=>30
,p_prompt=>unistr('\0648\0636\0639\06CC\062A')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROD_STATUS',
'  from PRODUCTS',
'   where  PK_PROD_ID = :PROD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LOV_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23702567304236717)||'.'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25966263778033019)
,p_name=>'P1059_QUAN'
,p_item_sequence=>40
,p_prompt=>unistr('\062A\0639\062F\0627\062F \0645\0648\062C\0648\062F\06CC')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROD_QUANTITY',
'  from PRODUCTS',
'   where  PK_PROD_ID = :PROD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>':P1059_STATUS =1 OR :P1059_STATUS =2'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26717569952748016)
,p_name=>'AMOUNTZ'
,p_item_sequence=>70
,p_item_default=>'1'
,p_prompt=>unistr('\062A\0639\062F\0627\062F')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>':P1059_STATUS =1 OR :P1059_STATUS =2'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_attribute_01=>'1'
,p_attribute_02=>'&P1059_QUAN.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30004529621304930)
,p_name=>'P1056_PRICE'
,p_item_sequence=>60
,p_prompt=>unistr('\0642\06CC\0645\062A')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PP.PRICE ',
'      FROM PRODUCTS P',
'      LEFT JOIN TBL_PROD_PRICES PP',
'        ON P.PK_PROD_ID = PP.FK_PROD_ID',
'         WHERE (PP.PK_PRICE_ID = (SELECT PK_PRICE_ID',
'                                FROM (SELECT S.PK_PRICE_ID',
'                                        FROM TBL_PROD_PRICES S',
'                                       WHERE S.FK_PROD_ID = P.PK_PROD_ID',
'                                         AND S.EFF_TIME <= SYSDATE',
'                                       ORDER BY S.EFF_TIME DESC)',
'                               WHERE ROWNUM = 1) OR EFF_TIME IS NULL or',
'           pp.PK_PRICE_ID != null) AND P.PK_PROD_ID = :PROD_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>':P1059_STATUS =1 OR :P1059_STATUS =2'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31074496392503525)
,p_name=>'PUBLIC_MSG'
,p_item_sequence=>90
,p_prompt=>unistr('\062C\0647\062A \0633\0641\0627\0631\0634 \0645\062D\0635\0648\0644 \0627\0628\062A\062F\0627 \0648\0627\0631\062F \062D\0633\0627\0628 \062E\0648\062F \0634\0648\06CC\062F')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_security_scheme=>'!'||wwv_flow_api.id(27307748632134410)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26717270468748013)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  OP_ORDER_ID number;',
'  AP_USER_ID  number;',
'  REPEATED_ORDER number;',
'BEGIN',
'',
'  SELECT PK_USER_ID',
'    INTO AP_USER_ID',
'    FROM TBS_USERS TU',
'   WHERE upper(TU.USER_NAME) = upper(:APP_USER);',
'',
'  BEGIN',
'    SELECT PK_ORDER_ID',
'      INTO OP_ORDER_ID',
'      FROM TBL_USER_ORDER O',
'     WHERE O.FK_USER_ID = AP_USER_ID',
'       AND o.STATUS = 0;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      INSERT INTO TBL_USER_ORDER',
'        (FK_USER_ID, STATUS, DATE_CREATED)',
'      VALUES',
'        (AP_USER_ID, 0, sysdate);',
'  END;',
'  SELECT PK_ORDER_ID',
'    INTO OP_ORDER_ID',
'    FROM TBL_USER_ORDER O',
'   WHERE O.FK_USER_ID = AP_USER_ID',
'     AND o.STATUS = 0;',
'  ',
'SELECT nvl(avg(1),0) into REPEATED_ORDER FROM TBL_USER_CART WHERE FK_ORDER_ID = OP_ORDER_ID AND',
'  FK_PROD_ID = :PROD_ID ;',
'',
'',
'',
'  IF REPEATED_ORDER = 1 THEN',
'  UPDATE TBL_USER_CART SET AMOUNTS = :AMOUNTz where FK_PROD_ID = :PROD_ID AND FK_ORDER_ID = OP_ORDER_ID;',
'ELSE',
'',
'  INSERT INTO TBL_USER_CART',
'    (FK_ORDER_ID, FK_PROD_ID, AMOUNTS, DATE_ADDED)',
'  VALUES',
'    (OP_ORDER_ID, :PROD_ID, :AMOUNTz, sysdate); ',
'END IF; ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26720854554748049)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New_1'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
