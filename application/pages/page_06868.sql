prompt --application/pages/page_06868
begin
--   Manifest
--     PAGE: 06868
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
 p_id=>6868
,p_user_interface_id=>wwv_flow_api.id(23006798391304064)
,p_name=>unistr('\062C\0632\06CC\06CC\0627\062A \06A9\0627\0645\0644 \0633\0641\0627\0631\0634')
,p_alias=>unistr('\062C\0632\06CC\06CC\0627\062A-\06A9\0627\0645\0644-\0633\0641\0627\0631\0634')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\062C\0632\06CC\06CC\0627\062A \06A9\0627\0645\0644 \0633\0641\0627\0631\0634')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20221109084913'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30002067405304905)
,p_plug_name=>unistr('\062C\0632\06CC\06CC\0627\062A \062D\0633\0627\0628 \0633\0641\0627\0631\0634')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22909560950303956)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30002308137304908)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(30002067405304905)
,p_button_name=>'ORDER_PAY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22982242182304020)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\067E\0631\062F\0627\062E\062A')
,p_button_condition=>'ORDER_STATUS'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-money'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31072171844503502)
,p_branch_action=>'f?p=&APP_ID.:108888:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30002183749304906)
,p_name=>'ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30002067405304905)
,p_prompt=>unistr('\0634\0645\0627\0631\0647 \0633\0641\0627\0631\0634')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30002212670304907)
,p_name=>'ORDER_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30002067405304905)
,p_prompt=>unistr('\0648\0636\0639\06CC\062A \0633\0641\0627\0631\0634')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATUS FROM TBL_USER_ORDER ',
'WHERE PK_ORDER_ID = :ORDER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LOV_ORDER_STATUS'
,p_lov=>'.'||wwv_flow_api.id(29505885236118535)||'.'
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
 p_id=>wwv_flow_api.id(30003719117304922)
