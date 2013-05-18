---
layout: default
title: Using Auth
---

Using Auth
==============

* [Retrieving Roles](#retrieving-roles)
* [Has A Role](#check-role)

<article id="introduction">

Essentially, the Auth class offered by Laravel 4 is already good enough for normal usage. Orchestra Platform only extends the default operation and allow a user to be link with one or many roles.

</article> 

<article id="retrieving-roles">
## Retrieving Roles

Retrieve user's roles is as simple as:

	$roles = Auth::roles();

</article>

<article id="check-role">
## Has a Role

To check if user has a role.

	if (Auth::is(['admin']))
	{
		echo "Is an admin";
	}

</article>
