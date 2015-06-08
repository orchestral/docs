---
title: Widget Component
badge: widget

---

Widget allow you to manage widgetize actions in Orchestra Platform. By default Orchestra Platform provides the following widgets:

* [Type of Widgets](#type)
* [Installation](#installation)
* [Configuration](#configuration)
* [Change Log]({doc-url}/components/widget/changes#v3-0)

<a name="type"></a>
## Type of Widgets

* **Menu** to manage menu.
* **Pane** to manage dashboard items.
* **Placeholder** to manage sidebar widgets.

<a name="Installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/widget": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/widget=~3.0"

<a name="configuration"></a>
## Configuration

Next add the service provider in `config/app.php`.

```php
'providers' => [

	// ...

	'Orchestra\Widget\WidgetServiceProvider',
],
```
