---
title: Troubleshooting

---

* [Using safe mode](#safe-mode)
* [Missing installation](#missing-installation)
* [Error on SessionHandler::read()](#error-sessionhandler-read)

## Using safe mode {#safe-mode}

There would be time when you might face problem with Orchestra Platform where an extension might cause a bug and your application stop working. In such event, you can use the safe mode to stop any extension from being loaded during bootstrap.

To do this, just add `EXTENSION_MODE=safe` to your `.env`. This way, we would create a session data to indicate that you are browsing the site in safe mode. Once you have deactivate any problematic/broken extension just remove the value or change it to `EXTENSION_MODE=normal` to browse the website normally (with extensions re-enabled).

> You can also use `?_mode=safe` (default to `normal`) as URL query string, however this is no longer persist between request.

## Missing installation {#missing-installation}

If you come across situation where your application suddenly when back as it wasn't installed, do check that `storage` contain the correct permission.

    $ chmod -Rf 777 storage

## Error on SessionHandler::read() {#error-sessionhandler-read}

	SessionHandler::read(): The session id is too long or contains illegal characters, valid characters are a-z, A-Z, 0-9 and '-,'

In any event where the application stop with the following exception. Please rename your [cookie name](https://github.com/orchestral/platform/blob/2.1/app/config/session.php#L99).
