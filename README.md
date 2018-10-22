**Note**: this project is no longer maintained and probably doesn't work in the latest version of macOS/Safari.

# Open in Chrome

Safari extension that opens the current page in Chrome. See [this post](http://daringfireball.net/2010/11/flash_free_and_cheating_with_google_chrome) by John Gruber for the "why" on this one.

Note: the extension depends on an AppleScript application to communicate with Chrome, so it will not work on Windows.

## Usage

1. [Download](https://github.com/lhagan/Open-in-Chrome/zipball/master) and extract the ZIP file
2. Install the extension (double-click OpenInChrome.safariextz)
3. Put the ChromeHelper app anywhere you want and double-click it to register with Mac OS X (nothing will happen yet)
4. Click the Open in Chrome arrow button in Safari to open the current page in Chrome

## Version History

**2014-06-29**: Code sign ChromeHelper app (for Gatekeeper, issue #3).

**2014-06-08**: Fix an issue causing Chrome to open in Parallels instead of the native version (issue #2).

**2014-01-07**: Add retina toolbar icon.

**2013-07-22**: Fix an issue that caused OS X to report that the ChromeHelper application is damaged.

**2012-12-12**: Bug fix - make sure that Chrome always brings itself to the front (instead of hiding behind Safari).

**2012-01-23**: Initial release.
