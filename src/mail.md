---
title: Sending Mail

---

`Orchestra\Mail` offer a slight improvement to `Illuminate\Mail\Mailer` where administrator can define the e-mail configuration from Settings page as well as preference to use `send` or `queue`.

1. [Send](#send)
2. [Queue](#queue)
3. [Push (send via configuration)](#push)

<a name="send"></a>
## Send

`Orchestra\Mail::send()` deliver what you would expect from `Mail::send()` using the E-mail configuration setup in the Settings Page.

```php
Orchestra\Mail::send('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="queue"></a>
## Queue

`Orchestra\Mail::queue()` deliver what you would expect from `Mail::queue()` using the E-mail configuration setup in the Settings Page.

```php
Orchestra\Mail::queue('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

<a name="push"></a>
## Push (send via configuration)

`Orchestra\Mail::push()` would first check whether the administrator has choosen to send email directly or delayed it via queue.

```php
Orchestra\Mail::push('email.update', $data, function ($m) use ($user) {
	$m->to($user->email);
});
```

> The API is identical to `Illuminate\Mail\Mailer` with the exception that administrator can configure to choose "Mail via Queue" in the Settings Page.
