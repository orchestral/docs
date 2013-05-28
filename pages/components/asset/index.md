---
layout: default
title: Asset Component

---

Asset Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Asset` is a port of Laravel 3 Asset for Orchestra Platform.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/asset": "2.0.*"
		},
		"minimum-stability": "dev"
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Asset\AssetServiceProvider',
	),

You might want to add `Orchestra\Support\Facades\Asset` to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...

		'Asset' => 'Orchestra\Support\Facades\Asset',
	),

</article>

