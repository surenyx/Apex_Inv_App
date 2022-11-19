prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 105
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>22813604703295726
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'INVMGR'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(22985145466304040)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(22846567735303893)
,p_default_dialog_template=>wwv_flow_api.id(22826457236303870)
,p_error_template=>wwv_flow_api.id(22827936863303871)
,p_printer_friendly_template=>wwv_flow_api.id(22846567735303893)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(22827936863303871)
,p_default_button_template=>wwv_flow_api.id(22982101947304020)
,p_default_region_template=>wwv_flow_api.id(22909560950303956)
,p_default_chart_template=>wwv_flow_api.id(22909560950303956)
,p_default_form_template=>wwv_flow_api.id(22909560950303956)
,p_default_reportr_template=>wwv_flow_api.id(22909560950303956)
,p_default_tabform_template=>wwv_flow_api.id(22909560950303956)
,p_default_wizard_template=>wwv_flow_api.id(22909560950303956)
,p_default_menur_template=>wwv_flow_api.id(22921663412303962)
,p_default_listr_template=>wwv_flow_api.id(22909560950303956)
,p_default_irr_template=>wwv_flow_api.id(22905226243303954)
,p_default_report_template=>wwv_flow_api.id(22944579053303981)
,p_default_label_template=>wwv_flow_api.id(22979619494304009)
,p_default_menu_template=>wwv_flow_api.id(22983707486304021)
,p_default_calendar_template=>wwv_flow_api.id(22983831702304028)
,p_default_list_template=>wwv_flow_api.id(22977789421304003)
,p_default_nav_list_template=>wwv_flow_api.id(22968703142303998)
,p_default_top_nav_list_temp=>wwv_flow_api.id(22968703142303998)
,p_default_side_nav_list_temp=>wwv_flow_api.id(22966973717303998)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(22857978607303931)
,p_default_dialogr_template=>wwv_flow_api.id(22855140490303925)
,p_default_option_label=>wwv_flow_api.id(22979619494304009)
,p_default_required_label=>wwv_flow_api.id(22980946939304010)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(22969787702304000)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
