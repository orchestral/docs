---
layout: docs2.0
title: Auth Component

---

Auth Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

`Orchestra\Auth` extends the functionality of `Illuminate\Auth` with the extra functionality to retrieve users' role. This is important when we want to use `Orchestra\Acl` to manage application Access Control List (ACL).

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/auth": "2.0.*"
		},
		"minimum-stability": "dev"
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		# Remove 'Illuminate\Auth\AuthServiceProvider' 
		# and add 'Orchestra\Auth\AuthServiceProvider'
		'Orchestra\Auth\AuthServiceProvider',
	),

> `Orchestra\Auth\AuthServiceProvider` should replace `Illuminate\Auth\AuthServiceProvider`.

<a id="migrate"></a>
### Migrations

Before we can start using `Orchestra\Auth`, please run the following:

	$ php artisan orchestra:auth install

</article>

