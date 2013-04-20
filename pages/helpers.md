---
layout: default
title: Helpers
---

# Helpers

Orchestra Platform includes a set of helpers function to help solves some of the frequent problem while developing on Laravel.

* [handles()](#handles)

<article id="handles">

## handles()

Return handles configuration for a bundle to generate a full URL.

	echo handles('orchestra/foundation::users');

Above code would return `http://yoursite.com/orchestra/users`, however if your Orchestra Platform configuration is set to use admin as the bundle handles, the same code would then return `http:://yoursite.com/admin/users`.