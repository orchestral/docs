---
layout: default
title: Memory Component
---

Memory Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">
`Orchestra\Memory` handles runtime configuration either using 'in memory' Runtime or database using Cache, Fluent Query Builder or Eloquent ORM.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/memory": "dev-master"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

### Migrations

Before we can start using `Orchestra\Memory`, please run the following:

	$ php artisan migrate --packages=orchestra/memory

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Memory\MemoryServiceProvider',
	),

You might want to add `Orchestra\Support\Facades\Memory` to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...

		'Orchestra\Memory' => 'Orchestra\Support\Facades\Memory',
	),

</article>