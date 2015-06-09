---
title: Orchestra Testbench Package
badge: testbench

---

Testbench Component is a simple package that is supposed to help you write tests for your Laravel package, especially when there is routing involved.

1. [Version Compatibility](#compatibility)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Change Log]({doc-url}/components/testbench/changes#v3-1)

<a name="compatibility"></a>
## Version Compatibility

 Laravel  | Testbench
:---------|:----------
 4.0.x    | 2.0.x
 4.1.x    | 2.1.x
 4.2.x    | 2.2.x
 5.0.x    | 3.0.x
 5.1.x    | 3.1.x

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require-dev": {
		"orchestra/testbench": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

	composer require --dev "orchestra/testbench=~3.0"

<a name="usage"></a>
## Usage

To use Testbench Component, all you need to do is extend `Orchestra\Testbench\TestCase` instead of `PHPUnit_Framework_TestCase`. The fixture `app` booted by `Orchestra\Testbench\TestCase` is predefined to follow the base application skeleton of Laravel 5.

```php
<?php

class TestCase extends Orchestra\Testbench\TestCase {}

```

<a name="package-providers"></a>
### Custom Service Provider

To load your package service provider, override the `getPackageProviders`.

```php
protected function getPackageProviders()
{
	return ['Acme\AcmeServiceProvider'];
}
```

<a name="package-aliases"></a>
### Custom Aliases

To load your package alias, override the `getPackageAliases`.

```php
protected function getPackageAliases()
{
	return [
		'Acme' => 'Acme\Facade'
	];
}
```

<a name="overriding-setup-method"></a>
### Overriding setUp() method

Since `Orchestra\Testbench\TestCase` replace Laravel's `Illuminate\Foundation\Testing\TestCase`, if you need your own `setUp()` implementation, do not forget to call `parent::setUp()`:

```php
/**
 * Setup the test environment.
 */
public function setUp()
{
	parent::setUp();

	// Your code here
}
```

If you need to add something early in the application bootstrapping process, you could use the `getEnvironmentSetUp()` method:

```php
/**
 * Define environment setup.
 *
 * @param  \Illuminate\Foundation\Application  $app
 * @return void
 */
protected function getEnvironmentSetUp($app)
{
	//
}
```

<a name="overriding-console-kernel"></a>
### Overriding Console Kernel

You can easily swap Console Kernel for application bootstrap by overriding `resolveApplicationConsoleKernel()` method:

```php
/**
 * Resolve application Console Kernel implementation.
 *
 * @param  \Illuminate\Foundation\Application  $app
 * @return void
 */
protected function resolveApplicationConsoleKernel($app)
{
    $app->singleton('Illuminate\Contracts\Console\Kernel', 'Acme\Testbench\Console\Kernel');
}
```

<a name="overriding-http-kernel"></a>
### Overriding HTTP Kernel

You can easily swap HTTP Kernel for application bootstrap by overriding `resolveApplicationHttpKernel()` method:

```php
/**
 * Resolve application HTTP Kernel implementation.
 *
 * @param  \Illuminate\Foundation\Application  $app
 * @return void
 */
protected function resolveApplicationHttpKernel($app)
{
    $app->singleton('Illuminate\Contracts\Http\Kernel', 'Acme\Testbench\Http\Kernel');
}
```

<a name="overriding-application-timezone"></a>
### Overriding Application Timezone

You can also easily override application default timezone, instead of the default `"UTC"`:

```php
/**
 * Get application timezone.
 *
 * @param  \Illuminate\Foundation\Application  $app
 * @return string|null
 */
protected function getApplicationTimezone($app)
{
    return 'Asia/Kuala_Lumpur';
}
```
