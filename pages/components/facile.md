---
layout: default
title: Orchestra Platform Facile Component
---

Orchestra Platform Facile Component
==============
 
Orchestra\Facile simplify the need to create API based response in your Laravel 4 application, with just the following code you are able to return multi format Response, either it be HTML (using `View`), json or etc.

	Route::get('users{format}', function ($format = '.html')
	{
		$users = User::all();
		
		return Facile::make('default')
			->view('users')
			->with(['users' => $users])
			->status(200)
			->format(substr($format, 1))
			->render();

	})->where('format', '\.?(json|html)?');