Import-Module -Name ScheduledTasks

Get-Command -Module ScheduledTasks

# Create a trigger
$Trigger = New-ScheduledTaskTrigger -Daily -At '5:00 AM' -DaysInterval 2

# Create an action
$Action = New-ScheduledTaskAction -Execute bash -Argument '-c "docker pull python"'
$Action2 = New-ScheduledTaskAction -Execute bash -Argument '-c "docker pull mysql"'

# Create a task (but don't register it yet)
$Task = New-ScheduledTask -Action $Action, $Action2 -Trigger $Trigger -Description 'Update container images'

# Register the task with the Windows Task Scheduler service
Register-ScheduledTask -InputObject $Task -TaskName 'Docker Pull Latest Images'

# Register the task, without creating a task first
Register-ScheduledTask -TaskName 'Docker Pull Python' -Action $Action -Trigger $Trigger
