## Learning Objective

You can use the `schtasks` utility to register scheduled tasks in the Windows Task Scheduler.
The user interface isn't as friendly as PowerShell, because it lacks well-named parameters and Intellisense (auto-completion).
However, this utility is more backwards compatible with older operating system versions.
One of the challenges / limitations of using `schtasks` is that you cannot specify multiple trigger actions, as with the PowerShell modules.

Windows Server 2012 and Windows 8 are the earliest Windows operating systems that support the `ScheduledTasks` module.
