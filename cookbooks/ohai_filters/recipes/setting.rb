package "apache2" do
	action :install
end

service "apache2" do
	action [:enable, :start]
end

cookbook_file "/var/www/html/index.html" do
	source node["filters"]["indexfile"]
	mode "0644"
end
