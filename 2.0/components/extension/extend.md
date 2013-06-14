---
layout: docs2.0
title: Extending Extension

---

Extending Extension
==============

* [Add Extension Location](#add-location)

<article id="add-location">
## Add Extension Location

By default, `Orchestra\Extension` is configured to search for extension under the following folders: `app`, `workbench/*/*` and `vendor/*/*` using `glob()` PHP function. If there a requirement to add non-distributed packages feel free to include your own structure, and include the path (preferably in `app/start/global.php`):

	App::make('orchestra.extension.finder')->addPath(base_path().'/modules/*/*/');

</article>