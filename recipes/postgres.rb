template "/etc/monit/conf.d/postgres.conf" do
  owner "root"
  group "root"
  mode "0700"
  source "postgres.conf.erb"
  notifies :run, "execute[restart-monit]", :immediately
end

execute "restart-monit" do
  command "systemctl daemon-reload"
  command "monit reload"
  action :nothing
end
