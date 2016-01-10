---
title: Multi-tenant Database Schema Manager for Laravel
badge: tenanti

---

Tenanti allow you to manage multi-tenant data schema and migration manager for your Laravel application.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
   - [Single Database Connection Setup](#single-db-setup)
   - [Multi Database Connection Setup](#multi-db-setup)
   - [Console Support](#console-support)
5. [Change Log]({doc-url}/components/tenanti/changes#v3-2)

<a name="compatibility"></a>
## Version Compatibility

Laravel  | Tenanti
:--------|:---------
 4.2.x   | 2.2.x
 5.0.x   | 3.0.x
 5.1.x   | 3.1.x
 5.2.x   | 3.2.x@dev

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/tenanti": "~3.0"
    }
}
```

And then run `composer install` to fetch the package.

<a name="quick-installation"></a>
### Quick Installation

You could also simplify the above code by using the following command:

    composer require "orchestra/tenanti=~3.0"

<a name="configuration"></a>
### Configuration

Next add the following service provider in `config/app.php`.

```php
'providers' => [

    // ...
    Orchestra\Tenanti\TenantiServiceProvider::class,
    Orchestra\Tenanti\CommandServiceProvider::class,
],
```

> The command utility is enabled via `Orchestra\Tenanti\CommandServiceProvider`.

<a name="usage"></a>
## Usage

1. [Single Database Connection Setup](#single-db-setup)
    - [Configuration](#single-db-configuration)
    - [Setup Model Observer](#single-db-observer)
2. [Multi Database Setup](#multi-db-setup)
    - [Configuration](#multi-db-configuration)
    - [Setup Model Observer](#multi-db-observer)
3. [Console Support](#console-support)


<a name="single-db-setup"></a>
## Single Database Connection Setup

<a name="single-db-configuration"></a>
### Configuration

Open `config/orchestra/tenanti.php` and customize the drivers.

```php
<?php

return [
    'drivers' => [
        'user' => [
            'model' => App\User::class,
            'path'  => database_path('tenanti/user'),
        ],
    ],
];
```

You can customize, or add new driver in the configuration. It is important to note that `model` configuration only work with `Eloquent` instance.

#### Setup migration autoload

For each driver, you should also consider adding the migration path into autoload (if it not already defined). To do this you can edit your `composer.json`.

##### composer.json

```json
{
    "autoload": {
        "classmap": [
            "database/tenant/users"
        ]
    }
}
```

<a name="single-db-observer"></a>
### Setup Model Observer

Now that we have setup the configuration, let add an observer to our `User` class (preferly in `App\Providers\AppServiceProvider`):

```php
<?php namespace App\Providers;

use App\User;
use App\Observers\UserObserver;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        User::observe(new UserObserver);
    }
}
```

and your `App\Observers\UserObserver` class should consist of the following:

```php
<?php namespace App\Observers;

use Orchestra\Tenanti\Observer;

class UserObserver extends Observer
{
    public function getDriverName()
    {
        return 'user';
    }
}
```

<a name="console-support"></a>
## Console Support

Tenanti include additional command to help you run bulk migration when a new schema is created, the available command resemble the usage available from `php artisan migrate` namespace.

Command                                    | Description
:------------------------------------------|:---------------------
 php artisan tenanti:install {driver}      | Setup migration table on each entry for a given driver.
 php artisan tenanti:make {driver} {name}  | Make a new Schema generator for a given driver.
 php artisan tenanti:migrate {driver}      | Run migration on each entry for a given driver.
 php artisan tenanti:rollback {driver}     | Rollback migration on each entry for a given driver.
 php artisan tenanti:reset {driver}        | Reset migration on each entry for a given driver.
 php artisan tenanti:refresh {driver}      | Refresh migration (reset and migrate) on each entry for a given driver.
 php artisan tenanti:queue {driver} {action} | Execute any of above action using separate queue to minimize impact on current process.

<a name="multi-db-setup"></a>
## Multi Database Connection Setup

Instead of using Tenanti with a single database connection, you could also setup a database connection for each tenant.

<a name="multi-db-configuration"></a>
### Configuration

Open `config/orchestra/tenanti.php` and customize the drivers.

```php
<?php

return [
    'drivers' => [
        'user' => [
            'model'     => App\User::class,
            'migration' => 'tenant_migrations',
            'path'      => database_path('tenanti/user'),
        ],
    ],
];
```

By introducing a `migration` config, you can now setup the migration table name to be `tenant_migrations` instead of `user_{id}_migrations`.

<a name="multi-db-resolver"></a>
### Database Connection Resolver

For tenanti to automatically resolve your multiple database connection, we need to setup the resolver. You can do this via:

```php
<?php namespace App\Providers;

use Orchestra\Support\Facades\Tenanti;

class AppServiceProvider extends ServiceProvider
{
    public function boot()
    {
        Tenanti::connection('tenants', function (User $entity, array $config) {
            $config['database'] = "acme_{$entity->getKey()}";
            // refer to config under `database.connections.tenants.*`.

            return $config;
        });
    }
}
```

Behind the scene, `$config` will contain the template database configuration fetch from `"database.connections.tenants"` (based on the first parameter `tenants`). We can dynamically modify the connection configuration and return the updated configuration for the tenant.

<a name="multi-db-default-connection"></a>
### Default Database Connection

Alternatively you can also use Tenanti to set the default database connection for your application:

```php
use App\User;
use Orchestra\Support\Facades\Tenanti;

// ...

$user = User::find(5);

Tenanti::driver('user')->asDefaultConnection($user, 'tenants_{id}');
```

> Most of the time, this would be use in a Middleware Class when you resolve the tenant ID based on `Illuminate\Http\Request` object.
