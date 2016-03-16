---
title: Change Log

---

## Version 3.2 {#v3-2}

### v3.2.4 {#v3-2-4}

* Handle authorization header via `.htaccess`. ([@paulvl](https://github.com/paulvl))
* Don't return a login page to a JSON request from `App\Http\Middleware\Authenticate` ([@JacobBennett](https://github.com/JacobBennett))
* Update configuration and language files. ([@martinbean](https://github.com/martinbean), [@jspringe](https://github.com/jspringe), [@david-ridgeonnet](https://github.com/david-ridgeonnet), [@themsaid](https://github.com/themsaid), [@billmn](https://github.com/billmn), [@taylorotwell](https://github.com/taylorotwell))

### v3.2.3 {#v3-2-3}

* Add `jwt` Auth Guard.
* Replace deprecated `Illuminate\Foundation\Validation\ValidationException` with `Illuminate\Validation\ValidationException`.

### v3.2.2 {#v3-2-2}

* Appends e-mail address on password reset token link.

### v3.2.1 {#v3-2-1}

* Replace `Illuminate\Mail\MailServiceProvider` with `Orchestra\Notifier\MailServiceProvider`.
* Remove deprecated `manage` route middleware.
* Use available `backend` route middleware under `orchestra` middleware group.

### v3.2.0 {#v3-2-0}

* Update support to Laravel Framework v5.2.
* Add HTML based e-mail templates and use it as default.
* Add `orchestra` middleware group.
* Add `orchestra/studio` as dev dependencies.
* Convert `App\Requests\Request` to extends `Orchestra\Http\FormRequest`.
* Update configuration files:
  - `app`
  - `auth`
  - `mail`
  - `queue`

## Version 3.1 {#v3-1}

### v3.1.10 {#v3-1-10}

* Add `orchestra/studio` as dev dependencies.
* Update configurations.
* Bump elixir requirement to `^4.0.0`.

### v3.1.9 {#v3-1-9}

* Convert `App\Requests\Request` to extends `Orchestra\Http\FormRequest`.
* Update `broadcasting.pusher` configuration.
* Update `database.redis.default` configuration to use environment variables.
* Update `mail.pretend` configuration to use environment variables.
* Add new `required_unless` language string under `validation`.

### v3.1.8 {#v3-1-8}

* Add `auth.register` configuration.
* Use `database_path()` instead of `storage_path()` when defining SQLite database file.
* Use `$this` instead of `parent` when registering policies under `App\Providers\AuthServiceProvider`.

### v3.1.7 {#v3-1-7}

* Add support for Laravel new Authorization feature.
* Add `App\Provider\AuthServiceProvider`.

### v3.1.6 {#v3-1-6}

* Readd `App\Http\Controllers\HomeController`.
* Update `validation` language file.
* Update base application layout.

### v3.1.5 {#v3-1-5}

* Bump elixir requirement to `^3.0.0`.
* Convert `Illuminate\Database\Eloquent\ModelNotFoundException` to 404 exceptions.
* Improves the built-in `DatabaseSeeder` class.
* Add base namespace to the default `TestCase` class.

### v3.1.4 {#v3-1-4}

* Use environment variables for `resources/config/services.php`.
* Typehint `Faker\Generator` on factories.
* Order key by alphabetical order on `resources/lang/en/validation.php`.

### v3.1.3 {#v3-1-3}

* Add new `resources/lang/en/auth.php` language file.
* Add `storage/artifact/.gitignore` for zip file based composer install.

### v3.1.2 {#v3-1-2}

* Include `bootstrap-sass` by default in `bower.json`.
* Update `gulpfile.js` to include bower installed path.
* Include `bower` as `npm` installable dependencies.

### v3.1.1 {#v3-1-1}

* use `Orchestra\Extension\Traits\DomainAwareTrait` on `App\Providers\AppServiceProvider`.
* Bump elixir requirement to `^2.0.0`.
* Added whitelist to remove warning for upcoming PHPUnit v4.8.
* Fixes doctype declarations.
* Fixes CSS.
* Set default charset for sqlsrv driver to `utf8`.

### v3.1.0 {#v3-1-0}

* Update support to Laravel Framework v5.1.
* Remove `App\Commands\Command` abstract class.
* Remove `App\Http\Controllers\Auth\AuthController`, `App\Http\Controllers\Auth\PasswordController` and `App\Http\Controllers\HomeController` boilerplate routes.
* Improves available middlewares.
* Add `App\Http\Middleware\EncryptCookies` middleware.
* Add `App\Jobs\Job` abstract class.
* Remove `App\Providers\BusServiceProvider` and `App\Providers\ConfigServiceProvider`.

## Version 3.0 {#v3-0}

### v3.0.6 {#v3-0-6}

* Update `composer.json` commands.
* Update language string based on Laravel changes.

### v3.0.5 {#v3-0-5}

* Add fallback location for `compiled.php` include path.
* Tweak location where you should put your code if you want to customize `App\Providers\RouteServiceProvider::boot()`.
* Multiple code standard fixes.

### v3.0.4 {#v3-0-4}

* Fixes infinite redirect when accessing a folder for Apache HTTP Web Server.
* Update `services.stripe.model` to use `App\User` by default.
* Fixes missing `fullname` field for frontend user registration.

### v3.0.3 {#v3-0-3}

* Rename `Orchestra\Foundation\Middleware\UseBackendTheme` to `Orchestra\Foundation\Http\Middleware\UseBackendTheme`.
* Update `compiled.php` generated path.

### v3.0.2 {#v3-0-2}

* Allow mail configuration to use environment variables.
* Remove optional `Avatar` and `Facile` from app aliases.
* Add Glyphicons for Twitter Bootstrap.

### v3.0.1 {#v3-0-1}

* `App\Providers\RouteServiceProvider` should extend `Orchestra\Foundation\Support\Providers\RouteServiceProvider`.
* Add `Memory`, `Messages`, `Notifier` and `Table` to app aliases.

### v3.0.0 {#v3-0-0}

* Update support to Laravel Framework v5.0.
* Add `App\Providers\ExtensionServiceProvider`.
* Include `orchestra/installer` and `orchestra/testing` by default.
* Remove `orchestra/story` from default installation (optional extension).
* Improves default page.

## Version 2.2 {#v2-2}

### v2.2.5 {#v2-2-5}

* Convert `csrf` closure filter to be resolved via `Orchestra\Foundation\Filters\VerifyCsrfToken`.

### v2.2.4 {#v2-2-4}

* New welcome page.
* Check for session token type.

### v2.2.3 {#v2-2-3}

* Replace `Orchestra\Support\MessagesServiceProvider` to `Orchestra\Messages\MessagesServiceProvider`.
* Update language replacement string.

### v2.2.2 {#v2-2-2}

* Fixes email views.

### v2.2.1 {#v2-2-1}

* Remove `SoftDeletingTrait` from `User` class to avoid exception to be thrown on certain setup.

### v2.2.0 {#v2-2-0}

* Bump minimum version to PHP v5.4.0.
* Remove redundant implementation in default `User` model.
* Add encrypt option to iron queue config.
* Add `app.cipher` config to use `MCRYPT_RIJNDAEL_128`.

## Version 2.1 {#v2-1}

### v2.1.7 {#v2-1-7}

* Convert `csrf` closure filter to be resolved via `Orchestra\Foundation\Filters\VerifyCsrfToken`.

### v2.1.6 {#v2-1-6}

* New welcome page.
* Check for session token type.

### v2.1.5 {#v2-1-5}

* Add native support for Laravel Forge and Homestead.

## v2.1.4 {#v2-1-4}

* Set `app.debug` config to false by default to avoid bad setup on production environment.
* Add default `app/config/local/app.php`.
* Add `app.cipher` config, allowing future compatibility when upgrading from 2.1 to 2.2.

### v2.1.3 {#v2-1-3}

* Improvement of validation traduction for "email" rule.
* Added "required_with_all" validation traduction.
* Add sample custom error message for validation.
* Update default iron.io host to `'mq-aws-us-east-1.iron.io'` for performance boost.
* Add `ttr` option to beanstalkd config.

### v2.1.2 {#v2-1-2}

* Add `require_without_all` validation string.

### v2.1.1 {#v2-1-1}

* Ignore environment files.
* Remove redundant implementation in default `User` model.

### v2.1.0 {#v2-1-0}

* Add [Control Extension](https://github.com/orchestral/control) for Orchestra Platform 2.
* Add [Story CMS Extension](https://github.com/orchestral/story) for Orchestra Platform 2.
* Add service providers:
  - `Illuminate\Remote\RemoteServiceProvider`.
  - `Orchestra\Notifier\NotifierServiceProvider`.
* Update changes to Laravel Routing.
* Move to single file log setup for simplicity.
* Consolidate all console support tools to `Illuminate\Foundation\Providers\ConsoleSupportServiceProvider` and `Orchestra\Foundation\ConsoleSupportServiceProvider`.
* Move user registration email template to `app/views/emails/auth/register.blade.php`.

## Version 2.0 {#v2-0}

### v2.0.6 {#v2-0-6}

* Added `Orchestra\Auth\CommandServiceProvider`, `Orchestra\Extension\CommandServiceProvider` and `Orchestra\Memory\CommandServiceProvider`.
* Move pre-update-cmd to post-update-cmd, solves inconveniences.

### v2.0.5 {#v2-0-5}

* Declare `TestCase` as an abstract class.
* Move minimum-stability to stable.
* Add note about expiry time on reminders.

### v2.0.4 {#v2-0-4}

* Use `Orchestra\Translation\TranslationServiceProvider` instead of `Illuminate\Translation\TranslationServiceProvider`.

### v2.0.3 {#v2-0-3}

* Add [Story CMS Extension](https://github.com/orchestral/story) for Orchestra Platform 2.
* Package asset should be handled via artisan or ftp publishing. Ignore the files from committed to git.

### v2.0.2 {#v2-0-2}

* Add expire option to reminder config.
* Added array validation language lines.
* Change minimum stability to RC.

### v2.0.1 {#v2-0-1}

* Add [Control Extension](https://github.com/orchestral/control) for Orchestra Platform 2.

### v2.0.0 {#v2-0-0}

* Migrate from version 1.2 to support Laravel 4.
* Upgrade to Twitter Bootstrap 3.
* Components:
  * Orchestra\Asset.
  * Orchestra\Auth.
  * Orchestra\Extension.
  * Orchestra\Facile.
  * Orchestra\Foundation.
  * Orchestra\Html.
  * Orchestra\Memory.
  * Orchestra\Resources.
  * Orchestra\Support.
  * Orchestra\View.
  * Orchestra\Widget.


