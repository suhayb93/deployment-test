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
,p_release=>'5.1.0.00.43'
,p_default_workspace_id=>40751033610199612965
,p_default_application_id=>97418
,p_default_owner=>'DWEIKAT'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 97418 - Sample Database Application
--
-- Application Export:
--   Application:     97418
--   Name:            Sample Database Application
--   Date and Time:   12:36 Tuesday December 27, 2016
--   Exported By:     SUHAYBDWAIKAT@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PAGE: 50. deployment
--   Manifest End
--   Version:         5.1.0.00.43
--   Instance ID:     63113759365424
--

-- C O M P O N E N T    E X P O R T
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/pages/delete_00050
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>50);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(42264833241552572429)
,p_name=>'deployment'
,p_page_mode=>'NORMAL'
,p_step_title=>'deployment'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'SUHAYBDWAIKAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161227123527'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(963491481880490567)
,p_name=>'Emplyee'
,p_template=>wwv_flow_api.id(42004737876032644689)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'select * from emp'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(42004743198419644702)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963492058032490572)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963492455848490573)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963492845732490573)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963493296397490574)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963493652654490574)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963494098735490574)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963494458535490575)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(963494821534490575)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(963997416953980894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(963491481880490567)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(42004751073004644742)
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(964057152663990967)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'test'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  htp.print(''<script>alert(''''hello'''')<script/>'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(963997416953980894)
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
