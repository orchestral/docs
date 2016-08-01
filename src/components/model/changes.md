---
title: Model Change Log

---

## Version 3.3 {#v3-3}

### v3.3.1 {#v3-3-1}

* Allow `Orchestra\Model\Traits\OwnedBy` and `Orchestra\Model\Traits\Owns` to accept `null` instead of just `Illuminate\Database\Eloquent\Model`.

### v3.3.0 {#v3-3-0}

* Update support to Laravel Framework v5.3.
* Remove `Trait` suffix and deprecate old traits.
* Add `Orchestra\Model\Traits\Searchable`.
* Add `getMetaData()` and `setMetaData()` to `Orchestra\Model\Traits\Metable`.
* Allow to set `null` value when using `Orchestra\Model\Traits\Metable::putMetaData()`.
* Ensure that `Orchestra\Model\User::getRoles()` would only query the database for `roles` relationship once.

## Version 3.2 {#v3-2}

### v3.2.9 {#v3-2-9}

* Add `Orchestra\Model\Value\Meta::transform()` method.

### v3.2.8 {#v3-2-8}

* Allow to directly attach or detach `Orchestra\Model\Role` from `Orchestra\Model\User`.
* Add `Orchestra\Model\Eloquent::transform()` method.
* Add `Orchestra\Model\Traits\CheckRoles` to handle Laravel 5.3 breaking change by adding `Illuminate\Database\Eloquent\Model::is()` method.
* Deprecate the following methods:
    - `Orchestra\Model\User::notify()`
    - `Orchestra\Model\User::is()`
    - `Orchestra\Model\User::isAny()`
    - `Orchestra\Model\User::isNot()`
    - `Orchestra\Model\User::isNotAny()`

### v3.2.6 {#v3-2-6}

* Allow `Orchestra\Model\Traits\OwnedByTrait` and `Orchestra\Model\Traits\OwnsTrait` to accept `null` instead of just `Illuminate\Database\Eloquent\Model`.

### v3.2.5 {#v3-2-5}

* Ensure that `Orchestra\Model\User::getRoles()` would only query the database for `roles` relationship once.

### v3.2.4 {#v3-2-4}

* Allow to set `null` value when using `Orchestra\Model\Traits\Metable::putMetaData()`.

### v3.2.3 {#v3-2-3}

* Fixes missing default value on `Orchestra\Model\Traits\Metable::getMetaData()`.

### v3.2.2 {#v3-2-2}

* Add `getMetaData()` and `setMetaData()` to `Orchestra\Model\Traits\Metable`.

### v3.2.1 {#v3-2-1}

* Remove `Trait` suffix and deprecate old traits.
* Add `Orchestra\Model\Traits\Searchable`.

### v3.2.0 {#v3-2-0}

* Update support to Laravel Framework v5.2.
* Use `Orchestra\Contracts\Authorization\Authorizable` contract.
* Remove default morphClass properties.
* Only hash password (using mutator) when rehashing is required.
* Add `Orchestra\Model\Observer\Role::saving()` to disable adding "Guest" as a role.
* Add `Orchestra\Model\Traits\OwnedByTrait`.
* Add `Orchestra\Model\Traits\OwnsTrait`.
* Refactor `Orchestra\Model\Observer\Role::updating()`.
* Add `Orchestra\Model\Plugins\RefreshOnCreate`.
* Allow customizing searchable fields/attributes via `Orchestra\Model\User::$searchable`.
* Add `Orchestra\Model\Eloquent::transaction()` method to execute model using transaction.

## Version 3.1 {#v3-1}

### v3.1.9 {#v3-1-9}

* Allow to directly attach or detach `Orchestra\Model\Role` from `Orchestra\Model\User`.
* Add `Orchestra\Model\Traits\CheckRoles` to handle Laravel 5.3 breaking change by adding `Illuminate\Database\Eloquent\Model::is()` method.
* Deprecate the following methods:
    - `Orchestra\Model\User::notify()`
    - `Orchestra\Model\User::is()`
    - `Orchestra\Model\User::isAny()`
    - `Orchestra\Model\User::isNot()`
    - `Orchestra\Model\User::isNotAny()`

### v3.1.8 {#v3-1-8}

* Allow `Orchestra\Model\Traits\OwnedByTrait` and `Orchestra\Model\Traits\OwnsTrait` to accept `null` instead of just `Illuminate\Database\Eloquent\Model`.

### v3.1.7 {#v3-1-7}

* Ensure that `Orchestra\Model\User::getRoles()` would only query the database for `roles` relationship once.

