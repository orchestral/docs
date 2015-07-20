---
title: Routing

---

1. [Registering Routes](#registering-routes)
   - [Backend Routing](#backend-routing)
   - [Frontend Routing](#frontend-routing)

<a name="registering-routes"></a>
## Registering Routes

Routing with Orchestra Platform is based on Laravel routing engine. However we include two base method for registering routes; `Foundation::namespaced()` and `Foundation::group()`.

<a name="register-backend-routing"></a>
### Backend Routing

You can easily create a new page for Orchestra Platform administration page by using `Foundation::namespaced()`:

```php
use Illuminate\Routing\Router;

Foundation::namespaced('App\Http\Controllers\Admin', function (Router $router) {
    $router->resource('photos', 'PhotoController');
});
```

Above code improves the basic `Route::group()` by adding few things:

* Set the proper `prefix` or `domain` path for Orchestra Platform administration page.
* Add `Orchestra\Foundation\Http\Middleware\UseBackendTheme` middleware.
* Add route group namespace to `App\Http\Controllers\Admin`.

<a name="register-frontend-routing"></a>
### Frontend Routing

## Generating URL

In order to make the routing configurable we have merged `route()`, `action()` and `url()` to a single `Foundation::handles()` method. 
