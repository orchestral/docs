---
layout: docs2.0
title: Widget Change Log

---

# Widget Change Log

<section id="v2.1">
## Version 2.1

<article id="v2.1.0">
### v2.1.0@dev

* Add `Orchestra\Widget\Drivers::is()` to allow direct manipulation of `Illuminate\Support\Fluent` through `Orchestra\Support\Nesty::is()` API.

</article>

</section>

<section id="v2.0">
## Version 2.0

<article id="v2.0.3">
### v2.0.3

* Add `Orchestra\Widget\Drivers::is()` to allow direct manipulation of `Illuminate\Support\Fluent` through `Orchestra\Support\Nesty::is()` API.

</article>

<article id="v2.0.2">
### v2.0.2

* Code improvements.

</article>

<article id="v2.0.1">
### v2.0.1

* Update `Orchestra\Widget\WidgetManager` based on changes to [Orchestra\Support](/docs/2.0/components/support/changes#v2.0.2)

</article>

<article id="v2.0.0">
### v2.0.0

* Migrate `Orchestra\Widget` from Orchestra Platform 1.2.
* Change the way `Orchestra\Widget` handle positional insert; `before` to `<`, `after` to `>` and `child-of` to `^`. 
* Implements `ArrayIterator`, eliminate the requirement to use `$widget->getItems()`.
* Move `Orchestra\Widget\Nesty` to `Orchestra\Support\Nesty`.
  
</article>

</section>
