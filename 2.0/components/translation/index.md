---
layout: docs2.0
title: Translation Component

---

Translation Component
==============

<article id="introduction">

`Orchestra\Translation` is a small improvement over `illuminate/translation` where you can now have `app/lang/en/packages/acme/foobar` without having to touch package source code.

* [Installation](#installation)
* [Configuration](#configuration)

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/translation": "2.0.*"
		}
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		# Remove 'Illuminate\Translation\TranslationServiceProvider' 
		# and add 'Orchestra\Translation\TranslationServiceProvider'
		
		'Orchestra\Translation\TranslationServiceProvider',
	),

> `Orchestra\Translation\TranslationServiceProvider` should replace `Illuminate\Translation\TranslationServiceProvider`.

</article>
