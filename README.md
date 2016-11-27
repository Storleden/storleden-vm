# Storleden VM (ubuntu 16.04)

Virtual Machine vanilla to start projects.

## Installation requirements

* Latest [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Latest [Vagrant](https://www.vagrantup.com/downloads.html)
* Vagrant plugin:
    * vagrant-bindfs
    * vagrant-hostmanager
    * vagrant-vbguest

*To install vagrant plugins run: vagrant plugin install "name plugin"*

## Installation step

After install all the components you should follow the next steps to set up and running your machine.

* Clone it: `git clone git://example.com/thisrepo.git`
* Run vagrant: `cd thisrepo; vagrant up` You should navigate to the actually folders name.
* Once your machine ends with:

        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        |  ____                _      _    _                    _  |
        | |  _ \ ___  __ _  __| |    / \  | |__   _____   _____| | |
        | | |_) / _ \/ _` |/ _` |   / _ \ | '_ \ / _ \ \ / / _ \ | |
        | |  _ <  __/ (_| | (_| |  / ___ \| |_) | (_) \ V /  __/_| |
        | |_| \_\___|\__,_|\__,_| /_/   \_\_.__/ \___/ \_/ \___(_) |
        |                                                          |
        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    This means your vagrant machine boot fine, if you don't see this message read the [troubleshooting](#troubleshooting 'troubleshooting') below.

* To administer you machine you can go ssh it with `vagrant ssh`

## Troubleshooting

Commun errors.

* SSH command responded with a non-zero message.

    If you see this message:

    >     The SSH command responded with a non-zero exit status. Vagrant
    >     assumes that this means the command failed. The output for this command
    >     should be in the log above. Please read the output to determine what
    >     went wrong.

    This might happen because the folder didn't mount properly. To fix this run `vagrant reload --provision`

* Vagrant hang out.

    Vagrant machine never start. @docu needed here.
