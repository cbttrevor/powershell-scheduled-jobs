# Explore the built-in help for schtasks
schtasks /?

# Explore the /create sub-command of schtasks
schtasks /create /?

# Create a simple task
schtasks /create /TN 'Docker Pull Common' /TR 'bash -c \"docker pull python\"' /SC DAILY /ST 05:00

# If a task already exists, use the /F option to overwrite it
schtasks /create /TN 'Docker Pull Common' /TR 'bash -c \"docker pull mysql\"' /SC DAILY /ST 05:00 /F

# Trigger a task manually
schtasks /run /TN 'Docker Pull Common'

# Delete a scheduled task
schtasks /delete /TN 'Docker Pull Common' /F

# Query for scheduled tasks
schtasks /query /FO CSV
schtasks /query /FO LIST