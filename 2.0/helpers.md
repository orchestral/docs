---
layout: default
title: Helpers

---

# Helpers

Orchestra Platform includes a set of helpers function to help solves some of the frequent problem while developing on Laravel.

* [orchestra()](#orchestra)
* [handles()](#handles)
* [memorize()](#memorize)

<article id="orchestra">
## orchestra()

Return orchestra.app instance.

	echo orchestra()->memory()->get('site.name');

</article>

<article id="handles">
## handles()

Return handles configuration for a bundle to generate a full URL.

	echo handles('orchestra/foundation::users');

Above code would return `http://yoursite.com/orchestra/users`, however if your Orchestra Platform configuration is set to use admin as the bundle handles, the same code would then return `http:://yoursite.com/admin/users`.

> During boot process, Orchestra Platform will automatically set handle for each packages, if specified in `orchestra.json` to `orchestra/extension::handles.vendor/package`, this can be modified from the extension configuration page.

</article>

<article id="memorize">
## memorize()

Return memory configuration associated to the request, helper alias to `Orchestra\Memory::get()`.

	echo memorize('site.name');

</article>
