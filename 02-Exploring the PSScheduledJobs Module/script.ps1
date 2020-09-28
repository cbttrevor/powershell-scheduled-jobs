$PSModuleAutoLoadingPreference = 'None'

# Import the module explicitly (if module auto-loading is disabled)
Import-Module -Name PSScheduledJob

# Explore the commands that are exported by the module
Get-Command -Module PSScheduledJob

# Explore the help for a specific command
Get-Help -Name Register-ScheduledJob

# Find commands, in a specific module, that match a specific name
Get-Command -Module PSScheduledJob -Name *trig*