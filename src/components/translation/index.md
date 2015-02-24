---
title: Translation Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/translation.svg?style=flat)](https://packagist.org/packages/orchestra/translation)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/translation.svg?style=flat)](https://packagist.org/packages/orchestra/translation)
[![MIT License](https://img.shields.io/packagist/l/orchestra/translation.svg?style=flat)](https://packagist.org/packages/orchestra/translation)

Translation Component extends the functionality of `Illuminate\Translation` to add support for cascading filesystem replacement for Laravel 4 packages.

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Change Log]({doc-url}/components/translation/changes#v3-0)
* [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Translation
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/translation": "3.0.*"
	}
}
```

### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/translation=3.0.*"


## Configuration {#configuration}

Next add the service provider in `config/app.php`.

```php
'providers' => [

	// ...
	# Remove 'Illuminate\Translation\TranslationServiceProvider'
	# and add 'Orchestra\Translation\TranslationServiceProvider'

	'Orchestra\Translation\TranslationServiceProvider',
],
```

> `Orchestra\Translation\TranslationServiceProvider` should replace `Illuminate\Translation\TranslationServiceProvider`.

## Usage {#usage}

Translation Component make it easier to have redistribute packages language files, instead of relying on `resources/lang/en/package/name/title.php` you can now publish it under `resources/lang/package/name/en/title.php` making it easier to create repository (and publish it under [Github](https://github.com)) for a single packages or extension to handle multiple languages.

## Resources {#resources}

* [GitHub](https://github.com/orchestral/translation/)
* [Packagist](https://packagist.org/packages/orchestra/translation)
* [Travis-CI](https://travis-ci.org/orchestral/translation)
