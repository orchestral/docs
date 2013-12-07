---
title: Extension Component
---

* [Installation](#installation)
* [Configuration](#configuration)

`Orchestra\Extension` allows components or packages to be added dynamically to Orchestra Platform without the hassle of modifying the configuration.

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/extension": "2.1.*@dev"
		}
	}

## Configuration {#configuration}

Next add the service provider in `app/config/app.php`.

	'providers' => array(

		// ...

		'Orchestra\Extension\ExtensionServiceProvider',
		'Orchestra\Memory\MemoryServiceProvider',
		'Orchestra\Extension\PublisherServiceProvider',

		'Orchestra\Extension\CommandServiceProvider',
	),

### Migrations

Before we can start using `Orchestra\Extension`, please run the following:

	php artisan extension:migrate

> The command utility is enabled via `Orchestra\Extension\CommandServiceProvider`.
