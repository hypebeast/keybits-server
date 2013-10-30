Get your server
===============

We currently recommend using `Digitial Ocean <https://www.digitalocean.com>`_ to host your server. In the near future we hope to expand this documentation for other providers. (If you know what you're doing you should be able to get things working on a provider of your choice.)

Create an account with Digital Ocean
------------------------------------

We'll leave you to work out how to do this! Don't create a server ('droplet') yet. Log into your dashboard.

Create a key pair for SSH
-------------------------

Although it isn't essential to use key for logging into your server (you can just use a password) we strongly recommend getting key based logins set up.

**Before createing your server, do this on your local machine if you don't already have and RSA key pair that you want to use with your server:**

::

    ssh-keygen -t rsa

You can choose the defualt file name (id_rsa) or give the key pair your own name. They will be stored in your user's ``.ssh`` directory (e.g. ``~/.ssh/``).

Enter a strong passphrase when prompted. Make a note of this so as you don't forget it.

If you accepted the default name your public key is no stored in ``~/.ssh/id_rsa.pub``

You now need to copy the contents of this file to Digital Ocean. There are several ways you could do this. Try::

    cat ~/.ssh/id_rsa.pub

This will output the contents of the file. Select it all and copy to your clipboard.

Now go to you Digital Ocean dashboard

* choose 'SSH Keys' from the menu
* click the blue 'Add SSH key' button
* choose a name to help you identify the key and  paste in the contents of your public key
* click the green 'create ssh key' and you're done

Digital Ocean will now install this key in the 'authorized_keys' file when it builds the server so you can log in immediately with your key file.

[optional] Add your key to a key chain
---------------------------------------

Depending on your operating system you'll need to find out how best to do this. Using a keyring saves typing passphras­es all the time.

For example Ubuntu comes with gnome-keyring. This starts on system startup and adds all keys in ``~/.ssh/`` when you log in to the system.

You can check the keys on your keyring with ssh-add -L

Create a droplet
----------------

From the Digital Ocean admin area, create a droplet with the followig options:

* **Hostname** - a memorable short name of your choice (e.g. myserver)
* **Size** - a 512mb droplet will be fine to get you started
* **Region** - choose a region near to you
* **Select image** - Applications tab > Docker-Ubuntu-13.04x64
* **Add optional SSH keys** - IMPORTANT - we recommend that you do this - see above for details on preparing your key
* **Setting** -leave the default options as is

You can now create your droplet. When it's created, in the Digital Ocean admin area make a note of your new server's IP address.

Test logging in with IP address
-------------------------------

If your key pair was installed correctly you should be able to log into your server with:

::

    ssh root@YOURIPADDRESS

You will need to accept the identification of the server and you should be logged in as root.

Logout with ``exit``

Set up DNS
----------

* Go to "DNS" under the Digital Ocean menus
* Choose "Add Domain"
* Add an ``A`` record with hostname ``@`` and your server's IP addresss
* Add a ``CNAME`` record with a name of ``*`` and a hostname of ``@``
* Add mail records that look like those shown below

Your DNS should look something like this:

.. image:: /img/do-dns.png

Test logging in with your domain name
-------------------------------------

You should now be able to log into your server with::

   ssh root@YOURDOMAIN

If that all works you're ready to provision your server!