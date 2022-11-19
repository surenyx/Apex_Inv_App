prompt --application/shared_components/navigation/lists/inv_menu
begin
--   Manifest
--     LIST: INV_MENU
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(27702109946420614)
,p_name=>'INV_MENU'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH USER_PRV_MENUS as(',
'                    SELECT USER_NAME,PARENTS,ICON,NAMES,ID,TARGET FROM TBS_USERS',
'                    JOIN TBL_USER_ROLE ON TBL_USER_ROLE.FK_USER_ID = TBS_USERS.PK_USER_ID',
'                    JOIN TBS_ROLES ON TBS_ROLES.PK_ROLE_ID = TBL_USER_ROLE.FK_ROLE_ID',
'                    JOIN TBL_ROLE_PRV ON TBL_ROLE_PRV.FK_ROLE_ID = TBS_ROLES.PK_ROLE_ID',
'                    JOIN TBS_PRV ON TBS_PRV.PK_PRV_ID = TBL_ROLE_PRV.FK_PRV_ID',
'                    JOIN MY_MENUS ON TBS_PRV.MENU_ID = MY_MENUS.id',
'                    WHERE UPPER(:APP_USER) = UPPER(USER_NAME) and TARGET != 1059 AND PARENTS is NULL AND PRV_SELECT = 1)',
'',
'SELECT level as "level",',
'       (select page_title from apex_application_pages where application_id=105 and',
'page_id=TARGET)  label,     ',
'       (''f?p=&APP_ID.:'' || TARGET || '':&APP_SESSION.::&DEBUG.:'')',
'        target,',
'       NULL is_current_list_entry,',
'       NVL(ICON, ''fa-folder-o'') image,',
'       NULL image_attribute,',
'       NULL image_alt_attribute',
'        FROM USER_PRV_MENUS',
'        START WITH parents is null',
'        CONNECT BY PRIOR id = parents;',
'',
'',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
