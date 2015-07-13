---
title: Installation

---

1. [Install Composer](#install-composer)
2. [Minimum Server Requirements](#server-requirement)
3. [Install Orchestra Platform](#install-orchestra-platform)
  - [Download](#download)
  - [Configuration](#configuration)
  - [Setup](#setup)
4. [Pretty URLs](#pretty-urls)

<a name="server-requirement"></a>
## Minimum Server Requirements

Orchestra Plaftorm has a few system requirements:

* PHP >= 5.5.9 (we highly recommend using PHP 5.6 for your projects).
* OpenSSL PHP Extension.
* Mbstring PHP Extension.
* Apache, nginx, or another compatible web server.
* SQLite, MySQL, PostgreSQL, or SQL Server PDO drivers.

<a name="install-composer"></a>
## Install Composer

Orchestra Platform utilizes [Composer](http://getcomposer.org/) to manage its dependencies. So, before using Orchestra Platform, you will need to make sure you have Composer installed on your machine.

<a name="install-orchestra-platform"></a>
## Install Orchestra Platform

<a name="download"></a>
### Download

You can install Orchestra Platform using Composer:

    composer create-project orchestra/platform --prefer-dist

<a name="configuration"></a>
### Configuration

The first thing you should do before running Orchestra Platform is set your application key to a random string. If you download Orchestra Platform via Composer, this key has probably already been set for you during composer install. You can also rerun this command:

    php artisan key:generate

Typically, this string should be 32 characters long. The key can be set in the `.env` environment file. **If the application key is not set, your user sessions and other encrypted data will not be secure!**

Orchestra Platform needs almost no other configuration out of the box except for **database configuration**, which can be configured in `.env` file. However, you may wish to review the `resources/config/app.php` file and its documentation. It contains several options such as `timezone` and `locale` that you may wish to change according to your application.

> Note: You should never have the `app.debug` configuration option set to `true` for a production application.

#### Permission

Orchestra Platform may require some permissions to be configured: folders within `storage` and `bootstrap/cache` requires write access by the web server.

<a name="setup"></a>
### Setup

Once Orchestra Platform is properly configured, we need to run the installation and create the application basic schema (including administrator user).

1. Run `php artisan serve` or use your prefered web server stack (or vagrant).
2. Browse to the installation page, for example `http://localhost:8000/admin` and follow the installation process.
3. And... you're done.

<a name="pretty-urls"></a>
## Pretty URLs

### Apache

The framework ships with a `public/.htaccess` file that is used to allow URLs without `index.php`. If you use Apache to serve your Orchestra Platform application, be sure to enable the `mod_rewrite` module.

If the `.htaccess` file that ships with Orchestra Platform does not work with your Apache installation, try this one:

```
Options +FollowSymLinks
RewriteEngine On

RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^ index.php [L]
```

### Nginx

On Nginx, the following directive in your site configuration will allow "pretty" URLs:

```
location / {
    try_files $uri $uri/ /index.php?$query_string;
}
```

Of course, when using Homestead, pretty URLs will be configured automatically.
