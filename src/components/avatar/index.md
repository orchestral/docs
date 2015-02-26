---
title: Avatar Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/avatar.svg?style=flat)](https://packagist.org/packages/orchestra/avatar)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/avatar.svg?style=flat)](https://packagist.org/packages/orchestra/avatar)
[![MIT License](https://img.shields.io/packagist/l/orchestra/avatar.svg?style=flat)](https://packagist.org/packages/orchestra/avatar)

Avatar Component provide support for driver based avatar provider for your Laravel, PHP or Orchestra Platform application.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Change Log]({doc-url}/components/avatar/changes#v3-0)
6. [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Avatar
:----------|:----------
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/avatar": "3.0.*"
	}
}
```

And then run `composer install` from the terminal.

### Quick Installation {#quick-installation}

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/avatar=3.0.*"
```

## Configuration {#configuration}

Add `Orchestra\Avatar\AvatarServiceProvider` service provider in `config/app.php`.

```php
'providers' => [

    // ...
    'Orchestra\Avatar\AvatarServiceProvider',
],
```

You might also want to add `Orchestra\Support\Facade\Avatar` to class aliases in `config/app.php`:

```php
'aliases' => [

    // ...
    'Avatar' => 'Orchestra\Support\Facade\Avatar',
],
```

## Usage {#usage}

You can easily display an avatar by passing a `User` instance.

```php
<?php

$user = User::find(1);

$avatar = Avatar::user($user)->render();
```

## Resources {#resources}

* [Github](https://github.com/orchestral/avatar)
* [Packagist](https://packagist.org/packages/orchestra/avatar)
* [Travis-CI](https://travis-ci.org/orchestral/avatar)
