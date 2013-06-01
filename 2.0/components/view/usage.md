---
layout: docs2.0
title: Using Theme

---

Using Theme
==============

* [Basic of Theme](#basic)
* [Anatomy of Theme](#anatomy)

<article id="basic">
## Basic of Theme

<a name="default-theme"></a>
### Default Theme

By default, the selected theme is `default`, and located at `public/themes/default`.

> You might need to create the following folder when `Orchestra\Theme` is used outside of Orchestra Platform.


<a name="manifest-file"></a>
### Manifest File

Each theme can have a manifest file, which provide Orchestra Platform the required information to properly use the theme.

	{
		"name": "Default",
		"description": "Default Theme for Orchestra Platform",
		"author": "Orchestra Platform",
		"autoload": []
	}

#### Autoloading Theme Configuration

There would be time where you would need to be able to customize Theme by adding additional helper or configuration. We can easily start files using the `"autoload"` options:

	{
		"autoload": [
			"start.php",
			"helpers.php"
		]
	}

Based on above example, two files would be loaded on each request:

* `public/themes/default/start.php`
* `public/themes/default/helpers.php`

</article>

<article id="anatomy">
## Anatomy of Theme

The **application** views is accessible from the root path of your theme, while extensions/packages can be accessible from `packages/{package-name}` subfolder. So for example if your selected theme is `default`, and you plan to replace `home.index` and `acme/foo::home.index` view. Only the following file would be needed:

* `public/themes/default/home/index.blade.php`
* `public/themes/default/packages/acme/foo/home/index.blade.php`
* `public/themes/default/theme.json`
* `public/themes/default/screenshot.png`

<a name="theme-asset"></a>
### Routing to Theme Asset

You are free to maintain where assets is located inside the theme folder as it is under public folder. To access the asset file, you can use the following snippet.

	<script src="<?php echo Orchestra\Theme::to('assets/js/script.js'); ?>">
	<!-- this would point to `http:://yourdomain.com/themes/default/assets/js/script.js` -->

</article>

