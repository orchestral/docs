---
title: Using Auth

---

Essentially, the Auth class offered by Laravel 4 is already good enough for normal usage. Orchestra Platform only extends the default operation and allow a user to be link with one or many roles.

* [Retrieving Roles](#retrieving-roles)
* [Check Roles](#check-roles)

## Retrieving Roles {#retrieving-roles}

Retrieve user's roles is as simple as:

	$roles = Auth::roles();

## Check Roles {#check-roles}

To check if user has a role.

	if (Auth::is(['admin'])) {
		echo "Is an admin";
	}

## Setup Custom Roles Relationship {#setup-custom-roles}

The default event listener `orchestra.auth: roles` is no longer registered in `Orchestra\Auth\AuthServiceProvider`. This would allow better configuration over convertion control for your application.

An example setup code would be:

    Auth::setup(function ($user, $roles) {
	    // If user is not logged in.
	    if (is_null($user)) {
		    return $roles;
	    }

	    if ($user->is_admin) {
	    	$roles = array('Administrator');
	    } else {
	    	$roles = array('Member');
	    }

	    return $roles;
    });

> For Orchestra Platform, the listener are automatically registered in the bootstrap process.
