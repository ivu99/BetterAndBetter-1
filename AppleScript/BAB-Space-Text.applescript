tell application "System Events"
	--⌘C
	--⌘V
	key code 8 using command down
	-- {{" ", "&nbsp;"}, {" ", "&#160;"}}
	set the_text to the clipboard
	--replace spaces
	repeat with replacement_ref in ¬
		{{"-", " "}, {"&", "&amp;"}, {"<", "&lt;"}, {">", "&gt;"}, {"\"", "&quot;"}}
		set {search_text, replacement_text} to replacement_ref
		set AppleScript's text item delimiters to search_text
		set temp_list to every text item of the_text
		set AppleScript's text item delimiters to replacement_text
		set the_text to temp_list as text
	end repeat
	set the clipboard to the_text
	--⌘V
	key code 9 using command down
end tell