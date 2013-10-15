---
layout: docs2.0
title: Memory Change Log

---

# Memory Change Log

<section id="v2.1">
## Version 2.1

<article id="v2.1.0">
### v2.1.0@dev

* Add `Orchestra\Memory\Abstractable\Container`.
* Predefined package path to avoid additional overhead to guest package path.

</article>

</section>

<section id="v2.0">
## Version 2.0

<article id="v2.0.4">
### v2.0.4@dev

* Move commands to it's own service provider.

</article>

<article id="v2.0.3">
### v2.0.3

* Add `Orchestra\Memory\Abstractable\Container`.

</article>

<article id="v2.0.2">
### v2.0.2

* Code improvements.

</article>

<article id="v2.0.1">
### v2.0.1

* Minor docblock and code refactoring improvement.

</article>

<article id="v2.0.0">
### v2.0.0

* Migrate `Orchestra\Memory` from Orchestra Platform 1.2.
* Rename `Orchestra\Memory::shutdown()` to `Orchestra\Memory::finish()`.
* Add `Orchestra\Memory::makeOrFallback()` for easy usage to switch to `Orchestra\Memory\Drivers\Runtime` when database connection is not correct.

</article>

</section>
