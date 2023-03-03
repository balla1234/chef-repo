remote_file '/home/ubuntu/apache-tomcat-9.0.30.tar.gz' do
    source 'https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz'
    mode '0755'
    action :create
end

directory '/opt/tomcat' do
    mode '0755'
    action :create
end

execute 'I want to extract tar file' do
    command 'sudo tar xzvf apache-tomcat-9.0.30.tar.gz'
    action :run
    not_if
end

