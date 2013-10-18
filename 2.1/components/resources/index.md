Resources Component
==============

* [Installation](#installation)
* [Configuration](#configuration)

`Orchestra\Resources` is an adhoc routing manager that allow extension developer to add CRUD interface without touching Orchestra Platform.

## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/resources": "2.1.*@dev"
	}
}
```

## Configuration

Next add the service provider in `app/config/app.php`.

```php
'providers' => array(
	
	// ...
	
	'Orchestra\Resources\ResourcesServiceProvider',
),
```
