---
title: Upgrade Guide

---

* [Upgrading from 3.1 to 3.2](#v3-1-v3-2)
* [Upgrading from 3.0 to 3.1](#v3-0-v3-1)
* [Upgrading from 2.1 to 2.2](#v2-1-v2-2)
* [Upgrading from 2.0 to 2.1](#v2-0-v2-1)

<a name="v3-1-v3-2"></a>
## Upgrading from 3.1 to 3.2

### Updating Dependencies

Update your `composer.json` file to point to `orchestra/foundation 3.2.*`.

### Update `app/Http/Controllers/Controller.php`

Add use `Illuminate\Foundation\Auth\Access\AuthorizesRequests` trait.

### Update `app/Http/Kernel.php`

Update `$middleware` properties:

```php
protected $middleware = [
    \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
];
```

Add new `$middlewareGroup` properties:

```php
/**
 * The application's route middleware groups.
 *
 * @var array
 */
protected $middlewareGroups = [
    'web' => [
        Middleware\EncryptCookies::class,
        \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
        \Illuminate\Session\Middleware\StartSession::class,
        \Illuminate\View\Middleware\ShareErrorsFromSession::class,
        Middleware\VerifyCsrfToken::class,
    ],

    'orchestra' => [
        'web',
        \Orchestra\Foundation\Http\Middleware\LoginAs::class,
        \Orchestra\Foundation\Http\Middleware\UseBackendTheme::class,
    ],

    'api' => [
        'throttle:60,1',
    ],
];
```

Add `throttle` to route middleware:

```php
'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
```

The updated value can be found in this [file](https://github.com/orchestral/platform/blob/v3.2.0/app/Http/Kernel.php).

### Laravel Changes

You can also check out the full [Upgrading Guide for Laravel 5.2](http://laravel.com/docs/5.2/upgrade#upgrade-5.2.0) as well as [Laravel 5.1 Release Note](https://laravel.com/docs/5.2/releases#laravel-5.2).

<a name="v3-0-v3-1"></a>
## Upgrading from 3.0 to 3.1

### Update `bootstrap/autoload.php`

Update the `$compiledPath` variable in `bootstrap/autoload.php` to the following:

```php
$compiledPath = __DIR__.'/cache/compiled.php';
```

### Create `bootstrap/cache` Directory

Within your `bootstrap` directory, create a `cache` directory (`bootstrap/cache`). Place a `.gitignore` file in this directory with the following contents:

    *
    !.gitignore

This directory should be writable, and will be used by the framework to store temporary optimization files like `compiled.php`, `routes.php`, `config.php`, and `services.json`.

### Upgrading Your Composer Dependency

To upgrade to Orchestra Platform 3.1, change your `"orchestra/foundation"` version to `"3.1.*"` in your `composer.json` file.

> As a pre-caution, run `php artisan clear-compiled` before executing `composer update`.

### Adding Configuration Files & Options

Update your aliases and providers arrays in your `resources/config/app.php` configuration file. The updated values for these arrays can be found in [this file](https://github.com/orchestral/platform/blob/3.1/resources/config/app.php) ([raw](https://raw2.github.com/orchestral/platform/3.1/resources/config/app.php)). Be sure to add your custom and package service providers / aliases back to the arrays.

Provides                                                        | Action
:---------------------------------------------------------------|:----------------------
`Illuminate\Broadcasting\BroadcastServiceProvider`              | Add
`Orchestra\Foundation\Providers\FilterServiceProvider`          | Remove
`Orchestra\Foundation\Providers\RouteServiceProvider`           | Add

Add the new `resources/config/broadcasting.php` file [from the repository](https://github.com/orchestral/platform/blob/3.1/resources/config/broadcasting.php) ([raw](https://raw2.github.com/orchestral/platform/3.1/resources/config/broadcasting.php)).

### Full Skeleton Changes

You can review the full application skeleton changes by viewing the [full changes](https://github.com/orchestral/platform/compare/v3.0.0...v3.1.0).

### Laravel Changes

You can also check out the full [Upgrading Guide for Laravel 5.1](http://laravel.com/docs/5.1/upgrade#upgrade-5.1.0) as well as [Laravel 5.1 Release Note](http://laravel.com/docs/5.1/releases#laravel-5.1).

<a name="v2-1-v2-2"></a>
## Upgrading from 2.1 to 2.2

### Upgrading Your Composer Dependency

To upgrade to Orchestra Platform 2.2, change your `"orchestra/foundation"` version to `"2.2.*"` in your `composer.json` file.

> As a pre-caution, remove `bootstrap/compiled.php` file if it exist to avoid possible error during upgrade.

### Adding Configuration Files & Options

Add the new `cipher` configuration option to your `app/config/app.php` file. The default value should be `MCRYPT_RIJNDAEL_256` constant.

	'cipher' => MCRYPT_RIJNDAEL_256,

Add the new `fallback_locale` configuration option to your `app/config/app.php` file. The default value should be `en`.

	'fallback_locale' => 'en',

Add the new alias to your `app/config/app.php`.

	'SoftDeletingTrait' => 'Illuminate\Database\Eloquent\SoftDeletingTrait',

Add new `app/config/services.php` file [from the repository](https://github.com/orchestral/platform/blob/2.2/app/config/services.php) ([raw](https://raw.githubusercontent.com/orchestral/platform/2.2/app/config/services.php)).

<a name="v2-0-v2-1"></a>
## Upgrading from 2.0 to 2.1

### Upgrading Your Composer Dependency

To upgrade to Orchestra Platform 2.1, change your `"orchestra/foundation"` version to `"2.1.*"` in your `composer.json` file.

> As a pre-caution, remove `bootstrap/compiled.php` file if it exist to avoid possible error during upgrade.

### Replace Files

Replace your `public/index.php` file with this [fresh copy from the repository](https://github.com/orchestral/platform/blob/2.1/public/index.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/public/index.php)).

Replace your `artisan` file with this [fresh copy from the repository](https://github.com/orchestral/platform/blob/2.1/artisan) ([raw](https://raw2.github.com/orchestral/platform/2.1/artisan)).

### Adding Configuration Files & Options

Update your aliases and providers arrays in your `app/config/app.php` configuration file. The updated values for these arrays can be found in [this file](https://github.com/orchestral/platform/blob/2.1/app/config/app.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/app/config/app.php)). Be sure to add your custom and package service providers / aliases back to the arrays.

Provides                                                        | Action
:---------------------------------------------------------------|:----------------------
Illuminate\Foundation\Providers\CommandCreatorServiceProvider   | Remove
Illuminate\Foundation\Providers\ComposerServiceProvider         | Remove
Illuminate\Foundation\Providers\ConsoleSupportServiceProvider   | Add
Illuminate\Foundation\Providers\KeyGeneratorServiceProvider     | Remove
Illuminate\Foundation\Providers\MaintenanceServiceProvider      | Remove
Illuminate\Foundation\Providers\OptimizeServiceProvider         | Remove
Illuminate\Foundation\Providers\RouteListServiceProvider        | Remove
Illuminate\Remote\RemoteServiceProvider                         | Add
Illuminate\Foundation\Providers\ServerServiceProvider           | Remove
Illuminate\Foundation\Providers\TinkerServiceProvider           | Remove
Orchestra\Debug\DebugServiceProvider                            | Add
Orchestra\Notifier\NotifierServiceProvider                      | Add
Orchestra\Optimize\OptimizeServiceProvider                      | Add
Orchestra\Auth\CommandServiceProvider                           | Remove
Orchestra\Extension\CommandServiceProvider                      | Remove
Orchestra\Memory\CommandServiceProvider                         | Remove
Orchestra\Foundation\ConsoleSupportServiceProvider              | Add

Update `redis.cluster` configuration section to `false` in your `app/config/database.php`.

Add the new `app/config/remote.php` file [from the repository](https://github.com/orchestral/platform/blob/2.1/app/config/remote.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/app/config/remote.php)).

Add the new `expire_on_close` configuration option to your `app/config/session.php` file. The default value should be `false`.

Add the new `failed` configuration section to your `app/config/queue.php` file. Here are the default values for the section:

	'failed' => array(
    	'database' => 'mysql', 'table' => 'failed_jobs',
	),

#### Optional

Update the pagination configuration option in your `app/config/view.php` file to `pagination::slider-3` (if you're using Twitter Bootstrap 3 instead of Bootstrap 2).

### E-mail Templates

Update `app/views/emails/auth/reminder.blade.php` file with this [fresh copy from the repository](https://github.com/orchestral/platform/blob/2.1/app/views/emails/auth/reminder.blade.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/app/views/emails/auth/reminder.blade.php)).

Add new `app/views/emails/auth/register.blade.php` file with this [fresh copy from the repository](https://github.com/orchestral/platform/blob/2.1/app/views/emails/auth/register.blade.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/app/views/emails/auth/register.blade.php)).

### Controller Updates

If `app/controllers/BaseController.php` has a use statement at the top, change `use Illuminate\Routing\Controllers\Controller;` to `use Illuminate\Routing\Controller;`.

### Password Reminders Updates

Password reminders have been overhauled for greater flexibility. Update your `app/lang/en/reminders.php` language file to match [this updated file](https://github.com/orchestral/platform/blob/2.1/app/lang/en/reminders.php) ([raw](https://raw2.github.com/orchestral/platform/2.1/app/lang/en/reminders.php)).

### Environment Detection Updates

For security reasons, URL domains may no longer be used to detect your application environment. These values are easily spoofable and allow attackers to modify the environment for a request. You should convert your environment detection to use machine host names (`hostname` command on Mac & Ubuntu).

### Simpler Log Files

Laravel now generates a single log file: `app/storage/logs/laravel.log`. However, you may still configure this behavior in your `app/start/global.php` file.

### Removing Redirect Trailing Slash

In your `bootstrap/start.php` file, remove the call to `$app->redirectIfTrailingSlash()`. This method is no longer needed as this functionality is now handled by the `.htaccess` file included with the framework.

Next, replace your Apache `.htaccess` file with this [new one](https://github.com/orchestral/platform/blob/2.1/public/.htaccess) ([raw](https://raw2.github.com/orchestral/platform/2.1/public/.htaccess)) that handles trailing slashes.

### Current Route Access

The current route is now accessed via `Route::current()` instead of `Route::getCurrentRoute()`.

### Composer Update

Once you have completed the changes above, you can run the `composer update` function to update your core application files!
