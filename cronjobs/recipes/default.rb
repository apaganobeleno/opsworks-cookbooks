# Cookbook Name:: cronjobs
# Recipe:: default
# IE cron jobs

cron "advance_students" do
  path "/usr/local/bin:$PATH"
  hour "19"
  minute "00"
  command "cd /srv/www/myapp/current && bundle exec rake scheduler:advance_students"
end

cron "send_event_summary_emails" do
  path "/usr/local/bin:$PATH"
  hour "16"
  minute "00"
  command "cd /srv/www/myapp/current && bundle exec rake send_event_summary_emails"
end

cron "saving_for_college" do
  path "/usr/local/bin:$PATH"
  hour "19"
  minute "30"
  command "cd /srv/www/myapp/current && bundle exec rake data:saving_for_college:import"
end