### v3.1.6 {#v3-1-6}

* Add `Orchestra\Model\Eloquent::transaction()` method to execute model using transaction.

### v3.1.5 {#v3-1-5}

* Add `Orchestra\Model\Plugins\RefreshOnCreate`.
* Allow customizing searchable fields/attributes via `Orchestra\Model\User::$searchable`.

### v3.1.4 {#v3-1-4}

* Add `Orchestra\Model\Value\Meta::forget()` method.
* Add abstract methods for consistency.

### v3.1.3 {#v3-1-3}

* Add `Orchestra\Model\Observer\Role::saving()` to disable adding "Guest" as a role.
* Add `Orchestra\Model\Traits\OwnedByTrait`.
* Add `Orchestra\Model\Traits\OwnsTrait`.
* Refactor `Orchestra\Model\Observer\Role::updating()`.

### v3.1.2 {#v3-1-2}

* Fixes `Orchestra\Model\User::getRoles()` returning `Illuminate\Database\Eloquent\Collection` instead of simple array.
* Only hash password (using mutator) when rehashing is required.

### v3.1.1 {#v3-1-1}

* Use `Orchestra\Contracts\Authorization\Authorizable` contract.
* Remove default morphClass properties.

### v3.1.0 {#v3-1-0}

* Update support to Laravel Framework v5.1.
* Bump minimum version to PHP v5.5.0.

## Version 3.0 {#v3-0}

### v3.0.0 {#v3-0-0}

* Update support to Laravel Framework v5.0.
* Simplify PSR-4 path.
* Implements soft caching on `Orchestra\Model\Memory\UserMetaRepository`.
* Set `$morphClass` for relevant `Eloquent` classes.
* Add `Orchestra\Model\Traits\MetableTrait` to easily handle json data using `Orchestra\Model\Value\Meta`.

## Version 2.2 {#v2-2}

### v2.2.1 {#v2-2-1}

* Fixes missing `$model->isSoftDeleting()` method.

### v2.2.0 {#v2-2-0}

* Bump minimum version to PHP v5.4.0.
* Add `Orchestra\Model\User::notify()` method which utilize `Orchestra\Notifier\NotifiableTrait`.
* Move duplicates code to utilize traits.
* Integrate with `Illuminate\Database\Eloquent\SoftDeletingTrait`.

## Version 2.1 {#v2-1}

### v2.1.5 {#v2-1-5}

* Add `remember_token` to `Orchestra\Model\User::$hidden` attribute.

### v2.1.4 {#v2-1-4}

* Implement changes to `Illuminate\Auth\UserInterface` on v4.1.26 which fixes a vulnerability to authentication with remember me.

### v2.1.3 {#v2-1-3}

* Add `Orchestra\Model\User::activate()`, `Orchestra\Model\User::deactivate()` and `Orchestra\Model\User::suspend()` helpers.
* Implement [PSR-4](https://github.com/php-fig/fig-standards/blob/master/proposed/psr-4-autoloader/psr-4-autoloader.md) autoloading structure.

### v2.1.2 {#v2-1-1}

* Use `Orchestra\Model\User::whereHas('roles')` to get filtered search instead of doing join query.

### v2.1.1 {#v2-1-1}

* Fixes `Orchestra\Model\User::isNot()` and `Orchestra\Model\User::isNotAny()` helper class.
* Rename `Orchestra\Model\User::resolveRolesAsArray()` to `Orchestra\Model\User::getRoles()` with visibility changed to public. Additionally allow relations to be loaded from cache if it's available instead of querying the database each time it being used.
* Serialize storage value on user_meta to allow adding value other than string.

### v2.1.0 {#v2-1-0}

* Add support for Laravel 4.1 and Orchestra Platform 2.1.
* Implement [PSR-2](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md) coding standard.
* Implement `Orchestra\Notifier\RecipientInterface`.
* Abstract `Orchestra\Model\Memory\UserMetaRepository` and `Orchestra\Model\Memory\UserMetaProvider` from orchestra/foundation which allow it to be used outside of Orchestra Platform.
* Add multiple helpers method to `Orchestra\Model\User`:
  - `attachRole()`
  - `detachRole()`
  - `is()`
  - `isAny()`
  - `isNot()`
  - `isNotAny()`

## Version 2.0 {#v2-0}

### v2.0.1 {#v2-0-1}

* Implement [PSR-2](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md) coding standard.

### v2.0.0 {#v2-0-0}

* Move orchestra/model out of orchestra/foundation component to allow relevant models to be used directly in orchestra/auth.

