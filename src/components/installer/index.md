---
title: Installer Component

---

[![Latest Stable Version](https://img.shields.io/github/release/orchestral/installer.svg?style=flat)](https://packagist.org/packages/orchestra/installer)
[![Total Downloads](https://img.shields.io/packagist/dt/orchestra/installer.svg?style=flat)](https://packagist.org/packages/orchestra/installer)
[![MIT License](https://img.shields.io/packagist/l/orchestra/installer.svg?style=flat)](https://packagist.org/packages/orchestra/installer)

Orchestra Platform Installer Extension provide a generic installation wizard and should be enough for most generic usage. However if you find the need to have something more customize feel free to override this extension with something else.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Change Log]({doc-url}/components/installer/changes#v3-0)
5. [Resources](#resources)

## Version Compatibility {#compatibility}

This extension is developed specifically for Orchestra Platform.

## Installation {#installation}

To install through composer, simply put the following in your `composer.json` file:

```json
{
    "require": {
        "orchestra/installer": "3.0.*"
    }
}
```

And then run `composer install` from the terminal.

### Quick Installation

Above installation can also be simplify by using the following command:

```bash
composer require "orchestra/installer=3.0.*"
```

## Configuration {#configuration}

Add `Orchestra\Installer\InstallerServiceProvider` service provider in `resources/config/app.php`.

```php
'providers' => [

    // ...

    'Orchestra\Installer\InstallerServiceProvider',
],
```

## Resources {#resources}

* [GitHub](https://github.com/orchestral/installer)
* [Packagist](https://packagist.org/packages/orchestra/installer)
* [Travis-CI](https://travis-ci.org/orchestral/installer)

