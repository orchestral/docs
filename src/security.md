---
title: Securing Orchestra Platform

---

1. [Set Application Key](#set-application-key)
2. [Use Better Session Driver](#use-better-session-driver)
3. [Disallow access to `.blade.php` for themes](#disable-access-to-theme)

<a name="set-application-key"></a>
## Set Application Key

The application key should always be unique for every application which would mainly be used to encrypt your session cookies (among other stuff). If you haven't set a key, run the following command to do so:

    php artisan key:generate

Typically, this string should be 32 characters long. The key can be set in the `.env` environment file. **If the application key is not set, your user sessions and other encrypted data will not be secure!**

<a name="use-better-session-driver"></a>
## Use Better Session Driver

Orchestra Platform recommends using either Redis, Memcached or APC session driver (or at least database driver). This help making sure we can handle session request without any interruption especially when for handling CSRF or Login Throttling.

You can edit the driver from `.env` file.

<a name="disable-access-to-theme"></a>
## Disallow access to `.blade.php` for themes

<a name="disable-access-to-theme-for-apache"></a>
#### Apache

Configuration is included in the default `public/.htaccess`:

    # Secure Front Themes...

    RewriteRule ^themes/.*\.(blade.php|php)$ - [F,L,NC]

<a name="disable-access-to-theme-for-nginx"></a>
#### Nginx

You can add the following configuration:

    location ~ ^/themes/(.*)\.php$ {
        deny all;
    }
