Configure your apps
===================

Ghost
-----

Your Ghost blog is located at ``http://blog.YOURDOMAIN``

See the `Ghost documentation <http://docs.ghost.org>`_ for how to set up your Ghost blog.

**TODO:**

* adding piwik code
* disqus comments

Piwik
-----

Your Piwik analytics site is located at ``http://analytics.YOURDOMAIN``

You will need the password that was assigned to the piwik database during installation. This is located ``/mnt/piwik`` on your server. You'll need to ssh into your server to view this.

``ssh deploy@yourdomain``

The database username is ``piwik`` and the databas is called ``piwik``

You can then follow the `Piwik documentation <http://piwik.org/docs>`_ to set up your first website for tracking.

**TODO:**

* Automate setup of initial piwik database and document.
