---
title: Asset Component

---

Asset is a port of Laravel 3 Asset for Orchestra Platform.

### Table of Content {#toc}

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Usage](/docs/2.1/components/asset/usage)
* [Change Log](/docs/2.1/components/asset/changes#v2-1)
* [Github](https://github.com/orchestral/asset)

## Version Compatibility {#compatibility}

Laravel    | Asset
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x


## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/asset": "2.1.*"
		}
	}

And then run `composer install` from the terminal.

### Quick Installation {#quick-installation}

Above installation can also be simplify by using the following command:

	composer require "orchestra/asset=2.1.*"

## Configuration {#configuration}

Next add the service provider in `app/config/app.php`.

	'providers' => array(

		// ...

		'Orchestra\Asset\AssetServiceProvider',
	),

### Aliases

You might want to add `Orchestra\Support\Facades\Asset` to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...

		'Orchestra\Asset' => 'Orchestra\Support\Facades\Asset',
	),


