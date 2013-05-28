---
layout: default
title: Support Component

---

Support Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Support` is basically a basic set of class required by Orchestra Platform. The idea behind it is similar to what is `Illuminate\Support` to Laravel 4 Framework.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/support": "2.0.*"
		},
		"minimum-stability": "dev"
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Support\MessagesServiceProvider',
	),

</article>
