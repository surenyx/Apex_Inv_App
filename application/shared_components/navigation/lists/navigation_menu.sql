prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_api.id(22819287013303789)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23018027470304237)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\062E\0627\0646\0647')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26600562360946643)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:100012:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-empty'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100012'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24311904876714798)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('\0645\062F\06CC\0631\06CC\062A \062F\0627\062F\0647 \0647\0627')
,p_list_item_icon=>'fa-database-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24310801870707935)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>unistr('\0627\0646\0628\0627\0631')
,p_list_item_icon=>'fa-user-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(24311904876714798)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23489779534750185)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\062F\0633\062A\0647 \0628\0646\062F\06CC \0647\0627')
,p_list_item_link_target=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-inbox'
,p_parent_list_item_id=>wwv_flow_api.id(24310801870707935)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1001,1002'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23614466984041881)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\0628\0631\0646\062F \0647\0627')
,p_list_item_link_target=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_parent_list_item_id=>wwv_flow_api.id(24310801870707935)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1003,1004'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26809917533178329)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('\0642\06CC\0645\062A \06AF\0630\0627\0631\06CC')
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-badge-dollar'
,p_parent_list_item_id=>wwv_flow_api.id(24310801870707935)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20010,20011'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23876115382510976)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('\0645\062D\0635\0648\0644\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:1005:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-magnifying-glass'
,p_parent_list_item_id=>wwv_flow_api.id(24310801870707935)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1005,1006'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24312207619716329)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('\0645\062F\06CC\0631\06CC\062A \067E\0627\0631\0627\0645\062A\0631 \0647\0627')
,p_list_item_icon=>'fa-edit'
,p_parent_list_item_id=>wwv_flow_api.id(24311904876714798)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23905007585692023)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\067E\0627\0631\0627\0645\062A\0631 \0647\0627')
,p_list_item_link_target=>'f?p=&APP_ID.:1050:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-badges'
,p_parent_list_item_id=>wwv_flow_api.id(24312207619716329)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1050,1051'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23946420510154085)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('\0648\0627\062D\062F \0647\0627')
,p_list_item_link_target=>'f?p=&APP_ID.:1054:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(24312207619716329)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1054,1055'
);
wwv_flow_api.component_end;
end;
/
