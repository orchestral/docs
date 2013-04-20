---
layout: default
title: Widget Component
---

Widget Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

Widget allow you to manage widgetize actions in Orchestra Platform. By default Orchestra Platform provides the following widgets:

* Menu - Manage menu in Orchestra Platform
* Pane - Manage dashboard items in Orchestra Platform
* Placeholder - Manage sidebar widgets in Orchestra Platform.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/widget": "dev-master"
		},
		"minimum-stability": "dev"
	}

> We will remove the `"minimum-stability": "dev"` once Laravel 4 Framework reach stable status, tentatively May 2013.

</article>

<article id="configuration">
### Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Widget\WidgetServiceProvider',
	),

You might want to add `Orchestra\Support\Facades\Widget` to class aliases in `app/config/app.php`:

	'aliases' => array(
	
		// ...

		'Orchestra\Widget' => 'Orchestra\Support\Facades\Widget',
	),

</article>