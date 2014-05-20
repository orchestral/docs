---
title: Asset Component

---

`Orchestra\Asset` is a port of Laravel 3 Asset for Orchestra Platform. It provides a simple way to manage the CSS and JavaScript used by your application.

### Table of Contents

* Quick Guide
  - [Installation](#installation)
  - [Configuration](#configuration)
* Documentation
  - [Usage](/docs/2.2/components/asset/usage)
* [Change Log](/docs/2.2/components/asset/changes#v2-2)
* [Github](https://github.com/orchestral/asset)

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/asset": "2.2.*"
		}
	}

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
