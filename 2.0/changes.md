---
layout: docs2.0
title: Change Logs

---

# Change Logs

<article id="v2.0.0">
### Version 2.0.0

* Migrate from version 1.2 to support Laravel 4.
* Upgrade to Twitter Bootstrap 3.
* **Asset**
  * Fork `Orchestra\Asset` from Laravel 3.
  * Allow last modified versioning to be added via `Orchestra\Asset\Container::addVersioning()` and reversal via `Orchestra\Asset\Container::removeVersioning()`.
* **Auth**
  * Migrate `Orchestra\Auth` from Orchestra Platform 1.2.
  * Move event `orchestra.auth: roles` to `Orchestra\Auth`. *Note that this would make it incompatible with any auth driver which is not based on `Eloquent`.*
  * Deprecate `orchestra.auth: login` and `orchestra.auth: logout`, use `auth.login` and `auth.logout` event instead.
  * Add command line utility via `Orchestra\Auth\Console\AuthCommand`.
  * Add soft deletes to migration schema.
  * Add password reminders migration from Laravel 4.
  * Fixed `Orchestra\Auth\Guard::is()` should accept array.
  * Rename `Orchestra\Auth\Acl\Environment::shutdown()` to `Orchestra\Auth\Acl\Environment::finish()`.
* **Extension**
  * Migrate `Orchestra\Extension` from Orchestra Platform 1.2.
  * Add support for extension to register service provider using `orchestra.json`.
  * Simplify the registration of service provider by utilizing `Illuminate\Foundation\Application::register()` method.
  * Add command line utility via `Orchestra\Extension\Console\ExtensionCommand`.
  * Add `Orchestra\Extension::route()` method to handle extension routing.
  * Allow Extensions not to be started when in safe mode, using `Session::get('orchestra-safemode')`.
  * Add `Orchestra\Extension::setMemoryProvider()` and `Orchestra\Extension::getMemoryProvider()` helpers.
  * `Orchestra\Extension\Dispatcher` only load packages `orchestra.php` only after all extension (and service providers) has been registered.
  * Allow `Orchestra\Extension\Publisher\AssetManager` to publish asset for orchestra/foundation.
  * Start Extension before running publish command when activating an extension.
  * Change `Orchestra\Extension\Dispatcher::start()` visibility to public.
  * Prevent reserved name to be used as extension name.
* **Facile**
  * Migrate `Orchestra\Facile` from Orchestra Platform 1.2.
* **Html**
  * Migrate `Orchestra\Html`, `Orchestra\Form` and `Orchestra\Table` from Orchestra Platform 1.2.
  * `Orchestra\Table` would automatically paginate result via `$table->with($model)`, disable it via `$table->with($model, false);`.
  * `Orchestra\Form` add helper method to attach Eloquent using `$form->with($model);`.
  * `Orchestra\Form::extend()` and `Orchestra\Table::extend()` should return self.
* **Foundation**
  * Migrate `Orchestra\Foundation` from Orchestra Platform 1.2.
  * Convert `Orchestra\Core` to `Orchestra\App`.
  * Add `Orchestra\App::handle()` to emulate `(:bundle)` routing structure in Laravel 3.
  * Deprecate and remove `Orchestra`, alias to `Orchestra\App`, instead introduce `orchestra()` helper function as a replacement.
  * Validations now using services, based on `Orchestra\Support\Validator`.
  * Menu are now using `Orchestra\Services\Event\AdminMenuHandler`.
  * `Orchestra\Mail` are now utilising Laravel 4 `Mail` class, `Orchestra\Mail::send()` would choose either to use basic send or queue based on Orchestra Platform setting.
  * Fixes bad references to `Orchestra\Support\Str` on `Orchestra\Routing\ForgotController` and `Orchestra\Routing\RegisterController`.
  * Update to Twitter Bootstrap 3.
  * Replace current implementation for reset password with Laravel 4, with some goodies from Orchestra Platform.
  * Remove `Form::token()` as it's automatically added by `Form::open()`.
  * Add support to use `sendmail` as e-mail transport.
  * Reduce usage of Blade syntax, since `{{` and `}}` can be customised by the user Orchestra Platform shouldn't depend on it.
  * Fixed invalid generated URL to delete users.
  * Add `Orchestra\Testbench` package to help unit testing controllers.
* **Memory**
  * Migrate `Orchestra\Memory` from Orchestra Platform 1.2.
  * Rename `Orchestra\Memory::shutdown()` to `Orchestra\Memory::finish()`.
  * Add `Orchestra\Memory::makeOrFallback()` for easy usage to switch to `Orchestra\Memory\Drivers\Runtime` when database connection is not correct.
* **Resources**
  * Migrate `Orchestra\Resources` from Orchestra Platform 1.2.
  * Add `Orchestra\Resources\Dispatcher` and `Orchestra\Resources\Response` to isolate class responsibility.
  * Add support for Laravel 4 response system which include `Illuminate\Http\RedirectResponse`, `Illuminate\Http\JsonResponse` and `Illuminate\Http\Response`.
  * Add support to use `resource` controller instead of just `restful` controller.
  * `Orchestra\Resources\Response` should respect non-html response instead of converting it to `text/html` content type.
* **Support**
  * Migrate `Orchestra\Support` from Orchestra Platform 1.2.
  * Split service provider to `Orchestra\Support\DecoratorServiceProvider` and `Orchestra\Support\MessagesServiceProvider`.
  * `Orchestra\Support\Messages` now use `Session::put()` instead of `Session::flash()`.
  * Add `Orchestra\Support\Validator` to manage validation using class.
  * Add `Orchestra\Support\Nesty` from `Orchestra\Widget` so it can be reusable in any other component.
  * Deprecate and remove `Orchestra\Messages::shutdown()` method, use `Orchestra\Messages::save()` instead.
  * Move `Orchestra\Support\Decorator` to `Orchestra\View\Decorator`.
  * Dreprecate and remove `Orchestra\Messages::add()` method as `Illuminate\Support\MessageBag` already allow chaining.
  * Allow data bindings on `Orchestra\Support\Validator`.
  * Add `Orchestra\Support\Str::humanize()` to convert slug to normal string.
  * Remove all static properties from `Orchestra\Support\Validator`.
* **View**
  * Migrate `Orchestra\View` and `Orchestra\Theme` from Orchestra Platform 1.2.
  * Deprecate and remove `Orchestra\Theme::map()` usage.
  * Allow queried view to be cache for subsequent call within the same request using `Orchestra\View\FileViewFinder`.
* **Widget**
  * Migrate `Orchestra\Widget` from Orchestra Platform 1.2.
  * Change the way `Orchestra\Widget` handle positional insert; `before` to `<`, `after` to `>` and `child-of` to `^`. 
  * Implements `ArrayIterator`, eliminate the requirement to use `$widget->getItems()`.
  * Move `Orchestra\Widget\Nesty` to `Orchestra\Support\Nesty`.

</article>
