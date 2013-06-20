---
layout: docs2.0
title: Extension Change Log

---

# Extension Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.0">
### Version 2.0.0

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
