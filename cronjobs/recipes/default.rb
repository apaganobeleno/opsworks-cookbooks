# Cookbook Name:: cronjobs
# Recipe:: default
# IE cron jobs

if node['cronjobs'] != nil && node['cronjobs']
  node['cronjobs'].each do |cronjob|
    cron cronjob['name'] do
      path "/usr/local/bin:$PATH"
      hour cronjob['hour']
      minute cronjob['minute']
      day cronjob['day']
      month cronjob['month']
      weekday cronjob['weekday']
      command "cd /srv/www/invite_education/current && #{cronjob['command']}"
      mailto cronjob['mailto']
    end
  end
end