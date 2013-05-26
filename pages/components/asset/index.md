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

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Asset\AssetServiceProvider',
	),

</article>

