---
title: Using Artisan Debug Profiler

---

* [Enabling Profiler](#enabling-profiler)

## Enabling Profiler {#enabling-profiler}

To enable the profiler, all you need to do is:

	Profiler::attachDebugger();

> This normally would goes in your development environment such as `local` environment, in the case `app/start/local.php` would be an ideal location to include the command.

### Viewing the Profiler

To view the profiler, run the following command in your terminal:

	php artisan debug