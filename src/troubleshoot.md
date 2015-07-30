---
title: Troubleshooting

---

1. [Using safe mode](#safe-mode)
2. [Missing installation](#missing-installation)
3. [Maximum function nesting level of '100' reached, aborting!](#maximum-nesting)
4. [Class 'orchestra.publisher.ftp' not found](#orchestra-publisher-ftp-class-not-found)
5. [Error on SessionHandler::read()](#error-sessionhandler-read)

<a name="safe-mode"></a>
## Using safe mode

There would be time when you might face problem with Orchestra Platform where an extension might cause a bug and your application stop working. In such event, you can use the safe mode to stop any extension from being loaded during bootstrap.

To do this, just add `EXTENSION_MODE=safe` to your `.env`. This way, we would create a session data to indicate that you are browsing the site in safe mode. Once you have deactivate any problematic/broken extension just remove the value or change it to `EXTENSION_MODE=normal` to browse the website normally (with extensions re-enabled).

> You can also use `?_mode=safe` (default to `normal`) as URL query string.

<a name="missing-installation"></a>
## Missing installation

If you come across situation where your application suddenly when back as it wasn't installed, do check that `storage` contain the correct permission.

    $ chmod -Rf 777 storage

<a name="maximum-nesting"></a>
## Maximum function nesting level of '100' reached, aborting!

This is a random error that only happen when you have an older version of `xdebug` enabled (See <http://bugs.xdebug.org/bug_view_page.php?bug_id=00001100>). Here some recommendation that you can use to solve this issue:

### Homestead

Update to the latest version should solved this issue.

### Manually on Local Environment

You can update `php.ini` or `xdebug` extension configuration file by increasing the default value of `100` to something higher such as `250`:

    xdebug.max_nesting_level = 250

### Production Environment

For production environment, it's better to turn off `xdebug` extension as this would speed up your application.

<a name="orchestra-publisher-ftp-class-not-found"></a>
## Class 'orchestra.publisher.ftp' not found

In some deployment/production environment with limited access, you may come across the following error:

    Class 'orchestra.publisher.ftp' not found
    
This is a sign that your `public/packages` directly is not accessible (for write) by the web user, which is typical when you're using FTP user to upload the content or using `root` user to pull the content (using cvs etc).

In order to solve this you can either change the ownership of `public/packages` to the web user or pull in the FTP support for installing extension via:

    composer require "orchestra/ftp-updater=~3.0"

<a name="error-sessionhandler-read"></a>
## Error on SessionHandler::read() {#error-sessionhandler-read}

	SessionHandler::read(): The session id is too long or contains illegal characters, valid characters are a-z, A-Z, 0-9 and '-,'

In any event where the application stop with the following exception. Please rename your `session.cookie` value under the `resources/config/session.php`.
