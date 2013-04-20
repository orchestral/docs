---
layout: default
title: Using Auth
---

Using Auth
==============

* [Retrieving Roles](#retrieving-roles)
* [Has A Role](#check-role)

<article id="retrieving-roles">
## Retrieving Roles

Retrieve user's roles is as simple as:

	$roles = Auth::roles();

</article>

<article id="check-role">
## Has a Role

To check if user has a role.

	if (Auth::is(array('admin')))
	{
		echo "Is an admin";
	}

</article>