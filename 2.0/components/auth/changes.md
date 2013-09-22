---
layout: docs2.0
title: Auth Change Log

---

# Auth Change Log

<section id="v2.1">
## Version 2.1

<article id="v2.1.0">
### v2.1.0@dev

* Add `Orchestra\Auth\Acl\Fluent::attach()` and `Orchestra\Auth\Acl\Fluent::detach()` method.
* Call `Illuminate\Auth\AuthServiceProvider::boot()` during booting.
* `Orchestra\Auth\Acl\Container` should extend `Orchestra\Memory\Abstractable\Container`.

</article>

</section>

<section id="v2.0">
## Version 2.0

<article id="v2.0.4">
### v2.0.4

* `Orchestra\Auth\Acl\Container` should extend `Orchestra\Memory\Abstractable\Container`.

</article>

<article id="v2.0.3">
### v2.0.3

* Fixed a problem accessing `Auth::is()` when user is actually not logged in, and also append the default "Guest" role when accessing `Auth::roles()`.

</article>

<article id="v2.0.2">
### v2.0.2

* Add `Orchestra\Auth\Acl\Fluent::attach()` and `Orchestra\Auth\Acl\Fluent::detach()` method.
* Call `Illuminate\Auth\AuthServiceProvider::boot()` during booting.

</article>

<article id="v2.0.1">
### v2.0.1

* Code improvements.

</article>

<article id="v2.0.0">
### v2.0.0

* Migrate `Orchestra\Auth` from Orchestra Platform 1.2.
* Move event `orchestra.auth: roles` to `Orchestra\Auth`. *Note that this would make it incompatible with any auth driver which is not based on `Eloquent`.*
* Deprecate `orchestra.auth: login` and `orchestra.auth: logout`, use `auth.login` and `auth.logout` event instead.
* Add command line utility via `Orchestra\Auth\Console\AuthCommand`.
* Add soft deletes to migration schema.
* Add password reminders migration from Laravel 4.
* Fixed `Orchestra\Auth\Guard::is()` should accept array.
* Rename `Orchestra\Auth\Acl\Environment::shutdown()` to `Orchestra\Auth\Acl\Environment::finish()`.

</article>

</section>
