---
layout: default
title: Support Component
---

Support Component
==============
 
`Orchestra\Support` is basically a basic set of class required by Orchestra Platform. The idea behind it is similar to what is `Illuminate\Support` to Laravel 4 Framework.

## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/support": "dev-master"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

### Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Support\SupportServiceProvider',
	),

`Orchestra\Support` also include a few facade which is used directly:

	'aliases' => array(
	
		// ...

		'Orchestra\Decorator' => 'Orchestra\Support\Facades\Decorator',
		'Orchestra\Messages'  => 'Orchestra\Support\Facades\Messages',
	),