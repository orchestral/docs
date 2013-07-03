---
layout: docs2.0
title: Support Change Log

---

# Support Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.5">
### Version 2.0.5

* Fixed an invalid called to `Orchestra\Support\Nesty::add_parent()`.
* Allow `Orchestra\Support\Nesty` to prepend an item without knowing the current first item.

</article>

<article id="v2.0.4">
### Version 2.0.4

* Refactor `Orchestra\Support\Validator` to minimize usage of `Illuminate\Support\Fluent`, this allow rules to be assigned as array and only pass as instance of Fluent during event (to allow pass by references).

</article>

<article id="v2.0.3">
### Version 2.0.3

* Allow `Orchestra\Support\Validator::on()` should accept additional parameters.
* Add `Orchestra\Support\Validator::setRules()` to override rules, and set it as an instanceof `Illuminate\Support\Fluent`.

</article>

<article id="v2.0.2">
### Version 2.0.2

* `Orchestra\Support\Manager` should be able to set blacklisted name, for example `Orchestra\Memory` shouldn't allow dotted.

</article>

<article id="v2.0.1">
### Version 2.0.1

* `Orchestra\Support\Validator::$rules` should utilize `Illuminate\Support\Fluent`.

</article>

<article id="v2.0.0">
### Version 2.0.0

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


</article>

</section>
