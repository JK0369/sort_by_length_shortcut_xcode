#!/bin/sh

SERVICE_DIR=~/Library/Services/

# shortcut: https://ios-development.tistory.com/1321
short_cut="^\$@1" # ctrl + shift + cmd + 1

# copying automator workflow
echo "copying Service into ~/Library/Services/ ..."
cp -aR ./my\ custom\ shortcut.workflow $SERVICE_DIR

# copying source to the services folder
echo "copying myCustomShortcut.sh into ~/Library/Services/ ..."
cp ./myCustomShortcut.sh $SERVICE_DIR

# add custom shortcut for XCode
echo "add custom shortcut for XCode ..."
defaults write com.apple.dt.Xcode NSUserKeyEquivalents -dict-add "my custom shortcut" $short_cut

echo "restart xcode"
killall Xcode
