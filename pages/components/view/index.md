---
layout: default
title: View Component

---

View Component
==============

<article id="introduction">

`Orchestra\View` is Orchestra Platform approach to deliver themeable application that support extensions. The functionality evolves by modifying how `Illuminate\View\ViewFileFinder` would resolve which file, which would first look into the current active theme folder, before resolving it cascading-ly.

This would allow extension (or even packages) to have it's own set of view styling while developer can maintain a standardise overall design through out the project using a theme.

* [Installation](#installation)
* [Configuration](#configuration)

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/view": "2.0.*"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\View\ViewServiceProvider',
	),

You might want to add `Orchestra\Support\Facades\Theme` facade to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...
		
		'Orchestra\Theme' => 'Orchestra\Support\Facades\Theme',
	),

</article>


