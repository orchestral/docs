---
title: Extension Component
badge: extension

---

Extension Component allows components or packages to be added dynamically to Orchestra Platform without the hassle of modifying the configuration.

## Table of Content {#toc}

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Usage]({doc-url}/components/extension/usage)
* [Change Log]({doc-url}/components/extension/changes#v2-2)

<a name="compatibility"></a>
## Version Compatibility

Laravel    | Extension
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
		"orchestra/extension": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

	composer require "orchestra/extension=~3.0"

<a name="configuration"></a>
## Configuration

Next add the service provider in `config/app.php`.

	'providers' => array(

		// ...

		'Orchestra\Extension\ExtensionServiceProvider',
		'Orchestra\Memory\MemoryServiceProvider',
		'Orchestra\Extension\PublisherServiceProvider',

		'Orchestra\Extension\CommandServiceProvider',
	),

### Aliases

You might want to add `Orchestra\Support\Facades\Extension` to class aliases in `config/app.php`:

	'aliases' => array(

		// ...

		'Orchestra\Extension' => 'Orchestra\Support\Facades\Extension',
	),

### Migrations

Before we can start using Extension component, please run the following:

	php artisan extension:migrate

> The command utility is enabled via `Orchestra\Extension\CommandServiceProvider`.
