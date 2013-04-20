---
layout: default
title: Helpers
---

# Helpers

Orchestra Platform includes a set of helpers function to help solves some of the frequent problem while developing on Laravel.

* [handles()](#handles)
* [memorize()](#memorize)

<article id="handles">
## handles()

Return handles configuration for a bundle to generate a full URL.

	echo handles('orchestra/foundation::users');

Above code would return `http://yoursite.com/orchestra/users`, however if your Orchestra Platform configuration is set to use admin as the bundle handles, the same code would then return `http:://yoursite.com/admin/users`.

> You can manually set the handles configuration for each package by setting `Config::set('vendor/package::handles', 'foo')` and the package would then accept `foo` as it prefix routing.

</article>

<article id="memorize">
## memorize()

Return memory configuration associated to the request, helper alias to `Orchestra\Memory::get()`.

	{{ memorize('site.name') }}

</article>