---
layout: docs2.0
title: Using Extension

---

Using Extension
==============


An extension is a basically a package except that first it need to have a manifest file as similar as you would have `composer.json` for every package.

* [Managing an Extension](#managing)
* [Basic of an Extension](#basic)
  * [Manifest File](#manifest-file)
  * [Start File](#start-file)
* [Configuring an Extension](#configuring)
  * [Service Providers for Extension](#provide)
  * [Handling a Route](#handles)
  * [Disabling Configuration](#disable-configuration) 

<article id="managing">
## Managing an Extension

Extensions will be manage by Orchestra Platform Administrator Interface. Login as an 
administrator and go to **Extensions** on the top navigation.

Few things to consider:

* Only activated extensions will be run on runtime.
* Orchestra Platform will start all service providers listed by the extension.

</article>


<article id="basic">
## Basic of an Extension

<a name="manifest-file"></a>
### Manifest File
The manifest file will be stored in `{package-name}/orchestra.json` (same level as `composer.json`), this tell Orchestra Platform to handle the package as an extension.

	{
		"name": "Robotix",
		"description": "Robots.txt",
		"author": "Mior Muhammad Zaki",
		"url": "https://github.com/crynobone/robotix",
		"config": {
			"handles": "robotix"
		},
		"provide": [
			"Robotix\\RobotixServiceProvider"
		]
	}

<a name="start-file"></a>
### Start File

Extension start file (optional) allow extension to run start script (as Laravel run application start.php file). The start file will be stored in `{package-name}/src/orchestra.php`. 

> What inside the file depends on how extension would interact with Orchestra Platform and this can be diverse depending on use cases.

</article>


<article id="configuring">
## Configuring an Extension

By default, administrator are able to configure any extension based on requirement of the application including `handles` value using Orchestra Platform Administrator Interface. This allow non-technical administrator to take charge of the application without having to understand any of the code.

![Configuring an Extesion](/docs/2.0/assets/extension.png)

To configure an extension, the extension need to be activated. Once this is done, all extension that allow configuration can be configured. Simply click on the extension name to navigate to the configuration page.

<a name="provide"></a>
### Service Providers for Extension

Manifest file also allow extension to dynamically register service providers without having to change `app/config/app.php`. To tell Orchestra Platform to automatically run your service provider include the following:
	
	{
		"provide" : [
			"Robotix\\RobotixServiceProvider"
		]
	}
	
> You can add multiple service provider on a single extension.

<a name="handles"></a>
### Handling a Route

Unliked basic packages for Laravel 4, end users doesn't have control to manage packages routing as compared to Orchestra Platform, any extension that offer routing would only need to identify a default route option by adding:

	{
		"config": {
			"handles": "robotix"		
		}
	}

<a name="disable-configuration"></a>
### Disabling Configuration

Extension developers can disable configuration option by adding `"configurable" : false`, To do this edit your manifest file.

	{
		"config": {
			"configurable": false
		}
	}

> By doing so, Orchestra Platform will take extension as it is and will not try to modify any of the configuration.

</article>
