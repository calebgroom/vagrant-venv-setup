python_virtualenv "/home/vagrant/venv" do
  owner "vagrant"
  group "vagrant"
  action :create
end

cookbook_file "/home/vagrant/.bash_profile" do
    source "bash_profile"
    owner "vagrant"
    mode 0755
end