,p_name=>'ORDER_SUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30002067405304905)
,p_prompt=>unistr('\0645\0628\0644\063A \062A\0645\0627\0645 \0634\062F\0647')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(22979619494304009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30002772639304912)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  ORDER_ID NUMBER;',
'  -- QUANT    NUMBER;',
'  -- AMOU     NUMBER;',
'  -- PRODID   NUMBER;',
'  PRICE_SUM NUMBER;',
'  UID       NUMBER;',
'  WID       NUMBER;',
'  UB        NUMBER;',
'',
'  cursor c1 is',
'    SELECT PK_PROD_ID, PROD_QUANTITY, AMOUNTS, PRICE ',
'      FROM PRODUCTS P',
'      JOIN TBL_USER_CART C',
'        ON P.PK_PROD_ID = C.FK_PROD_ID',
'      LEFT JOIN TBL_PROD_PRICES PP',
'        ON P.PK_PROD_ID = PP.FK_PROD_ID',
'     WHERE C.FK_ORDER_ID = ORDER_ID',
'       AND (PP.PK_PRICE_ID = (SELECT PK_PRICE_ID',
'                                FROM (SELECT S.PK_PRICE_ID',
'                                        FROM TBL_PROD_PRICES S',
'                                       WHERE S.FK_PROD_ID = P.PK_PROD_ID',
'                                         AND S.EFF_TIME <= SYSDATE',
'                                       ORDER BY S.EFF_TIME DESC)',
'                               WHERE ROWNUM = 1) OR EFF_TIME IS NULL or',
'           pp.PK_PRICE_ID != null);',
'',
'begin',
'',
'ORDER_ID := :ORDER_ID;',
'',
'  SELECT PK_USER_ID, WELLET_ID, BALANCE',
'    INTO UID, WID, UB',
'    FROM TBS_USERS U',
'    JOIN TBL_USER_WALLET W',
'      ON U.PK_USER_ID = W.FK_USER_ID',
'   WHERE UPPER(USER_NAME) = UPPER(:APP_USER);',
'',
'  PRICE_SUM := 0;',
'  FOR i IN c1 LOOP',
'    --  FETCH c1',
'    -- into PRODID, QUANT, AMOU;',
'    IF i.amounts < i.prod_quantity THEN',
'    ',
'      -- UPDATE PRODUCTS SET PROD_QUANTITY = PROD_QUANTITY - QUANT WHERE PK_PROD_ID = PRODID;',
'      PRICE_SUM := PRICE_SUM + (i.AMOUNTS * i.PRICE);',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''CHECKED PRICE:'' || PRICE_SUM);',
'',
'    ',
'    ELSIF i.amounts = i.prod_quantity THEN',
'      -- UPDATE PRODUCTS SET PROD_QUANTITY = PROD_QUANTITY - QUANT , PROD_STATUS = 0 WHERE PK_PROD_ID = PRODID;',
'      PRICE_SUM := PRICE_SUM + (i.AMOUNTS * i.PRICE);',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''CHECKED AND WAS SAME PRICE:'' || PRICE_SUM);',
'    ',
'    ELSE',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''IS NOT STOCKED ENOUGH, PLS CHANGE YOUR AMOUNT'');',
'',
'            Raise_Application_Error (-20343, ',
'            '' PRODUCT CODE  '' || i.PK_PROD_ID ||''IS NOT STOCKED ENOUGH, PLS CHANGE YOUR AMOUNT'');',
'      ROLLBACK;',
'      RETURN;',
'      EXIT;',
'    END IF;',
'  END LOOP;',
'',
'  IF UB >= PRICE_SUM THEN',
'    dbms_output.put_line('' YOU HAVE ENOUGH BALANCE '');',
'    FOR i IN c1 LOOP',
'    ',
'      IF i.amounts < i.prod_quantity THEN',
'        UPDATE PRODUCTS',
'           SET PROD_QUANTITY = PROD_QUANTITY - i.amounts',
'         WHERE PK_PROD_ID = i.PK_PROD_ID;',
'         UPDATE TBL_USER_CART ',
'         SET PAID_PRICE = i.PRICE WHERE FK_PROD_ID = i.PK_PROD_ID AND FK_ORDER_ID = ORDER_ID;',
'      ',
'      ELSIF i.amounts = i.prod_quantity THEN',
'        UPDATE PRODUCTS',
'           SET PROD_QUANTITY = PROD_QUANTITY - i.amounts, PROD_STATUS = 0',
'         WHERE PK_PROD_ID = i.PK_PROD_ID;',
'                  UPDATE TBL_USER_CART ',
'         SET PAID_PRICE = i.PRICE WHERE FK_PROD_ID = i.PK_PROD_ID AND FK_ORDER_ID = ORDER_ID;',
'      ELSE',
'        dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                             ''IS NOT STOCKED ENOUGH, PLS CHANGE YOUR AMOUNT'');',
'             Raise_Application_Error (-20343, ',
'            '' PRODUCT CODE  '' || i.PK_PROD_ID ||''IS NOT STOCKED ENOUGH, PLS CHANGE YOUR AMOUNT'');',
'      END IF;',
'    END LOOP;',
'    UPDATE TBL_USER_WALLET SET BALANCE = BALANCE - PRICE_SUM WHERE WELLET_ID = WID;',
'    UPDATE TBL_USER_ORDER SET STATUS = 1 , DATE_PAID = SYSDATE WHERE PK_ORDER_ID = ORDER_ID;',
'            ',
'            dbms_output.put_line(''PAID SUCCESSFULLY'');',
'            commit;',
'  ELSE',
'    dbms_output.put_line('' YOU DONT HAVE ENOUGH BALANCE '');',
'                             Raise_Application_Error (-20343, ',
'            ''YOU DONT HAVE ENOUGH BALANCE '');',
'          ROLLBACK;',
'      RETURN;',
'  END IF;',
'commit;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30002308137304908)
,p_process_success_message=>'PAID SUCCESSFULLY'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30003549238304920)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRICE_CHECK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  ORDER_ID NUMBER;',
'  PRICE_SUM NUMBER;',
'  UID       NUMBER;',
'  WID       NUMBER;',
'  UB        NUMBER;',
'',
'  cursor c1 is',
'    SELECT PK_PROD_ID, PROD_QUANTITY, AMOUNTS, PRICE ',
'      FROM PRODUCTS P',
'      JOIN TBL_USER_CART C',
'        ON P.PK_PROD_ID = C.FK_PROD_ID',
'      LEFT JOIN TBL_PROD_PRICES PP',
'        ON P.PK_PROD_ID = PP.FK_PROD_ID',
'     WHERE C.FK_ORDER_ID = ORDER_ID',
'       AND (PP.PK_PRICE_ID = (SELECT PK_PRICE_ID',
'                                FROM (SELECT S.PK_PRICE_ID',
'                                        FROM TBL_PROD_PRICES S',
'                                       WHERE S.FK_PROD_ID = P.PK_PROD_ID',
'                                         AND S.EFF_TIME <= SYSDATE',
'                                       ORDER BY S.EFF_TIME DESC)',
'                               WHERE ROWNUM = 1) OR EFF_TIME IS NULL or',
'           pp.PK_PRICE_ID != null);',
'',
'begin',
'',
'ORDER_ID := :ORDER_ID;',
'',
'  SELECT PK_USER_ID, WELLET_ID, BALANCE',
'    INTO UID, WID, UB',
'    FROM TBS_USERS U',
'    JOIN TBL_USER_WALLET W',
'      ON U.PK_USER_ID = W.FK_USER_ID',
'   WHERE UPPER(USER_NAME) = UPPER(''MYADMIN'');',
'',
'  PRICE_SUM := 0;',
'  FOR i IN c1 LOOP',
'    --  FETCH c1',
'    -- into PRODID, QUANT, AMOU;',
'    IF i.amounts < i.prod_quantity THEN',
'    ',
'      -- UPDATE PRODUCTS SET PROD_QUANTITY = PROD_QUANTITY - QUANT WHERE PK_PROD_ID = PRODID;',
'      PRICE_SUM := PRICE_SUM + (i.AMOUNTS * i.PRICE);',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''CHECKED PRICE:'' || PRICE_SUM);',
'    ',
'    ELSIF i.amounts = i.prod_quantity THEN',
'      -- UPDATE PRODUCTS SET PROD_QUANTITY = PROD_QUANTITY - QUANT , PROD_STATUS = 0 WHERE PK_PROD_ID = PRODID;',
'      PRICE_SUM := PRICE_SUM + (i.AMOUNTS * i.PRICE);',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''CHECKED AND WAS SAME PRICE:'' || PRICE_SUM);',
'    ',
'    ELSE',
'      dbms_output.put_line('' PRODUCT CODE  '' || i.PK_PROD_ID ||',
'                           ''IS NOT STOCKED ENOUGH, PLS CHANGE YOUR AMOUNT'');',
'      ROLLBACK;',
'      RETURN;',
'      EXIT;',
'    END IF;',
'  END LOOP;',
':ORDER_SUM := PRICE_SUM;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
