(*
Open in Chrome (Helper app)
by Luke Hagan <lukehagan.com>
created 2012-01-22
released under the MIT license (see LICENSE.md for details)

based on Use AppleScript to open current Safari URL in Google Chrome by TJ Luoma
http://www.tuaw.com/2011/03/14/use-applescript-to-open-current-safari-url-in-google-chrome/
*)

on open location theURL
	-- split URL string to remove the chromehelper:// prefix
	set theURL to rightString(theURL, "://")
	
	tell application id "com.google.Chrome"
		-- open Chrome if it's not open, create a new window if none exists, bring into focus
		activate
		
		-- delay to make sure window is open before we start doing anything
		delay 0.5
		
		-- if Chrome's active tab is non-blank, create a new tab
		-- if a blank tab is active, just use that
		-- otherwise, make a new window
		-- based on a script by scott.c.jordan
		-- http://www.tuaw.com/2011/03/14/use-applescript-to-open-current-safari-url-in-google-chrome/#aolc=A0yOBA
		if (count of (every window where visible is true)) is greater than 0 then
			if URL of active tab of front window is not "chrome://newtab/" then
				tell front window
					make new tab
				end tell
			end if
		else
			make new window
		end if
		
		set URL of active tab of front window to "http://" & theURL
		activate
	end tell
end open location

-- split theString into two parts based on a delimiter and return the rightmost part
-- note: only works properly if the delimiter appears only once in the string
on rightString(theString, theDelimiter)
	-- save current delimiters for later
	set currentDelimiters to AppleScript's text item delimiters
	
	-- set new delimiter
	set AppleScript's text item delimiters to theDelimiter
	
	-- create an array of items
	set array to every text item of theString
	
	-- return the rightmost part of the string
	return item 2 of array
end rightString
