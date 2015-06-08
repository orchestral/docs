---
title: Facile Templating

---

Facile component works by composing the response using Template, using the `Orchestra\Facile\FacileServiceProvider`, we setup the default template for normal usage which can compose HTML and JSON response, see `Orchestra\Facile\Template\Simple`.

```php
Route::get('users', function () {
	$users = User::all();

	return Facile::view('users')->with(['users' => $users]);
});
```

In above example, what actually happen is that the response was generated using `Orchestra\Facile\Template\Simple::composeHtml()` method when you hit `/users` and `Orchestra\Facile\Template\Simple::composeJson()` when you hit `/users` with `Accept: application/json` request header.
