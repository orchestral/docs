---
title: Resources Component
---

* [Installation](#installation)
* [Configuration](#configuration)

`Orchestra\Resources` is an adhoc routing manager that allow extension developer to add CRUD interface without touching Orchestra Platform.

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/resources": "2.0.*"
		}
	}

## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(

		// ...

		'Orchestra\Resources\ResourcesServiceProvider',
	),
