---
layout: default
title: Installation
---
# Installation

* [Install Composer](#install-composer)
* [Install Orchestra Platform](#install-orchestra)
* [Server Requirements](#requirement)

<article id="install-composer">
## Install Composer

Orchestra Platform utilizes [Composer](http://getcomposer.org/) to manage its dependencies. First, download a copy of the `composer.phar`. Once you have the PHAR archive, you can either keep it in your local project directory or move to `usr/local/bin` to use it globally on your system. On Windows, you can use the Composer [Windows installer](https://getcomposer.org/Composer-Setup.exe).

</article>

<article id="install-orchestra">
## Install Orchestra Platform

Once Composer is installed, download the [latest version](https://github.com/orchestral/platform/archive/illuminate.zip) of the Orchestra Platform and extract its contents into a directory on your server. Next, in the root of your Orchestra Platform application, run the `php composer.phar install` command to install all dependencies. This process requires Git to be installed on the server to successfully complete the installation.

</article>

<article id="requirement">
## Server Requirements

Orchestra Plaftorm has a few system requirements:

* PHP >= 5.3.7
* MCrypt PHP Extension
* Apache, nginx, or another compatible web server.
* SQLite, MySQL, PostgreSQL, or SQL Server PDO drivers.

</article>