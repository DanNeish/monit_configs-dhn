template "/etc/monit/conf.d/system.conf" do
  owner "root"
  group "root"
  mode "0700"
  source "system.conf.erb"
  notifies :run, "execute[restart-monit]", :immediately
end

execute "restart-monit" do
  command "systemctl daemon-reload"
  command "monit reload"
  action :nothing
end
