---
layout: docs2.0
title: HTML Change Log

---

# HTML Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.0">
### Version 2.0.0

* Migrate `Orchestra\Html`, `Orchestra\Form` and `Orchestra\Table` from Orchestra Platform 1.2.
* `Orchestra\Table` would automatically paginate result via `$table->with($model)`, disable it via `$table->with($model, false);`.
* `Orchestra\Form` add helper method to attach Eloquent using `$form->with($model);`.
* `Orchestra\Form::extend()` and `Orchestra\Table::extend()` should return self.

</article>

</section>
