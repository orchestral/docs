---
layout: default
title: Using Messages

---

Using Messages
==============

`Orchestra\Messages` utilize `Illuminate\Support\MessageBag` to bring notification support through-out Orchestra Platform.

<article id="add-message">
## Adding a Message

Adding a message is as easy as following:

	Orchestra\Messages::add('success', 'A successful message');

You can also chain messages:

	Orchestra\Messages::add('success', 'A successful message')
		->add('error', 'Some error');

</article>

<article id="display">
## Displaying the Message

Here's an example how you can display the message:


	<?php 
	
	$message = Orchestra\Messages::retrieve();

	if ($message instanceof Orchestra\Support\Messages)
	{
		foreach (array('error', 'info', 'success') as $key)
		{
			if ($message->has($key))
			{			
				$message->setFormat(
					'<div class="alert alert-'.$key.'">:message</div>'
				);
				echo implode('', $message->get($key));
			}
		}
	}
