---
layout: docs2.0
title: Extension Change Log

---

# Extension Change Log

<section id="v2.1">
## Version 2.1

<article id="v2.1.0">
### v2.1.0@dev

* Remove deprecated `Orchestra\Extension\Environment::isActivated()` method.

</article>

</section>

<section id="v2.0">
## Version 2.0

<article id="v2.0.8">
### v2.0.8

* `"autoload"` config should first respect source-path folder, unless specified as full path.
* Fixed regression bug where safe mode no longer work.
* Deprecate `Orchestra\Extension\Environment::isActive()` and introduce `Orchestra\Extension\Environment::activated()`.
* Run `Session::put()` only if there changes for `orchestra.safemode` value.

</article>

<article id="v2.0.7">
### v2.0.7

* Configuration cleanup on `Orchestra\Extension\Dispatcher`.
* Update reserved extension name.
* Add "source-path" to `Orchestra\Extension\Publisher\MigrateManager::extension()`, allow migration to be done on source-path folder.
* Tweak extension dispatcher event on booting. The `orchestra.php` bootstrap file should be able to utilise event to hook with another extension, otherwise it best to use service provider.
* Introduce `extension.booted: {name}` event.

</article>

<article id="v2.0.6">
### v2.0.6

* Allow extension path to be predefined from `orchestra.json`.
* Add `"autoload"` and `"source-path"` options to `orchestra.json`.

</article>

<article id="v2.0.5">
### v2.0.5

* Code improvements.

</article>

<article id="v2.0.4">
### v2.0.4

* Modify boot sequence for `Orchestra\Extension`, this would allow `Orchestra\Foundation\FoundationServiceProvider` to have priority during boot.

</article>

<article id="v2.0.3">
### v2.0.3

* Fixed extension name detection for Windows environment.

</article>

<article id="v2.0.2">
### v2.0.2

* Add `Orchestra\Extension\Environment::isWritableWithAsset()` helper.

</article>

<article id="v2.0.1">
### v2.0.1

* Add additional keyword to extension' reserved name.
* Small docblock and code refactor improvement.

</article>

<article id="v2.0.0">
### v2.0.0

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

</article>

</section>
