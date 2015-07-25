---
title: Notifier Component
badge: notifier

---

Notifier Component add a simplify approach to notifier the application user using mail (or other notification service) that is managed using `Orchestra\Notifier\NotifierManager`.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
5. [Change Log]({doc-url}/components/notifier/changes#v3-1)

<a name="compatibility"></a>
## Version Compatibility

Laravel    | Notifier
:----------|:----------
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x
 5.1.x     | 3.1.x

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/notifier": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

	composer require "orchestra/notifier=~3.0"

<a name="configuration"></a>
## Configuration {#configuration}

Next add the service provider in `config/app.php`

```php
'providers' => [

    // ...

    Orchestra\Notifier\NotifierServiceProvider::class,
],
```

### Aliases

You might want to add `Orchestra\Support\Facades\Notifier` to class aliases in `config/app.php`:

```php
'aliases' => [

    // ...

    'Mailer'   => Orchestra\Support\Facades\Mailer::class,
	'Notifier' => Orchestra\Support\Facades\Notifier::class,
],
```
