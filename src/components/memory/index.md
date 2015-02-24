---
title: Memory Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/memory.svg?style=flat)](https://packagist.org/packages/orchestra/memory)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/memory.svg?style=flat)](https://packagist.org/packages/orchestra/memory)
[![MIT License](https://img.shields.io/packagist/l/orchestra/memory.svg?style=flat)](https://packagist.org/packages/orchestra/memory)

Memory Component handles runtime configuration either using "in memory" Runtime or database using Cache, Fluent Query Builder or Eloquent ORM. Instead of just allowing static configuration to be used, Memory Component allow those configuration to be persistent in between request by utilizing multiple data storage option either through cache or database.

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Usage](#usage)
  - [Creating Instance](#create-instance)
  - [Storing Items](#storing-items)
  - [Retrieving Items](#retrieving-items)
  - [Removing Items](#removing-items)
  - [Extending Memory](#extending-memory)
* [Change Log]({doc-url}/components/memory/changes#v3-0)
* [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Memory
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/memory": "3.0.*"
	}
}
```

And then run `composer install` from the terminal.

### Quick Installation

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/memory=3.0.*"
```

## Configuration {#configuration}

Next add the service provider in `config/app.php`.

```php
'providers' => [

	// ...

	'Orchestra\Memory\MemoryServiceProvider',

	'Orchestra\Memory\CommandServiceProvider',
],
```

### Aliases

You might want to add `Orchestra\Support\Facades\Memory` to class aliases in `config/app.php`:

```php
'aliases' => [

	// ...

	'Memory' => 'Orchestra\Support\Facades\Memory',
],
```

### Migrations

Before we can start using Memory Component, please run the following:

```bash
php artisan memory:migrate
```

> The command utility is enabled via `Orchestra\Memory\CommandServiceProvider`.

### Publish Configuration

Optionally, you can also publish the configuration file if there any requirement to change the default:

```bash
php artisan config:publish --packages=orchestra/memory
```

## Usage {#usage}

* [Creating Instance](#create-instance)
* [Storing Items](#storing-items)
* [Retrieving Items](#retrieving-items)
* [Removing Items](#removing-items)
* [Extending Memory](#extending-memory)

### Creating Instance {#create-instance}

Below are list of possible ways to use `Orchestra\Memory`:

```php
$runtime  = Memory::make('runtime');
$fluent   = Memory::make('fluent');
$eloquent = Memory::make('eloquent');
$cache    = Memory::make('cache');
```

However, most of the time you wouldn't need to have additional memory instance other than the default which is using `orchestra_options` table.

```php
$memory = Memory::make();
```

> When using with Orchestra Platform, `Memory::make()` would be used throughout the application.

### Storing Items {#storing-items}

Storing items in the `Memory` is simple. Simply call the put method:

```php
$memory->put('site.author', 'Taylor');

// or you can also use
Memory::put('site.author', 'Taylor');
```

The first parameter is the **key** to the config item. You will use this key to retrieve the item from the config. The second parameter is the **value** of the item.

### Retrieving Items {#retrieving-items}

Retrieving items from `Memory` is even more simple than storing them. It is done using the get method. Just mention the key of the item you wish to retrieve:

```php
$name = $memory->get('site.author');

// or you can also use
$name = Memory::get('site.author');
```

By default, `NULL` will be returned if the item does not exist. However, you may pass a different default value as a second parameter to the method:

```php
$name = $memory->get('site.author', 'Fred');
```

Now, "Fred" will be returned if the "site.author" item does not exist.

### Removing Items {#removing-items}

Need to get rid of an item? No problem. Just mention the name of the item to the forget method:

```php
$memory->forget('site.author');

// or you can also use
Memory::forget('site.author');
```

### Extending Memory {#extending-memory}

There might be requirement that a different type of storage engine would be use for memory instance, you can extending it by adding your own handler.

```php
use Orchestra\Memory\Provider;
use Orchestra\Contracts\Memory\Handler as HandlerContract;

class AcmeMemoryHandler implements HandlerContract
{
	// Add your implementation
}

Memory::extend('acme', function ($app, $name) {
    $handler = new AcmeMemoryHandler($name);

	return new Provider($handler);
});

// Now you can use it as
$acme = Memory::make('acme.default');
```

> You can also extends `Orchestra\Memory\Abstractable\Handler` which add some boilerplate code on your custom handler.

## Resources {#resources}

* [GitHub](https://github.com/orchestral/memory)
* [Packagist](https://packagist.org/packagist/orchestra/memory)
* [Travis-CI](https://travis-ci.org/orchestral/memory)
