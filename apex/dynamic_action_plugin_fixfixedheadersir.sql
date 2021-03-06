prompt --application/set_environment 
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
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>996421930339099
,p_default_application_id=>45456
,p_default_owner=>'PLUTOS'
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/fixfixedheadersir
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(38377045713142784)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'FIXFIXEDHEADERSIR'
,p_display_name=>'Fix Fixed Headers IR'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#/ffhir.js'
,p_css_file_urls=>'#PLUGIN_FILES#/ffhir.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fixFHIR (p_dynamic_action in apex_plugin.t_dynamic_action,',
'                                p_plugin         in apex_plugin.t_plugin)',
'  return apex_plugin.t_dynamic_action_render_result is',
'  l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'  -- Enable debug mode',
'  if apex_application.g_debug then',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  end if;',
'',
'  l_result.javascript_function := ''initFixFixedHeader'';',
'',
'  apex_css.add (',
'    p_css => ''.makeSticky, .sticky-top-ie { top:''||p_dynamic_action.attribute_01||''px; }'',',
'    p_key => ''makeSticky-top'' );',
'',
'  return l_result;',
'end fixFHIR;',
''))
,p_api_version=>2
,p_render_function=>'fixFHIR'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://apex.oracle.com/pls/apex/yvonne/r/fix-headers-ir/fix-fixed-headers-plugin'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(38377523400150184)
,p_plugin_id=>wwv_flow_api.id(38377045713142784)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Top margin'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'48'
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the top value (default 48). This enable you to place the fixed header below your application header or any other place on your page.',
'(Enter only the value in px.)'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E20696E6974466978466978656448656164657228297B0D0A0D0A20202020696620282428222E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F7422292E6C656E677468203E203029207B0D0A20202020202020206669';
wwv_flow_api.g_varchar2_table(2) := '78466978656448656164657228222E612D4952522D6865616465722D2D7069766F74436F6C756D6E22293B0D0A20202020202020202428222E612D4952522D6865616465722D2D6E756C6C22292E616464436C61737328276D616B65537469636B792729';
wwv_flow_api.g_varchar2_table(3) := '3B2020200D0A202020207D0D0A20202020656C7365207B0D0A20202020202020202428222E612D4952522D636F6E74726F6C73436865636B626F7822292E656163682866756E6374696F6E20636865636B46697846697865642829207B200D0A20202020';
wwv_flow_api.g_varchar2_table(4) := '2020202020202020766172202466696C746572203D20242874686973293B20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200D0A202020202020202020202020696620282466';
wwv_flow_api.g_varchar2_table(5) := '696C7465722E64617461282273657474696E672229203D3D3D2027627265616B27297B200D0A202020202020202020202020202020206966282466696C7465722E70726F702822636865636B65642229297B200D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(6) := '202020202066697846697865644865616465722822746822293B0D0A202020202020202020202020202020202020202072657475726E2066616C73653B2020202020200D0A202020202020202020202020202020207D0D0A20202020202020207D7D293B';
wwv_flow_api.g_varchar2_table(7) := '0D0A202020207D0D0A7D0D0A0D0A66756E6374696F6E2066697846697865644865616465722873656C6563746F72297B0D0A20202020242873656C6563746F72292E6E6F7428222E612D4952522D6865616465722D2D67726F757022292E656163682820';
wwv_flow_api.g_varchar2_table(8) := '66756E6374696F6E206D616B654974537469636B28297B0D0A20202020766172202474686973203D20242874686973293B0D0A2020202069662824746869732E6E6F7428222E612D4952522D6865616465722D2D7069766F74526F7722292E66696E6428';
wwv_flow_api.g_varchar2_table(9) := '222E612D4952522D6865616465722229297B0D0A2020202020202020242874686973292E616464436C61737328276D616B65537469636B7927293B20202020202020202020202020202020202020202020202020200D0A202020207D7D293B0D0A202020';
wwv_flow_api.g_varchar2_table(10) := '200D0A20202020242827747227292E706172656E747328292E656163682866756E6374696F6E207365744F766572666C6F772829207B20766172202474686174203D20242874686973293B200D0A2020202020202020766172206F766572666C6F775661';
wwv_flow_api.g_varchar2_table(11) := '6C7565203D2024746861742E63737328226F766572666C6F7722293B0D0A2020202020202020696620286F766572666C6F7756616C756520213D3D202276697369626C6522297B0D0A2020202020202020202020202020202024746861742E6373732822';
wwv_flow_api.g_varchar2_table(12) := '6F766572666C6F77222C2276697369626C6522293B0D0A20202020202020207D0D0A202020207D293B0D0A0D0A20202020202020202F2F436865636B2069662062726F7773657220697320496E7465726E6574204578706C6F7265722E0D0A2020202020';
wwv_flow_api.g_varchar2_table(13) := '2020206966286E6176696761746F722E757365724167656E742E696E6465784F66282749452729213D3D2D317C7C206E6176696761746F722E61707056657273696F6E2E696E6465784F66282754726964656E742F2729203E202D31297B0D0A20202020';
wwv_flow_api.g_varchar2_table(14) := '20202020202020202428272E6D616B65537469636B793A666972737427292E706172656E7428292E6368696C6472656E28292E656163682866756E6374696F6E20676574576964746828297B207661722024746869734945203D20242874686973293B20';
wwv_flow_api.g_varchar2_table(15) := '76617220615769647468203D20247468697349452E6373732822776964746822293B20247468697349452E63737328277769647468272C615769647468293B7D290D0A0D0A2020202020202020202020202F2F205363726F6C6C206576656E7420636865';
wwv_flow_api.g_varchar2_table(16) := '636B0D0A202020202020202020202020242877696E646F77292E7363726F6C6C2866756E6374696F6E20286576656E7429207B0D0A20202020202020202020202020202020766172207363726F6C6C203D20242877696E646F77292E7363726F6C6C546F';
wwv_flow_api.g_varchar2_table(17) := '7028293B0D0A0D0A202020202020202020202020202020202F2F20416374697661746520737469636B7920666F72204945206966207363726F6C6C746F70206973206D6F7265207468616E20323070780D0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(18) := '2028207363726F6C6C203E20373029207B0D0A20202020202020202020202020202020202020202428272E6D616B65537469636B793A666972737427292E706172656E7428292E616464436C617373282022737469636B792D746F702D69652220293B0D';
wwv_flow_api.g_varchar2_table(19) := '0A202020202020202020202020202020207D656C73657B0D0A20202020202020202020202020202020202020202428272E6D616B65537469636B793A666972737427292E706172656E7428292E72656D6F7665436C617373282022737469636B792D746F';
wwv_flow_api.g_varchar2_table(20) := '702D69652220293B20202020202020200D0A202020202020202020202020202020207D0D0A0D0A2020202020202020202020207D293B0D0A20202020202020207D0D0A7D0D0A0D0A20202020';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38378236820161048)
,p_plugin_id=>wwv_flow_api.id(38377045713142784)
,p_file_name=>'ffhir.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6D616B65537469636B797B0D0A20202020706F736974696F6E3A20737469636B793B0D0A20202020746F703A20343870783B0D0A202020207A2D696E6465783A20393B0D0A7D0D0A0D0A2E737469636B792D746F702D69657B0D0A20202020706F7369';
wwv_flow_api.g_varchar2_table(2) := '74696F6E3A66697865643B0D0A2020202077696474683A313030253B0D0A202020207A2D696E6465783A393B0D0A20202020746F703A343870783B0D0A7D20';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38378687747161372)
,p_plugin_id=>wwv_flow_api.id(38377045713142784)
,p_file_name=>'ffhir.css'
,p_mime_type=>'text/css'
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
