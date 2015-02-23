---
title: Facades

---

List of available facades on Orchestra Platform.

Alias                 | Facade                                | Root Accessor                                    | Service Location
:---------------------|:--------------------------------------|:-------------------------------------------------|:----------------------
ACL                   | Orchestra\Support\Facades\ACL         | Orchestra\Authorization\Factory                  | `orchestra.acl`
Asset                 | Orchestra\Support\Facades\Asset       | Orchestra\Asset\Factory                          | `orchestra.asset`
Orchestra\Config      | Orchestra\Support\Facades\Config      | Orchestra\Extension\Config\Repository            | `orchestra.extension.config`
Orchestra\Decorator   | Orchestra\Support\Facades\Decorator   | Orchestra\View\Decorator                         | `orchestra.decorator`
Orchestra\Extension   | Orchestra\Support\Facades\Extension   | Orchestra\Extension\Factory                      | `orchestra.extension`
Form                  | Orchestra\Support\Facades\Form        | Orchestra\Html\Form\Factory                      | `orchestra.form`
Foundation            | Orchestra\Support\Facades\Foundation  | Orchestra\Foundation\Foundation                  | `orchestra.app`
HTML                  | Orchestra\Support\Facades\HTML        | Orchestra\Html\HtmlBuilder                       | `html`
Orchestra\Mail        | Orchestra\Support\Facades\Mail        | Orchestra\Notifier\Mailer                        | `orchestra.mail`
Orchestra\Memory      | Orchestra\Support\Facades\Memory      | Orchestra\Memory\MemoryManager                   | `orchestra.memory`
Orchestra\Messages    | Orchestra\Support\Facades\Messages    | Orchestra\Messages\MessageBag                    | `orchestra.messages`
Meta                  | Orchestra\Support\Facades\Meta        | Orchestra\Foundation\Meta                        | `orchestra.meta`
Orchestra\Notifier    | Orchestra\Support\Facades\Notifier    | Orchestra\Notifier\NotifierManager               | `orchestra.notifier`
Orchestra\Publisher   | Orchestra\Support\Facades\Publisher   | Orchestra\Foundation\Publisher\PublisherManager  | `orchestra.publisher`
Orchestra\Table       | Orchestra\Support\Facades\Table       | Orchestra\Html\Table\Factory                     | `orchestra.table`
Theme                 | Orchestra\Support\Facades\Theme       | Orchestra\View\Theme\ThemeManager                | `orchestra.theme`
Orchestra\Widget      | Orchestra\Support\Facades\Widget      | Orchestra\Widget\WidgetManager                   | `orchestra.widget`

## Contracts

You could also type-hint contracts to resolved available service location:

Contracts                                        | Service Location
:------------------------------------------------|:----------------------------------------
 Orchestra\Contracts\Auth\Guard                  | `auth.driver`
 Orchestra\Contracts\Authorization\Factory       | `orchestra.acl`
 Orchestra\Contracts\Authorization\Authorization | `orchestra.platform.acl`
 Orchestra\Contracts\Extension\Factory           | `orchestra.extension`
 Orchestra\Contracts\Extension\Finder            | `orchestra.extension.finder`
 Orchestra\Contracts\Html\Form\Factory           | `orchestra.form`
 Orchestra\Contracts\Foundation\Foundation       | `orchestra.app`
 Orchestra\Contracts\Memory\Provider             | `orchestra.platform.memory`
 Orchestra\Contracts\Messages\MessageBag         | `orchestra.messages`
 Orchestra\Contracts\Html\Table\Factory          | `orchestra.table`
