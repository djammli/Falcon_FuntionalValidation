# require 'report_builder'
# time = Time.now.getutc
# ReportBuilder.configure do |config|
#   config.json_path = 'results.json'
#   config.report_path = 'cucumber_web_report'
#   config.report_types = [:html]
#   config.report_tabs = %w[Overview Features Scenarios Errors]
#   config.report_title = 'Cucumber web automation test results'
#   config.compress_images = false
#   config.additional_info = { 'Project name' => 'Falcon', 'Platform' => 'Integration', 'Report generated' => time }
# end
# ReportBuilder.build_report
# resp = [{"sponsor"=>"3D Medicines (Sichuan) Co., Ltd", "partner"=>"3D Medicines (Sichuan) Co., Ltd", "data_center"=>"HDC", "url"=>"3dmedicines.mdsol.com", "rave_version"=>"5.6.5.299", "release"=>"Medidata Rave® 2016.4.1", "is_replicated"=>"No", "is_ravex_enabled"=>"No", "is_cdc_enabled"=>"No", "team"=>"Mid Market", "service_level"=>"N/A", "environment"=>"Production", "region"=>"APAC", "vip"=>"172.21.249.183", "vpn"=>"N/A", "backend_server"=>nil, "backend_db_name"=>nil, "sql_server"=>"hdcuniprdbsv853", "rave_db"=>"hdcvcl04148", "database_size_mb"=>553, "reporting_server_server"=>"None", "rave_reporting_db"=>"None", "external_ftp"=>"ftp01.ftp.mdsol.com\\3dmedicinesftp\\3dmedicines.mdsol.com\\sasondemand", "internal_ftp"=>"\\\\hdcuniprftpc001.hdc.mdsol.com\\3dmedicinesftp\\3dmedicines.mdsol.com\\sasondemand", "pm"=>"Lin(Leo) Shi", "pd"=>"", "csp"=>"Zhiyang Chen", "sla"=>"0.0", "page_turn_sla"=>"N/A", "decommission_dt"=>"N/A", "page_views"=>-1, "deployment_type"=>"N/A", "validated"=>"True"}]
# if resp.to_s.include?('HDC')
#   puts "Pass"
# else
#   puts "fail"
# end