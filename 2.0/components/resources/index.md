---
layout: docs2.0
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

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Resources\ResourcesServiceProvider',
	),

</article>
