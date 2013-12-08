---
title: Validator Class
---

`Orchestra\Support\Validator` is a class based on "Validation as a Service" concept. It is however enhanced to support scenarios where you can define different ruleset for different actions throughout your application.

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

To allow the validation to run a scenario based ruleset you can just add the following `on()` method in the declaration:

	$validation = App::make('UserValidator')->on('login')->with(Input::all());
	
and to add the additional ruleset simply append `UserValidator` with `onLogin()` method such as below:

	<?php
	
	class UserValidator extends Validator
	{
		// ...
		
		public function onLogin()
		{
			$this->rules['password'] = ['required'];
		}
	}