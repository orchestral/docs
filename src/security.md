---
title: Securing Orchestra Platform

---

<a name="set-application-key"></a>
## Set Application Key

The application key should always be unique for every application which would mainly be used to encrypt your session cookies (among other stuff). If you haven't set a key, run the following command to do so:

    php artisan key:generate

Typically, this string should be 32 characters long. The key can be set in the `.env` environment file. **If the application key is not set, your user sessions and other encrypted data will not be secure!**

<a name="use-better-session-driver"></a>
## Use Better Session Driver

Orchestra Platform recommends using either Redis, Memcached or APC session driver (or at least database driver). This help making sure we can handle session request without any interruption especially when for handling CSRF or Login Throttling.

