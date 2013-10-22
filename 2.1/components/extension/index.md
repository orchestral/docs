Extension Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

`Orchestra\Extension` allows components or packages to be added dynamically to Orchestra Platform without the hassle of modifying the configuration.

## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/extension": "2.1.*@dev"
	}
}
```

## Configuration

Next add the service provider in `app/config/app.php`.

```php
'providers' => array(
	
	// ...
	
	'Orchestra\Extension\ExtensionServiceProvider',
	'Orchestra\Memory\MemoryServiceProvider',
	'Orchestra\Extension\PublisherServiceProvider',

	'Orchestra\Extension\CommandServiceProvider',
),
```

### Migrations

Before we can start using `Orchestra\Extension`, please run the following:

```bash
php artisan orchestra:extension install
```

> The command utility is enabled via `Orchestra\Extension\CommandServiceProvider`.
