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

You should now be presented with a shell in that already has the virtual environment loaded:

    $ vagrant ssh
    Linux lucid32 2.6.32-38-generic #83-Ubuntu SMP Wed Jan 4 11:13:04 UTC 2012 i686 GNU/Linux
    Ubuntu 10.04.4 LTS

    Welcome to Ubuntu!
     * Documentation:  https://help.ubuntu.com/
    New release 'precise' available.
    Run 'do-release-upgrade' to upgrade to it.

    Welcome to your Vagrant-built virtual machine.
    Last login: Mon Aug 27 17:32:15 2012 from 10.0.2.2
    (venv)vagrant@lucid32:~$

## Next Steps

 * Add upstream cookbook requirements to vagrant/Cheffile and re-run `librarian-chef install`
 * Add your custom cookbooks to vagrant/site-cookbooks.
 * Add a `chef.add_recipe recipe-name` line to Vagrantfile for each cookbook that you add.
