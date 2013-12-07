---
title: Validator Class
---

`Orchestra\Support\Validator` is a class based validation service with scenarios support built-in.

## Define basic rules {#basic-rules}

To define a basic rules, all you need to do is create a validation class, e.g:

	<?php

	use Orchestra\Support\Validator;

	class UserValidator extends Validator
	{
		protected $rules = [
			'email' => ['required', 'email'],
		];
	}

To run validation for `UserValidator`, all you need to do is:

	$validation = App::make('UserValidator')->with(Input::all());

	if ($validation->failed()) {
		return Redirect::back()->withInput()->withErrors($validation);
	}

## Scenario based rules {#scenario-rules}
