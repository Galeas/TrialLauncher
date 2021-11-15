set app_name to "<#app_name#>"

set app_path to POSIX path of (path to applications folder) & app_name & ".app"
tell application "Finder" to set is_exists to exists application file app_path as POSIX file
if is_exists is false then
	return -1
end if

try
	set icon to path to resource "applet.icns" in bundle (path to me)
on error
	set icon to stop
end try

set title to app_name & " Trial Launcher"

set user_name to do shell script "who | grep console | awk '{print $1}'"
set admin_pass to ""
set should_stop to false

repeat while should_stop is false
	
	set passResponse to display dialog "Please, enter password for user \"" & user_name & "\"" default answer "" buttons {"Other user", "Cancel", "OK"} with title title with icon icon default button "OK" cancel button "Cancel" with hidden answer
	if button returned of passResponse is "OK" then
		
		set should_stop to true
		
	else if button returned of passResponse is "Other user" then
		
		set user_name to text returned of (display dialog "Please, enter user name" default answer "" with title title with icon icon)
		
	end if
	
end repeat

set admin_password to text returned of passResponse
set now to do shell script "date +%m%d%H%M%y"
do shell script "sudo date 0101010110" user name user_name password admin_password with administrator privileges
tell application app_name
	activate
	repeat until it is running
		delay 0.1
	end repeat
end tell
do shell script "sudo date " & now user name user_name password admin_password with administrator privileges
