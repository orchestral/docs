---
title: Configuration

---

1. [Introduction](#introduction)
2. [Setting Admin URL](#admin-url)
   - [As Prefix](#admin-url-as-prefix)
   - [As Domain](#admin-url-as-domain)
3. [Securing Orchestra Platform](#securing)

<a name="introduction"></a>
## Introduction

All of the configuration files for the Orchestra Platform are stored in the `resources/config` directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.

<a name="admin-url"></a>
## Setting Admin URL

Instead of using the default `/admin` prefix for your administration page, you can configure Orchestra Platform to handled by a different URL, to utilize this feature all you need to do is publish `orchestra/foundation` configuration using the following command:

    php artisan publish:config orchestra/foundation

<a name="admin-url-as-prefix"></a>
### As Prefix

Edit `handles` key in `resources/config/packages/orchestra/foundation/config.php` to (as an example) `"sudo"`. With this changes Orchestra Platform Administration page while be accessible from `/sudo`.

```php
<?php

return [
    'handles' => 'sudo',
];
```

You could as well set it to `"/"` and it would handle the root uri for application without sub-domain, or read on to configure it [as domain](#admin-url-as-domain).

<a name="admin-url-as-domain"></a>
### As Domain

You can also assign a sub-domain to handle Orchestra Platform Administration page by editing the `handles` value to `//admin.{{domain}}`.

```php
<?php

return [
    'handles' => '//admin.{{domain}}',
];
```

However to do this, please make sure that you have set `APP_URL` value in `.env` and use `Orchestra\Extension\Traits\DomainAwareTrait`.

```php
<?php namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Orchestra\Extension\Traits\DomainAwareTrait;

class AppServiceProvider extends ServiceProvider
{
    use DomainAwareTrait;

    /**
     * Boot the service provider.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerDomainAwareness();
    }
}
```

<a name="securing"></a>
## Securing Orchestra Platform

### Use better session driver

Orchestra Platform recommends using either Redis, Memcached or APC session driver (or at least database driver). This help making sure we can handle session request without any interruption especially when for handling CSRF.

### Disallow access to `.blade.php` for themes

#### Apache

Configuration is included in the default `public/.htaccess`:

```
# Secure Front Themes...

RewriteRule ^themes/.*\.(blade.php|php)$ - [F,L,NC]
```

#### Nginx

You can add the following configuration:

```
location ~ ^/themes/(.*)\.php$ {
    deny all;
}
```
