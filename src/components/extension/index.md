---
title: Extension Component

---

`Orchestra\Extension` allows components or packages to be added dynamically to Orchestra Platform without the hassle of modifying the configuration.

### Table of Content

* Quick Guide
  - [Installation](#installation)
  - [Configuration](#configuration)
* Documentation
  - [Usage](/docs/2.2/components/extension/usage)
  - [Extending Extension](/docs/2.2/components/extension/extend)
* [Change Log](/docs/2.2/components/extension/changes#v2-2)
* [Github](https://github.com/orchestral/extension)

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/extension": "2.2.*"
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
