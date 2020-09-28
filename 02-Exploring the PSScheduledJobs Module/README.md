## Learning Objective

The `PSScheduledJobs` module exports an array of commands that can be used to register jobs, configure job settings, and unregister (delete) jobs.
Let's use the standard, built-in PowerShell commands to inspect the module and see what it's capable of.

If PowerShell module auto-loading is disabled, then you must explicitly import the module.
The `Import-Module` command is used to import the module into the current session.

You can use the `Get-Command` command in PowerShell to explore the commands that are exported by a module.

You can use the `Get-Help` command to explore the built-in documentation for the `PSScheduledJob` commands.