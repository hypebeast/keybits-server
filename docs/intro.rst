Introduction
============

This documentation gives you **step-by-step instructions to set up a personal server** using scripts developed by the **Keybits** project to make it easy to set up and maintain a personal server.

For background and rationale, see the `main project website <http://keybits.net>`_ and `blog <http://blog.keybits.net>`_

Requirements
------------

* A way to **pay for a server** (usually a PayPal account or credit card)
* Ability to follow instructions and **type commands into a terminal**
* Local computer running **OS X or Linux**

.. warning:: We don't currently support Windows as the installation requires `Ansible <http://www.ansibleworks.com>`_ which doesn't run on Windows. You can of course set up a virtual machine and run Linux there to provision your server.

**Not a technical person?** If the above information makes little sense to you then this documentation is probably not for you. We plan to have a simple solution for non technical users. If you're interested in having everything set up for you please sign up for the `free newsletter <http://keybits.net>`_ and we'll let you know when a managed version is available.

Recommendations
---------------

Part of the aim of the Keybits project is to decentralise systems and give you choice over providers that you use. However, at this early stage we want the documentation to be simple to follow so we have instructions for the following providers who we recommend:

* `Gandi <http://www.gandi.net>`_ (for domain name and email)
* `Digitial Ocean <https://www.digitalocean.com>`_ (for your server)
* `Ubuntu <http://www.ubuntu.com>`_ 13.04 64bit (to make running Docker reliable)

If you know what you're doing feel free to try other providers, but **if you're new to setting up servers you'll want to follow our recommendations** to keep things simple.

What you get
------------

* A secured server that you can access via SSH key based login.
* A landing page
* Blog
* Open source analytics
* *Not much more at the moment! But it will be as simple as pulling a Git repository and typing a single line command to add more applications and apply updates.*

Currently supported applications
--------------------------------

* `Ghost <http://ghost.org>`_ - blogging platform
* `Piwik <http://piwik.org>`_ - website analytics
* **... much more to come soon!**

.. note:: This project is at a very early stage. We launched on Monday, 14 October 2013. We'll be rapidly adding applications and features over the coming weeks. Check out the :doc:`roadmap </todo>` for what's coming soon. Or sign up for the `free newsletter <http://keybits.net>`_ to be notified when updates are available.