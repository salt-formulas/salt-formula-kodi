
============
KODI formula
============

Kodi (formerly known as XBMC) is a software media center for playing videos, music, pictures, games, and more.

Sample pillars
==============

.. code-block:: yaml

    kodi:
      server:
        enabled: True


Usage
=====

plugin repositories

wget https://dmd-xbmc.googlecode.com/files/repository.dmd-xbmcv2.googlecode.com.zip

wget http://kodi-czsk.github.io/repository/repo/repository.kodi-czsk/repository.kodi-czsk-1.0.0.zip

tvheadend

curl http://apt.tvheadend.org/repo.gpg.key | sudo apt-key add -
apt-add-repository -r http://apt.tvheadend.org/stable
apt-add-repository http://apt.tvheadend.org/unstable
apt-get update

apt-get update
apt-get install tvheadend
apt-get install kodi-pvr-tvheadend-hts v4l-conf v4l-utils dvb-tools w-scan

install tvb-t device firmware if necessary
tvheadend ui - http://localhost:9981/

Read more
=========

* https://code.google.com/p/dmd-xbmc/
* http://kodi-czsk.github.io/repository/
* https://tvheadend.org/projects/tvheadend/wiki/AptRepository
* https://kodi.tv/
Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-kodi/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-kodi

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
