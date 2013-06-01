---
layout: docs2.0
title: Using Resources

---

Using Resources
==============

<article id="introduction">

`Orchestra\Resources` offer more control to developer to create application on top of Orchestra Platform Administrator Interface. The idea is to allow controllers to be map to specific URL in Orchestra Platform Administrator Interface.

</article>

<article id="adding">
## Adding a Resource

Normally we would identify an extension to a resource for ease of use, however Orchestra Platform still allow a single extension to register multiple resources if such requirement is needed.

	Event::listen('orchestra.started: admin', function ()
	{
		$robots = Orchestra\Resources::make('robotix', array(
			'name'    => 'Robots.txt',
			'uses'    => 'Robotix\ApiController',
			'visible' => function ()
			{
				return (Orchestra\App::acl()->can('manage orchestra'));
			},
		));
	});

</article>
