---
layout: default
title: Change Logs
---

# Change Logs

<article id="v2.0.0">
### Version 2.0.0

* Migrate from version 1.2 to support Laravel 4.
* **Auth**
  * Migrate `Orchestra\Auth` from Orchestra Platform 1.2.
  * Move event `orchestra.auth: roles` to `Orchestra\Auth`. This would might it incompatible with any auth driver which is not based on `Eloquent`.
* **Extension**
  * Migrate `Orchestra\Extension` from Orchestra Platform 1.
  * Add support for extension to register service provider using `orchestra.json`.
  * Simplify the registration of service provider by utilizing `Illuminate\Foundation\Application::register()` method.
* **Facile**
  * Migrate Orchestra\Facile from Orchestra Platform 1.2.
* **Html**
  * Migrate `Orchestra\Html`, `Orchestra\Form` and `Orchestra\Table` from Orchestra Platform 1.2.
  * `Orchestra\Table` would automatically paginate result via `$table->with($model)`, disable it via `$table->with($model, false);`.
  * `Orchestra\Form` add helper method to attach Eloquent using `$form->with($model);`.
* **Foundation**
  * Migrate `Orchestra\Foundation` from Orchestra Platform 1.2.
  * Convert `Orchestra\Core` to `Orchestra\App`.
  * Add `Orchestra\App::handle()` to emulate `(:bundle)` routing structure in Laravel 3.
  * Deprecate and remove `Orchestra`, alias to `Orchestra\App`, instead introduce `orchestra()` helper function as a replacement.
  * Validations now using services, based on `Orchestra\Support\Validator`.
  * Menu are now using `Orchestra\Services\Event\AdminMenuHandler`.
  * `Orchestra\Mail` are now utilising Laravel 4 `Mail` class, `Orchestra\Mail::send()` would choose either to use basic send or queue based on Orchestra Platform setting.
* **Resources**
  * Migrate `Orchestra\Resources` from Orchestra Platform 1.2.
  * Add `Orchestra\Resources\Dispatcher` and `Orchestra\Resources\Response` to isolate class responsibility.
  * Add support for Laravel 4 response system which include `Illuminate\Http\RedirectResponse`, `Illuminate\Http\JsonResponse` and `Illuminate\Http\Response`.
* **Support**
  * Migrate `Orchestra\Support` from Orchestra Platform 1.2.
  * Split service provider to `Orchestra\Support\DecoratorServiceProvider` and `Orchestra\Support\MessagesServiceProvider`.
  * `Orchestra\Support\Messages` now use `Session::put()` instead of `Session::flash()`.
  * Add `Orchestra\Support\Validator` to manage validation using class.
* **Widget**
  * Migrate `Orchestra\Widget` from Orchestra Platform 1.
  * Change the way `Orchestra\Widget\Nesty` handle positional insert; `before` to `<`, `after` to `>` and `child-of` to `^`. 
  * Implements `ArrayIterator`, eliminate the requirement to use `$widget->getItems()`.
</article>
