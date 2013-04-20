---
layout: default
title: Using Memory
---

Using Memory
==============

* [Creating Instance](#create-instance)

<article id="create-instance">
## Creating Instance

Below are list of possible ways to use `Orchestra\Memory`:

	$runtime  = Orchestra\Memory::make('runtime');
	$fluent   = Orchestra\Memory::make('fluent');
	$eloquent = Orchestra\Memory::make('eloquent'); 
	$cache    = Orchestra\Memory::make('cache');

However, most of the time you wouldn't need to have additional memory instance other than the one initiated by Orchestra Platform which is using `orchestra_options` table.

	$default = Orchestra\Memory::make();

</article>