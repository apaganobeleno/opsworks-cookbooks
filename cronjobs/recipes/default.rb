# Cookbook Name:: cronjobs
# Recipe:: default
# IE cron jobs

if node['cronjobs'] != nil && node['cronjobs']
  node['cronjobs'].each do |cronjob|
    cron cronjob['name'] do
      path "/usr/local/bin:$PATH"
      hour cronjob['hour']
      minute cronjob['minute']
      command "cd /srv/www/myapp/current && #{cronjob['command']}"
    end
  end
end