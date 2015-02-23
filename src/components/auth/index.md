---
title: Auth Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/auth.svg?style=flat)](https://packagist.org/packages/orchestra/auth)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/auth.svg?style=flat)](https://packagist.org/packages/orchestra/auth)
[![MIT License](https://img.shields.io/packagist/l/orchestra/auth.svg?style=flat)](https://packagist.org/packages/orchestra/auth)

Auth Component extends the functionality of `Illuminate\Auth` with the extra functionality to retrieve users' role. This is important when we want to use `ACL` to manage application Access Control List (ACL).

## Table of Content {#toc}

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Usage]({doc-url}/components/auth/usage)
  - [Auth Usage]({doc-url}/components/auth/usage)
  - [RBAC and ACL Usage]({doc-url}/components/auth/rbac)
  - [Integration with Memory]({doc-url}/components/auth/memory-integration)
* [Change Log]({doc-url}/components/auth/changes#v2-2)
* [Github](https://github.com/orchestral/auth)

## Version Compatibility {#compatibility}

Laravel    | Auth
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
		"orchestra/auth": "2.2.*"
	}
}
```

And then run `composer install` from the terminal.

### Quick Installation {#quick-installation}

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/auth=2.2.*"
```

## Configuration {#configuration}

Next add the service provider in `config/app.php`.

```php
'providers' => [

	// ...
	# Remove 'Illuminate\Auth\AuthServiceProvider'
	# and add 'Orchestra\Auth\AuthServiceProvider'

	'Orchestra\Auth\AuthServiceProvider',
	'Orchestra\Authorization\AuthorizationServiceProvider',
	'Orchestra\Memory\MemoryServiceProvider',

	'Orchestra\Auth\CommandServiceProvider',
],
```

> `Orchestra\Auth\AuthServiceProvider` should replace `Illuminate\Auth\AuthServiceProvider`.

### Aliases

To make development easier, you could add `Orchestra\Support\Facades\ACL` alias for easier reference:

```php
'aliases' => [

	'ACL' => 'Orchestra\Support\Facades\Acl',

],
```

### Migrations

Before we can start using Auth Component, please run the following:

```bash
php artisan auth:migrate
```

> The command utility is enabled via `Orchestra\Auth\CommandServiceProvider`.

Optionally you can enable Memory Component to use it with `ACL`, please run the following:

```bash
php artisan memory:migrate
```

> The command utility is enabled via `Orchestra\Memory\CommandServiceProvider`.

