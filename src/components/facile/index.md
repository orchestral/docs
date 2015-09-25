---
title: Facile Component
badge: facile

---

Facile Component simplify the need to create API based multi-format response in your Laravel application, with just the following code you are able to return multi format Response, either it be HTML (using `View`), json or etc.

```php
Route::get('users', function () {
    $users = User::paginate();

    return Facile::view('users')->with(compact('users'));
});
```

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Change Log]({doc-url}/components/facile/changes#v3-2)

<a name="compatibility"></a>
## Version Compatibility

Laravel    | Facile
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x
 5.1.x     | 3.1.x
 5.2.x     | 3.2.x@dev

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/facile": "~3.0"
    }
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/facile=~3.0"

<a name="configuration"></a>
## Configuration

Next add the service provider in `config/app.php`.

```php
'providers' => [

    // ...

    Orchestra\Facile\FacileServiceProvider::class,
],
```

### Aliases

You might want to add `Orchestra\Support\Facades\Facile` to class aliases in `config/app.php`:

```php
'aliases' => [

    // ...

    'Facile' => Orchestra\Support\Facades\Facile::class,
],
```

<a name="usage"></a>
## Usage

Facile component works by composing the response using template, using the `Orchestra\Facile\FacileServiceProvider`, we setup the default template for normal usage which can compose HTML, CSV and JSON response (resolved via `Orchestra\Facile\Template\Simple`).

```php
Route::get('users', function () {
    $users = User::all();

    return Facile::view('users')->with(compact('users'));
});
```

Based on above example, the response will be generated via `Orchestra\Facile\Template\Simple::composeHtml()` method and use `resources/views/users.blade.php` when you hit `/users`. Otherwise it would use `Orchestra\Facile\Template\Simple::composeJson()` when you hit `/users` with `Accept: application/json` request header.

> Facile is also smart enough to handle content negotiation accept header.
