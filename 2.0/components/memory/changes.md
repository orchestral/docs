---
layout: docs2.0
title: Memory Change Log

---

# Memory Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.0">
### Version 2.0.0

* Migrate `Orchestra\Memory` from Orchestra Platform 1.2.
* Rename `Orchestra\Memory::shutdown()` to `Orchestra\Memory::finish()`.
* Add `Orchestra\Memory::makeOrFallback()` for easy usage to switch to `Orchestra\Memory\Drivers\Runtime` when database connection is not correct.

</article>

</section>