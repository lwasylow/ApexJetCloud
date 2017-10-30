set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.1.00.08'
,p_default_workspace_id=>10950
,p_default_application_id=>828
,p_default_owner=>'OPRSTAGE'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_bskyb_cimdb_jet_tagcloud
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(70937118030638438)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.BSKYB.CIMDB.JET.TAGCLOUD'
,p_display_name=>'JET TagCloud'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[require jet]#PLUGIN_FILES#tagCloud.js',
''))
,p_api_version=>2
,p_render_function=>'opr.jet_plugins_api.render_tagcloud'
,p_ajax_function=>'opr.jet_plugins_api.ajax_tagcloud'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Smaple usage :',
'SELECT t.id',
'      ,t.label',
'      ,t.value',
'      ,t.shortdesc',
'FROM   OPR.MEDIAUSAGE_TST t'))
,p_version_identifier=>'1.0'
,p_files_version=>6
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(70938222225650732)
,p_plugin_id=>wwv_flow_api.id(70937118030638438)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'cloud'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(70938606008654116)
,p_plugin_attribute_id=>wwv_flow_api.id(70938222225650732)
,p_display_sequence=>10
,p_display_value=>'cloud'
,p_return_value=>'cloud'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(70947154957868862)
,p_plugin_attribute_id=>wwv_flow_api.id(70938222225650732)
,p_display_sequence=>20
,p_display_value=>'rectangular'
,p_return_value=>'rectangular'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(70947688222900869)
,p_plugin_id=>wwv_flow_api.id(70937118030638438)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'animationOnDisplay '
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'auto'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(70948575110902567)
,p_plugin_attribute_id=>wwv_flow_api.id(70947688222900869)
,p_display_sequence=>10
,p_display_value=>'auto'
,p_return_value=>'auto'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(70948909635903143)
,p_plugin_attribute_id=>wwv_flow_api.id(70947688222900869)
,p_display_sequence=>20
,p_display_value=>'none'
,p_return_value=>'none'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(70937305491638448)
,p_plugin_id=>wwv_flow_api.id(70937118030638438)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
,p_depending_on_has_to_exist=>true
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '212066756E6374696F6E20286A65742C20242C207365727665722C207574696C2C20646562756729207B0A202020202275736520737472696374223B0A20202020726571756972656A732E636F6E666967287B0A20202020202020206261736555726C3A';
wwv_flow_api.g_varchar2_table(2) := '20617065785F696D675F646972202B20226C69627261726965732F6F7261636C656A65742F322E302E322F6A732F6C696273222C0A202020202020202070617468733A207B0A202020202020202020226B6E6F636B6F7574223A20226B6E6F636B6F7574';
wwv_flow_api.g_varchar2_table(3) := '2F6B6E6F636B6F75742D332E342E30222C0A202020202020202020226A7175657279223A20226A71756572792F6A71756572792D322E312E332E6D696E222C0A202020202020202020226A717565727975692D616D64223A20226A71756572792F6A7175';
wwv_flow_api.g_varchar2_table(4) := '65727975692D616D642D312E31312E342E6D696E222C0A202020202020202020226F6A73223A20226F6A2F76322E302E322F6D696E222C0A202020202020202020226F6A4C31306E223A20226F6A2F76322E302E322F6F6A4C31306E222C0A2020202020';
wwv_flow_api.g_varchar2_table(5) := '20202020226F6A7472616E736C6174696F6E73223A20226F6A2F76322E302E322F7265736F7572636573222C0A202020202020202020227369676E616C73223A20226A732D7369676E616C732F7369676E616C732E6D696E222C0A202020202020202020';
wwv_flow_api.g_varchar2_table(6) := '2274657874223A2022726571756972652F74657874222C0A2020202020202020202270726F6D697365223A20226573362D70726F6D6973652F70726F6D6973652D312E302E302E6D696E222C0A2020202020202020202268616D6D65726A73223A202268';
wwv_flow_api.g_varchar2_table(7) := '616D6D65722F68616D6D65722D322E302E342E6D696E222C0A202020202020202020226F6A646E64223A2022646E642D706F6C7966696C6C2F646E642D706F6C7966696C6C2D312E302E302E6D696E220A20202020202020207D2C0A2020202020202020';
wwv_flow_api.g_varchar2_table(8) := '7368696D3A207B0A2020202020202020202020206A71756572793A207B0A202020202020202020202020202020206578706F7274733A205B226A5175657279222C202224225D0A2020202020202020202020207D0A20202020202020207D0A202020207D';
wwv_flow_api.g_varchar2_table(9) := '292C206A65742E746167636C6F7564203D207B0A2020202020202020696E69743A2066756E6374696F6E202870526567696F6E49642C207041706578416A61784964656E74696669657229207B0A20202020202020202020202072657175697265285B22';
wwv_flow_api.g_varchar2_table(10) := '6F6A732F6F6A636F7265222C20226A7175657279222C20226F6A732F6F6A746167636C6F7564225D2C2066756E6374696F6E20286F6A2C202429207B0A202020202020202020202020202020207365727665722E706C7567696E287041706578416A6178';
wwv_flow_api.g_varchar2_table(11) := '4964656E7469666965722C207B7D2C207B0A2020202020202020202020202020202020202020737563636573733A2066756E6374696F6E2028704461746129207B0A202020202020202020202020202020202020202020202020242870526567696F6E49';
wwv_flow_api.g_varchar2_table(12) := '64290A202020202020202020202020202020202020202020202020202020202E6F6A546167436C6F7564287044617461293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D293B0A20202020202020';
wwv_flow_api.g_varchar2_table(13) := '20202020207D293B0A20202020202020207D0A202020207D0A7D2877696E646F772E6A6574203D2077696E646F772E6A6574207C7C207B7D2C20617065782E6A51756572792C20617065782E7365727665722C20617065782E7574696C2C20617065782E';
wwv_flow_api.g_varchar2_table(14) := '6465627567293B0A2F2F20546F206B656570205468656D65526F6C6C657220776F726B696E672070726F7065726C793A0A646566696E6528226A7175657279222C205B5D2C2066756E6374696F6E202829207B0A2020202072657475726E20617065782E';
wwv_flow_api.g_varchar2_table(15) := '6A51756572790A7D293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(70942604265763239)
,p_plugin_id=>wwv_flow_api.id(70937118030638438)
,p_file_name=>'tagCloud.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
