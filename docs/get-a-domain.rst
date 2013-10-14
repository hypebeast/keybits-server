Get a domain name
=================

.. note:: Before getting started please read the :doc:`requirements </intro>`.

To use your personal server you'll need a domain name.


Choosing a domain name
----------------------

**If you already have a domain name, jump to 'DNS' below.**

If you're struggling to choose a domain name for a personal server we'd recommend using the ``.name`` generic top level domain since it's:

* designed for use by individuals
* cheap
* plenty of choices available

Don't sweat over the name too much - the main thing is to have something you can remember and pass on to other people like you would your postal address. It doesn't *have* to be super cool!

Buying a domain name
--------------------

We recommend buying a domain name from `Gandi <http://www.gandi.net>`_. Some of the benefits of using them include:

* `no bullshit <http://www.gandi.net/no-bullshit>`_ (!)
* free spam and virus protected **email** accounts with a domain name.
* a free **SSL certificate** for the first 12 months and only €12 thereafter

.. note:: We'll be making use of the SSL certificate and email accounts very soon with the next updates to your server.

Create an account on Gandi's website and following the instructions to choose and buy your domain name.

Set name servers
----------------

During the setup process you'll want to set external name servers to::

    ns1.digitalocean.com
    ns2.digitalocean.com
    ns3.digitalocean.com

(We've specified Digital Ocean as that's who we'll be using for your server. You are of course welcome to choose a different server provider but this documentation only covers Digital Ocean for now.)

Free Email with Gandi
---------------------

Gandi gives you 5 free email accounts with each domain purchased:

* You have a total of 1gb storage which is plenty to get started
* Spam and virus filtered
* Webmail via roundcube

Follow the `Gandi documentation <http://wiki.gandi.net/en/mail>`_ to get set up with email.

.. note:: Keybits will be enabling email management from your own server. It's our top priority to get this set up and documented. Check back soon for more on email.