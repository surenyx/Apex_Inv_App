prompt --application/shared_components/logic/application_processes/accesschecker
begin
--   Manifest
--     APPLICATION PROCESS: AccessChecker
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(28917457750103784)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AccessChecker'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_AVGTAR NUMBER;',
'BEGIN',
'  SELECT NVL(AVG(1), 0)',
'    INTO V_AVGTAR',
'    FROM TBS_USERS',
'    JOIN TBL_USER_ROLE',
'      ON TBL_USER_ROLE.FK_USER_ID = TBS_USERS.PK_USER_ID',
'    JOIN TBS_ROLES',
'      ON TBS_ROLES.PK_ROLE_ID = TBL_USER_ROLE.FK_ROLE_ID',
'    JOIN TBL_ROLE_PRV',
'      ON TBL_ROLE_PRV.FK_ROLE_ID = TBS_ROLES.PK_ROLE_ID',
'    JOIN TBS_PRV',
'      ON TBS_PRV.PK_PRV_ID = TBL_ROLE_PRV.FK_PRV_ID',
'    JOIN MY_MENUS',
'      ON TBS_PRV.MENU_ID = MY_MENUS.id',
'   WHERE upper(:APP_USER) = upper(USER_NAME)',
'     AND TARGET = :APP_PAGE_ID;',
'',
'  IF V_AVGTAR = 0 THEN',
'    BEGIN',
'      APEX_UTIL.REDIRECT_URL(',
'     APEX_PAGE.GET_URL (',
'             p_page   => 404,',
'             p_items  => ''P404_ERROR_MESSAGE'',',
unistr('             p_values => ''\0635\0641\062D\0647 \064A \0645\0648\0631\062F \0646\0638\0631 \064A\0627\0641\062A \0646\0634\062F!''));'),
'             END;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
