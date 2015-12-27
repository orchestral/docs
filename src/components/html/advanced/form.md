---
title: Using Form

---

Creating forms couldn't be any easier using Orchestra's HTML package. Let's get started.


### Creating a new Form

To create a new form, use the `Form::of()` method. The first parameter is simply a string to define what the form is for:

```php
return Form::of('users');
```

### Form Attributes

To customize your forms attributes, call the `attributes($attributes)` method
on the `FormGrid` instance:

```php
return Form::of('users', function ($form) {
    $attributes = [
        'method' => 'PATCH',
        'id'     => 'user-login-form',
        'class'  => 'form-horizontal',
    ];

    $form->attributes($attributes);
});
```

### Specifying the Form layout

To specify the layout of the form, call the `layout($view)` method on the
`FormGrid` instance:

```php
return Form::of('users', function ($form) {
    $form->layout('layouts.form');
});
```

### Adding Fields

To add fields to our form, we'll pass in a closure into the second parameter, and call the `fieldset()` method off of the
injected FormGrid. Here's an example:

```php
return Form::of('users', function ($form) {
    $form->fieldset(function ($fieldset) {
        $form->control('input:text', 'username');
        $form->control('input:email', 'email');
        $form->control('input:password', 'password');
    });
});
```

#### Available Fields

```php
// A text field
$form->control('input:text', 'name');

// A password field
$form->control('input:password', 'name');

// A file field
$fieldset->control('input:file', 'name');

// A textarea filed
$form->control('textarea', 'name');

// A select field
$form->control('select', 'name')
    ->options(['one', 'two', 'three']);
```

### Adding Labels to Fields

To add a label onto a form control, use the method `label()`:

```php
$form->fieldset(function ($fieldset) {
    $form->control('input:text', 'username')
        ->label('Username');

    $form->control('input:email', 'email')
        ->label('Email');

    $form->control('input:password', 'password')
        ->label('Password');
});
```

### Adding Default Values to Fields

To add a default value to the field, use the method `value()` on the form control:

```php
$form->fieldset(function ($fieldset) {
    $form->control('input:text', 'username')
        ->label('Username')
        ->value(Auth::user()->username);

    $form->control('input:email', 'email')
        ->label('Email')
        ->value(Auth::user()->email);

    $form->control('input:password', 'password')
        ->label('Password');
});
```

### Changing the submit button label

To change the submit button label, modify the FormGrid property `submit` like so:

```php
return Form::of('users', function ($form) {
    // The form submit button label
    $form->submit = 'Save';

    $form->fieldset(function ($fieldset) {
        $form->control('input:text', 'username');
        $form->control('input:email', 'email');
        $form->control('input:password', 'password');
    });
});
```

### Customizing the form control attributes

To customize the form controls attributes, call the `attributes($attributes)` method
on the control:

```php
$attributes = [
    'placeholder' => 'Enter your username',
    'class'       => 'form-control',
];

$form->control('input:text', 'username')
    ->attributes($attributes);
```

### Customizing the form control itself

```php
$form->control('input:email', 'email', function ($control) {
    $control->field(function ($row) {
        return "<input type='email' name="email" value='$row->email'>";
    });
});
```

You could also create a `Renderable` class:

```php
use Illuminate\Contracts\Support\Renderable;

class EmailAddressField implements Renderable
{
    public function __construct($name, $value)
    {
        $this->name = $name;
        $this->value = $value;
    }

    public function render()
    {
        return sprintf('<input type="email" name="%s" value="%s">', $this->name, $this->value);
    }
}
```

And you can simply register it via:

```php
$form->control('input:email', 'email', function ($control) {
    $control->field(function ($row) {
        return new EmailAddressField('email', $row->email);
    });
});
```

### Displaying your form

To display your form, simply display it in your view with unescaped blade tags:

```php
public function index()
{
    $form = Form::of('users', function ($form) {
        $form->fieldset(function ($fieldset) {
            $form->control('input:text', 'username');
            $form->control('input:email', 'email');
            $form->control('input:password', 'password');
        });
    });

    return view('index', compact('form'));
}
```

```php
// In index.blade.php

{!! $form !!}
```
