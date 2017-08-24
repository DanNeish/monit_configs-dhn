template "/etc/monit/conf.d/redis-server.conf" do
  owner "root"
  group "root"
  mode "0700"
  source "redis-server.conf.erb"
  notifies :run, "execute[restart-monit]", :immediately
end

execute "restart-monit" do
  command "systemctl daemon-reload"
  command "monit reload"
  action :nothing
end
