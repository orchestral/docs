---
title: Messages Change Log

---

## Version 3.1 {#v3-1}

### v3.1.3 {#v3-1-3}

* Allows to use closure with `messages()`.

### v3.1.2 {#v3-1-2}

* Improved performances by reducing call within `Illuminate\Container\Container`.

### v3.1.1 {#v3-1-1}

* Increase minimum PHP requirement to v5.5+.
* Add `Orchestra\Messages\Http\Middleware\StoreMessageBag`.
* Avoid using deprecated `Route::filter()` by moving it to middleware.

### v3.1.0 {#v3-1-0}

* Update support to Laravel Framework v5.1.

## Version 3.0 {#v3-0}

### v3.0.0 {#v3-0-0}

* Update support to Laravel Framework v5.0.
* Simplify PSR-4 path.
* Add `messages()` helper.

## Version 2.2 {#v2-2}

### v2.2.0 {#v2-2-0}

* Separate Messages Component from `orchestra/support`.
* Add `Orchestra\Message\Facade` in order to allow Messages Component to work as a standalone package.
