---
layout: default
title: Resources Component
---

Resources Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Resources` is an adhoc routing manager that allow extension developer to add CRUD interface without touching Orchestra Platform.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/resources": "2.0.*"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Resources\ResourcesServiceProvider',
	),

You might want to add following facades to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...
		
		'Orchestra\Resources' => 'Orchestra\Support\Facades\Resources',
	),

</article>
