---
layout: docs2.0
title: Widget Component

---

Widget Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

<article id="introduction">

Widget allow you to manage widgetize actions in Orchestra Platform. By default Orchestra Platform provides the following widgets:

* **Menu** to manage menu.
* **Pane** to manage dashboard items.
* **Placeholder** to manage sidebar widgets.

</article>

<article id="installation">
## Installation

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/widget": "2.0.*"
		}
	}

</article>

<article id="configuration">
## Configuration

Next add the service provider in `app/config/app.php`.

	'providers' => array(
		
		// ...
		
		'Orchestra\Widget\WidgetServiceProvider',
	),

</article>
