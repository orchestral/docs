---
layout: docs2.0
title: Auth Change Log

---

# Auth Change Log

<section id="v2.0">
## Version 2.0

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
