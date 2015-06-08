---
title: Sending Mail

---

1. [Mailer](#mailer)
  - [send()](#mailer-send)
  - [queue()](#mailer-queue)
  - [push() (send via configuration)](#mailer-push)
2. [Notifier](#notifier)
  - [send()](#notifier-send)

<a name="mailer"></a>
## Mailer

`Mailer` offer a slight improvement to `Illuminate\Mail\Mailer` where administrator can define the e-mail configuration from Settings page as well as preference to use `send` or `queue`.

<a name="mailer-send"></a>
### send()

`Mailer::send()` deliver what you would expect from `Mail::send()` using the E-mail configuration setup in the Settings Page.

```php
use Orchestra\Model\User;

$user = User::find(5);

Mailer::send('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="mailer-queue"></a>
### queue()

`Mailer::queue()` deliver what you would expect from `Mail::queue()` using the E-mail configuration setup in the Settings Page.

```php
use Orchestra\Model\User;

$user = User::find(5);

Mailer::queue('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="mailer-push"></a>
### push() (send via configuration)

`Mailer::push()` would first check whether the administrator has choosen to send email directly or delayed it via queue.

```php
use Orchestra\Model\User;

$user = User::find(5);

Mailer::push('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

> The API is identical to `Illuminate\Mail\Mailer` with the exception that administrator can configure to choose "Mail via Queue" in the Settings Page.

<a name="notifier"></a>
## Notifier

`Notifier` is a simplified approach to send email notification to any registered user. This is slightly different from `Mailer` where we actually set the recipient from `Orchestra\Model\User` model.

<a name="notifier-send"></a>
### Send
```php
use Orchestra\Model\User;
use Orchestra\Notifier\Message;

$user = User::find(5);
$message = Message::create('email.update', ['user' => $user], 'Email subject to be displayed!');

Notifier::send($user, $message);
```

You can also use the available `Orchestra\Notifier\NotifableTrait` which is already used in `Orchestra\Model\User` and write is as:

```php
use Orchestra\Model\User;

$user = User::find(5);

$user->notify('Email subject to be displayed!', 'email.update', ['user' => $user]);
```

