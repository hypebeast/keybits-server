Provision your server
=====================

This docoument gives you step-by-step instructions for provisioning your server.

.. note:: This documentation is still new - please report issues on `Github <https://github.com/Keybits/keybits-server/issues>`_

.. warning:: We don't currently support Windows as the installation requires `Ansible <http://www.ansibleworks.com>`_ which doesn't run on Windows. You can of course set up a virtual machine and run Linux there to provision your server.

**The folowing steps are carried out on your local computer:**

Install Ansible
---------------

Ansible is the tool we use to provision your server. Full installation instructions are on the `Ansible <http://www.ansibleworks.com/docs/intro_installation.html>`_ website.

If you use Python and pip we recommend ``sudo pip install ansible``

Install docker-ansible module
------------------------------

Get the docker-ansible python file::

    curl https://raw.github.com/cove/docker-ansible/master/docker-ansible.py > docker

Copy docker-ansible.py to your Ansible modules directory:

* On Ubuntu / Debian: ``sudo mv docker /usr/share/ansible``
* On a OS X: ``sudo mv docker /usr/local/share/ansible``

Prepare to deploy
-----------------

Clone the keybits-server repo::

    git clone https://github.com/Keybits/keybits-server.git
    cd keybits-server

Now **edit these files**:

* Rename ``hosts.example`` to ``hosts`` and enter your server's IP address here

* Rename ``vars/vars.yml.example`` to ``vars/vars.yml`` and edit the contents. You'll need to enter your **domain name**, your server's IP addresss again, a **username** you'd like to log in with and an **email** address for your server to send notifications to.

Deploy!
-------

Now run::

    ansible-playbook -i ./hosts first-run.yml

**NB: The `first-run` playbook only needs to be run once.**

Make a cup of tea and come back to see your new server (it'll take 10 to 15 minutes to install everything the first time). When Ansible completes it's tasks, visit:

* http://YOURDOMAIN to see a basic landing page
* http://blog.YOURDOMAIN to see your blog
* http://analytics.YOURDOMAIN to see the piwik setup page

Update your server
------------------

When updates are available you simply need to run::

    ansible-playbook -i ./hosts keybits.yml

This will update software and install new applications.

Updating or installing specific components
-------------------------------------------

The playbooks and tasks are tagged so that you can just run the parts that you want.

TODO: list available tags

The next section will help you configure your applications.
