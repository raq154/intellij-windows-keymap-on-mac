#!/bin/bash
# find path for IntelliJ preferences directory (can be multiple)
I=$(find ~/Library/Preferences -type d -name IntelliJIdea* -o -type d -name IdeaIC*)

# execute `curl` to save keymap
for temp in $I; do
	X="$I/keymaps/Windows Keymap with Command.xml"
	echo Installing as $X
	curl "https://raw.github.com/raq154/intellij-windows-keymap-on-mac/master/Windows%20Keymap%20with%20Command.xml" > "$X"
done
