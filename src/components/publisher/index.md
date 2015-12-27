---
title: Publisher
badge: publisher

---

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Change Log]({doc-url}/components/notifier/changes#v3-1)

<a name="compatibility"></a>
## Version Compatibility

Laravel    | Notifier
:----------|:----------
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x
 5.1.x     | 3.1.x

## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/publisher": "~3.0"
    }
}
```

And then run `composer install` from the terminal.

### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/publisher=~3.0"

## Configuration

Add following service providers in `config/app.php`.

```php
'providers' => [

    // ...

    Orchestra\Publisher\PublisherServiceProvider::class,
    Orchestra\Publisher\CommandServiceProvider::class,
],
```
