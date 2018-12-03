<p align="center">
  <img src ="https://user-images.githubusercontent.com/2421338/49368664-569d2500-f700-11e8-8a63-019af036c02d.png"/>
</p>

# TrialLauncher 

A simple tool for trial-period extension

### About
This tool is inspired by [Filip Molcik's post](https://filipmolcik.com/free-sketch-app-on-mac-osx-sketch-trial-reset/)
It contains a bit improved version of Filip's script and Automator-based generator app.

### Usage
#### 1. Create launcher
* ##### With generator...
    1. Extract the [launcher_generator.zip](https://github.com/Galeas/TrialLauncher/blob/master/launcher_generator.zip) wherever you want.
    2. Run it.
    3. Select APP 
    4. When generator will request the access for "System Events" and "Finder", say "OK"
    5. Hooray! The launcher will appear in the same folder and will be named **<selected_app_name>TrialLauncher**
* ##### ...or manually
    1. Copy [this AppleScript file](https://github.com/Galeas/TrialLauncher/blob/master/date_based_trial_launcher.applescript) and rename it as you wish (or not)
    2. Open it in Script Editor
    3. Find string `<#app_name#>` and replace it with the name of an app which will be used with.
    4. In Script Editor menu select File -> Export, give any desirable name, then in drop-down menu `File format` select `Application`, choose any convenient folder and press `Save`.
#### 2. Run launcher
You will be asked for the admin's password because the script manipulates the system date.

## License

TrialLauncher is released under the [MIT License](http://www.opensource.org/licenses/MIT).