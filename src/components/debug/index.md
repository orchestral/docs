---
title: Artisan Debug Profiler

---

`Orchestra\Debug` is commandline profiling package for Laravel 4, It was based from Laravel 4.1 commandline profiling tool which was merged with `php artisan tail`.

### Table of Contents

* Quick Guide
  - [Installation](#installation)
  - [Configuration](#configuration)
* Documentation
  - [Usage](/docs/2.2/components/debug/usage)
* [Change Log](/docs/2.2/components/debug/changes#v2-2)
* [Github](https://github.com/orchestral/debug)

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/debug": "2.2.*"
		}
	}

## Configuration {#configuration}

Next add the following service provider in `app/config/app.php`.

	'providers' => array(

		// ...

		'Orchestra\Debug\DebugServiceProvider',

		'Orchestra\Debug\CommandServiceProvider',
	),

You could also create an alias for `Orchestra\Support\Facades\Profiler` in `app/config/app.php`.

	'alias' => array(
		'Profiler' => 'Orchestra\Support\Facades\Profiler',
	),
