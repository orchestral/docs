---
title: Facile Component

---

Facile Component simplify the need to create API based response in your Laravel application, with just the following code you are able to return multi format Response, either it be HTML (using `View`), json or etc.

## Table of Content {#toc}

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Change Log]({doc-url}/components/facile/changes#v2-2)
* [Github](https://github.com/orchestral/facile)

<a href="" name="compatibility"></a>
## Version Compatibility

Laravel    | Facile
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x

<a href="" name="installation"></a>
## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/facile": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a href="" name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

	composer require "orchestra/facile=~3.0"

<a href="" name="configuration"></a>
## Configuration {#configuration}

Next add the service provider in `config/app.php`.

```php
'providers' => [

	// ...

	'Orchestra\Facile\FacileServiceProvider',
],
```

### Aliases

You might want to add `Orchestra\Support\Facades\Facile` to class aliases in `config/app.php`:

```php
'aliases' => [

	// ...

	'Facile' => 'Orchestra\Support\Facades\Facile',
],
```
