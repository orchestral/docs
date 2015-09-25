---
title: Imagine Component
badge: imagine

---

Imagine (Wrapper) Component is a Laravel 5 package wrapper for [Imagine](https://github.com/avalanche123/Imagine).

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Change Log]({doc-url}/components/imagine/changes#v3-1)

<a name="compatibility"></a>
## Version Compatibility

Laravel    | Imagine
:----------|:----------
 4.0.x     | 2.0.x
 4.1.x     | 2.1.x
 4.2.x     | 2.2.x
 5.0.x     | 3.0.x
 5.1.x     | 3.1.x
 5.2.x     | 3.2.x@dev

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/imagine": "~3.0"
    }
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/imagine=~3.0"


<a name="configuration"></a>
## Configuration

Add `Orchestra\Imagine\ImagineServiceProvider` service provider in `config/app.php`.

```php
'providers' => [

    // ...

    Orchestra\Imagine\ImagineServiceProvider::class,
],
```

### Aliases

Add `Orchestra\Imagine\Facade` facade alias in `config/app.php`.

```php
'aliases' => [

    // ...

    'Imagine' => Orchestra\Imagine\Facade::class,
],
```

<a name="usage"></a>
## Usage

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
