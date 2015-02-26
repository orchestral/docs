---
title: Artisan Debug Profiler

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/debug.svg?style=flat)](https://packagist.org/packages/orchestra/debug)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/debug.svg?style=flat)](https://packagist.org/packages/orchestra/debug)
[![MIT License](https://img.shields.io/packagist/l/orchestra/debug.svg?style=flat)](https://packagist.org/packages/orchestra/debug)

Debug Component is commandline profiling package for Laravel, It was based from Laravel 4.1 commandline profiling tool which was merged with `php artisan tail`.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
  - [Enabling Profiler](#enabling-profiler)
  - [Viewing the Profiler](#viewing-the-profiler)
5. [Change Log]({doc-url}/components/debug/changes#v3-0)
6. [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Debug
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require-dev": {
        "orchestra/debug": "3.0.*"
    }
}
```

And then run `composer install` from the terminal.

### Quick Installation {#quick-installation}

Above installation can also be simplify by using the following command:

    composer require --dev "orchestra/debug=3.0.*"

## Configuration {#configuration}

Next add the following service provider in `config/app.php` or use [Config Component]({doc-url}/components/config) to handle environment based providers.

```php
'providers' => [

    // ...

    'Orchestra\Debug\DebugServiceProvider',

    'Orchestra\Debug\CommandServiceProvider',
],
```

### Aliases

You could also create an alias for `Orchestra\Support\Facades\Profiler` in `app/config/app.php`.

```php
'aliases' => [
    'Profiler' => 'Orchestra\Support\Facades\Profiler',
],
```

## Usage {#usage}

1. [Enabling Profiler](#enabling-profiler)
2. [Viewing the Profiler](#viewing-the-profiler)

### Enabling Profiler {#enabling-profiler}

To enable the profiler, all you need to do add the following to `App\Providers\AppServiceProvider`:

```php
<?php namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Boot the service provider.
     *
     * @return void
     */
    public function boot()
    {
        if ($this->app['config']['app.debug']) {
            Profiler::attachDebugger();
        }
    }
}
```

### Viewing the Profiler {#viewing-the-profiler}

To view the profiler, run the following command in your terminal:

```bash
php artisan debug
```

## Resources {#resources}

* [Github](https://github.com/orchestral/debug)
* [Packagist](https://packagist.org/packages/orchestra/debug)
* [Travis-CI](https://travis-ci.org/orchestral/debug)
