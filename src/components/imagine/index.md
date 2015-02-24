---
title: Imagine Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/imagine.svg?style=flat)](https://packagist.org/packages/orchestra/imagine)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/imagine.svg?style=flat)](https://packagist.org/packages/orchestra/imagine)
[![MIT License](https://img.shields.io/packagist/l/orchestra/imagine.svg?style=flat)](https://packagist.org/packages/orchestra/imagine)

Imagine (Wrapper) Component is a Laravel 5 package wrapper for [Imagine](https://github.com/avalanche123/Imagine).

* [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Usage](#usage)
* [Change Log]({doc-url}/components/imagine/changes#v3-0)
* [Resources](#resources)

## Version Compatibility {#compatibility}

Laravel    | Imagine
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
        "orchestra/imagine": "3.0.*"
    }
}
```

And then run `composer install` from the terminal.

### Quick Installation

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/imagine=3.0.*"
```

## Configuration {#configuration}

Add `Orchestra\Imagine\ImagineServiceProvider` service provider in `config/app.php`.

```php
'providers' => [

    // ...

    'Orchestra\Imagine\ImagineServiceProvider',
],
```

Add `Imagine` alias in `config/app.php`.

```php
'aliases' => [

    // ...

    'Imagine' => 'Orchestra\Imagine\Facade',
],
```

## Usage {#usage}

Here a simple example how to create a thumbnail from an image:

```php
<?php

use Imagine\Image\Box;
use Imagine\Image\ImageInterface;

function create_thumbnail($path, $filename, $extension)
{
    $width  = 320;
    $height = 320;
    $mode   = ImageInterface::THUMBNAIL_OUTBOUND;
    $size   = new Box($width, $height);

    $thumbnail   = Imagine::open("{$path}/{$filename}.{$extension}")->thumbnail($size, $mode);
    $destination = "{$filename}.thumb.{$extension}";

    $thumbnail->save("{$path}/{$destination}");
}
```

## Resources {#resources}

* [GitHub](https://github.com/orchestral/imagine)
* [Packagist](https://packagist.org/packages/orchestra/imagine)
* [Travis-CI](https://travis-ci.org/orchestral/imagine)
