apt_update 'apt-package' do
    ignore_failure true
    action :update
end

package 'default-jdk' do
    action :install
end
