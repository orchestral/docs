---
title: Helpers
---

Orchestra Platform includes a set of helpers function to help solves some of the frequent problem while developing on Laravel.

1. [orchestra](#orchestra)
2. [handles](#handles)
3. [resources](#resources)
4. [memorize](#memorize)
5. [messages](#messages)
6. [redirect_with_errors](#redirect_with_errors)
7. [redirect_with_messages](#redirect_with_messages)
8. [get_meta](#get_meta)
9. [set_meta](#set_meta)

<a name="orchestra"></a>
## orchestra

Return `orchestra.app` instance.

```php
echo orchestra()->memory()->get('site.name');

// You can also use the following to get the same value:
echo orchestra('memory')->get('site.name');
```

> Alias to `App::make('orchestra.app')`

<a name="handles"></a>
## handles

Return handles configuration for a package to generate a full URL.

```php
echo handles('orchestra/foundation::users');

// you can also use `orchestra` as an alias to `orchestra/foundation`.
echo handles('orchestra::users');
```

> Alias to `Foundation::handles()`

Above code would return `/admin/users`, however if your Orchestra Platform configuration is set to use root path as the handles, the same code would then return `/users`.

> During boot process, Orchestra Platform will automatically set handle for each packages, if specified in `orchestra.json` to `orchestra/extension::handles.vendor/package`, this can be modified from the extension configuration page.

<a name="resources"></a>
## resources

Return handles configuration for a resources to generate a full URL.

```php
// To route for a resources you would normally write
echo handles('orchestra/foundation::resources/foo/create');

// this can be shortern to
echo resources('foo/create');
```

<a name="memorize"></a>
## memorize

Return memory configuration associated to the request.

```php
echo memorize('site.name');
```

> Alias to `Memory::get()`

<a name="messages"></a>
## messages

Add a new flash messages for the following request.

```php
messages('success', 'User has been created.');

messages('error', 'Unable to update the database!');
```

> Alias to `Messages::add()`
