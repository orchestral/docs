---
title: Configuration

---

## Introduction {#introduction}

All of the configuration files for the Orchestra Platform are stored in the `resources/config` directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.

## After Installation {#after-installation}

### Setting Admin URL

Instead of using the default `/admin` prefix for your administration page, you can configure Orchestra Platform to handled by a different URL, to utilize this feature all you need to do is publish `orchestra/foundation` configuration using the following command:

```bash
php artisan publish:config orchestra/foundation
```

#### Set URI Prefix

Edit `handles` key in `resources/config/packages/orchestra/foundation/config.php` to (as an example) `"sudo"`. With this changes Orchestra Platform Administration page while be accessible from `/sudo`.

#### Set URI Sub-Domain

You can also assign a sub-domain to handle Orchestra Platform Administration page by editing the `handles` value to `//admin.{{domain}}`. However to do this, please make sure that you have set `APP_URL` value in `.env` and use `Orchestra\Extension\Traits\DomainAwareTrait`.

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
