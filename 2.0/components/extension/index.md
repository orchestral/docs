---
layout: docs2.0
title: Extension Component

---

Extension Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Extension` allows components or packages to be added dynamically to Orchestra Platform without the hassle of modifying the configuration.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/extension": "2.0.*"
		}
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Extension\ExtensionServiceProvider',
		'Orchestra\Memory\MemoryServiceProvider',
		'Orchestra\Extension\PublisherServiceProvider',
	),

<a id="migrate"></a>
### Migrations

Before we can start using `Orchestra\Extension`, please run the following:

	$ php artisan orchestra:extension install

</article>
