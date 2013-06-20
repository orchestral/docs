---
layout: docs2.0
title: Support Change Log

---

# Support Change Log

<section id="v2.0">
## Version 2.0

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