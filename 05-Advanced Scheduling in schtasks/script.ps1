# Create a weekly task that only runs on certain days
schtasks /create /SC WEEKLY /D 'MON, TUE, WED, THU, FRI' /TN 'Run PowerShell' /TR 'pwsh -NoProfile -Command \"exit 10\"' /F

# Use error messages to guide your command construction

# ERROR: /D option is not applicable for the type of scheduled task
schtasks /create /TR 'pwsh -NoProfile -Command exit' /TN 'Run PowerShell Through October' /SC WEEKLY /D MON

# ERROR: Invalid value for /D option
schtasks /create /TR 'pwsh -NoProfile -Command exit' /TN 'Run PowerShell Through October' /SC WEEKLY /D 'MON, TUE, THU'

# Set an end date for the task
schtasks /create /TR 'pwsh -NoProfile -Command exit' /TN 'Run PowerShell Every Weekday Through October' /ED '10/31/2020' /SC WEEKLY /D 'MON, TUE, WED, THU, FRI' /ST '05:00'

# Set a start date for the task

# ERROR: Invalid Start Date (Date should be in "mm/dd/yyyy" format)
schtasks /create /TR 'pwsh -NoProfile -Command exit' /TN 'Run PowerShell Every Weekday Through October' /SD '10/01/2020' /ED '10/31/2020' /SC WEEKLY /D 'MON, TUE, WED, THU, FRI' /F

# Correct way of setting a start date
schtasks /create /TR 'pwsh -NoProfile -Command exit' /TN 'Run PowerShell Every Weekday in October' /SD '10/1/2020' /ED '10/31/2020' /SC WEEKLY /D 'MON, TUE, WED, THU, FRI'