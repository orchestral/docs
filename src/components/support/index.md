---
title: Support Component
badge: support

---

Support component is basically a basic set of class required by Orchestra Platform. The idea behind it is similar to what is `Illuminate\Support` to Laravel Framework.

1. [Version Compatibility](#compatibility)
* [Installation](#installation)
* [Configuration](#configuration)
* [Resources](#resources)

<a name="compatibility"></a>
## Version Compatibility

 Laravel  | View
:---------|:----------
 4.0.x    | 2.0.x
 4.1.x    | 2.1.x
 4.2.x    | 2.2.x
 5.0.x    | 3.0.x

<a name="installation"></a>
## Installation

To install through composer, simply put the following in your `composer.json` file:

```json
{
	"require": {
		"orchestra/support": "~3.0"
	}
}
```

And then run `composer install` from the terminal.

<a name="quick-installation"></a>
### Quick Installation

Above installation can also be simplify by using the following command:

    composer require "orchestra/support=~3.0"

## Resources {#resources}

* [Manager Class]({doc-url}/components/support/manager)
* [Messages Class]({doc-url}/components/support/messages)
* [String Class]({doc-url}/components/support/str)
* [Validation Class]({doc-url}/components/support/validator)
* [Change Log]({doc-url}/components/support/changes#v2-2)
