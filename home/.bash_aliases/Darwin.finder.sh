alias finder-showall='defaults write com.apple.finder AppleShowAllFiles -bool YES;killall SystemUIServer'
alias finder-showsome='defaults write com.apple.finder AppleShowAllFiles -bool NO;killall SystemUIServer'
alias finder-fix-open-with='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias finder-hide-window-shadows='defaults write com.apple.screencapture disable-shadow -bool true;killall SystemUIServer'
alias finder-show-window-shadows='defaults write com.apple.screencapture disable-shadow -bool false;killall SystemUIServer'
