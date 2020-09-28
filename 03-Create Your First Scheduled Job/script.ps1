# Register a scheduled job
$JobName = 'Clean Up Temp2'
Register-ScheduledJob -ScriptBlock { 
    Get-ChildItem -Path c:\pwsh\* | Remove-Item -Recurse -WhatIf
} -Name $JobName

# Update a scheduled job using pipelining
Get-ScheduledJob -Name $JobName | Set-ScheduledJob -Credential trevor

# Add a daily trigger to a job
$Trigger = New-JobTrigger -Daily -DaysInterval 1 -At '2:00 AM' -RandomDelay ([timespan]::FromMinutes(60))
Get-ScheduledJob -Name $JobName | Set-ScheduledJob -Trigger $Trigger

# Add options to jobs
$option = New-ScheduledJobOption -RunElevated
Get-ScheduledJob -Name $JobName | Set-ScheduledJob -ScheduledJobOption $option

# Get results of job
Get-Job | Receive-Job -Keep

# Delete a scheduled job
Unregister-ScheduledJob -Name $JobName

# Delete the scheduled job


