---
title: Notifier Component

---

`Orchestra\Notifier` add a simplify approach to notifier the application user using mail (or other notification service) that is managed using `Orchestra\Notifier\NotifierManager`.

* [Installation](#installation)
* [Configuration](#configuration)
* [Resources](#resources)

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

	{
		"require": {
			"orchestra/notifier": "2.2.*"
		}
	}

## Configuration {#configuration}

Next add the service provider in `app/config/app.php`

	'providers => array(

		// ...

		'Orchestra\Notifier\NotifierServiceProvider',
	),


## Resources {#resources}

* [Change Log](/docs/2.2/components/notifier/changes#v2-2)
