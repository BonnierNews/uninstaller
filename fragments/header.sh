#!/bin/zsh --no-rcs

# uninstaller
# Removes software and related files
#
# https://github.com/erikstam/uninstaller

# set to 0 for production, 1 for debugging
# no actual uninstallation will be performed
DEBUG=0

# notify behavior
NOTIFY=success
# options:
#   - success      notify the user on success
#   - silent       no notifications
#   - all          all notifications (great for Self Service installation)

# notification type
NOTIFICATIONTYPE=jamf
# options:
#   - jamf				show notifications using the jamf Management Action binary
#   - swiftdialog       show notifications using swiftdialog
#   - applescript       show notifications using applescript

# Notification Sources
jamfManagementAction="/Library/Application Support/JAMF/bin/Management Action.app/Contents/MacOS/Management Action"
swiftDialog="/usr/local/bin/dialog"
swiftDialogNotification=mini

# - appVersionKey: (optional)
#   How we get version number from app. Default value
#     - CFBundleShortVersionString
#   other values
#     - CFBundleVersion
appVersionKey="CFBundleShortVersionString"
appBundleIdentifierKey="CFBundleIdentifier"

# ignore deletion of files in user directories
IGNORE_USER_DIRS=0
# options:
# 0            delete files/directories in user directories
# 1            ignore deletion of files in user directories, with exception of LaunchAgents
