---
layout: default
title: HTML Component
---

HTML Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Html` extends the functionality of `Illuminate\Html` with the extra functionality to including a chainable Form and Table builder. These set of functionality are the backbone in allowing extensions in Orchestra Platform to attach action to any existing form or table.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/html": "dev-master"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		# Remove 'Illuminate\Html\HtmlServiceProvider',
		'Orchestra\Html\HtmlServiceProvider',
	),

> `Orchestra\Html\HtmlServiceProvider` should replace `Illuminate\Html\HtmlServiceProvider`.

`Orchestra\Html` also include a few facade which is used directly:

	'aliases' => array(

		// ...

		'Orchestra\Form'  => 'Orchestra\Support\Facades\Form',
		'Orchestra\Table' => 'Orchestra\Support\Facades\Table',

	),

</article>