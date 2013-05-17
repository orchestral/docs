---
layout: default
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

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

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

You might want to add `Orchestra\Support\Facades\Acl` to class aliases in `app/config/app.php`:

	'aliases' => array(

		// ...

		'Orchestra\Acl' => 'Orchestra\Support\Facades\Acl',
	),

<a id="migrate"></a>
### Migrations

Before we can start using `Orchestra\Auth`, please run the following:

	$ php artisan orchestra:auth install

</article>

