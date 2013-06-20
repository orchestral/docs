---
layout: docs2.0
title: Resources Change Log

---

# Resources Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.0">
### Version 2.0.0

* Migrate `Orchestra\Resources` from Orchestra Platform 1.2.
* Add `Orchestra\Resources\Dispatcher` and `Orchestra\Resources\Response` to isolate class responsibility.
* Add support for Laravel 4 response system which include `Illuminate\Http\RedirectResponse`, `Illuminate\Http\JsonResponse` and `Illuminate\Http\Response`.
* Add support to use `resource` controller instead of just `restful` controller.
* `Orchestra\Resources\Response` should respect non-html response instead of converting it to `text/html` content type.

</article>

</section>