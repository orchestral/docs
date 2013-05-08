---
layout: default
title: String Helper Class
---

String Helper Class
==============

`Orchestra\Support\Str` is properly the few internal API class that you might use directly. It extends `Illuminate\Support\Str` and offer some improvement.

* [Stream Get Contents](#streamGetContents)

<article id="streamGetContents">
## Stream Get Contents

Unliked other database driver, when using blob with PostgreSQL, the return value from database is a stream instead of string, using above helper method help convert it properly back to string.

	use Orchestra\Support\Str;

    $str = Str::streamGetContents($blob);

> The method would return original string when it detect that it isn't a stream.

</article>
