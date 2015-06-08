---
title: Sending Mail

---

1. [Mailer](#mailer)
  - [Send](#mailer-send)
  - [Queue](#mailer-queue)
  - [Push (send via configuration)](#mailer-push)
2. [Notifier](#notifier)

<a name="mailer"></a>
## Mailer

`Orchestra\Mail` offer a slight improvement to `Illuminate\Mail\Mailer` where administrator can define the e-mail configuration from Settings page as well as preference to use `send` or `queue`.

<a name="mailer-send"></a>
### Send

`Orchestra\Mail::send()` deliver what you would expect from `Mail::send()` using the E-mail configuration setup in the Settings Page.

```php
Orchestra\Mail::send('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="mailer-queue"></a>
### Queue

`Orchestra\Mail::queue()` deliver what you would expect from `Mail::queue()` using the E-mail configuration setup in the Settings Page.

```php
Orchestra\Mail::queue('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="mailer-push"></a>
### Push (send via configuration)

`Orchestra\Mail::push()` would first check whether the administrator has choosen to send email directly or delayed it via queue.

```php
Orchestra\Mail::push('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

> The API is identical to `Illuminate\Mail\Mailer` with the exception that administrator can configure to choose "Mail via Queue" in the Settings Page.

<a name="notifier"></a>
## Notifier

`Notifier` is a simplified approach to send email notification to any registered user. This is slightly different from `Orchestra\Mail` where we actually set the recipient from `Orchestra\Model\User` model.

<a name="send"></a>
### Send
```php
$user = Orchestra\Model\User::find(5);

Notifier::send($user, Message::create('email.view.path', ['user' => $user], 'Email subject to be displayed!'));
```

You can also use the available `Orchestra\Notifier\NotifableTrait` which is already used in `Orchestra\Model\User` and write is as:

```php
$user = Orchestra\Model\User::find(5);

$user->notify('Email subject to be displayed!', 'email.view.path', ['user' => $user]);
```

This simple code is equivalent of:

```php

$user = Orchestra\Model\User::find(5);

Orchestra\Mail::push('email.view.path', ['user' => $user], function ($m) use ($user) {
    $m->subject('Email subject to be displayed!');
    $m->to($user->email, $user->fullname);
});
```


