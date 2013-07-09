---
layout: docs2.0
title: View Change Log

---

# View Change Log

<section id="v2.0">
## Version 2.0

<article id="v2.0.3">
### Version 2.0.3

* Fixed can't inherit abstract function `Illuminate\Support\Contracts\RenderableInterface::render()` (previously declared abstract in `Orchestra\Html\AbstractableBuilder`).

</article>

<article id="v2.0.2">
### Version 2.0.2

* Fixed theme name detection for Windows environment.
* Rename `Orchestra\View\Finder::getFilename` to `Orchestra\View\Finder:: parseThemeNameFromPath`.

</article>

<article id="v2.0.1">
### Version 2.0.1

* Allow theme name to be reserved from theme.json, and introduce uid to store theme folder name as an alternative name.

</article>

<article id="v2.0.0">
### Version 2.0.0

* Migrate `Orchestra\View` and `Orchestra\Theme` from Orchestra Platform 1.2.
* Deprecate and remove `Orchestra\Theme::map()` usage.
* Allow queried view to be cache for subsequent call within the same request using `Orchestra\View\FileViewFinder`.
* Add `Orchestra\View\Theme\Finder` for theme management purpose.
* `Orchestra\View\Theme\Manifest` should be able to return theme name.

</article>

</section>