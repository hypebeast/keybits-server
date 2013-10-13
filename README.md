keybits-server
==============

Ansible playbooks and Dockerfiles to help you set up a personal server

**WARNING** This is a Work in Progress. Things are incomplete and broken.

Requirements:

- Ansible
- Git
- A server with Docker installed (more info coming soon)

### Install docker-ansible module:

    curl https://raw.github.com/cove/docker-ansible/master/docker-ansible.py > docker

On Ubuntu / Debian:

    sudo mv docker /usr/share/ansible

On a Mac:

    sudo mv docker /usr/local/share/ansible

### Prepare to deploy

To install, clone this repo:

    git clone https://github.com/Keybits/keybits-server.git
    cd keybits-server

Now edit these files:

rename `hosts.example` to `hosts` - enter your ip address here

rename `vars/user.yml.example` to `vars/user.yml.` and edit the contents.

### Deploy!

Now run:

    ansible-playbook -i ./hosts site.yml

Make a cup of tea and come back to see your new server and visit http://YOURDOMAIN

