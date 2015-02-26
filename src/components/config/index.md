---
title: Config Component

---

[![Latest Stable Version](https://img.shields.io/packagist/v/orchestra/config.svg?style=flat)](https://packagist.org/packages/orchestra/config)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/config.svg?style=flat)](https://packagist.org/packages/orchestra/config)
[![MIT License](https://img.shields.io/packagist/l/orchestra/config.svg?style=flat)](https://packagist.org/packages/orchestra/config)

Config Component is a configuration with environment based support for Laravel 5 and above. The component is actually based from Laravel 4 configuration.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Change Log]({doc-url}/components/kernel/changes#v3-0)
5. [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Config
:----------|:----------
 5.0.x     | 3.0.x

 ## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/config": "3.0.*"
    }
}
```

And then run `composer install` from the terminal.

### Quick Installation

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/config=3.0.*"
```

## Configuration {#configuration}

To swap Laravel 5 default configuration, all you need to do is add the following code to `bootstrap/app.php`:

```php
$app->singleton(
    'Illuminate\Foundation\Bootstrap\LoadConfiguration',
    'Orchestra\Config\Bootstrap\LoadConfiguration'
);
```

### Configuration Caching Support

Config Component also bring an enhanced `php artisan config:cache` support to speed up configuration loading, some features include:

* Caching packages/namespaced config instead of just application `config` directory.
* Enforcing lazy loaded packages config by including list of packages config key in `compile.config`.

In order to do this you need to replace `Illuminate\Foundation\Provider\ArtisanServiceProvider` with a new `App\Providers\ArtisanServiceProvider`:

```php
<?php namespace App\Providers;

use Orchestra\Config\Console\ConfigCacheCommand;
use Illuminate\Foundation\Providers\ArtisanServiceProvider as ServiceProvider;

class ArtisanServiceProvider extends ServiceProvider
{
    /**
     * Register the command.
     *
     * @return void
     */
    protected function registerConfigCacheCommand()
    {
        $this->app->singleton('command.config.cache', function ($app) {
            return new ConfigCacheCommand($app['files']);
        });
    }
}
```

> Don't forget to update your `config/app.php` to replaces `Illuminate\Foundation\Provider\ArtisanServiceProvider` with `App\Providers\ArtisanServiceProvider`.

#### Caching lazy loaded packages file

In order to force certain packages to be included in config caching, you can specify either the relative key of desired packages in your `config/compile.php` file:

```php
<?php

return [

    // ...

    'config' => [
        'orchestra/foundation::config',  // if package config is group under "config/config.php"
        'orchestra/foundation::roles',   // Using one of the key available in "config/config.php"
        'orchestra/html::form',          // When package contain "config/form.php"
    ],

];
```

## Resources {#resources}

* [GitHub](https://github.com/orchestral/config)
* [Packagist](https://packagist.org/packages/orchestra/config)
* [Travis-CI](https://travis-ci.org/orchestral/config)