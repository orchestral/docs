---
title: Installer Change Log

---

## Version 3.2 {#v3-2}

### v3.2.2 {#v3-2-2}

* Improves exception handling when given User model point to invalid class.

### v3.2.1 {#v3-2-1}

* Add `Orchestra\Installation\Installation::$isTest` flag.
* Add `Orchestra\Installation\Installation::bootInstallerFilesForTesting()` helper.
* Deprecate `Orchestra\Installation\Installation::createAdmin()` and suggest `Orchestra\Installation\Installation::make()` method.
* Add `Orchestra\Installation\Installation::create()` method.
* Add `Orchestra\Installation\Installation::validate()` method.
* Change visibility of `Orchestra\Installation\Installation::createUser()` method from `protected` to `public`.

### v3.2.0 {#v3-2-0}

* Update support for Orchestra Platform v3.2.
* `Orchestra\Installation\InstallerServiceProvider` should utilize the new `Orchestra\Foundation\Support\Providers\ModuleServiceProvider`.
* Improved performances by reducing call within `Illuminate\Container\Container`.
* Enables routes caching.

## Version 3.1 {#v3-1}

### v3.1.3 {#v3-1-3}

* Improves exception handling when given User model point to invalid class.

### v3.1.2 {#v3-1-2}

* `Orchestra\Installation\InstallerServiceProvider` should utilize the new `Orchestra\Foundation\Support\Providers\ModuleServiceProvider`.
* Improved performances by reducing call within `Illuminate\Container\Container`.

### v3.1.1 {#v3-1-1}

* Enables routes caching.

### v3.1.0 {#v3-1-0}

* Update support for Orchestra Platform v3.1.
* Convert filter to middleware.

## Version 3.0 {#v3-0}

### v3.0.2 {#v3-0-2}

* Move `Orchestra\Installation\Routing` namespace to `Orchestra\Installation\Http\Controllers`.

### v3.0.1 {#v3-0-1}

* Update path to `resources/config` and `resources/database`.

### v3.0.0 {#v3-0-0}

* Initial release, based on installation wizard from `orchestra/foundation`.
