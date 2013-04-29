---
layout: default
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
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

<a id="migrate"></a>
### Migrations

Before we can start using `Orchestra\Extension`, please run the following:

	$ php artisan migrate --packages=orchestra/memory

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

> `Orchestra\Auth\AuthServiceProvider` should replace `Illuminate\Auth\AuthServiceProvider`.

You might want to add following facades to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...
		
		'Orchestra\Extension' => 'Orchestra\Support\Facades\Extension',
		'Orchestra\Memory'    => 'Orchestra\Support\Facades\Memory',
	),

</article>
