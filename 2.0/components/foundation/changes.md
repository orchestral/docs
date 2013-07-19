---
layout: docs2.0
title: Foundation Change Log

---

# Foundation Change Log

<section id="v2.1">
## Version 2.1

<article id="v2.1.0">
### v2.1.0@dev

* Allow Orchestra Platform Administrator Interface Menu event handler to be configurable.

</article>

</section>

<section id="v2.0">
## Version 2.0

<article id="v2.0.10">
### v2.0.10

* Update Bootstrap 3.
* Remove requirement to use `Illuminate\Support\Fluent` on `Orchestra\Foundation\Services\Validation\UserAccount`.
* Add client-side JavaScript event on each page load.
* Code improvements.
* Fixed `mkdir(): Permission denied` on uploading extension asset using FTP Publisher.

</article>

<article id="v2.0.9">
### v2.0.9

* Rename `Orchestra\Foundation\Site::localtime()` to `Orchestra\Foundation\Site::toLocalTime()`.
* Fixed date is not appended when attaching role to a user, add `withTimestamps()` options to both `Orchestra\Model\User` and `Orchestra\Model\Role`.
* Add `Orchestra\Foundation\Site::fromLocalTime()` to convert time from local to what set in `"app.timezone"` config.
* Add `Orchestra\Foundation\Application::locate()` to return relative path to packages/app.

</article>

<article id="v2.0.8">
### v2.0.8

* Optimize use of `orchestra/foundation::layout.widgets.header` view.
* Create table and form view for `Orchestra\Html\Table` and `Orchestra\Html\Form`.
* Update Bootstrap 3 files.

</article>

<article id="v2.0.7">
### v2.0.7

* Allow `Orchestra\Foundation\Services\UserMetaRepository` to look for data from eloquent before resolving to default.
* Fixed a bug where no roles is assigned to registered user.
* Improved the base grid system to be more readable.
* Multiple bugfixes to the UX and CSS.

</article>

<article id="v2.0.6">
### v2.0.6

* Tweak Resources menu to be not shown when all resources are hidden.
* Fixed unable to use Publisher FTP since `Illuminate\Filesystem\Filesystem::makeDirectory()` throws PHP error when creating directory failed.

</article>

<article id="v2.0.5">
### v2.0.5

* Move `Orchestra\Services` to `Orchestra\Foundation\Services`.
* Move `Orchestra\Routing` to `Orchestra\Foundation\Routing`.
* All classes are mapped using PSR-0.
* Improved default theme.
* Fixed CSS styling on FTP publisher page.

<article id="v2.0.4">
### v2.0.4

* Allow guest user to access resources if ACL permit.
* Fixed CSS on User search form.

</article>

<article id="v2.0.3">
### v2.0.3

* Add `@placeholder("orchestra.resources: {name}")`.
* Add data-id attributes to edit and delete link on users page.

</article>

<article id="v2.0.2">
### v2.0.2

* Fixed unable to use `"orchestra.saving: extension.{name}"` event.
* Implement `"orchestra.validate: extension.{name}"` and `Orchestra\Services\Validation\Extension`.
* Fixed regression bug with new implementation on `Orchestra\Support\Validator`.

</article>

<article id="v2.0.1">
### v2.0.1

* Tweak Users search form CSS to match Bootstrap 3.
* Fixed a bug where Extension's handles configuration is not accessible.

</article>

<article id="v2.0.0">
### v2.0.0

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
* Reduce usage of Blade syntax, since `{` and `}` can be customised by the user Orchestra Platform shouldn't depend on it.
* Fixed invalid generated URL to delete users.
* Add `Orchestra\Testbench` package to help unit testing controllers.
* Allow `handles('orchestra::/')` to alias `handles('orchestra/foundation::/')`.
* Add `resources('foo')` to alias `handles('orchestra/foundation::resources/foo')`.

</article>

</section>
