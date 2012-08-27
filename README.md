# Vagrant setup with Python Virtual Environment

I use this project as a starting point when I need to develop on a VM that uses a
Python virtualenv.

The virtual environment is located in /home/vagrant/venv. When you connect to the VM
using 'vagrant ssh' the virtual environment is already activated.

## Getting Started

The vagrant/cookbooks directory is maintained by [librarian](https://github.com/applicationsonline/librarian).
Use the commands below to generate vagrant/cookbooks.

    $ git://github.com/calebgroom/vagrant-venv-setup.git
    $ cd vagrant-venv-setup/vagrant
    $ librarian-chef install
    $ cd ../
    $ vagrant up
    $ vagrant ssh

## Next Steps

 * Add upstream cookbook requirements to vagrant/Cheffile and re-run `librarian-chef install`
 * Add your custom cookbooks to vagrant/site-cookbooks.
 * Add a `chef.add_recipe recipe-name` line to Vagrantfile for each cookbook that you add.
