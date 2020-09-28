## Learning Objective

You can use PowerShell to schedule tasks on the Windows platform.
PowerShell on Windows includes a module called `PSScheduledJob`, which helps you accomplish this.
You cannot import the `PSScheduledJob` module into PowerShell Core (cross-platform), otherwise you will receive an error.

```
Import-Module: Module 'psscheduledjob' is blocked from loading using Windows PowerShell compatibility feature by a 'WindowsPowerShellCompatibilityModuleDenyList' setting in PowerShell configuration file.
```

There are other ways to create scheduled tasks in PowerShell as well.

* `ScheduledTasks` module
* `schtasks.exe` command line tool

The `schtasks.exe` command line tool is not object-oriented, and doesn't follow the parameter naming rules that PowerShell lays out.
However, you can still call any command line tool from PowerShell.
If you're accustomed to `schtasks`, then you can continue to use it while migrating to a more modern task scheduling approach.

## Examples of Common Periodic Tasks

* Database backups
* Report generation
* Active Directory cleanup
* Posting on social media
* Pulling latest Docker images