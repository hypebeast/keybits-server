Get your server
===============

We currently recommend using `Digitial Ocean <https://www.digitalocean.com>`_ to host your server. In the near future we hope to expand this documentation for other providers. (If you know what you're doing you should be able to get things working on a provider of you choice.)

Create a droplet
----------------

Sign up for an account on the Digital Ocean website and choose to create a droplet with the followig options:

* **Hostname** - a memorable short name of your choice (e.g. myserver)
* **Size** - a 512mb droplet will be fine to get you started
* **Region** - choose a region near to you
* **Select image** - Applications tab > Docker-Ubuntu-13.04x64
* **Add optional SSH keys** - IMPORTANT - we recommend that you do this - see above for details on preparing your key
* **Setting** -leave the default options as is

You can now create your droplet.

Test logging in with IP address
-------------------------------

ssh root@YOURIPADDRESS

Set up DNS
----------

Set up DNS

Test logging in with your domain name
-------------------------------------


If that all works you're ready to provision your server!