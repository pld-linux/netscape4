! Insert copyright and license here 1994

! Netscape.ad --- app-defaults file for Netscape 4.8.
!
! Bugs and commentary to x_cbug@netscape.com.

! Created: Jamie Zawinski <use the bug address, please>, 23-Jun-94.
! Modified: dp Suresh <dp@netscape.com>, 01-Aug-95
! Modified: snpf <snpf@netscape.com>, 23-Sep-96
! Translated: <abagi@idk.com.pl>
! Translated: <ankry@mif.pg.gda.pl>
!
!      ==========================================================
!      NOTE: If you're looking here for things to customize, look
!      on the Preferences dialogs under the Options menu first.
!      Most things are customizable from there.  Things which are
!      settable via the Preferences dialog boxes are stored in
!      the ~/.netscape/preferences file, and not in X resources.
!      ==========================================================
!
! This file lists the default resources built in to Netscape.
! You can use the stuff in this file for examples of how to customize
! Netscape for your environment; normally you will do this by
! copying the few lines you want to alter to your private resource
! database, which usually lives in a file called .Xdefaults in your home
! directory.
!
! Site administrators **may** want to make changes here and install this
! file as the global app-defaults file for the site.  To do this, one
! would copy this file to /usr/lib/X11/app-defaults/Netscape, or on SunOS,
! /usr/openwin/lib/app-defaults/Netscape.  (But actually this directory
! could be anywhere; only the person who installed X knows for sure.)
!
! It is **STRONGLY RECOMMENDED** that you not install this file in the
! app-defaults directory unless you are really sure you know what you are
! doing.  There are a whole slew of version-skew problems associated with
! app-defaults files, which are best avoided by simply not using them.
! In particular, if the app-defaults file for a program is installed, and
! you get a new version of that program, you can't properly test out the
! new version without actually installing it, since it will pick up the
! resources for the previous version, and will quite likely malfunction.
!
! In short, app-defaults files are bad.  Don't use them.  This file is
! provided for informational purposes, and so that I don't get a lot of
! complaints from people who think they understand this stuff better than
! I do.

! Language localization:
*versionLocale: pl

! SGI only: Here's how you turn on SGI's Motif hacks:
!!Netscape*sgiMode:		True

! SGI only: Use enhanced file selection UI in SGI Motif
!*useEnhancedFSB:		True

! SGI Only: Use base color scheme:
!Netscape*scheme:		Base
!Netscape*useSchemes:		Colors

! This resource enables some hacks to the File Selection Box
! which use a simpler layout algorithm than the standard Motif
! code. The directory and file listings are always maintained
! as equal size. We don't do this for SGI, as they have solved
! the problem. See *useEnhancedFSB above.
*nsMotifFSBHacks: True

! This resource enables the CDE mode of the File Selection Box.
! You must be running a CDE enhanced Motif library for this
! option to work. This resource will apply pathMode=1 to the
! File Selection Box. If you specify nsMotifFSBHacks and
! nsMotifFSBCdeMode, some of the keyboard and filter enhancements
! of nsMotifFSBHacks will also be applied, the layout hacks will not.
*nsMotifFSBCdeMode: False
!*nsMotifFSBCdeMode: True

! SCO Only: IXI Motif Form widget is broken, don't use it
!*useIxiAdds: NONE

! User-Settable Parameters
! ========================

! This is the directory where Netscape finds external files such as icons.
!
*appDir:			pl_PL/netscape

! This resource is the same as the -visual command line option, which selects
! an X visual on which the windows should be created.  Legal options are:
! Best, meaning pick the best one w.r.t. image quality; Default, meaning
! use whatever the server says is the default visual; a visual class (like
! PseudoColor or TrueColor); or a decimal or hexadecimal digit, the ID of
! a particular visual (in case there is more than one visual of a particular
! class.)  "Best" is probably the right choice.
!
*visualID:			Best

! Whether Netscape should install a private colormap.  This will cause the
! maximal number of colors to be used, but on most systems, will result in
! unpleasant colormap flashing when switching between applications.  Legal
! options are: Yes, No, and Guess.  "Guess" means "install the colormap only
! if we know that the display hardware supports multiple simultaneous
! colormaps, meaning that there will be no colormap flashing."  Currently,
! that means install the map when displaying on an SGI screen, and don't
! otherwise.  (What other vendors have multiple hardware colormaps, and how
! do you uniquely identify that capability?  Let me know.)
!
*installColormap:		Guess

! Some motif versions have a XmDragOverShell (called "dragOver")
! widget which has a XmNinstallColormap resource.  Force it to false here
! so that there is no conflict with the "*installColormap: Guess" stuff.
*dragOver*installColormap:		False

! The maximum number of color cells to allocate per image; this is only
! relevant when using the default colormap of a PseudoColor visual.
! If it is 0, we allocate as many colors as we can get.  (The more colors
! that we can allocate, the better images will look.)  This controls only
! the number of colors allocated for internal images - a few more colors
! will be allocated for the fluff and chrome that comes with Motif.
!
*maxImageColors:		0

! Set this to false to disable the <BLINK> tag.
*blinkingEnabled:		True

! Whether the Exit menu item should confirm first.
*confirmExit:			False

! Mouse cursor when over an anchor.
*linkCursor:			hand2

! Mouse cursor when awaiting a reply.
*busyCursor:			watch

! Mouse cursor when "Save Next Link As..." mode is on, and over a link.
*saveNextLinkCursor:		hand2

! Mouse cursor when "Save Next Link As..." mode is on, and not over a link.
*saveNextNonlinkCursor:		crosshair

! How quickly (in seconds) the status messages should update.
*progressInterval:		1

! How quickly (in milliseconds) the run light and/or logo should animate.
*busyBlinkRate:			500

! How often (in seconds) the global history, bookmarks, and disk cache
! files should be updated.
*saveHistoryInterval:		600

! How many pixels of motion must occur before a mouse-release is interpreted
! as a "drag" rather than a "click."
*hysteresis:			3

! These resources control whether Netscape should redirect its stdout and
! stderr streams to a dialog box, so that diagnostics reported by other
! programs launched by Netscape (for example, external viewers specified in
! a mailcap file) will be reported to the user through a dialog box,
! instead of simply showing up on the stdout/stderr of the controlling
! terminal of Netscape (which in many cases won't even be visible.)
!
! If you have a external viewer which produces an annoying amount of output
! even when it has nothing interesting to say, you can shut it up by
! redirecting its output to stderr; for example, to do this to mpeg_play,
! you could add the following to your .mailcap file:
!
!        video/mpeg; mpeg_play %s 2>&-
!
! Normally, Netscape captures both the stdout and stderr into the dialog box.
! If you find a need to let one or both of them continue on to the actual
! terminal of Netscape, you can do it by setting these resources to False.
!
*useStderrDialog:		True
*useStdoutDialog:		True

! For those MIME content-encodings which are not directly understood
! internally, it is possible to specify another Unix program to use as
! a filter here.
!
! Each line in the encodingFilters resource consists of four fields,
! separated by colons and optional whitespace:
!
!   <input-encoding>  : <output-encoding> : <extensions> : <filter-command>
!
! input-encoding:  The MIME encoding from the Content-Transfer-Encoding header.
!                  (The basic encodings 7BIT, 8BIT, BINARY, BASE64, and QUOTED-
!                  PRINTABLE are built-in; no need to specify those.)
!
! output-encoding: The encoding that results from this transformation.
!                  Leaving this empty is usually appropriate.
!
! extensions:      A comma-separated list of the extensions typically used for
!                  files in this encoding; if a document ends in one of these
!                  extensions, then when that document is saved to disk, the
!                  extension will be stripped off of the default file name
!                  (since documents are decoded before they are saved, and the
!                  extension would no longer accurately describe the file.)
!
! filter-command:  A shell command which reads from stdin and writes to stdout
!                  which does the actual decoding.
!
*encodingFilters:				  \
	x-compress :  : .Z     : uncompress -c	\n\
	compress   :  : .Z     : uncompress -c	\n\
	x-gzip     :  : .z,.gz : gzip -cdq	\n\
	gzip       :  : .z,.gz : gzip -cdq	\n


! Too many servers have bugs in the implementation of window gravity for
! us to rely on it.  Scrolling of large forms is *significantly* faster
! if we are able to make use of window gravity, but on many X servers, it
! results in form items being scattered randomly all over the document.
! Legal values for this resource are Yes, No, Partial, and Guess.  If
! "Guess", we run some tests and try to decide whether the X server is
! broken or partially broken.
!
! If you find yourself needing to use a value here other than Guess,
! please tell us, so that we can make it guess correctly in the future.
!
*windowGravityWorks:		Guess


! By default, the geometries of components (browsers, mail, address book, etc)
! are saved in ~/.netscape/preferences.js.  If this pisses you off, uncomment
! the following line and Netscape will not remember component geometries.
!
! Equivalent to using the '-dont-save-geometry-prefs' startup flag.
!
!*dontSaveGeometryPrefs:		True


! Uncomment the following line to ignore any geometry preferences that
! might have been saved.
!
! Equivalent to using the '-ignore-geometry-prefs' startup flag.
!
!*ignoreGeometryPrefs:			True


! Uncomment the following line to bypass the startup licence page.
!
! Equivalent to using the '-no-about-splash' startup flag.
!
!*noAboutSplash:				True

! Netscape supports session management by default.  Uncomment the following
! line to force it off.
!
! Equivalent to using the '-session-management'
!                         '-no-session-management' startup flags.
!
!*sessionManagement:			False


! Different platforms deal with session management in fundamentally
! different ways.  Toggle this resource if you experience session
! management problems.
!
! IRIX session management is on by default only on SGI systems.  It is also
! available on other platforms and might work with session managers other
! than the IRIX desktop.  To use session management as the IRIX desktop
! expects it, uncomment the following line.
!
! Equivalent to using the '-irix-session-management'
!                         '-no-irix-session-management' startup flags.
!
!*irixSessionManagement:			True


! Uncomment the following line to ignore the alwaysraised, alwayslowered,
! and z-lock JavaScript window.open() attributes.  By default,  Netscape will
! try to force the window stacking to match these attributes.  If you think
! this is the ultimate fascism, uncomment the following line.
!
! Equivalent to using the '-dont-force-window-stacking' startup flag.
!
!*dontForceWindowStacking:		True


! Colors
!
! This resource controls the foreground text color of unfollowed links 
! (links which have not yet been visited.)
!
*linkForeground:			#0000FF

! This resource controls the foreground text color of followed links 
! (links which have already been visited.)
!
*vlinkForeground:			#990066

! This resource controls the foreground text color of activated links 
! (links which are in the process of being clicked upon.)
!
*alinkForeground:			#FF0000

! These resources control the foreground and background colors of text
! which has been selected with the mouse.
!
*selectForeground:			#000000
*selectBackground:			#FFFFCC

! These resources control the foreground and background colors of normal text.
!
*defaultForeground:			#000000
*defaultBackground:			#C0C0C0

! This resource may be used to specify a default background image.  It should
! be a file name or URL pointing to a GIF, JPEG, or XBM image.  If it is blank,
! then the default background color will be used instead.
!
*defaultBackgroundImage:		

! Normally, the user-specified colors and backgrounds will only be used when
! viewing documents which did not specify their own colors and backgrounds.
! If this resource is set to False, then the user-specified colors and
! backgrounds will always be used, regardless of the options specified in 
! the document itself.
!
*documentColorsHavePriority:		True


! Geometry
!
! Here's how you set the default sizes and positions of the Netscape windows:
!
! For the web browser window:   Netscape.Navigator.geometry: =500x700+100-0
! For the mail reader:          Netscape.Mail.geometry: =500x800+200-0
! For the news reader:          Netscape.News.geometry: =500x800+300-0
! For the mail editor:          Netscape.Composition.geometry: =400x600
! For the bookmarks window:     Netscape.Bookmarks.geometry: =300x900-0-0
! For the address book window:  Netscape.AddressBook.geometry: =600x900-300-0
! For the download windows:     Netscape.Download.geometry: =500x200-0-0
!
! In previous versions of Netscape, we suggested setting the geometry on the
! TopLevelShell class; don't do that any more.  It will affect *all* of the
! top-level Netscape windows, including bookmarks and message composition and
! so on, which is probably not what you want.
!
! To set the sizes of the panes and columns in the mail and news windows, 
! change them to the layout you like, and then select "Options/Save Options".
! (To change the fonts in the message lists, search below for the resource
! that begins with "XmLGrid*fontList".)



! Translations
!
! Many of these translations are duplicated on both "Meta" and "Alt", since
! X has this stupid notion that "Meta" and "Alt" are not synonymous, and
! Sun in their infinite wisdom furthers this confusing lossage by both having
! Meta *and* Alt keys on the keyboard, and having the key which is labelled
! Alt generate *META* (the Diamond keys generate Alt.)  All praise Sun!
! All praise the X keyboard model!
!
! And because of the need to do this, we have to do all of the keyboard
! equivalents with "translations" instead of "accelerators", since a menu
! item can only have one accelerator, and in order to make both Meta and Alt
! work we need to give them each two.  All praise Motif!

!<NIE PRZETWARZAJ>
! Keybindings in the main window which correspond to menu items.
! These are installed on every widget which is a child of our Shell,
! and are not installed on popups/transients.
!
*globalTranslations:			#override					\n\
											\
	Meta ~Ctrl ~Shift<Key>a:		xfeDoCommand(selectAll)				\n\
	 Alt ~Ctrl ~Shift<Key>a:		xfeDoCommand(selectAll)				\n\
	Meta ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)			\n\
	 Alt ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)			\n\
	Meta ~Ctrl<Key>C:		xfeDoCommand(copy)					\n\
	 Alt ~Ctrl<Key>C:		xfeDoCommand(copy)					\n\
		Meta ~Ctrl<Key>D:		undefined-key()				\n\
         Alt ~Ctrl<Key>D:		undefined-key()				\n\
		Meta ~Ctrl<Key>E:		undefined-key()				\n\
         Alt ~Ctrl<Key>E:		undefined-key()				\n\
	Meta ~Ctrl ~Shift<Key>f:		undefined-key()				\n\
	 Alt ~Ctrl ~Shift<Key>f:		undefined-key()				\n\
		Meta ~Ctrl<Key>G:		undefined-key()				\n\
		 Alt ~Ctrl<Key>G:		undefined-key()				\n\
	Meta ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
	 Alt ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
		Meta ~Ctrl<Key>I:		undefined-key()				\n\
		 Alt ~Ctrl<Key>I:		undefined-key()				\n\
		Meta ~Ctrl<Key>J:		undefined-key()				\n\
		 Alt ~Ctrl<Key>J:		undefined-key()				\n\
	Meta ~Ctrl<Key>K:		xfeDoCommand(addBookmark)			\n\
	 Alt ~Ctrl<Key>K:		xfeDoCommand(addBookmark)			\n\
		Meta ~Ctrl<Key>L:		undefined-key()				\n\
		 Alt ~Ctrl<Key>L:		undefined-key()				\n\
	Meta ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	 Alt ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	Meta ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	 Alt ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	Meta ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
	 Alt ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
		Meta ~Ctrl<Key>O:		undefined-key()				\n\
		 Alt ~Ctrl<Key>O:		undefined-key()				\n\
		Meta ~Ctrl<Key>P:		undefined-key()				\n\
		 Alt ~Ctrl<Key>P:		undefined-key()				\n\
	Meta Shift<Key>Q:		xfeDoCommand(quoteOriginalText)		\n\
	 Alt Shift<Key>Q:		xfeDoCommand(quoteOriginalText)		\n\
	Meta ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
	 Alt ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
		Meta ~Ctrl<Key>R:		undefined-key()				\n\
		 Alt ~Ctrl<Key>R:		undefined-key()				\n\
	Meta ~Ctrl<Key>S:		xfeDoCommand(saveAs)				\n\
	 Alt ~Ctrl<Key>S:		xfeDoCommand(saveAs)				\n\
		Meta ~Ctrl<Key>T:		undefined-key()				\n\
		 Alt ~Ctrl<Key>T:		undefined-key()				\n\
		Meta ~Ctrl<Key>U:	xfeDoCommand(viewPageSource)\n\
		 Alt ~Ctrl<Key>U:		xfeDoCommand(viewPageSource)\n\
	Meta ~Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	 Alt ~Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	Meta ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	 Alt ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	Meta ~Ctrl<Key>X:		xfeDoCommand(cut)					\n\
	 Alt ~Ctrl<Key>X:		xfeDoCommand(cut)					\n\
	Meta ~Ctrl<Key>Y:		xfeDoCommand(paste)					\n\
	 Alt ~Ctrl<Key>Y:		xfeDoCommand(paste)					\n\
		Meta ~Ctrl<Key>Z:		undefined-key()				\n\
		 Alt ~Ctrl<Key>Z:		undefined-key()				\n\
											\
 Meta ~Ctrl ~Shift<Key>1:	xfeDoCommand(openOrBringUpBrowser)	\n\
  Alt ~Ctrl ~Shift<Key>1:	xfeDoCommand(openOrBringUpBrowser)	\n\
 Meta ~Ctrl  Shift<Key>1:	xfeDoCommand(openFolders)			\n\
  Alt ~Ctrl  Shift<Key>1:	xfeDoCommand(openFolders)			\n\
 Meta ~Ctrl ~Shift<Key>2:	xfeDoCommand(openInbox)				\n\
  Alt ~Ctrl ~Shift<Key>2:	xfeDoCommand(openInbox)				\n\
 Meta ~Ctrl  Shift<Key>2:	xfeDoCommand(openAddrBook)			\n\
  Alt ~Ctrl  Shift<Key>2:	xfeDoCommand(openAddrBook)			\n\
	Meta ~Ctrl<Key>3:		xfeDoCommand(openEditor)			\n\
	 Alt ~Ctrl<Key>3:		xfeDoCommand(openEditor)			\n\
	Meta ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	 Alt ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	Meta ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	 Alt ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	Meta ~Ctrl<Key>7:		xfeDoCommand(openRadio)				\n\
	 Alt ~Ctrl<Key>7:		xfeDoCommand(openRadio)				\n\
											\
	~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()					\n\
	~Meta ~Alt ~Ctrl<Key>Next:		PageDown()					\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()				\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()				\n\
											\
	~Meta ~Alt ~Ctrl<Key>SunCopy:   xfeDoCommand(copy)			\n\
	~Meta ~Alt ~Ctrl<Key>SunPaste:  xfeDoCommand(paste)			\n\
	~Meta ~Alt ~Ctrl<Key>SunCut:    xfeDoCommand(cut)			\n\
											\
	~Meta ~Alt ~Ctrl ~Shift<Key>osfHelp:		xfeDoCommand(manual)	\n

! These used to be up above.
!	Meta ~Ctrl<Key>Z:		undo()						\n\
!	 Alt ~Ctrl<Key>Z:		undo()						\n\


! These keysyms are apparently an R6ism.
!	~Meta ~Alt ~Ctrl<Key>KP_Prior:		PageUp()				\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Next:		PageDown()				\n\

! Translations in the Navigator window.
*browserGlobalTranslations:		#override			\
	Meta Shift<Key>F:		xfeDoCommand(search)			\n\
	 Alt Shift<Key>F:		xfeDoCommand(search)			\n\
	Meta ~Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	 Alt ~Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	Meta ~Ctrl ~Shift<Key>g:		xfeDoCommand(findAgain)				\n\
	 Alt ~Ctrl ~Shift<Key>g:		xfeDoCommand(findAgain)				\n\
    Meta ~Ctrl ~Shift<Key>i: xfeDoCommand(showImages)			\n\
	 Alt ~Ctrl ~Shift<Key>i: xfeDoCommand(showImages)			\n\
	Meta ~Ctrl  Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	 Alt ~Ctrl  Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	Meta ~Ctrl<Key>L:		xfeDoCommand(openPage)				\n\
	 Alt ~Ctrl<Key>L:		xfeDoCommand(openPage)				\n\
	Meta ~Ctrl ~Shift<Key>o: xfeDoCommand(openPage)				\n\
	 Alt ~Ctrl ~Shift<Key>o: xfeDoCommand(openPage)				\n\
	Meta ~Ctrl  Shift<Key>o: xfeDoCommand(openPageChooseFile)	\n\
	 Alt ~Ctrl  Shift<Key>o: xfeDoCommand(openPageChooseFile)	\n\
	Meta ~Ctrl<Key>P:		xfeDoCommand(print)					\n\
	 Alt ~Ctrl<Key>P:		xfeDoCommand(print)					\n\
	Meta ~Ctrl<Key>R:		xfeDoCommand(reload)				\n\
	 Alt ~Ctrl<Key>R:		xfeDoCommand(reload)				\n\
	Meta ~Ctrl<Key>braceleft:		xfeDoCommand(decreaseFont)		\n\
	 Alt ~Ctrl<Key>braceleft:		xfeDoCommand(decreaseFont)		\n\
 	Meta ~Ctrl<Key>braceright:		xfeDoCommand(increaseFont)		\n\
	 Alt ~Ctrl<Key>braceright:		xfeDoCommand(increaseFont)		\n\
											\
	Meta ~Ctrl<Key>osfLeft:		xfeDoCommand(back)				\n\
	 Alt ~Ctrl<Key>osfLeft:		xfeDoCommand(back)				\n\
	Meta ~Ctrl<Key>osfRight:	xfeDoCommand(forward)			\n\
	 Alt ~Ctrl<Key>osfRight:	xfeDoCommand(forward)			\n\
	          <Key>Escape:		xfeDoCommand(stopLoading)		\n\
	          <Key>osfCancel:	xfeDoCommand(stopLoading)		\n

! Translations in the Mail & News window.
! Things here override the global translations (which are loaded first.)
! This changes:
!    Alt+H from "View History" to "Deliver Mail Now"
!    Alt+L from "Open URL" to "Forward Message"
!    Alt+R from "Reload" to "Reply to Sender"
!    Alt+O from "Open File" to undefined
!    Alt+S from "Save As" to undefined
!
! This adds:
!    Alt+Shift+A for "Select Thread"
!    Alt+T for "Get New Mail"
!    Alt+Shift+R for "Reply to All"
!    Alt+D for "Delete Message"
!    Alt+Y for "Redo"
!
! Alt arrow keys select previous/next.
! Alt+Shift arrow keys select previous/next unread.
! Meta+Shift arrow keys select previous/next marked.
!
*mailnewsGlobalTranslations:		#override			\
	<Btn3Down>:				xfeDoPopup()					\n\
	Meta ~Ctrl<Key>D:		xfeDoCommand(deleteFolder)				\n\
	 Alt ~Ctrl<Key>D:		xfeDoCommand(deleteFolder)				\n\
	Meta ~Ctrl<Key>H:		xfeDoCommand(deliverQueuedMessages)		\n\
	 Alt ~Ctrl<Key>H:		xfeDoCommand(deliverQueuedMessages)		\n\
	Meta ~Ctrl Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	 Alt ~Ctrl Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	Meta ~Ctrl<Key>K:		xfeDoCommand(compressFolders)		\n\
	 Alt ~Ctrl<Key>K:		xfeDoCommand(compressFolders)		\n\
	Meta ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
	 Alt ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
	Meta ~Ctrl<Key>T:		xfeDoCommand(getNewMessages)	\n\
	 Alt ~Ctrl<Key>T:		xfeDoCommand(getNewMessages)	\n\
	Meta ~Ctrl<Key>Z:		xfeDoCommand(undo)\n\
     Alt ~Ctrl<Key>Z:       xfeDoCommand(undo)\n\
    <Key>osfUndo:           xfeDoCommand(undo)\n\
         <Key>Escape:		xfeDoCommand(stopLoading)\n

! Translations in the MailNews message and threads windows
! These override globalTranslations.
*messagewinGlobalTranslations:		#override			   	\
	<Btn3Down>:			xfeDoPopup()					\n\
    Alt ~Ctrl Shift<Key>a: xfeDoCommand(selectThread)\n\
   Meta ~Ctrl Shift<Key>a: xfeDoCommand(selectThread)\n\
    Alt Shift ~Ctrl<Key>c:  xfeDoCommand(markAllMessagesRead)\n\
   Meta Shift ~Ctrl<Key>c:  xfeDoCommand(markAllMessagesRead)\n\
    ~Meta ~Alt ~Ctrl<Key>c:	xfeDoCommand(markMessageByDate)\n\
	Meta ~Ctrl<Key>D:	    xfeDoCommand(deleteMessage)			\n\
	 Alt ~Ctrl<Key>D:	    xfeDoCommand(deleteMessage)			\n\
	Meta ~Ctrl Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	 Alt ~Ctrl Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	Meta ~Ctrl Shift<Key>f:	xfeDoCommand(search)	   	\n\
	 Alt ~Ctrl Shift<Key>f:	xfeDoCommand(search)	   	\n\
	Meta ~Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	 Alt ~Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	Meta ~Ctrl<Key>G:		xfeDoCommand(findAgain)				\n\
	 Alt ~Ctrl<Key>G:		xfeDoCommand(findAgain)				\n\
    ~Meta ~Alt ~Ctrl<Key>G: xfeDoCommand(nextUnreadCollection)\n\
	Meta ~Ctrl<Key>K:		xfeDoCommand(compressFolders)		\n\
	 Alt ~Ctrl<Key>K:		xfeDoCommand(compressFolders)		\n\
    ~Meta ~Alt ~Ctrl<Key>K:	xfeDoCommand(ignoreThread)\n\
	Meta ~Ctrl ~Shift<Key>l:xfeDoCommand(forwardMessage)       	\n\
	 Alt ~Ctrl ~Shift<Key>l:xfeDoCommand(forwardMessage)	   	\n\
    Meta ~Ctrl Shift<Key>l: xfeDoCommand(forwardMessageQuoted)\n\
     Alt ~Ctrl Shift<Key>l: xfeDoCommand(forwardMessageQuoted)\n\
    ~Meta ~Alt ~Ctrl<Key>L:	xfeDoCommand(markMessageForLater)\n\
  ~Meta ~Alt ~Ctrl ~Shift<Key>n: xfeDoCommand(nextUnreadMessage)		\n\
  ~Meta ~Alt ~Ctrl Shift<Key>n:  xfeDoCommand(nextMessage)		\n\
    ~Meta ~Alt ~Ctrl<Key>M:	xfeDoCommand(markMessageRead)\n\
	Meta ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
	 Alt ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
	Meta ~Ctrl<Key>P:		xfeDoCommand(print)					\n\
	 Alt ~Ctrl<Key>P:		xfeDoCommand(print)					\n\
 ~Meta ~Alt ~Ctrl ~Shift<Key>p: xfeDoCommand(previousUnreadMessage)	\n\
 ~Meta ~Alt ~Ctrl Shift<Key>p:	 xfeDoCommand(previousMessage)	\n\
      Alt ~Ctrl Shift<Key>P:	 xfeDoCommand(previousMessage)	\n\
    :Ctrl<Key>q:        xfeDoCommand(findInObject)\n\
    :Ctrl<Key>s:   xfeDoCommand(findAgain)\n\
	Meta ~Ctrl ~Shift<Key>r:	 xfeDoCommand(replyToSender)	   	\n\
	 Alt ~Ctrl ~Shift<Key>r:	 xfeDoCommand(replyToSender)	   	\n\
	Meta ~Ctrl Shift<Key>r:     xfeDoCommand(replyToAll)	   	\n\
	 Alt ~Ctrl Shift<Key>r:	 xfeDoCommand(replyToAll)	   	\n\
	Meta ~Ctrl<Key>S:		xfeDoCommand(saveMessagesAs)	   	\n\
	 Alt ~Ctrl<Key>S:		xfeDoCommand(saveMessagesAs)	   	\n\
	Meta ~Ctrl<Key>T:		xfeDoCommand(getNewMessages)	   	\n\
	 Alt ~Ctrl<Key>T:		xfeDoCommand(getNewMessages)	   	\n\
    ~Meta ~Alt ~Ctrl<Key>T:xfeDoCommand(nextUnreadThread)		\n\
    ~Meta ~Alt ~Ctrl<Key>U:	xfeDoCommand(markMessageUnread)\n\
    ~Meta ~Alt ~Ctrl<Key>W:	xfeDoCommand(watchThread)\n\
	Meta ~Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	 Alt ~Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	Meta ~Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
	 Alt ~Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
									   	\
        <Key>Undo:          xfeDoCommand(undo)\n\
        <Key>osfUndo:       xfeDoCommand(undo)\n\
                                        \
	Meta ~Ctrl ~Shift<Key>Left:	xfeDoCommand(back)		\n\
	Meta ~Ctrl ~Shift<Key>Left:	xfeDoCommand(back)		\n\
	 Alt ~Ctrl ~Shift<Key>osfLeft:	xfeDoCommand(back)		\n\
	 Alt ~Ctrl ~Shift<Key>osfLeft:	xfeDoCommand(back)		\n\
                                        \
	Meta ~Ctrl ~Shift<Key>Right:	xfeDoCommand(forward)		\n\
	 Alt ~Ctrl ~Shift<Key>Right:	xfeDoCommand(forward)		\n\
	Meta ~Ctrl ~Shift<Key>osfRight:xfeDoCommand(forward)		\n\
	 Alt ~Ctrl ~Shift<Key>osfRight:xfeDoCommand(forward)		\n\
                                        \
     Alt ~Ctrl ~Shift<Key>Down:    xfeDoCommand(nextMessage)\n\
    Meta ~Ctrl ~Shift<Key>Down:    xfeDoCommand(nextMessage)\n\
     Alt ~Ctrl ~Shift<Key>osfDown: xfeDoCommand(nextMessage)\n\
    Meta ~Ctrl ~Shift<Key>osfDown: xfeDoCommand(nextMessage)\n\
     Alt ~Ctrl Shift<Key>Down:     xfeDoCommand(nextUnreadMessage)\n\
    Meta ~Ctrl Shift<Key>Down:     xfeDoCommand(nextUnreadMessage)\n\
     Alt ~Ctrl Shift<Key>osfDown:  xfeDoCommand(nextUnreadMessage)\n\
    Meta ~Ctrl Shift<Key>osfDown:  xfeDoCommand(nextUnreadMessage)\n\
	Ctrl Shift<Key>Down:		    xfeDoCommand(nextFlaggedMessage)	\n\
	Ctrl Shift<Key>osfDown:	    xfeDoCommand(nextFlaggedMessage)	\n\
										\
     Alt ~Ctrl ~Shift<Key>Up:      xfeDoCommand(previousMessage)\n\
    Meta ~Ctrl ~Shift<Key>Up:      xfeDoCommand(previousMessage)\n\
     Alt ~Ctrl ~Shift<Key>osfUp:   xfeDoCommand(previousMessage)\n\
    Meta ~Ctrl ~Shift<Key>osfUp:   xfeDoCommand(previousMessage)\n\
     Alt ~Ctrl Shift<Key>Up:       xfeDoCommand(previousUnreadMessage)\n\
    Meta ~Ctrl Shift<Key>Up:       xfeDoCommand(previousUnreadMessage)\n\
     Alt ~Ctrl Shift<Key>osfUp:    xfeDoCommand(previousUnreadMessage)\n\
    Meta ~Ctrl Shift<Key>osfUp:    xfeDoCommand(previousUnreadMessage)\n\
	Ctrl Shift<Key>Up:		        xfeDoCommand(previousFlaggedMessage)\n\
	Ctrl Shift<Key>osfUp:		    xfeDoCommand(previousFlaggedMessage)\n\
                                        \
    :<Key>Delete:  xfeDoCommand(deleteAny)\n\
    :<Key>Delete:  xfeDoCommand(deleteAny)\n\
    :<Key>osfDelete:   xfeDoCommand(deleteAny)\n\
    :<Key>osfDelete:  xfeDoCommand(deleteAny)\n\
                                        \
    ~Meta ~Alt ~Ctrl ~Shift<Key>Return: xfeDoCommand(openSelected)\n\
    ~Meta ~Alt ~Ctrl ~Shift<Key>osfActivate: xfeDoCommand(openSelected)\n\
                                        \
    :~Meta ~Alt<Key>less: xfeDoCommand(markMessageUnread)\n\
    :~Meta ~Alt<Key>greater: xfeDoCommand(nextUnreadCollection)\n\
    :~Meta ~Alt<Key>backslash: xfeDoCommand(nextCollection)\n\
    :~Meta ~Alt<Key>at:xfeDoCommand(showAllHeaders)\n\
    :~Meta ~Alt<Key>numbersign:xfeDoCommand(showNormalHeaders)\n\
    :~Meta ~Alt<Key>dollar:xfeDoCommand(showBriefHeaders)\n\
    :~Meta ~Alt<Key>exclam:xfeDoCommand(rot13Message)\n\
    :~Meta ~Alt<Key>period:xfeDoCommand(markMessages)\n\
    :~Meta ~Alt<Key>asterisk:	xfeDoCommand(expandAll)\n\
    :~Meta ~Alt<Key>plus:		xfeDoCommand(expand)\n\
    :~Meta ~Alt<Key>slash:		xfeDoCommand(collapseAll)\n\
    :~Meta ~Alt<Key>minus:		xfeDoCommand(collapse)\n\
    :Alt <Key>Delete:  	xfeDoCommand(deleteAny)\n\
    :Meta<Key>Delete:  	xfeDoCommand(deleteAny)\n\
    :Alt <Key>osfDelete:	xfeDoCommand(deleteAny)\n\
    :Meta<Key>osfDelete:	xfeDoCommand(deleteAny)\n



! Translations in the MailCompose window.
! These are used instead of globalTranslations.
!
*mailcomposeGlobalTranslations:		#override			\
									\
	<Btn3Down>:			xfeDoPopup()			\n\
	Meta ~Ctrl<Key>D:		xfeDoCommand(delete)				\n\
	 Alt ~Ctrl<Key>D:		xfeDoCommand(delete)				\n\
	Meta ~Ctrl  Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	 Alt ~Ctrl  Shift<Key>i: xfeDoCommand(viewSecurity)			\n\
	Meta ~Ctrl ~Shift<Key>Return:		xfeDoCommand(sendMessageNow)	\n\
	 Alt ~Ctrl ~Shift<Key>Return:		xfeDoCommand(sendMessageNow)	\n\
	Meta ~Ctrl Shift<Key>Return:		xfeDoCommand(sendMessageLater)	\n\
	 Alt ~Ctrl Shift<Key>Return:		xfeDoCommand(sendMessageLater)	\n\
	Meta ~Ctrl<Key>k:		xfeDoCommand(spellCheck)		\n\
	 Alt ~Ctrl<Key>k:		xfeDoCommand(spellCheck)		\n\
	Meta ~Ctrl<Key>j:		xfeDoCommand(showComplPicker)		\n\
	 Alt ~Ctrl<Key>j:		xfeDoCommand(showComplPicker)		\n

! Translations in the AddressOutliner portion of the compose window:
!
! TraverseTranslations are for the recipient text field:
*addressOutlinerTraverseTranslations:	#override	\
:~Ctrl ~Shift <Key>osfDelete: 	TableTraverse(DELETE)	\n\
:~Ctrl ~Shift <Key>Delete:	TableTraverse(DELETE)	\n\
:~Ctrl ~Shift <Key>BackSpace:  TableTraverse(BACKSPACE)\n\
:~Ctrl ~Shift <Key>osfBackSpace:       TableTraverse(BACKSPACE)\n\
~Ctrl ~Shift <Key>osfRight:	TableTraverse(RIGHT)	\n\
~Ctrl ~Shift <Key>osfLeft:	TableTraverse(LEFT)	\n\
<Key>osfInsert:			TableTraverse(INSERT)	\n\
~Ctrl ~Shift <Key>Insert:	TableTraverse(INSERT)	\n\
~Ctrl ~Shift <Key>osfBeginLine: TableTraverse(HOME)	\n\
~Ctrl ~Shift <Key>Home:		TableTraverse(HOME)	\n\
~Ctrl ~Shift <Key>End:		TableTraverse(END)	\n\
~Ctrl ~Shift <Key>osfEndLine: 	TableTraverse(END)	\n\
~Ctrl ~Shift <Key>osfUp:       	TableTraverse(UP)	\n\
~Ctrl ~Shift <Key>osfDown:      TableTraverse(DOWN)	\n\
~Ctrl ~Shift <Key>Tab:          TableTraverse(NEXT)	\n\
~Ctrl Shift <Key>Tab:          	TableTraverse(PREVIOUS)	\n\
	Meta ~Ctrl<Key>D:		xfeDoCommand(autoComplOnOff)		\n\
	 Alt ~Ctrl<Key>D:		xfeDoCommand(autoComplOnOff)		\n

! KeyTranslations are for the To/Cc/etc. field:
*addressOutlinerKeyTranslations:		#override	\
 ~Ctrl ~Shift <Key>osfRight:	TableTraverse(RIGHT)	\n\
~Ctrl ~Shift <Key>osfLeft:	TableTraverse(LEFT)	\n\
~Ctrl ~Shift <Key>osfDelete:	TableTraverse(DELETE)	\n\
~Ctrl ~Shift <Key>Delete:	TableTraverse(DELETE)	\n\
<Key>osfInsert:			TableTraverse(INSERT)	\n\
~Ctrl ~Shift <Key>Insert:	TableTraverse(INSERT)	\n\
~Ctrl ~Shift <Key>osfBeginLine:	TableTraverse(HOME)	\n\
~Ctrl ~Shift <Key>Home:		TableTraverse(HOME)	\n\
~Ctrl ~Shift <Key>End:		TableTraverse(END)	\n\
~Ctrl ~Shift <Key>osfEndLine:	TableTraverse(END)	\n\
~Ctrl ~Shift <Key>osfUp:	TableTraverse(UP)	\n\
~Ctrl ~Shift <Key>osfDown:	TableTraverse(DOWN)	\n\
~Ctrl ~Shift <Key>Tab:		TableTraverse(NEXT)	\n\
~Ctrl Shift <Key>Tab:		TableTraverse(PREVIOUS)	\n\
~Ctrl ~Shift <Key>t:		KeyIn(To:)		\n\
~Ctrl Shift <Key>t:		KeyIn(To:)		\n\
~Ctrl ~Shift <Key>c:		KeyIn(Cc:)		\n\
~Ctrl Shift <Key>c:		KeyIn(Cc:)		\n\
~Ctrl ~Shift <Key>b:		KeyIn(Bcc:)		\n\
~Ctrl Shift <Key>b:		KeyIn(Bcc:)		\n\
~Ctrl ~Shift <Key>n:		KeyIn(Newsgroup:)	\n\
~Ctrl Shift <Key>n:		KeyIn(Newsgroup:)	\n\
~Ctrl ~Shift <Key>f:		KeyIn(Followup-To:)	\n\
~Ctrl Shift <Key>f:		KeyIn(Followup-To:)	\n\
~Ctrl ~Shift <Key>r:		KeyIn(Reply-To:)	\n\
~Ctrl Shift <Key>r:		KeyIn(Reply-To:)	\n

! Translations in the MailNews Search window.
! These are used instead of globalTranslations.
!
*mnsearchGlobalTranslations:          #override                       \
      <Btn3Down>:                     xfeDoPopup()\n\
      Meta ~Ctrl<Key>D:               xfeDoCommand(deleteMessage)\n\
       Alt ~Ctrl<Key>D:               xfeDoCommand(deleteMessage)\n

! Translations in the Bookmarks and Adderssbook window.
! These translations are used instead of globalTranslations.
! None of the key *semantics* of globalTranslations are changed here,
! only the actions bound.  (And inapplicable actions are not present.)
!
*bmGlobalTranslations:			#override			\
	<Btn3Down>:				xfeDoPopup()					\n\
   ~Meta ~Alt ~Ctrl<Key>space:	PageDown()					\n\
	Meta ~Ctrl<Key>D:		xfeDoCommand(delete)			\n\
	 Alt ~Ctrl<Key>D:		xfeDoCommand(delete)			\n\
	Meta ~Ctrl<Key>F:		xfeDoCommand(findInObject)		\n\
	 Alt ~Ctrl<Key>F:		xfeDoCommand(findInObject)		\n\
	Meta ~Ctrl<Key>G:		xfeDoCommand(findAgain)			\n\
	 Alt ~Ctrl<Key>G:		xfeDoCommand(findAgain)			\n\
	Meta ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
	 Alt ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
~Meta ~Alt ~Ctrl  Shift <Key>Up:   xfeDoCommand(moveBookmarkUp)\n\
~Meta ~Alt ~Ctrl  Shift <Key>Down: xfeDoCommand(moveBookmarkDown)\n\
~Meta ~Alt ~Ctrl  Shift <Key>osfUp:   xfeDoCommand(moveBookmarkUp)\n\
~Meta ~Alt ~Ctrl  Shift <Key>osfDown: xfeDoCommand(moveBookmarkDown)\n\
~Meta ~Alt ~Ctrl ~Shift <Key>Up:        LineUp()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>Down:      LineDown()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>osfUp:        LineUp()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>osfDown:      LineDown()	\n\
	~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()					\n\
	~Meta ~Alt ~Ctrl<Key>Next:		PageDown()					\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()				\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()				\n

*abGlobalTranslations:			#override			\
	<Btn3Down>:				xfeDoPopup()			\n\
	Meta ~Ctrl<Key>D:		xfeDoCommand(abDelete)	\n\
	 Alt ~Ctrl<Key>D:		xfeDoCommand(abDelete)	\n\
	Meta ~Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	 Alt ~Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	Meta ~Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
	 Alt ~Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
									   	\
        <Key>Undo:          xfeDoCommand(undo)\n\
        <Key>osfUndo:       xfeDoCommand(undo)\n\
	          <Key>Escape:		xfeDoCommand(stopLoading)		\n\
	          <Key>osfCancel:	xfeDoCommand(stopLoading)		\n

! Translations in the textfield portion of the mailing list view 
!
! TraverseTranslations are for the text field:
*abmlistTraverseTranslations:	#override	\
~Ctrl ~Shift <Key>BackSpace:  TableTraverse(BACKSPACE)\n\
~Ctrl ~Shift <Key>Tab:          TableTraverse(NEXT)	\n\
~Ctrl Shift <Key>Tab:          	TableTraverse(PREVIOUS)	\n

! Translations in the History window.
! These translations are used instead of globalTranslations.
! None of the key *semantics* of globalTranslations are changed here,
! only the actions bound.  (And inapplicable actions are not present.)
!
!	<Btn3Down>:			xfeDoPopup()			\n\
*ghGlobalTranslations:			#override			\
 Meta ~Ctrl<Key>D:		xfeDoCommand(delete)	\n\
  Alt ~Ctrl<Key>D:		xfeDoCommand(delete)	\n\
 Meta ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
  Alt ~Ctrl<Key>O:		xfeDoCommand(openSelected)			\n\
~Meta ~Alt ~Ctrl<Key>space:	PageDown()		\n\
~Meta ~Alt ~Ctrl ~Shift <Key>Up:        LineUp()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>Down:      LineDown()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>osfUp:        LineUp()	\n\
~Meta ~Alt ~Ctrl ~Shift <Key>osfDown:      LineDown()	\n\
	~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()					\n\
	~Meta ~Alt ~Ctrl<Key>Next:		PageDown()					\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()				\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()				\n

!
! Translations for document source window
*dialogGlobalTranslations:		#override			\n\
									\
	Meta ~Ctrl<Key>W:		xfeDoCommand(close)			\n\
	 Alt ~Ctrl<Key>W:		xfeDoCommand(close)			\n



! Mouse bindings in the HTML display area.
! 
*drawingArea.translations:		#replace			\
	<Btn1Down>:			ArmLink()			\n\
	<Btn2Down>:			ArmLink()			\n\
	~Shift<Btn1Up>:			ActivateLink()			\n\
	~Shift<Btn2Up>:			ActivateLink(new-window)	\
					DisarmLink()			\n\
	Shift<Btn1Up>:			ActivateLink(save-only)		\
					DisarmLink()			\n\
	Shift<Btn2Up>:			ActivateLink(save-only)		\
					DisarmLink()			\n\
	<Btn1Motion>:			DisarmLinkIfMoved()		\n\
	<Btn2Motion>:			DisarmLinkIfMoved()		\n\
	<Btn3Motion>:			DisarmLinkIfMoved()		\n\
	<Motion>:			DescribeLink()			\n\
	<Btn3Down>:			xfeDoPopup()			\n

*drawingArea*XmList.highlightThickness:	2


! Some basic emacs-like bindings for text fields.
!
! "editingTranslations" are merged into all XmText and XmTextField widgets.
! Then, either "multiLinEditingTranslations" or "singleLinEditingTranslations"
! are merged in, depending on whether it is an XmText or XmTextField widget.
! These resources are merged in after "globalTranslations", so it is possible
! for them to override the menu accelerators.
!
! Problems:
!  = I don't understand why the "Ctrl<Key>g" binding does nothing.
!  = I wish things like `C-k C-k C-k C-n C-k C-k C-y' did the right thing.
!  = This doesn't quite do active regions right, in that C-SPC M-f doesn't
!    leave the word highlighted (though it does leave a region set.)
! Basically, XmText is not Emacs, and we therefore exist in a world of pain.
!
!  NOTE: if you're looking here because BackSpace and Delete aren't
!        working the way you think they should, then you need to run
!        xmodmap or xkeycaps to fix your keyboard, or mess read the man
!        page for VirtualBindings(1).  For details, see the Netscape FAQ
!        (available from the Help menu.)
!
*editingTranslations:			#override			\n\
	Meta ~Ctrl<Key>A:		select-all()				\n\
	 Alt ~Ctrl<Key>A:		select-all()				\n\
	~Meta ~Alt Ctrl<Key>a:		beginning-of-line()		\n\
	~Meta ~Alt  Shift Ctrl<Key>a:	beginning-of-line(extend)	\n\
	~Meta ~Alt ~Shift Ctrl<Key>b:	backward-character()		\n\
	~Meta ~Alt  Shift Ctrl<Key>b:	backward-character(extend)	\n\
	~Meta ~Alt        Ctrl<Key>d:	delete-next-character()		\n\
	~Meta ~Alt ~Shift Ctrl<Key>e:	end-of-line()			\n\
	~Meta ~Alt  Shift Ctrl<Key>e:	end-of-line(extend)		\n\
	~Meta ~Alt ~Shift Ctrl<Key>f:	forward-character()		\n\
	~Meta ~Alt  Shift Ctrl<Key>f:	forward-character(extend)	\n\
	~Meta ~Alt        Ctrl<Key>g:	process-cancel()		\n\
	~Meta ~Alt        Ctrl<Key>h:	delete-previous-character()	\n\
	~Meta ~Alt        Ctrl<Key>v:	undefined-key()	\n\
	~Meta ~Alt        Ctrl<Key>space: set-anchor()			\n\
	~Meta ~Alt        Ctrl<Key>2:	set-anchor()			\n\
	~Meta ~Alt        Ctrl<Key>@:	set-anchor()			\n\
									\
	Meta ~Ctrl ~Shift<Key>b:	backward-word()			\n\
	 Alt ~Ctrl ~Shift<Key>b:	backward-word()			\n\
	Meta ~Ctrl  Shift<Key>b:	backward-word(extend)		\n\
	 Alt ~Ctrl  Shift<Key>b:	backward-word(extend)		\n\
	Meta ~Ctrl ~Shift<Key>f:	forward-word()			\n\
	 Alt ~Ctrl ~Shift<Key>f:	forward-word()			\n\
	Meta ~Ctrl  Shift<Key>f:	forward-word(extend)		\n\
	 Alt ~Ctrl  Shift<Key>f:	forward-word(extend)		\n\
	Meta ~Ctrl ~Shift<Key>osfLeft:	backward-word()			\n\
	 Alt ~Ctrl ~Shift<Key>osfLeft:	backward-word()			\n\
	Meta ~Ctrl  Shift<Key>osfLeft:	backward-word(extend)		\n\
	 Alt ~Ctrl  Shift<Key>osfLeft:	backward-word(extend)		\n\
	Meta ~Ctrl ~Shift<Key>osfRight:forward-word()			\n\
	 Alt ~Ctrl ~Shift<Key>osfRight:forward-word()			\n\
	Meta ~Ctrl  Shift<Key>osfRight:forward-word(extend)		\n\
         Alt ~Ctrl  Shift<Key>osfRight:forward-word(extend)\n

!                       <KeyUp>: KeyUpInText()\n
!       Meta ~Ctrl       <Key>w:        copy-clipboard()\n\
!        Alt ~Ctrl       <Key>w:        copy-clipboard()\n\

! Translations that apply only to javascript form element text fields;
! This translation should only be added for text fields that is shown in a
! script page.
! SHOULD NOT apply this translation to any regular motif text field.
! because it will trigger the javascript layout stuff and introduce crash.
*formElemEditingTranslations:            #override\n\
			<KeyUp>: KeyUpInText()\n

! Translations that apply only to single-line fields; see above.
!
! Ctrl-U clears the current line only in single-line fields.  Unix
! command-line weenies expect this, even though everyone knows Ctrl-U
! should mean "prefix argument".
!
! In single-line fields, the various killing commands are really deletion
! commands instead (that is, they don't affect the Clipboard and are not
! undoable with Ctrl-y) because the XmTextField widget does not provide
! kill commands -- only the XmText widget does.  (What the hell is up with
! that...)  Maybe we could get around this by never using XmTextField, and
! only using XmText with editMode set to SINGLE_LINE_EDIT, but that might
! have other unexpected effects...
!
! I thought of making Meta-d be `set-anchor() forward-word() cut-clipboard()',
! but that doesn't work, because forward-word takes the whitespace after the
! word as well, instead of stopping before the whitespace.
!
! Similarly, Ctrl-k can't be implemented with
! `set-anchor() end-of-line(extend) cut-clipboard() delete-selection()'
! because that has the side effect of (temporarily) owning the selection,
! which would make it impossible to: select text in another application;
! type C-k at Netscape; Click middle to paste.  The paste would be impossible
! because C-k would have cleared the selection.
!
*singleLineEditingTranslations:		#override			\n\
	Meta ~Alt ~Ctrl<Key>x:		xfeDoText(cut)	\n\
	Meta ~Alt ~Ctrl<Key>c:		xfeDoText(copy)	\n\
	Meta ~Alt ~Ctrl<Key>v:		xfeDoText(paste)	\n\
	Meta ~Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
									\
	~Meta Alt ~Ctrl<Key>x:		xfeDoText(cut)	\n\
	~Meta Alt ~Ctrl<Key>c:		xfeDoText(copy)	\n\
	~Meta Alt ~Ctrl<Key>v:		xfeDoText(paste)	\n\
	~Meta Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
                                    \
	~Meta ~Alt Ctrl<Key>y:		xfeDoText(paste)	\n\
                                    \
	~Meta ~Alt ~Ctrl<Key>SunCopy:   xfeDoText(copy)		\n\
	~Meta ~Alt ~Ctrl<Key>SunPaste:  xfeDoText(paste)	\n\
	~Meta ~Alt ~Ctrl<Key>SunCut:    xfeDoText(cut)		\n\
                                    \
	~Meta ~Alt Ctrl<Key>u:		beginning-of-line()		\
					delete-to-end-of-line()		\n\
	~Meta ~Alt Ctrl<Key>k:		delete-to-end-of-line()		\n\
	~Meta ~Alt Ctrl<Key>l:		xfeDoCommand(refresh)			\n\
	~Meta ~Alt Ctrl<Key>w:		key-select()			\
					delete-selection()		\n\
	Meta ~Ctrl       <Key>d:	delete-next-word()		\n\
	 Alt ~Ctrl       <Key>d:	delete-next-word()		\n\
	 Alt ~Ctrl       <Key><:	set-anchor()			\
					beginning-of-line()		\n\
	Meta ~Ctrl       <Key><:	set-anchor()			\
					beginning-of-line()		\n\
 	 Alt ~Ctrl       <Key>>:	set-anchor()			\
					end-of-line()			\n\
	Meta ~Ctrl       <Key>>:	set-anchor()			\
					end-of-line()			\n\
	~Alt  Ctrl       <Key><:	set-anchor()			\
					beginning-of-line(extend)	\n\
   ~Meta  Ctrl       <Key><:	set-anchor()			\
					beginning-of-line(extend)	\n\
	~Alt  Ctrl       <Key>>:	set-anchor()			\
					end-of-line(extend)		\n\
   ~Meta  Ctrl       <Key>>:	set-anchor()			\
					end-of-line(extend)		\n\
	Meta ~Ctrl<Key>osfBackSpace:	delete-previous-word()		\n\
	 Alt ~Ctrl<Key>osfBackSpace:	delete-previous-word()		\n\
	Meta ~Ctrl<Key>osfDelete:	delete-next-word()		\n\
	 Alt ~Ctrl<Key>osfDelete:	delete-next-word()		\n\
									\
	~Meta ~Alt ~Ctrl<Key>osfLeft:	deselect-all()			\
					backward-character()		\n\
	~Meta ~Alt ~Ctrl<Key>osfRight:	deselect-all()			\
					forward-character()		\n

! Translations that apply only to multi-line fields; see above.
! Most of these are here because they are commands that only apply when
! the text area has multiple lines in it, but see above comment about
! "kill" commands versus "delete" commands.
!
! NOTE... [ had to modify the following to prevent overriding paste ]
!
!	Meta ~Ctrl ~Shift<Key>v:	previous-page()			\n\
!	 Alt ~Ctrl ~Shift<Key>v:	previous-page()			\n\
!
*multiLineEditingTranslations:		#override			\n\
	Meta ~Alt ~Ctrl<Key>x:		xfeDoText(cut)	\n\
	Meta ~Alt ~Ctrl<Key>c:		xfeDoText(copy)	\n\
	Meta ~Alt ~Ctrl<Key>v:		xfeDoText(paste)	\n\
	Meta ~Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
									\
	~Meta Alt ~Ctrl<Key>x:		xfeDoText(cut)	\n\
	~Meta Alt ~Ctrl<Key>c:		xfeDoText(copy)	\n\
	~Meta Alt ~Ctrl<Key>v:		xfeDoText(paste)	\n\
	~Meta Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
									\
	~Meta ~Alt Ctrl<Key>y:		xfeDoText(paste)	\n\
                                    \
	~Meta ~Alt ~Ctrl<Key>SunCopy:   xfeDoText(copy)		\n\
	~Meta ~Alt ~Ctrl<Key>SunPaste:  xfeDoText(paste)	\n\
	~Meta ~Alt ~Ctrl<Key>SunCut:    xfeDoText(cut)		\n\
                                    \
	~Meta ~Alt Ctrl<Key>k:		kill-to-end-of-line()		\n\
	~Meta ~Alt Ctrl<Key>w:		key-select() kill-selection()	\n\
	~Meta ~Alt Ctrl<Key>y:		unkill()			\n\
	Meta ~Ctrl       <Key>d:	kill-next-word()		\n\
	 Alt ~Ctrl       <Key>d:	kill-next-word()		\n\
	~Meta ~Alt        Ctrl<Key>l:	redraw-display() xfeDoCommand(refresh)	\n\
	Meta ~Ctrl<Key>osfBackSpace:	kill-previous-word()		\n\
	 Alt ~Ctrl<Key>osfBackSpace:	kill-previous-word()		\n\
	Meta ~Ctrl<Key>osfDelete:	kill-next-word()		\n\
	 Alt ~Ctrl<Key>osfDelete:	kill-next-word()		\n\
									\
	~Meta ~Alt Ctrl<Key>j:		newline-and-indent()		\n\
	~Meta ~Alt Ctrl<Key>o:		newline-and-backup()		\n\
	~Meta ~Alt ~Shift Ctrl<Key>n:	next-line()			\n\
	~Meta ~Alt  Shift Ctrl<Key>n:	next-line(extend)		\n\
	~Meta ~Alt ~Shift Ctrl<Key>p:	previous-line()			\n\
	~Meta ~Alt  Shift Ctrl<Key>p:	previous-line(extend)		\n\
	~Meta ~Alt ~Shift Ctrl<Key>v:	next-page()			\n\
	~Meta ~Alt  Shift Ctrl<Key>v:	next-page(extend)		\n\
	Meta  Ctrl ~Shift<Key>v:	previous-page()			\n\
	 Alt  Ctrl ~Shift<Key>v:	previous-page()			\n\
	Meta ~Ctrl  Shift<Key>v:	previous-page(extend)		\n\
	 Alt ~Ctrl  Shift<Key>v:	previous-page(extend)		\n\
	 Alt ~Ctrl ~Shift<Key>braceleft:	backward-paragraph()		\n\
	Meta ~Ctrl ~Shift<Key>braceleft:	backward-paragraph()		\n\
	 Alt ~Ctrl  Shift<Key>braceleft:	backward-paragraph(extend)	\n\
	Meta ~Ctrl  Shift<Key>braceleft:	backward-paragraph(extend)	\n\
	 Alt ~Ctrl ~Shift<Key>braceright:	forward-paragraph()		\n\
	Meta ~Ctrl ~Shift<Key>braceright:	forward-paragraph()		\n\
	 Alt ~Ctrl  Shift<Key>braceright:	forward-paragraph(extend)	\n\
	Meta ~Ctrl  Shift<Key>braceright:	forward-paragraph(extend)	\n\
	 Alt ~Ctrl       <Key><:	set-anchor()			\
					beginning-of-file()		\n\
	Meta ~Ctrl       <Key><:	set-anchor()			\
					beginning-of-file()		\n\
 	 Alt ~Ctrl       <Key>>:	set-anchor()			\
					end-of-file()			\n\
	Meta ~Ctrl       <Key>>:	set-anchor()			\
					end-of-file()			\n\
	~Alt  Ctrl       <Key><:	set-anchor()			\
					beginning-of-file(extend)	\n\
       ~Meta  Ctrl       <Key><:	set-anchor()			\
					beginning-of-file(extend)	\n\
	~Alt  Ctrl       <Key>>:	set-anchor()			\
					end-of-file(extend)		\n\
       ~Meta  Ctrl       <Key>>:	set-anchor()			\
					end-of-file(extend)		\n\
	~Meta ~Alt ~Ctrl<Key>Prior:	previous-page()			\n\
	~Meta ~Alt ~Ctrl<Key>Next:	next-page()			\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:	previous-page()			\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown: next-page()			\n\
	Ctrl  <Key>/:			undefined-key()			\n

! Since these get merged in first, all the other bindings override them.
! This is just so that undefined non-self-inserting keys beep.
! (Except that this doesn't really work that well, so nevermind.)
!*XmText.translations:		#override				\
!			Ctrl <Key>:	undefined-key()			\n\
!			Meta <Key>:	undefined-key()			\n\
!			 Alt <Key>:	undefined-key()			\n
!*XmTextField.translations:	#override				\
!			Ctrl <Key>:	undefined-key()			\n\
!			Meta <Key>:	undefined-key()			\n\
!			 Alt <Key>:	undefined-key()			\n


! We merge these translations into all text fields which are not the
! bottommost text field in a dialog box (transient popup.)  This is so that
! hitting `return' in a text field will select the next text field if there
! is one, and will select the "OK" button if there are no more.
!
*nonterminalTextTranslations:	#override				\n\
	<Key>Return:		next-tab-group()			\n\
	<Key>Linefeed:		next-tab-group()			\n

! This is used for self-submitting text fields in HTML forms (not popups.)
! We don't need to store these in to dialog box text fields, since in that
! case we are able to simply avoid storing in the above ones, but we don't
! know that until too late with forms.
*terminalTextTranslations:	#override				\n\
	<Key>Return:		activate()				\n\
	<Key>Linefeed:		activate()				\n

! These translations are installed on every TextField widget in the main tree,
! but *not* on text fields in dialogs, or in the mail composition window
! (that's the difference between this and singleLineEditingTranslations.)
*globalTextFieldTranslations:		#override			\n\
	~Meta ~Alt ~Ctrl<Key>Up:	LineUp()			\n\
	~Meta ~Alt ~Ctrl<Key>Down:	LineDown()			\n\
	~Meta ~Alt ~Ctrl<Key>osfUp:	LineUp()			\n\
	~Meta ~Alt ~Ctrl<Key>osfDown:	LineDown()			\n

! These keysyms are apparently an R6ism.
!	~Meta ~Alt ~Ctrl<Key>KP_Up:	LineUp()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Down:	LineDown()			\n\


! We install these on every widget in the main tree (but not popups) that isn't
! a Text or TextField or List.These, basically, are motion commands that ought
! to apply to the HTML display area unless some text field or List has focus,
! in which case they ought to apply to the text in that text field instead.
! Doesn't all this crap just make you want to hurl?
*globalNonTextTranslations:		#override			\n\
	~Meta ~Alt ~Ctrl<Key>space:	xfeDoCommand(spacebar)		\n\
									  \
	~Meta ~Alt ~Ctrl<Key>Delete:	PageUp()			\n\
	~Meta ~Alt ~Ctrl<Key>BackSpace:	PageUp()			\n\
	~Meta ~Alt ~Ctrl<Key>Up:	LineUp()			\n\
	~Meta ~Alt ~Ctrl<Key>Down:	LineDown()			\n\
	~Meta ~Alt ~Ctrl<Key>Left:	ColumnLeft()			\n\
	~Meta ~Alt ~Ctrl<Key>Right:	ColumnRight()			\n\
									  \
	~Meta ~Alt ~Ctrl<Key>osfDelete:	PageUp()			\n\
	~Meta ~Alt ~Ctrl<Key>osfBackSpace:PageUp()			\n\
	 Meta  Ctrl<Key>g:		fishcam()			\n\
	  Alt  Ctrl<Key>g:		fishcam()			\n\
	 Meta  Ctrl<Key>t:		net_showstatus()		\n\
	  Alt  Ctrl<Key>t:		net_showstatus()		\n\
	~Meta ~Alt ~Ctrl<Key>osfUp:	LineUp()			\n\
	~Meta ~Alt ~Ctrl<Key>osfDown:	LineDown()			\n\
	~Meta ~Alt ~Ctrl<Key>osfLeft:	ColumnLeft()			\n\
	~Meta ~Alt ~Ctrl<Key>osfRight:	ColumnRight()			\n\
									  \
	~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()		\n\
	~Meta ~Alt ~Ctrl<Key>Next:		PageDown()		\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()		\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()		\n

! These keysyms are apparently an R6ism.
!	~Meta ~Alt ~Ctrl<Key>KP_Up:	LineUp()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Down:	LineDown()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Left:	ColumnLeft()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Right:	ColumnRight()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Prior:	PageUp()			\n\
!	~Meta ~Alt ~Ctrl<Key>KP_Next:	PageDown()			\n\

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor mouse translations
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*editorDrawingArea.translations: #replace \
	<Btn3Down>:  xfeDoCommand(showPopup)\n\
	Shift<Btn1Down>:  xfeDoCommand(select,extend)\n\
	<Btn1Down>:  xfeDoClick(single,{,select,grab,}, \
                            double,{,objectIs,text,  {,select,word,}, \
                                              image, {,dialog,image,}, \
                                              hrule, {,dialog,hrule,}, \
                                              target,{,dialog,target,}, \
                                              tag,   {,dialog,tag,},})\n\
	<Btn1Motion>:			xfeDoCommand(select,extend)\n\
	<Btn1Up>:				xfeDoCommand(select,end)		\n\
	<Btn2Down>:				xfeDoCommand(paste,selection)\n\
	<Btn2Motion>:			\n\
	<Btn2Up>:				\n\
	<Motion>:     editor-motion()\n

! Editor keyboard translations.
*editorTranslations:			#override			\n\
									\
	Meta ~Ctrl ~Shift<Key>o: xfeDoCommand(openPage)				\n\
	 Alt ~Ctrl ~Shift<Key>o: xfeDoCommand(openPage)				\n\
	Meta ~Ctrl  Shift<Key>o: xfeDoCommand(openPageChooseFile)	\n\
	 Alt ~Ctrl  Shift<Key>o: xfeDoCommand(openPageChooseFile)	\n\
	Meta ~Ctrl<Key>s:		xfeDoCommand(save)			\n\
	 Alt ~Ctrl<Key>s:		xfeDoCommand(save)			\n\
	Meta ~Ctrl<Key>r:		xfeDoCommand(reload)			\n\
	 Alt ~Ctrl<Key>r:		xfeDoCommand(reload)			\n\
	Meta ~Ctrl Shift<Key>r:	xfeDoCommand(reload,super)			\n\
	 Alt ~Ctrl Shift<Key>r:	xfeDoCommand(reload,super)			\n\
	Meta ~Ctrl<Key>P:		xfeDoCommand(print)				\n\
	 Alt ~Ctrl<Key>P:		xfeDoCommand(print)				\n\
									\
	~Meta ~Alt Ctrl<Key>h:		xfeDoCommand(deleteItem,previous)\n\
	 Meta ~Ctrl ~Shift <Key>Return:		xfeDoCommand(sendMessageNow)	\n\
	 Alt ~Ctrl ~Shift <Key>Return:		xfeDoCommand(sendMessageNow)	\n\
	 Meta ~Ctrl Shift <Key>Return:		xfeDoCommand(sendMessageLater)	\n\
	 Alt ~Ctrl Shift <Key>Return:		xfeDoCommand(sendMessageLater)	\n\
	Meta ~Ctrl<Key>k:		xfeDoCommand(spellCheck)		\n\
	 Alt ~Ctrl<Key>k:		xfeDoCommand(spellCheck)		\n\
	~Meta ~Alt ~Ctrl<Key>Up:	xfeDoCommand(moveCursor,up)		\n\
	~Meta ~Alt ~Ctrl<Key>Down:	xfeDoCommand(moveCursor,down)		\n\
	~Meta ~Alt ~Ctrl<Key>osfUp:	xfeDoCommand(moveCursor,up)		\n\
	~Meta ~Alt ~Ctrl<Key>osfDown:	xfeDoCommand(moveCursor,down)		\n\
	~Meta ~Alt ~Ctrl<Key>osfLeft:	xfeDoCommand(moveCursor,previous)	\n\
	~Meta ~Alt ~Ctrl<Key>osfRight:	xfeDoCommand(moveCursor,next)	\n\
	~Meta ~Alt Ctrl<Key>osfLeft:	xfeDoCommand(moveCursor,previousWord)	\n\
	~Meta ~Alt Ctrl<Key>osfRight:	xfeDoCommand(moveCursor,nextWord)	\n\
									\
	:~Meta ~Alt ~Ctrl<Key>Delete:	xfeDoCommand(deleteItem,next)\n\
	:~Meta ~Alt ~Ctrl<Key>BackSpace:	xfeDoCommand(deleteItem,previous)\n\
	:~Meta ~Alt ~Ctrl<Key>osfDelete:	xfeDoCommand(deleteItem,next)\n\
	:~Meta ~Alt ~Ctrl<Key>osfBackSpace:xfeDoCommand(deleteItem,previous)\n\
									\
    ~Meta ~Alt Ctrl <Key>Home: xfeDoCommand(moveCursor,beginningOfPage)\n\
    ~Meta ~Alt Ctrl <Key>End: xfeDoCommand(moveCursor,endOfPage)	\n\
	~Meta ~Alt Ctrl <Key>osfBeginLine: xfeDoCommand(moveCursor,beginningOfPage)\n\
	~Meta ~Alt Ctrl <Key>osfEndLine: xfeDoCommand(moveCursor,endOfPage)\n\
    ~Meta ~Alt ~Ctrl <Key>Home: xfeDoCommand(moveCursor,beginningOfLine)\n\
    ~Meta ~Alt ~Ctrl <Key>End: xfeDoCommand(moveCursor,endOfLine)	\n\
	~Meta ~Alt ~Ctrl <Key>osfBeginLine: xfeDoCommand(moveCursor,beginOfLine)\n\
	~Meta ~Alt ~Ctrl <Key>osfEndLine: xfeDoCommand(moveCursor,endOfLine)\n\
	~Meta ~Alt ~Ctrl Shift<Key>Return:	xfeDoCommand(insertLineBreak,normal)\n\
	~Meta ~Alt ~Ctrl<Key>Return:	xfeDoCommand(insertReturn)\n\
	~Meta ~Alt ~Ctrl Shift<Key>space: xfeDoCommand(insertNonBreakingSpace)\n\
	~Meta ~Alt ~Ctrl <Key>space:	xfeDoCommand(insertKey)		\n\
	~Meta Alt ~Ctrl <Key>-:   xfeDoCommand(outdent)		\n\
	~Meta Alt ~Ctrl <Key>=:	  xfeDoCommand(indent)		\n\
	Meta ~Alt ~Ctrl <Key>-:   xfeDoCommand(outdent)		\n\
	Meta ~Alt ~Ctrl <Key>=:	  xfeDoCommand(indent)		\n\
									\
	Ctrl ~Shift <Key>Tab:	xfeDoCommand(tab,insert)\n\
	~Ctrl ~Shift<Key>Tab:	xfeDoCommand(tab,forward)\n\
	~Ctrl Shift<Key>Tab:	xfeDoCommand(tab,backward)\n\
									\
	~Meta ~Alt Ctrl<Key>a:	xfeDoCommand(moveCursor,beginningOfLine)\n\
	~Meta ~Alt Ctrl<Key>e:	xfeDoCommand(moveCursor,endOfLine)\n\
	~Meta ~Alt Ctrl<Key>p:	xfeDoCommand(moveCursor,up)			\n\
	~Meta ~Alt Ctrl<Key>n:	xfeDoCommand(moveCursor,down)			\n\
	~Meta ~Alt Ctrl<Key>b:	xfeDoCommand(moveCursor,previous)		\n\
	~Meta ~Alt Ctrl<Key>f:	xfeDoCommand(moveCursor,next)		\n\
	~Meta ~Alt Ctrl<Key>d:	xfeDoCommand(deleteItem,next)	\n\
	~Meta ~Alt Ctrl<Key>k:	xfeDoCommand(deleteItem,endOfLine)\n\
	Meta ~Alt ~Ctrl<Key><:	xfeDoCommand(moveCursor,beginningOfPage)\n\
	Meta ~Alt ~Ctrl<Key>>:	xfeDoCommand(moveCursor,endOfPage)\n\
	~Meta Alt ~Ctrl<Key><:	xfeDoCommand(moveCursor,beginningOfPage)\n\
	~Meta Alt ~Ctrl<Key>>:	xfeDoCommand(moveCursor,endOfPage)\n\
									\
	Meta Shift ~Ctrl<Key>z:	xfeDoCommand(redo)		\n\
	 Alt Shift ~Ctrl<Key>z:	xfeDoCommand(redo)		\n\
	Meta ~Ctrl<Key>z:		xfeDoCommand(undo)		\n\
	 Alt ~Ctrl<Key>z:		xfeDoCommand(undo)		\n\
									\
	Meta ~Alt ~Ctrl<Key>b:	xfeDoCommand(toggleCharacterStyle,bold)\n\
	 ~Meta Alt ~Ctrl<Key>b:	xfeDoCommand(toggleCharacterStyle,bold)\n\
	Meta ~Alt ~Ctrl<Key>i:	xfeDoCommand(toggleCharacterStyle,italic)\n\
	 ~Meta Alt ~Ctrl<Key>i:	xfeDoCommand(toggleCharacterStyle,italic)\n\
	 Meta ~Alt ~Ctrl<Key>u:	xfeDoCommand(toggleCharacterStyle,underline)\n\
	 ~Meta Alt ~Ctrl<Key>u:	xfeDoCommand(toggleCharacterStyle,underline)\n\
	Meta ~Alt ~Ctrl<Key>t:	xfeDoCommand(toggleCharacterStyle,fixed)\n\
	 ~Meta Alt ~Ctrl<Key>t:	xfeDoCommand(toggleCharacterStyle,fixed)\n\
	Meta ~Alt ~Ctrl<Key>k:	xfeDoCommand(setCharacterStyle,none)\n\
	 ~Meta Alt ~Ctrl<Key>k:	xfeDoCommand(setCharacterStyle,none)\n\
									\
	~Meta ~Alt Ctrl<Key>l:	xfeDoCommand(refresh)			\n\
									\
	Meta ~Alt ~Ctrl ~Shift<Key>Up:		xfeDoCommand(setFontSize,increase)\n\
	Meta ~Alt ~Ctrl ~Shift<Key>osfUp:	xfeDoCommand(setFontSize,increase)\n\
	Meta ~Alt ~Ctrl ~Shift<Key>Down:	xfeDoCommand(setFontSize,decrease)\n\
	Meta ~Alt ~Ctrl ~Shift<Key>osfDown:	xfeDoCommand(setFontSize,decrease)\n\
									\
	~Meta ~Alt ~Ctrl<Key>SunCopy:   xfeDoCommand(copy)			\n\
	~Meta ~Alt ~Ctrl<Key>SunPaste:  xfeDoCommand(paste)			\n\
	~Meta ~Alt ~Ctrl<Key>SunCut:    xfeDoCommand(cut)			\n\
									\
	Meta ~Alt ~Ctrl ~Shift<Key>d:	xfeDoCommand(deleteItem)	\n\
	~Meta Alt ~Ctrl ~Shift<Key>d:	xfeDoCommand(deleteItem)	\n\
										\
	Meta ~Alt ~Ctrl ~Shift<Key>f:	xfeDoCommand(findInObject)		\n\
	Meta ~Alt ~Ctrl ~Shift<Key>g:	xfeDoCommand(findAgain)			\n\
	~Meta Alt ~Ctrl ~Shift<Key>f:	xfeDoCommand(findInObject)		\n\
	~Meta Alt ~Ctrl ~Shift<Key>g:	xfeDoCommand(findAgain)			\n\
									\
	Meta ~Ctrl<Key>A:		xfeDoCommand(selectAll)				\n\
	 Alt ~Ctrl<Key>A:		xfeDoCommand(selectAll)				\n\
	Meta ~Ctrl<Key>C:		xfeDoCommand(copy)					\n\
	 Alt ~Ctrl<Key>C:		xfeDoCommand(copy)					\n\
	Meta ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
	 Alt ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
	Meta ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	 Alt ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	Meta ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	 Alt ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	Meta ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
	 Alt ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
	Meta Shift<Key>Q:		xfeDoCommand(quoteOriginalText)		\n\
	 Alt Shift<Key>Q:		xfeDoCommand(quoteOriginalText)		\n\
	Meta ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
	 Alt ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
		Meta ~Ctrl<Key>R:		undefined-key()				\n\
		 Alt ~Ctrl<Key>R:		undefined-key()				\n\
	Meta ~Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	 Alt ~Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	Meta ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	 Alt ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	Meta ~Ctrl<Key>X:		xfeDoCommand(cut)					\n\
	 Alt ~Ctrl<Key>X:		xfeDoCommand(cut)					\n\
	Meta ~Ctrl<Key>Y:		xfeDoCommand(paste)					\n\
	 Alt ~Ctrl<Key>Y:		xfeDoCommand(paste)					\n\
											\
 Meta ~Ctrl ~Shift<Key>1:	xfeDoCommand(openOrBringUpBrowser)	\n\
  Alt ~Ctrl ~Shift<Key>1:	xfeDoCommand(openOrBringUpBrowser)	\n\
 Meta ~Ctrl  Shift<Key>1:	xfeDoCommand(openFolders)			\n\
  Alt ~Ctrl  Shift<Key>1:	xfeDoCommand(openFolders)			\n\
 Meta ~Ctrl ~Shift<Key>2:	xfeDoCommand(openInbox)				\n\
  Alt ~Ctrl ~Shift<Key>2:	xfeDoCommand(openInbox)				\n\
 Meta ~Ctrl  Shift<Key>2:	xfeDoCommand(openAddrBook)			\n\
  Alt ~Ctrl  Shift<Key>2:	xfeDoCommand(openAddrBook)			\n\
	Meta ~Ctrl<Key>3:		xfeDoCommand(openEditor)			\n\
	 Alt ~Ctrl<Key>3:		xfeDoCommand(openEditor)			\n\
	Meta ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	 Alt ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	Meta ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	 Alt ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	Meta ~Ctrl<Key>7:		xfeDoCommand(openRadio)				\n\
	 Alt ~Ctrl<Key>7:		xfeDoCommand(openRadio)				\n\
											\
	~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()					\n\
	~Meta ~Alt ~Ctrl<Key>Next:		PageDown()					\n\
	~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()				\n\
	~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()				\n\
											\
	~Meta ~Alt ~Ctrl ~Shift<Key>osfHelp:		xfeDoCommand(manual)	\n\
										\
	~Meta ~Alt ~Ctrl ~Shift<Key>F10:			\n\
	~Meta ~Alt ~Ctrl ~Shift<Key>osfMenuBar:			\n\
								\
	<KeyRelease>:							\n\
	<Key>:			xfeDoCommand(insertKey)			\n\
	<KeyPress>:		xfeDoCommand(insertKey)			\n\
	<KeyUp>:							\n\
	<KeyDown>:		xfeDoCommand(insertKey)			\n

!=============================================================================


! About Translations, Actions, and "-remote" commands:
!
! You can control a running Netscape process externally; you do this by
! issuing a command like "netscape -remote openURL(http://xxx)".
! When Netscape is invoked with the -remote argument, it does not open
! window, but instead connects to and controls an already-existing process.
! This is done using X properties, so the two Netscape processes need not
! be running on the same machine, and need not share a file system.
!
! All of Netscape's action names are the same as its resource names; so, for
! example, if you wanted to know the name of the action that corresponds to
! the "Add Bookmark" menu item, you could look in this file for "Add Bookmark"
! and see that the resource that is set to that string is "addBookmark" -
! that's the name of the Action as well.
!
! You can use Actions in Translation tables in the usual Xt-ish way, but you
! can also invoke them directly via "netscape -remote", like this:
!
!    netscape -remote 'addBookmark()'
!
! That will cause the existing Netscape process to add its current URL to
! the bookmarks, just as if you had selected that menu item.
!
! Please see the document http://home.netscape.com/newsref/std/x-remote.html
! for more information.
!</NIE PRZETWARZAJ>

!=============================================================================


! You can ask HTTP (Web) servers for documents in your preferred language
! by setting the Accept-Language header. It is a comma-separated list of
! languages or language/region pairs. For example, if you would prefer to
! see documents in French, or, failing that, in American English, you could
! use the following:
!
!   *httpAcceptLanguage: fr, en-US
!
! The following languages and regions are presented to the user:
!
*languageRegionList:				\n\
	Afrykanerski [af]			\n\
	Albañski [sq]				\n\
	Angielski [en]				\n\
	Angielski/Brytyjski [en-GB]		\n\
	Angielski/Amerykañski [en-US]		\n\
	Baskijski [eu]				\n\
	Bia³oruski [be]				\n\
	Bu³garski [bg]				\n\
	Chiñski [zh]				\n\
	Chiñski/Chiny [zh-CN]			\n\
	Chiñski/Taiwan [zh-TW]			\n\
	Chorwacki [hr]				\n\
	Czeski [cs]				\n\
	Duñski [da]				\n\
	Farerski [fo]				\n\
	Fiñski [fi]				\n\
	Francuski [fr]				\n\
	Francuski/Belgia [fr-BE]		\n\
	Francuski/Kanada [fr-CA]		\n\
	Francuski/Francja [fr-FR]		\n\
	Francuski/Szwajcaria [fr-CH]		\n\
	Galicyjski [gl]				\n\
	Grecki [el]				\n\
	Hiszpañski [es]				\n\
	Hiszpañski/Argentyna [es-AR]		\n\
	Hiszpañski/Kolumbia [es-CO]		\n\
	Hiszpañski/Meksyk [ex-MX]		\n\
	Hiszpañski/Hiszpania [es-ES]		\n\
	Holenderski [nl]			\n\
	Holenderski/Belgia [nl-BE]		\n\
	Indonezyjski [id]			\n\
	Islandzki [is]				\n\
	Irlandzki [ga]				\n\
	Japoñski [ja]				\n\
	Kataloñski [ca]				\n\
	Koreañski [ko]				\n\
	Macedoñski [mk]				\n\
	Niemiecki [de]				\n\
	Niemiecki/Austria [de-AT]		\n\
	Niemiecki/Niemcy [de-DE]		\n\
	Niemiecki/Szwajcaria [de-CH]		\n\
	Norweski [no]				\n\
	Polski [pl]				\n\
	Portugalski [pt]			\n\
	Portugalski/Brazylia [pt-BR]		\n\
	Rosyjski [ru]				\n\
	Rumuñski [ro]				\n\
	Serbski [sr]				\n\
	S³owacki [sk]				\n\
	S³oweñski [sl]				\n\
	Szkocki (Gaelic) [gd]			\n\
	Szwedzki [sv]				\n\
	Turecki [tr]				\n\
	Ukraiñski [uk]				\n\
	Wêgierski [hu]				\n\
	W³oski [it]				\n


!=============================================================================
!
!      There's really nothing after this point you should be messing with.
!
!=============================================================================


! Motif drag-and-drop is insanely buggy, and is causing crashes even in
! contexts where it has no business being involved at all.  Let's try
! disabling it globally and see if that helps.
!Netscape*dragInitiatorProtocolStyle:	XmDRAG_NONE
!Netscape*dragReceiverProtocolStyle:	XmDRAG_NONE

! Turn off traversal for sashes.
*XmSash.traversalOn:			False

!
! Label Land
!
*Help.sensitive:			False

! HTML forms "More..." button (options menus)
*drawingArea*moreButton.labelString:	Wiêcej...

! Bookmarks "More..." cascade button
*bookmarkMoreButton.labelString:	Wiêcej...

! Mail and news "More..." button
*mailNewsMoreButton.labelString:	Wiêcej...

!====================================================================
!  Menubar stuff
!====================================================================
!
! The file menus for all the components come first.
! Then the menus are listed on a per component basis.
!

*menuBar.fileMenu.labelString:		Plik
*menuBar.fileMenu.mnemonic:		i

*menuBar.editMenu.labelString:		Edycja
*menuBar.editMenu.mnemonic:		E

*menuBar.viewMenu.labelString:		Widok
!*menuBar.viewMenu.mnemonic:		W

*menuBar.goMenu.labelString:		Id¼
!*menuBar.goMenu.mnemonic:		I

*menuBar.messageMenu.labelString:	Wiadomo¶æ
!*menuBar.messageMenu.mnemonic:		d

*menuBar.bookmarkMenu.labelString:	Zak³adka
!*menuBar.bookmarkMenu.mnemonic:	Z

*menuBar.windowMenuLite.labelString:	Okno
!*menuBar.windowMenuLite.mnemonic:	O
*menuBar.windowMenu.labelString:	Komunikator
!*menuBar.windowMenu.mnemonic:		K
!*menuBar.windowMenu.fontList:		-*-helvetica-bold-o-*-*-*-120-*--*-*-iso8859-2

*menuBar.itemMenu.labelString:		Pozycja
!*menuBar.itemMenu.mnemonic:		y

*menuBar.helpMenu.labelString:		Pomoc
!*menuBar.helpMenu.mnemonic:		c

!=======================
!  File Menu - Navigator 
!=======================

*menuBar*newSubmenu.labelString:	Nowe
*menuBar*newSubmenu.mnemonic:		N

! File/New Submenu
*menuBar*openBrowser.labelString:	Okno Nawigatora
*menuBar*openBrowser.mnemonic:		N
*menuBar*openBrowser.acceleratorText:	Alt+N
*openBrowser.documentationString:	\
Utwórz nowe okienko przegladarki do ogl±dania stron WWW.

*composeMessage.mnemonic:		M
*composeMessage.acceleratorText:	Alt+M
*composeMessage.labelString:		Wiadomo¶æ

! In the three pane view, under the "Message" menu, it should read
! "New Message" and not "Message"
*menuBar*composeMessage.labelString:	Nowa wiadomo¶æ

*composeMessage.documentationString:	\
Utwórz now± wiadomo¶æ pocztow± lub na grupie dyskusyjnej.
*composeArticle.documentationString:	\
Utwórz now± wiadomo¶æ na grupie dyskusyjnej.

*menuBar*newBlank.labelString:		Pusta strona
*menuBar*newBlank.mnemonic:		P
*menuBar*newBlank.acceleratorText:	Alt+Shift+N
*newBlank.documentationString:		Utwórz now± stronê WWW.

*menuBar*newTemplate.labelString:	Strona wg wzoru...
*menuBar*newTemplate.mnemonic:		T
*newTemplate.documentationString:	\
U¿yj wzorca do utworzenia nowej strony WWW.

*menuBar*newWizard.labelString:		Strona z kreatora...
*menuBar*newWizard.mnemonic:		W
*newWizard.documentationString:		U¿yj kreatora do utworzenia nowej strony WWW.
! end File/New Submenu

*menuBar*openPage.labelString:		Otwórz stronê...
*menuBar*openPage.mnemonic:		O
*menuBar*openPage.acceleratorText:	Alt+O
*openPage.documentationString:		\
Otwórz w bie¿±cym okienku plik lokalny lub stronê WWW.

*menuBar*recentSubmenu.labelString:	Wczytaj ostatni±...

*menuBar*saveMsg.labelString:		Zachowaj
*menuBar*saveMsg.mnemonic:		S
*menuBar*saveMsg.acceleratorText:	Alt+S
*menuBar*saveAs.labelString:		Zachowaj jako...
*menuBar*saveMsgAs.labelString:		Zachowaj jako
*menuBar*saveMsgAs.mnemonic:		S

*saveAsCmdString:			Zachowaj jako...
*saveFramesetAsCmdString:		Zachowaj zestaw ramek jako...
*menuBar*saveAs.mnemonic:       	a
*menuBar*saveAs.acceleratorText:	Alt+S
*saveAs.documentationString:		Zachowaj kopiê bie¿±cej strony.

*menuBar*saveFrameAs.labelString:	Zachowaj ramkê jako...
*menuBar*saveFrameAs.mnemonic:		r
*saveFrameAs.documentationString:	Zachowaj kopiê zaznaczonej ramki.

*sendPage.labelString:			Wy¶lij stronê
*sendPage.mnemonic:			s
*sendPage.documentationString:		Wy¶lij bie¿±c± stronê do odbiorcy.

*sendLink.labelString:			Wy¶lij po³±czenie
*sendLink.mnemonic:			p
*sendLink.documentationString:		\
Wy¶lij bie¿±cy adres strony do odbiorcy.

*editPageCmdString:			Edytuj stronê
*editFrameCmdString:			Edytuj ramkê
*editPage.labelString:			Edytuj stronê
*editFrameSet.labelString:		Edytuj zestaw ramek
*menuBar*editPage.mnemonic:		E
*editPage.documentationString:		Edytuj bie¿±c± stronê.
*menuBar*editFrame.labelString:		Edytuj ramkê
*menuBar*editFrame.mnemonic:		m
*editFrame.documentationString		Edytuj bie¿±c± ramkê.

*menuBar*uploadFile.labelString:	Umie¶æ plik...
*menuBar*uploadFile.mnemonic:		U
*uploadFile.documentationString:	Umie¶æ (wy¶lij) plik do tego katalogu FTP.

*menuBar*printSetup.labelString:	Uk³ad strony...
*menuBar*printSetup.mnemonic:		g
*printSetup.documentationString:	Zmieñ opcje wydruku.

*menuBar*printPreview.labelString:	Podgl±d strony
*menuBar*printPreview.mnemonic:		v
*printPreview.documentationString:	Podgl±d ca³ej strony.

*menuBar*print.labelString:		Drukuj...
*printCmdString:			Drukuj...
*printFrameCmdString:			Drukuj ramkê...
*menuBar*print.mnemonic:		D
*menuBar*print.acceleratorText:		Alt+P
*print.documentationString:		Drukuj tê stronê.

*menuBar*close.labelString:		Zamknij
*menuBar*close.mnemonic:		Z
*menuBar*close.acceleratorText:		Alt+W
*close.documentationString:		Zamknij bie¿±ce okno.

*menuBar*exit.labelString:		Koniec
*menuBar*exit.mnemonic:			K
*menuBar*exit.acceleratorText:		Alt+Q
*exit.documentationString:		Zamknij wszystkie okna i zakoñcz program.

!===========================
!  File Menu - Page Composer
!===========================

*menuBar*save.labelString:		Zachowaj
*menuBar*save.mnemonic:			S
*menuBar*save.acceleratorText:		Alt+S
*save.documentationString:		Zachowaj bie¿±c± stronê.

*Editor*menuBar*saveAs.acceleratorText:

*menuBar*publish.labelString:		Publikuj...
*menuBar*publish.mnemonic:		u
*publish.documentationString:		\
Umie¶æ bie¿±cy plik lub katalog na serwerze.

*menuBar*browsePage.labelString:	Przegl±daj stronê
*menuBar*browsePage.mnemonic:		B
*browsePage.documentationString:	\
Otwórz bie¿±cy plik w nowym okienku przegl±darki.

!=============================
! File Menu - Compose Message
!=============================

*Composition*save.documentationString:		Zachowaj bie¿±c± wiadomo¶æ.

*Composition*toolBar*save*saveAs.labelString:	Jako plik...
*Composition*toolBar*save*saveAs.mnemonic:	F
*Composition*saveAs.documentationString:	Zachowaj kopiê bie¿±cej wiadomo¶ci.

*Composition*menuBar*saveAs.labelString:	Plik...
*Composition*menuBar*saveAs.mnemonic:		F
*Composition*menuBar*saveAs.acceleratorText:
*Composition*saveAs.documentationString:	Zachowaj kopiê bie¿±cej wiadomo¶ci.

*Composition*toolBar*save*saveDraft.labelString:		Jako szkic 
*Composition*toolBar*save*saveDraft.mnemonic:			D
*Composition*toolBar*save*saveDraft.documentationString:	Zachowaj wiadomo¶æ w folderze Szkice by j± wys³aæ pó¼niej.

*menuBar*saveDraft.labelString:       				Szkic
*menuBar*saveDraft.mnemonic:					D
*saveDraft.documentationString:					Zachowaj wiadomo¶æ w folderze Szkice by wys³aæ pó¼niej.

*Composition*toolBar*save*saveTemplate.labelString:		Jako wzór
*Composition*toolBar*save*saveTemplate.mnemonic:		T
*Composition*toolBar*save*saveTemplate.documentationString:	Zachowaj tê wiadomo¶æ w folderze Wzorce do po¼niejszego wykorzystania.

*menuBar*saveTemplate.labelString:			Wzór
*menuBar*saveTemplate.mnemonic:				T
*saveTemplate.labelString:				Wzór
*saveTemplate.mnemonic:					T
*saveTemplate.documentationString:			Zachowaj tê wiadomo¶æ w folderze Wzorce do po¼niejszego wykorzystania.

*menuBar*saveAsMenu.labelString:			Zachowaj jako
*menuBar*saveAsMenu.mnemonic:				A
*menuBar*saveAsMenu.saveMessagesAs.documentationString:	Zachowaj jako...

*menuBar*saveMessage.labelString:		Zachowaj
*menuBar*saveMessage.acceleratorText:		Alt+S
*menuBar*saveMessage.documenationString:	Zachowaj tê wiadomo¶æ

*menuBar*sendMessageNow.labelString:		Wy¶lij teraz
*menuBar*sendMessageNow.mnemonic:		d
*sendMessageNow.documentationString:		Wy¶lij tê wiadomo¶æ teraz.
*menuBar*sendMessageNow.acceleratorText:	Alt+Enter

*menuBar*sendMessageLater.labelString:		Wy¶lij po¼niej
*menuBar*sendMessageLater.mnemonic:		L
*sendMessageLater.documentationString:		Umie¶æ tê wiadomo¶æ w kolejce, aby ja wys³aæ po¼niej.
*menuBar*sendMessageLater.acceleratorText:	Alt+Shift+Enter

*menuBar*quoteOriginalText.labelString:		Cytuj oryginalny tekst
*menuBar*quoteOriginalText.mnemonic:		Q
*menuBar*quoteOriginalText.acceleratorText:	Alt+Shift+Q
*quoteOriginalText.documentationString:		\
Wklej tekst z pierwotnej strony w postaci cytatu.

*menuBar*addresseePicker.labelString:		Wybierz adresy...
*menuBar*addresseePicker.mnemonic:		t
*addresseePicker.documentationString:		Wybierz adresy odbiorców.
*addresseePicker.tipString:			Wybierz adresy

*autoComplOnCmdString:				Nie dope³niaj adresu
*autoComplOffCmdString:				Dope³nij adres

*menuBar*showComplPicker.labelString:		Poka¿ znalezione adresy
*menuBar*showComplPicker.mnemonic:		S
*menuBar*showComplPicker.acceleratorText:	Alt+J
*menuBar*autoComplOnOff.acceleratorText:	Alt+D
!*showComplPicker.documentationString:		Show Matching Addresses...
!*showComplPicker.tipString:			Show Matching Addresses...

*menuBar*attach.labelString:			Do³±cz
*menuBar*attach.mnemonic:			A
*attach.documentationString: 			Do³±cz stronê lub kartê ksi±¿ki adresowej do bie¿±cej wiadomo¶ci.

*menuBar*showChrome.labelString:		Poka¿
*menuBar*showChrome.mnemonic:			S

*menuBar*floatingTaskBarClose.labelString:	P³ywaj±cy pasek komponentów

!============================
!  File Menu - Message Center
!============================

*folderPrivileges.labelString:			Przywileje
*newFolder.labelString:				Nowy folder...
*newFolderCmdString:				Nowy folder...
*newSubFolderCmdString:				Nowy podfolder...
! sspitzer:  is category used anymore?  what is it?
*newCategoryCmdString:				Nowa kategoria...
*newNewsgroupCmdString:				Nowa grupa dyskusyjna...
*newFolder.mnemonic:				w
*newFolder.documentationString:			\
Utwórz nowy folder poczty lub grupê dyskusyjn±.

*MailFolder*menuBar*openSelected.labelString:		Otwórz
*MailFolder*menuBar*openSelected.mnemonic:		O
*MailFolder*menuBar*openSelected.acceleratorText:	Alt+O
*MailFolder*menuBar*openSelected.documentationString:	\
Otwórz wybrany folder poczty lub grupê dyskusyjn±.
*openFolder.labelString:			Otwórz
*openFolder.acceleratorText:			Alt+O
*openFolder.mnemonic:				O
*openFolder.documentationString:		\
Otwórz wybrany folder poczty lub grupê dyskusyjn±.

*renameFolder.labelString:			Zmieñ nazwê folderu...
*renameFolder.mnemonic:				R
*renameFolder.documentationString		Zmieñ nazwê zaznaczonego folderu.

*menuBar*newMsgSubmenu.labelString:		Pobierz wiadomo¶ci
*menuBar*newMsgSubmenu.mnemonic:		G
*newMessage.documentationString:		Pobierz nowe wiadomo¶ci poczty i news'ów.

! File/Get Messages Submenu
*menuBar*getNewMessages.labelString:		Pobierz nowe wiadomo¶ci
*menuBar*getNewMessages.mnemonic: 		M
		
! This label is generated dynamically from the preferences
!*menuBar*getNextNNewMsgs.labelString:		Nastêpne 500
*menuBar*getNextNNewMsgs.mnemonic: 		e

*menuBar*synchWithServer.labelString:		Synchronizuj z serwerem
*menuBar*synchWithServer.mnemonic: 		S

*menuBar*sendMessagesInOutbox.labelString:	Wy¶lij niewys³ane jeszcze wiadomo¶ci
*menuBar*sendMessagesInOutbox.mnemonic:		d
*sendMessagesInOutbox.documentationString:	\
Wy¶lij teraz wiadomo¶ci znajdujace siê w folderze Outbox.

*menuBar*updateMessageCount.labelString:	Aktualizuj ilo¶æ wiadomo¶ci
*menuBar*updateMessageCount.mnemonic:		U
*updateMessageCount.documentationString:	\
Aktualizuj ilo¶æ nieczytanych wiadomo¶ci.

*addNewsgroup.labelString:			Prenumeruj...
*addNewsgroup.mnemonic:				b
*addNewsgroup.documentationString:		Prenumeruj...
 
!=============================
!  File Menu - Message Threads
!=============================

*menuBar*openAttachmentsSubmenu.labelString:	Otwórz za³±cznik
*menuBar*openAttachmentsSubmenu.mnemonic:	O
*openAttachments.documentationString:		\
Otwórz wybrany za³±cznik.

! File/Open Attachments Submenu is dynamically generated

*editMessage.labelString:			Edytuj wiadomo¶æ jako now±
*editMessage.mnemonic:				E
*editMessage.documentationString:		Edytuj zaznaczon± wiadomo¶æ.

*menuBar*saveTemplate.labelString:		Wzór
*menuBar*saveTemplate.mnemonic:			T
*menuBar*saveAsTemplate.labelString:		Wzór
*menuBar*saveAsTemplate.mnemonic:		T

*menuBar*saveMessagesAs.labelString:		Plik
*menuBar*saveMessagesAs.mnemonic:		F
*menuBar*saveMessagesAs.acceleratorText:	Alt+S

*MailThread*menuBar*saveMessageAs.labelString:		Plik
*MailThread*menuBar*saveMessageAs.mnemonic:		F
*MailThread*menuBar*saveMessageAs.acceleratorText:	Alt+S

*menuBar*emptyTrash.mnemonic:			y

! labelString is generated dynamically
*menuBar*compressFolders.mnemonic:		t

!==========================
!  File Menu - Address Book
!==========================

*addToAddressBook.labelString:		Nowa karta...
*addToAddressBook.mnemonic:		r
!*addToAddressBook.acceleratorText:	Alt+N
*addToAddressBook.documentationString:	\
Utwórz now± kartê w ksi±¿ce adresowej.

*abNewList.labelString:			Nowa lista...
*abNewList.mnemonic:			s
*abNewList.documentationString:		\
Utwórz now± listê adresów w ksi±¿ce adresowej.

*abNewPAB.labelString:			Nowa ksi±¿ka adresowa...
*abNewPAB.mnemonic:			A
*abNewPAB.documentationString:		\
Utwórz now± ksi±¿kê adresow±.

*abNewLDAPDirectory.labelString:		Nowy katalog...
*abNewLDAPDirectory.mnemonic:			D
*abNewLDAPDirectory.documentationString:	\
Utwórz nowy serwer us³ug katalogowych.

*menuBar*import.labelString:			Importuj...
*menuBar*import.mnemonic:			I
*AddressBook*import.documentationString:	\
Importuj plik do ksi±¿ki adresowej.
!
! customized for PAB
!
*AddressBook*menuBar*saveAs.labelString:		Eksportuj...
*AddressBook*menuBar*saveAs.mnemonic:			E
*AddressBook*menuBar*toggleNavigationToolbar.labelString:Pasek ksi±¿ki adresowej
*AddressBook*menuBar*toggleNavigationToolbar.mnemonic:	A
*AddressBook*menuBar*abToggleABPane.labelString:	Ksi±¿ka adresowa
*AddressBook*menuBar*abToggleABPane.mnemonic:		B

*menuBar*abCall.labelString:		Wywo³aj
*menuBar*abCall.mnemonic:		l
*abCall.documentationString:		\
Po³±cz siê korzystaj±c Konferencji Netscape.


!
! i18n labels: used in AB search dialog, Message filter dialog, 
! and Search Message dialog
!
!*I18nColon.labelString: will be something like   :
!*I18nFirst.labelString: will be something like   the
!*I18nRest.labelString: will be something like  or/and
!
!*I18nColon.labelString: 
!*I18nFirst.labelString: 
!*I18nRest.labelString: 

!=======================
!  File Menu - Bookmarks
!=======================

!*newBookmark.labelString:							Nowa zak³adka...
*bookmarks*menuBar*newBookmark.mnemonic:	w
*newBookmark.documentationString:		\
Utwórz now± pozycjê w zak³adkach.

!*newFolder.labelString:								Nowy folder...
*bookmarks*menuBar*newFolder.mnemonic:		F
*bookmarks*newFolder.documentationString:	\
Utwórz nowy folder zak³adek.

!*newSeparator.labelString:							Nowy separator
*bookmarks*menuBar*newSeparator.mnemonic:	S
*bookmarks*newSeparator.documentationString:	\
Utwórz nowy separator.

*bookmarks*menuBar*openBookmarkFile.labelString:	Otwórz plik zak³adek...
*bookmarks*menuBar*openBookmarkFile.mnemonic:		F
*bookmarks*openBookmarkFile.documentationString:	\
Otwórz w tym okienku plik zak³adek.

*bookmarks*menuBar*openSelected.labelString:	Id¼ do zak³adki
*bookmarks*menuBar*openSelected.mnemonic:	k
*bookmarks*openSelected.documentationString:	\
Otwórz w okienku przegl±darki wybran± zak³adkê.

*bookmarks*menuBar*import.labelString:		Importuj...
*bookmarks*menuBar*import.mnemonic:		I
*bookmarks*import.documentationString:		\
Importuj do bie¿±cej listy inn± listê zak³adek.

*bookmarks*menuBar*addToToolbar.labelString:	Dodaj zaznaczenie do paska narzêdzi
*bookmarks*menuBar*addToToolbar.mnemonic:	A
*bookmarks*addToToolbar.documentationString:	\
Dodaj zak³adkê do paska prywatnego.

*bookmarks*menuBar*createShortcut.labelString:	Utwórz skrót
*bookmarks*menuBar*createShortcut.mnemonic:	t
*bookmarks*createShortcut.documentationString:	\
Utwórz skrót internetowy do wybraej zak³adki.

*makeAlias.labelString:				Utwórz alias
*makeAlias.mnemonic:				M
*makeAlias.documentationString:			\
Utwórz skrót do wybranej zak³adki.

!=====================
!  File Menu - History
!=====================

*history*menuBar*openSelected.labelString:	Id¼ do strony
*history*menuBar*openSelected.mnemonic:		e
*history*openSelected.documentationString:	\
Otwórz wybran± stronê w okienku przegladarki.

*history*menuBar*addToToolbar.labelString:	Dodaj stronê do paska narzêdzi
*history*menuBar*addToToolbar.mnemonic:		A
*history*addToToolbar.documentationString:	\
Dodaj wybran± stronê do paska osobistego.

*history*menuBar*print.labelString:		Drukuj historiê...

!=======================
!  Edit Menu - Navigator
!=======================

*undo.labelString:		Cofnij
*undo.mnemonic:			U
*undo.acceleratorText:		Alt+Z
*undo.documentationString:	Cofnij ostatni± zmianê.

*redo.labelString:		Odtwórz
*redo.mnemonic:			R
*redo.acceleratorText:		Alt+Y
*redo.documentationString:	Odtwtórz ostatni± cofniêt± zmianê.

*cut.labelString:		Wytnij
*cut.mnemonic:			t
*cut.acceleratorText:		Alt+X
*cut.documentationString:	Wytnij zaznaczony tekst i umie¶æ go w schowku.

*copy.labelString:		Kopiuj
*copy.mnemonic:			C
*copy.acceleratorText:		Alt+C
*copy.documentationString:	\
Kopiuj zaznaczony tekst i umie¶æ go w schowku.

*paste.labelString:		Wstaw
*paste.mnemonic:		P
*paste.acceleratorText:		Alt+V
*paste.documentationString:	Wstaw zawarto¶æ schowka.

*delete.labelString:			Kasuj
*delete.mnemonic:			D
*delete.acceleratorText:		Alt+D
*delete.documentationString:		Kasuj zaznaczony tekst.
! EditorFrame uses this one
*deleteItem.labelString:		Kasuj
*deleteItem.mnemonic:			D
*deleteItem.acceleratorText:		Alt+D
*deleteItem.documentationString:	Kasuj zaznaczony tekst.

*selectAll.labelString:			Wszystkie
*selectAllCmdString:			Wszystkie
*selectAllInFrameCmdString:		Zaznacz wszystko w ramce
*selectAll.mnemonic:			A
*selectAll.acceleratorText:		Alt+A
*selectAll.documentationString:		Zaznacz ca³y dokument.
! Thread Window Edit/Select pullaside menu
*MailThread*selectAll.labelString:      Wszystko
*MailThread*selectAllCmdString:         Wszystko
*MailThread*selectAllInFrameCmdString:  Wszystko w ramce

*menuBar*findInObject.labelString:		Szukaj na stronie...
*Composition*menuBar*findInObject.labelString:	Szukaj...
*MailMsg*menuBar*findInObject.labelString:	Szukaj...
*MailThread*menuBar*findInObject.labelString:	Szukaj...
*findInObjectCmdString:				Szukaj na stronie...
*findInFrameCmdString:				Znajd¼ w ramce...

*menuBar*findInObject.mnemonic:		F
*menuBar*findInObject.acceleratorText:	Alt+F
*findInObject.documentationString:	\
Szukaj tekstu na bie¿±cej stronie.

*menuBar*findAgain.labelString:		Przeszukaj ponownie
*menuBar*findAgain.mnemonic:		g
*menuBar*findAgain.acceleratorText:	Alt+G
*findAgain.documentationString:		Powtórz ostatnie Szukaj.

*Navigator*menuBar*search.labelString:	Przeszukaj Internet
*Navigator*menuBar*search.mnemonic:	I
*Navigator*search.documentationString:	Szukaj w Internecie informacji.

*menuBar*searchAddress.labelString:	Przeszukaj katalog
*menuBar*searchAddress.mnemonic:	y
*searchAddress.documentationString:	\
Przeszukaj katalog by znale¼æ osobê.

*menuBar*editPreferences.labelString:	Ustawienia...
*menuBar*editPreferences.mnemonic:	U
*editPreferences.documentationString:	\
Zmieñ ustawienia aplikacji dla u¿ytkownika.

!===========================
!  Edit Menu - Page Composer
!===========================
 
*deleteTableMenu.labelString:		Kasuj tabelê
!*deleteTableMenu.mnemonic:		b
*deleteTableMenu.mnemonic:		l

! Edit/Delete Table Submenu

*deleteTable.labelString:		Tabela
*deleteTable.mnemonic:			T
*deleteTable.documentationString:	\
Kasuj ca³± tabelê w miejscu, gdzie znajduje siê kursor.

! new
*deleteTableRow.labelString:		Wiersz
*deleteTableRow.mnemonic:		R
*deleteTableRow.documentationString:	\
Kasuj wiersz w miejscu, gdzie znajduje siê kursor.

*deleteTableColumn.labelString:		Kolumna
*deleteTableColumn.mnemonic:		o
*deleteTableColumn.documentationString:	\
Kasuj kolumnê w miejscu, gdzie znajduje siê kursor.

*deleteTableCell.labelString:		Komórka
*deleteTableCell.mnemonic:		C
*deleteTableCell.documentationString:	\
Kasuj komórkê w miejscu, gdzie znajduje siê kursor.

! end Edit/Delete Table Submenu

*removeLink.labelString:		Usuñ po³±czenie
*removeLink.mnemonic:			k
*removeLinks.labelString:		Usuñ po³±czenia
*menuBar*removeLinks.mnemonic:		R
*removeLinks.documentationString:	\
Usuñ po³±czenie z wybranego tekstu.

*selectTable.labelString:		Zaznacz tabelê
*selectTable.mnemonic:			b
*selectTable.documentationString:	\
Zaznacz tabelê w miejscu, gdzie znajduje siê kursor.

*menuBar*editPageSource.labelString:	¬ród³o HTML
*editPageSource.documentationString:	\
Edytuj ¼ród³o HTML bie¿±cej strony.

!=============================
!  Edit Menu - Compose Message
!=============================

*menuBar*pasteAsQuoted.labelString:	Wstaw jako cytat
*menuBar*pasteAsQuoted.mnemonic:	Q
*pasteAsQuoted.documentationString:	\
Wstaw zawarto¶æ schowka jako cytat.

!============================
!  Edit Menu - Message Center
!============================

*menuBar*search.labelString:			Przeszukaj wiadomo¶ci...
*menuBar*search.mnemonic:			S
*menuBar*search.acceleratorText:		Alt+Shift+F
*search.documentationString:			Przeszukaj wiadomo¶ci poczty i grup dyskusyjnych.

*menuBar*editConfiguration.labelString:		Konto pocztowe
*menuBar*editConfiguration.mnemonic:		M

*menuBar*moderateDiscussion.labelString:	Administruj grupami dyskusyjnymi
*menuBar*moderateDiscussion.mnemonic:		N

*menuBar*editMailFilterRules.labelString:	Filtry wiadomo¶ci...
*menuBar*editMailFilterRules.mnemonic:		i
*editMailFilterRules.documentationString:	\
Ustaw zasady filtrowania poczty dla folderów.

*popup*deleteNewsgroup.labelString:		Usuñ serwer grup dyskusyjnych
*popup*addNewsgroup.labelString:		Zaprenumeruj grupê dyskusyjn±...
*newsServerPropsCmdString:			Ustawienia serwera grup dyskusyjnych
*newsgroupPropsCmdString:			Ustawienia grupy dyskusyjnej
*folderPropsCmdString:				Ustawienia
*mailServerPropsCmdString:			Ustawienia serwera poczty
*menuBar*viewProperties.labelString:		Ustawienia
*menuBar*viewProperties.mnemonic:		s
*viewProperties.documentationString:		\
Poka¿ ustawienia folderu poczty lub grupy dyskusyjnej.

! text generated dynamically
*menuBar*deleteFolder.mnemonic:		D
*menuBar*deleteFolder.acceleratorText:	Alt+D


!=============================
!  Edit Menu - Message Threads
!=============================

*deleteAny.labelString:			Kasuj wiadomo¶æ
*deleteAny.mnemonic:			D
*deleteAny.acceleratorText:		Alt+D

*selectSubmenu.labelString:		Wybierz
*selectSubmenu.mnemonic:                l


! Edit/Select Submenu

*selectThread.labelString:			W±tek
*selectThread.mnemonic:				T
*selectThread.acceleratorText:			Alt+Shift+A

*selectCategory.labelString:			Kategoria
*selectCategory.mnemonic:			C

*selectFlaggedMessages.labelString:		Oflagowane wiadomo¶ci
*selectFlaggedMessages.mnemonic:		F

*selectAllMessages.labelString:			Wszystkie wiadomo¶ci
*selectAllMessages.mnemonic:			M

! end Edit/Select Submenu

!==========================
!  Edit Menu - Address Book
!==========================

*menuBar*abDelete.labelString:			Kasuj
*menuBar*abDelete.mnemonic:			D
*menuBar*abDelete.acceleratorText:		Del
*abDelete.documentationString:			\
Kasuj wybran± pozycjê z ksi±¿ki adresowej.

*menuBar*abDeleteAllEntries.labelString:	Kasuj wszystkie zdarzenia
*menuBar*abDeleteAllEntries.mnemonic:		O

*menuBar*abSearchFor.labelString:		Szukaj...
*menuBar*abSearchFor.mnemonic:			f

*menuBar*displayHTMLDomainsDialog.labelString:	Domeny HTML...
*menuBar*displayHTMLDomainsDialog.mnemonic:	H
*displayHTMLDomainsDialog.documentationString:	\
Edytuj listê domen, które mog± otrzymywaæ wiadomo¶ci w formacie HTML

*AddressBook*menuBar*viewProperties.labelString:W³asno¶ci
*AddressBook*menuBar*viewProperties.mnemonic:	s

*viewProperties.documentationString:		\
Po³±cz siê korzystaj±c Konferencji Netscape.

*AddressBook**menuBar*selectAll.acceleratorText:

!=======================
!  Edit Menu - Bookmarks
!=======================

*bookmarks*menuBar*findInObject.labelString:	Szukaj w zak³adkach...
*bookmarks*findInObject.documentationString:	\
Szukaj zak³adki na li¶cie.

*bookmarkProperties.labelString:		W³asno¶ci zak³adki
*menuBar*bookmarkProperties.mnemonic:		P
*bookmarkProperties.documentationString:	\
Podgl±d w³asno¶ci wybranej zak³adki.

!=======================
!  Edit Menu - History
!=======================

*history*menuBar*search.labelString:            Przeszukaj listê historii
*history*menuBar*search.mnemonic:               H
*history*search.documentationString:		\
Szukaj jednej lub kilku pozycji na li¶cie historii.

!=======================
!  View Menu - Navigator
!=======================

*menuBar*toggleNavigationToolbar.labelString:	Pasek nawigacji
*menuBar*toggleNavigationToolbar.mnemonic:	N
*menuBar*toggleNavigationToolbar.documentationString: Poka¿ lub ukryj pasek nawigacji.

*menuBar*toggleLocationToolbar.labelString:	Pasek adresu
*menuBar*toggleLocationToolbar.mnemonic:	L
*toggleLocationToolbar.documentationString:	Poka¿ lub ukryj pasek adresu.

*menuBar*togglePersonalToolbar.labelString:	Pasek prywatny
*menuBar*togglePersonalToolbar.mnemonic:	P
*togglePersonalToolbar.documentationString:	Poka¿ lub ukryj pasek prywatny.

*menuBar*increaseFont.labelString:	Zwiêksz czcionkê
*menuBar*increaseFont.mnemonic:		F
*menuBar*increaseFont.acceleratorText:	Alt+]
*increaseFont.documentationString:	\
Zwiêksz rozmiar czcionki dla podgl±du tej strony.

*menuBar*decreaseFont.labelString:	Zmniejsz czcionkê
*menuBar*decreaseFont.mnemonic:		n
*menuBar*decreaseFont.acceleratorText:	Alt+[
*decreaseFont.documentationString:	\
Zmniejsz rozmiar czcionki dla podgl±du tej strony.

*reload.labelString:			Prze³aduj
*reload.mnemonic:			R
*reload.acceleratorText:		Alt+R
! In mail and news reply to sender uses this accelerator
!*MailThread*menuBar*reload.acceleratorText:	
!*MailMsg*menuBar*reload.acceleratorText:	
!*News*menuBar*reload.acceleratorText:	
*reload.documentationString:		Prze³aduj bie¿±cy dokument.

*showImages.labelString:		Poka¿ obrazki
*showImages.mnemonic:			g
*showImages.documentationString:	Poka¿ obrazki na bie¿±cej stronie.

*refresh.labelString:			Od¶wie¿
*refresh.mnemonic:			h
*refresh.documentationString:		Od¶wie¿ ekran.

*stopAnimationsCmdString:		Zatrzymaj animacje
*stopLoadingCmdString:			Przerwij ³adowanie
*stopLoading.labelString:		Przerwij ³adowanie
*stopLoading.mnemonic:			S
*stopLoading.acceleratorText:		ESC
*stopLoading.documentationString:	Przerwij bie¿±cy transfer.
!xxx need separate doc string for stop animations

*viewPageSource.labelString:		¬ród³o strony
*viewPageSource.acceleratorText:	Alt+U
*viewPageSource.documentationString:	Podgl±d ¼ród³a HTML bie¿±cej strony.

*viewPageInfo.labelString:		Informacja o stronie
*viewPageInfo.mnemonic:			I
*viewPageInfo.documentationString:	Wy¶wietl informacjê o bie¿±cej stronie.

*pageServices.labelString:		Us³ugi stronicowe
*pageServices.mnemonic:			P
!*pageServices.documentationString:

*menuBar*encodingSubmenu.labelString:	Strona kodowa
*menuBar*encodingSubmenu.mnemonic:	C
*encodingSubmenu.documentationString:	\
Zmieñ stronê kodow± bie¿±cej strony.

! View/Encoding Submenu

*latin1EncCmdString:		Zachodnia (ISO-8859-1)
*885915EncCmdString:		Zachodnia (ISO-8859-15)
*latin2EncCmdString:		Europy ¦rodkowej (ISO 8859-2) 
*Win1250EncCmdString:		Europy ¦rodkowej (Windows-1250) 
*jaAutoEncCmdString:		Japoñska (autodetekcja)
*jaSJISEncCmdString:		Japoñska (Shift-JIS)
*jaEUCEncCmdString:		Japoñska (EUC-JP)
*twBig5EncCmdString:		Chiñska tradycyjna (Big5)
*twEUCEncCmdString:		Chiñska tradycyjna (EUC-TW)
*gbEUCEncCmdString:		Chiñska uproszczona (GB2312)
*krEUCEncCmdString:		Koreañska (autodetekcja)
*2022krEncCmdString:		Koreañska (ISO-2022-KR)
*koi8rEncCmdString:		Cyrylica (KOI8-R)
*88595EncCmdString:		Cyrylica (ISO 8859-5)
*Win1251EncCmdString:		Cyrylica (Windows-1251)
*cp866EncCmdString:		Cyrillic (CP-866)
*greekEncCmdString:		Grecka (ISO 8859-7)
*Win1253EncCmdString:		Grecka (Windows-1253)
*88599EncCmdString:		Turecka (ISO 8859-9)
*unicode_utf8EncCmdString:	Unikod (UTF-8)
*unicode_utf7EncCmdString:	Unikod (UTF-7)
*otherEncCmdString:		Zdefiniowana przez u¿ytkownika
*setDefaultDocCSID:		Ustaw domy¶ln± stronê kodow±
*setDefaultDocumentEncoding.documentationString:	\
Ustaw globalnie domy¶ln± stronê kodow± dokumentacji.

! end View/Encoding Submenu

!==============================
!  View Menu - Page Composer
!==============================

*toggleMenubar.labelString:				Pasek menu
*toggleMenubar.documentationString:			\
Poka¿ lub ukryj pasek menu.

*Editor*toggleNavigationToolbar.labelString:		Pasek kompozycji
*Editor*toggleNavigationToolbar.documentationString:	\
Poka¿ lub ukryj pasek kompozycji.

*toggleFormatToolbar.labelString:			Pasek formatowania
*toggleFormatToolbar.documentationString:		\
Poka¿ lub ukryj pasek formatowania.

*menuBar*toggleParagraphMarks.labelString:		Znaki akapitu
*menuBar*toggleParagraphMarks.mnemonic:			a
*toggleParagraphMarks.documentationString:		\
Poka¿ lub ukryj znaki koñca akapitu.

!=============================
! View Menu - Compose Message
!=============================

*Composition*menuBar*toggleNavigationToolbar.labelString: Pasek wiadomo¶ci
*Composition*toggleAddressArea.documentationString:	\
Poka¿ lub ukryj przestrzeñ adresow±.
*Composition*toggleAddressArea.tipString:		Przestrzeñ adresowa
*Composition*toggleAddressArea.mnemonic:		a
*Composition*toggleAddressArea.labelString:		Przestrzeñ adresowa

*Composition*toggleNavigationToolbar.labelString:	Pasek wiadomo¶ci
*Composition*toggleNavigationToolbar.documentationString: Poka¿ lub ukryj pasek wiadomo¶ci.
*Composition*toggleNavigationToolbar.mnemonic:		w

!xxx add Show/Hide Addressing Area

*Composition*menuBar*viewAddresses.labelString:		Panel adresu
*Composition*menuBar*viewAddresses.mnemonic:		A
*Composition*viewAddresses.documentationString:		\
Podgl±d adresów odbiorców.

*Composition*menuBar*viewAttachments.labelString:	Panel za³±cznika
*Composition*menuBar*viewAttachments.mnemonic:		t
*viewAttachments.documentationString:			\
Podgl±d za³±czników wiadomo¶ci.

*Composition*menuBar*viewOptions.labelString:		Panel opcji
*Composition*menuBar*viewOptions.mnemonic:		O
*Composition*viewOptions.documentationString:		Podgl±d opcji wiadomo¶ci.

!xxx no longer in spec (viewMessageBodyOnly)
*Composition*menuBar*viewMessageBodyOnly.labelString:	Tylko tre¶æ wiadomo¶ci 
*Composition*menuBar*viewMessageBodyOnly.mnemonic:	B
*Composition*viewMessageBodyOnly.documentationString:	\
Podejrzyj tre¶æ wiadomo¶ci i ukryj adresy.

*Composition*menuBar*wrapLongLines.labelString:		Zawijaj d³ugie linie
*Composition*menuBar*wrapLongLines.mnemonic:		W
*Composition*wrapLongLines.documentationString:		\
Zawijaj zbyt d³ugie linie gdy wiadomo¶æ jest wys³ana.

!============================
!  View Menu - Message Center
!============================

*MailFolder*menuBar*toggleNavigationToolbar.labelString: Pasek wiadomo¶ci ???
*MailFolder*menuBar*toggleNavigationToolbar.mnemonic:	M
*MailFolder*menuBar*toggleNavigationToolbar.documentationString: Poka¿ lub ukryj pasek folderu.

*menuBar*showSubmenu.labelString:		Poka¿
*menuBar*showSubmenu.mnemonic:			w

*MailFolder*toggleNavigationToolbar.documentationString: \
Poka¿ lub ukryj pasek Centrum wiadomo¶ci.
*MailFolder*toggleNavigationToolbar.mnemonic:	M

*menuBar*moveSubmenu.labelString:		Przenie¶ folder

!=============================
!  View Menu - Message Threads
!=============================

*MailThread*menuBar*toggleNavigationToolbar.labelString:	Pasek wiadomo¶ci
*MailThread*menuBar*toggleNavigationToolbar.documentationString:Poka¿ lub ukryj pasek wiadomo¶ci.
*MailThread*toggleNavigationToolbar.mnemonic:	M

*menuBar*toggleMessageExpansion.labelString:	Wiadomo¶æ
*menuBar*toggleMessageExpansion.mnemonic:	g
*menuBar*toggleMessageExpansion.documentationString:Poka¿ lub ukryj wiadomo¶æ.

*menuBar*toggleFolderExpansion.labelString:	Foldery
*menuBar*toggleFolderExpansion.mnemonic:	F
*menuBar*toggleFolderExpansion.documentationString:Poka¿ lub ukryj listê folderów.

*menuBar*sortSubmenu.labelString:		U³ó¿
*menuBar*sortSubmenu.mnemonic:			o

! View/Sort Submenu
*menuBar*sortBySubject.labelString:		wg tematu
*menuBar*sortBySubject.mnemonic:		S
*menuBar*sortBySender.labelString:		wg nadawcy
*menuBar*sortBySender.mnemonic:			r
*menuBar*sortByDate.labelString:		wg daty
*menuBar*sortByDate.mnemonic:			e
*menuBar*sortByFlag.labelString:		wg flagi
*menuBar*sortByFlag.mnemonic:			F
*menuBar*sortByPriority.labelString:		wg priorytetu
*menuBar*sortByPriority.mnemonic:		P
*menuBar*sortByThread.labelString:		wg w±tku
*menuBar*sortByThread.mnemonic:			T
*menuBar*sortBySize.labelString:		wg rozmiaru
*menuBar*sortBySize.mnemonic:			z
*menuBar*sortByStatus.labelString:		wg statusu
*menuBar*sortByStatus.mnemonic:			u
*menuBar*sortByUnread.labelString:		wg nieczytanych
*menuBar*sortByUnread.mnemonic:			n
*menuBar*sortByMessageNumber.labelString:	wg kolejno¶ci otrzymania
*menuBar*sortByMessageNumber.mnemonic:		O
*menuBar*sortForward.labelString:		Rosn±co
*menuBar*sortForward.mnemonic:			A
*menuBar*sortBackward.labelString:		Malej±co
*menuBar*sortBackward.mnemonic:			D
! end View/Sort Submenu

*menuBar*expandCollapseSubmenu.labelString:	Rozwiñ/zwiñ
*menuBar*expandCollapseSubmenu.mnemonic:	x

! View/Expand/Collapse Submenu
*menuBar*expand.labelString:		Rozwiñ
*menuBar*expand.mnemonic:		x
*menuBar*expand.acceleratorText:	+
*menuBar*expandAll.labelString:		Rozwiñ wszystko
*menuBar*expandAll.mnemonic:		A
*menuBar*expandAll.acceleratorText:	*
*menuBar*collapse.labelString:		Zwiñ
*menuBar*collapse.mnemonic:		C
*menuBar*collapse.acceleratorText:	-
*menuBar*collapseAll.labelString:	Zwiñ wszystko
*menuBar*collapseAll.mnemonic:		l
*menuBar*collapseAll.acceleratorText:	/
! end View/Expand/Collapse Submenu

*menuBar*threadSubmenu.labelString:		Wiadomo¶ci
*menuBar*threadSubmenu.mnemonic:		M

! View/Messages Submenu
*menuBar*viewNew.labelString:			Nieczytane
*menuBar*viewNew.mnemonic:			U
*viewNew.documentationString:			Poka¿ tylko nieczytane wiadomo¶ci.

*menuBar*viewThreadsWithNew.labelString:	W±tki z nieczytanymi
*menuBar*viewThreadsWithNew.mnemonic:		T
*viewThreadsWithNew.documentationString:	\
Poka¿ w±tki które zawieraj± nowe wiadomo¶ci.

*menuBar*viewWatchedThreadsWithNew.labelString:	Obserwowany w±tek z nieczytanymi
*menuBar*viewWatchedThreadsWithNew.mnemonic:	W
*viewWatchedThreadsWithNew.documentationString:	\
Poka¿ ¶ledzone w±tki które zawieraj± nowe wiadomo¶ci.

*menuBar*viewAllThreads.labelString:		Wszystko
*menuBar*viewAllThreads.mnemonic:		A
*viewAllThreads.documentationString:		Poka¿ wszystkie wiadomo¶ci.
! end View/Messages Submenu

*menuBar*headersSubmenu.labelString:		Nag³ówki
*menuBar*headersSubmenu.mnemonic:		d

! View/Headers Submenu
*menuBar*showAllHeaders.labelString:		Wszystko
*menuBar*showAllHeaders.mnemonic:		A
*showAllHeaders.documentationString:		Poka¿ wszystkie nag³ówki.

*menuBar*showNormalHeaders.labelString:		Normalnie
*menuBar*showNormalHeaders.mnemonic:		N
*showNormalHeaders.documentationString:		Poka¿ zwyczajne nag³ówki.
*showBriefHeaders.labelString:			W skrócie
*menuBar*showBriefHeaders.mnemonic:		B
*menuBar*showBriefHeaders.documentationString:	Poka¿ nag³ówki w skrócie.
! end View/Headers Submenu

!xxx nolonger an attachments submenu
*menuBar*attachmentsSubmenu.labelString:	Za³±czniki
*menuBar*attachmentsSubmenu.mnemonic:		n

*menuBar*viewAttachmentsInline.labelString:	Podgl±d za³±czników w tek¶cie
*menuBar*viewAttachmentsInline.mnemonic:	A
*viewAttachmentsInline.documentationString:	\
Poka¿ za³±czniki do wiadomo¶ci jako w³±czone obiekty lub po³±czenia.

*rot13Message.labelString:			Rozkoduj (ROT13)
*rot13Message.mnemonic:				U
*rot13Message.documentationString:		\
Rozkoduj brzydkie kawa³y.

*wrapLongLines.labelString:			Zawijaj d³ugie linie
*wrapLongLines.mnemonic:			p
*wrapLongLines.documentationString:		\
Zawijaj d³ugie linie podczas wy¶wietlania wiadomo¶ci.

!============================
!  View Menu - Message Window
!============================


!==========================
!  View Menu - Address Book
!==========================

*AddressBook*toggleNavigationToolbar.documentationString:\
Poka¿ lub ukryj pasek ksi±¿ki adresowej.
*AddressBook*toggleNavigationToolbar.mnemonic:	B

*menuBar*abByType.labelString:			wg typu
*menuBar*abByType.mnemonic:			T
*abByType.documentationString:			\
U³ó¿ pozycje ksi±¿ki adresowej wg typu.

*menuBar*abByName.labelString:		      	wg nazwy
*menuBar*abByName.mnemonic:			N
*abByName.documentationString:			\
U³ó¿ pozycje ksi±¿ki adresowej wg nazwy.

*menuBar*abByEmailAddress.labelString:  	wg adresu e-mail
*menuBar*abByEmailAddress.mnemonic:		E
*abByEmailAddress.documentationString:		\
U³ó¿ pozycje ksi±¿ki adresowej wg adresu e-mail.

*menuBar*abByNickName.labelString:    		wg pseudonimu
*menuBar*abByNickName.mnemonic:			k
*abByNickName.documentationString:		\
U³ó¿ pozycje ksi±¿ki adresowej wg pseudonimu.

*menuBar*abByCompany.labelString:    		wg organizacji
!*menuBar*abByCompany.mnemonic:			O
*abByCompany.documentationString:		\
U³ó¿ pozycje ksi±¿ki adresowej wg organizacji.

*menuBar*abByLocality.labelString:    		wg miasta
*menuBar*abByLocality.mnemonic:			i
*abByLocality.documentationString:		\
U³ó¿ pozycje ksi±¿ki adresowej wg miasta.

! shared with other windows
*menuBar*sortAscending.labelString:		Rosn±co
*menuBar*sortAscending.mnemonic:		A
*AddressBook*menuBar*sortAscending.documentationString:	\
U³ó¿ pozycje ksi±¿ki adresowej rosn±co.

*menuBar*sortDescending.labelString:		Malej±co
*menuBar*sortDescending.mnemonic:		D
*AddressBook*sortDescending.documentationString:\
U³ó¿ pozycje ksi±¿ki adresowej malej±co.

*menuBar*abVCard.labelString:    		Karta z mojej ksi±¿ki adresowej...
*menuBar*abVCard.mnemonic:    			o
*abVCard.documentationString:			Utwórz lub edytuj kartê mojej ksi±¿ki adresowej.

*menuBar*abStopSearch.labelString:		Przerwij przeszukiwanie
*menuBar*abStopSearch.mnemonic:			S
*menuBar*abStopSearch.acceleratorText:		Esc


!=======================
!  View Menu - Bookmarks 
!=======================

bookmarks*menuBar*sortByTitle.labelString:	wg nazwy
bookmarks*menuBar*sortByTitle.mnemonic:		T
bookmarks*sortByTitle.documentationString:	\
U³ó¿ zak³adki wg nazwy.

*menuBar*sortByLocation.labelString:		wg adresu
*menuBar*sortByLocation.mnemonic:		L
*sortByLocation.documentationString:		\
U³ó¿ zak³adki wg adresu URL.

*sortByDateLastVisited.labelString:		wg daty ostatnich odwiedzin
*sortByDateLastVisited.mnemonic:		V
*sortByDateLastVisited.documentationString:	\
U³ó¿ zak³adki wg daty ostatnich odwiedzin.

*menuBar*sortByDateCreated.labelString:		wg daty utworzenia
*menuBar*sortByDateCreated.mnemonic:		C
*sortByDateCreated.documentationString:		\
U³ó¿ zak³adki wg daty utworzenia.

*menuBar*moveBookmarkUp.labelString:		Przesuñ do góry
*menuBar*moveBookmarkUp.mnemonic:		U
*menuBar*moveBookmarkUp.acceleratorText:	Shift+Up
*moveBookmarkUp.documentationString:		\
Przesuñ zak³adkê na wcze¶niejsz± pozycjê na li¶cie.

*menuBar*moveBookmarkDown.labelString:		Przesuñ w dó³
*menuBar*moveBookmarkDown.mnemonic:		w
*menuBar*moveBookmarkDown.acceleratorText:	Shift+Down
*moveBookmarkDown.documentationString:		\
Przesuñ zak³adkê na dalsz± pozycjê na li¶cie.

*menuBar*bookmarksWhatsNew.labelString:		Aktualizuj zak³adki
*menuBar*bookmarksWhatsNew.mnemonic:		B
*bookmarksWhatsNew.documentationString:		\
Sprawd¼ zak³adki czy nie zawieraj± uaktualnieñ.

*setToolbarFolder.labelString:			Ustaw jako folder paska
*setToolbarFolder.mnemonic:			F
*setToolbarFolder.documentationString:		\
Ustaw wybrany folder jako folder dla paska osobistego.

*setNewBookmarkFolder.labelString:		Ustaw jako folder dla nowych zak³adek
*setNewBookmarkFolder.mnemonic:			N
*setNewBookmarkFolder.documentationString:	\
Ustaw wybrany folder jako folder do dodawania nowych zak³adek.

*setBookmarkMenuFolder.labelString:		Ustaw jako menu zak³adek
*setBookmarkMenuFolder.mnemonic:		M
*setBookmarkMenuFolder.documentationString:	\
Ustaw wybrany folder jako folder dla menu Zak³adki.

!=====================
!  View Menu - History
!=====================

*menuBar*sortByTitle.labelString:		wg tytu³u
*menuBar*sortByTitle.mnemonic:			T
*sortByTitle.documentationString:		\
U³ó¿ zak³adki wg tytu³u.

*menuBar*sortByDateFirstVisited.labelString:	wg daty pierwszych odwiedzin
*menuBar*sortByDateFirstVisited.mnemonic:	F
*sortByDateFirstVisited.documentationString:	\
U³ó¿ listê historii wg daty pierwszych odwiedzin.

*menuBar*sortByExpirationDate.labelString:	wg daty wa¿no¶ci
*menuBar*sortByExpirationDate.mnemonic:		E
*sortByExpirationDate.documentationString:	\
U³ó¿ listê historii wg daty wa¿no¶ci.

*menuBar*sortByVisitCount.labelString:		wg liczby odwiedzin
*menuBar*sortByVisitCount.mnemonic:		C
*sortByVisitCount.documentationString:		\
U³ó¿ listê historii wg ilo¶ci odwiedzin.

!=====================
!  Go Menu - Navigator
!=====================

*back.labelString:			Wstecz
*back.mnemonic:				B
*back.acceleratorText:			Alt+Left
*back.documentationString:		Powrót do poprzedniego dokumentu z listy historii.

*forward.labelString:			Dalej
*forward.mnemonic:			F
*forward.acceleratorText:		Alt+Right
*forward.documentationString:		Przejd¼ do nastêpnego dokumentu z listy historii.

*menuBar*home.labelString:		Start
*menuBar*home.mnemonic:			H
!xxx dynamic *home.documentationString:

!===========================
!  Go Menu - Message Threads
!===========================

*menuBar*nextSubmenu.labelString:		Nastêpny
*menuBar*nextSubmenu.mnemonic:			N
*menuBar*prevSubmenu.labelString:		Poprzedni
*menuBar*prevSubmenu.mnemonic:			P

*menuBar*nextMessage.labelString:		Wiadomo¶æ
*menuBar*nextMessage.mnemonic:			M
*menuBar*nextMessage.acceleratorText:		Alt+Down
*nextMessage.documentationString:		\
Przejd¼ do nastêpnej wiadomo¶ci.

*menuBar*nextUnreadMessage.labelString:		Nieczytana wiadomo¶æ
*menuBar*nextUnreadMessage.mnemonic:		U
*menuBar*nextUnreadMessage.acceleratorText:	Alt+Shift+Down
*nextUnreadMessage.documentationString:		\
Przejd¼ do nastêpnej nieczytanej wiadomo¶ci.

*menuBar*nextFlaggedMessage.labelString:	Oflagowana wiadomo¶æ
*menuBar*nextFlaggedMessage.mnemonic:		F
*nextFlaggedMessage.documentationString:	\
Przejd¼ do nastêpnej oflagowanej wiadomo¶ci.

*menuBar*nextUnreadThread.labelString:		Nieczytany w±tek
*menuBar*nextUnreadThread.mnemonic:		T
*menuBar*nextUnreadThread.acceleratorText:	T
*nextUnreadThread.documentationString:		\
Przejd¼ do nastêpnego nieczytanego w±tku.

*menuBar*nextCategory.labelString:		Nastêpna kategoria
*menuBar*nextCategory.mnemonic:			C
*nextCategory.documentationString:		\
Przejd¼ do nastêpnej kategorii.

*menuBar*nextUnreadCategory.labelString:	Nastêpna nieczytana kategoria
*menuBar*nextUnreadCategory.mnemonic:		y
*nextUnreadCategory.documentationString:	\
Przejd¼ do nastêpnej nieczytanej kategorii.

*menuBar*nextCollection.mnemonic:		o
*nextCollection.documentationString:		\
Przejd¼ do nastêpnego folderu lub grupy.

*menuBar*nextUnreadCollection.mnemonic:		d
*menuBar*nextUnreadCollection.acceleratorText:	G
*nextUnreadCollection.documentationString:	\
Przejd¼ do nastêpnego nieczytanego folderu lub grupy.

*menuBar*previousMessage.labelString:		Wiadomo¶æ
*menuBar*previousMessage.mnemonic:		M
*menuBar*previousMessage.acceleratorText:	Alt+Up
*previousMessage.documentationString:		\
Przejd¼ do poprzedniej wiadomo¶ci.

*menuBar*previousUnreadMessage.labelString:	Nieczytana wiadomo¶æ
*menuBar*previousUnreadMessage.mnemonic:	U
*menuBar*previousUnreadMessage.acceleratorText:	Alt+Shift+Up
*previousUnreadMessage.documentationString:	\
Przejd¼ do poprzedniej nieczytanej wiadomo¶ci.

*menuBar*previousFlaggedMessage.labelString:	Oflagowana wiadomo¶æ
*menuBar*previousFlaggedMessage.mnemonic:	F
*previousFlaggedMessage.documentationString:	\
Przejd¼ do poprzedniej oflagowanej wiadomo¶ci.

*menuBar*firstUnreadMessage.labelString:	Pierwsza nieczytana wiadomo¶æ
*menuBar*firstUnreadMessage.mnemonic:		U

*menuBar*firstFlaggedMessage.labelString:	Pierwsza oflagowana wiadomo¶æ
*menuBar*firstFlaggedMessage.mnemonic:		F
*firstFlaggedMessage.documentationString:	\
Przejd¼ do pierwszej oflagowanej wiadomo¶ci.

*MailThread*back.acceleratorText:		Alt+Left
*MailMsg*back.acceleratorText:			Alt+Left
*MailThread*back.documentationString:		Wróæ do ostatniej wiadomo¶ci.
*MailMsg*back.documentationString:		Wróæ do ostatniej wiadomo¶ci.

*MailThread*forward.mnemonic:			w
*MailMsg*forward.mnemonic:			w
*MailThread*forward.acceleratorText:		Alt+Right
*MailMsg*forward.acceleratorText:		Alt+Right
*MailThread*forward.documentationString:	Przejd¼ do nastêpnej wiadomo¶ci.
*MailMsg*forward.documentationString:		Przejd¼ do nastêpnej wiadomo¶ci.

!================================
!  Message Menu - Message Threads
!================================

*menuBar*replySubmenu.labelString:		Odpowiedz
*menuBar*replySubmenu.mnemonic:			R
*replySubmenu.documentationString:		\
Odpowiedz nadawcy lub nadawcom.

*menuBar*replyAllSubmenu.labelString:		Odpowiedz wszystkim
*menuBar*replyAllSubmenu.mnemonic:		p
*replySubmenu.documentationString:		\
Odpowiedz nadawcy lub nadawcom.

! Message/Reply Submenu
*replyToSender.labelString:			tylko nadawcy
*replyToSender.mnemonic:			S
*replyToSender.acceleratorText:			Alt+R
*replyToSender.documentationString:		\
Prze¶lij odpowied¼ do nadawcy wybranej wiadomo¶ci.

*replyToAll.labelString:			nadawcy i wszystkim zainteresowanym
*replyToAll.mnemonic:				S
*replyToAll.acceleratorText:			Alt+Shift+R
*replyToAll.documentationString:		\
Odpowiedz nadawcy i wszystkim innym odbiorcom wybranej wiadomo¶ci.

*replyToNewsgroup.labelString:			na grupie dyskusyjnej
*replyToNewsgroup.mnemonic:			N
!*replyToNewsgroup.acceleratorText:		Alt+D
*replyToNewsgroup.documentationString:		\
Prze¶lij odpowied¼ na grupê dyskusyjn±.

*replyToSenderAndNewsgroup.labelString:		nadawcy i na grupie
*replyToSenderAndNewsgroup.mnemonic:		N
!*replyToSenderAndNewsgroup.acceleratorText:	Alt+Shift+D
*replyToSenderAndNewsgroup.documentationString:	\
Prze¶lij odpowied¼ do nadawcy i na grupê dyskusyjn±.
! end Message/Reply Submenu

!
*cleanUpDisk.labelString:			Wyczy¶æ dysk
*cleanUpDisk.mnemonic:				a
*cleanUpDisk.documentationString:		Usuñ stare wiadomo¶ci.
*cleanUpDisk.tipString:				Usuñ stare wiadomo¶ci
*menuBar*forwardSubmenu.labelString:		Prze¶lij dalej jako
*menuBar*forwardSubmenu.mnemonic:		o

*menuBar*forwardMessage.labelString:			Dalej
*menuBar*forwardMessage.mnemonic:			F
*menuBar*forwardMessage.acceleratorText:		Alt+L
*forwardMessage.documentationString:			\
Prze¶lij komu¶ wybran± wiadomo¶æ.

*menuBar*forwardMessageAttachment.labelString:		Za³±cznik
*menuBar*forwardMessageAttachment.mnemonic:		A
*menuBar*forwardMessageAttachment.documentationString:	\
Prze¶lij komu¶ wybran± wiadomo¶æ jako za³±cznik.

*menuBar*forwardMessageQuoted.labelString:	Cytuj±c
*menuBar*forwardMessageQuoted.mnemonic:		Q
*menuBar*forwardMessageQuoted.acceleratorText:	Alt+Shift+L
*forwardMessageQuoted.documentationString:	\
Prze¶lij komu¶ wybran± wiadomo¶æ jako cytowany tekst.

*menuBar*forwardMessageInLine.labelString:	W tek¶cie
*menuBar*forwardMessageInLine.mnemonic:		I
*forwardMessageInLine.documentationString:	\
Prze¶lij komu¶ wybran± wiadomo¶æ w tre¶ci listu.

*menuBar*fileSubmenu.labelString:		Przenie¶ wiadomo¶æ
*menuBar*fileSubmenu.mnemonic:			M
*fileSubmenu.documentationString:		Zapisz do folderu wybran± wiadomo¶æ.

*menuBar*copySubmenu.labelString:		Kopiuj wiadomo¶æ
*menuBar*copySubmenu.mnemonic:			C

*copySubmenu.documentationString:		Kopiuj do folderu wybran± wiadomo¶æ.

*menuBar*addToABSubmenu.labelString:		Dodaj do ksi±¿ki adresowej
*menuBar*addToABSubmenu.mnemonic:		A

! Message/Add to Address Book Submenu
*addSenderToAddressBook.labelString:		Dodaj nadawcê do ksi±¿ki adresowej.
*addSenderToAddressBook.mnemonic:		S
*addSenderToAddressBook.documentationString:	\
Dodaj nadawcê do ksi±¿ki adresowej.
*addAllToAddressBook.labelString:		Dodaj wszystko do ksi±¿ki adresowej
*addAllToAddressBook.mnemonic:			A
*addAllToAddressBook.documentationString:	\
Dodaj wszystkich odbiorców do ksi±¿ki adresowej.
! end Message/Add to Address Book Submenu

*menuBar*markSubmenu.labelString:		Oznacz
*menuBar*markSubmenu.mnemonic:			k

! Message/Mark Submenu

*markMessages.labelString:			Oflaguj
*markMessages.mnemonic:				F
*markMessages.documentationString:		Oflaguj wybran± wiadomo¶æ.

*markMessageRead.labelString:			jako czytan±
*markMessageRead.mnemonic:			R
*markMessageRead.acceleratorText:		M
*markMessageRead.documentationString:		Zaznacz wybrane wiadomo¶ci jako przeczytane.
*markMessageRead.tipString:			Zaznacz wiadomo¶ci

*markThreadRead.labelString:			W±tek jako czytany
*markThreadRead.mnemonic:			T
*markThreadRead.documentationString:		\
Zaznacz wiadomo¶ci z tym samym tytu³em jako przeczytane.

*markAllMessagesRead.labelString:		Wszystkie czytane
*markAllMessagesRead.mnemonic:			A
*markAllMessagesRead.acceleratorText:		Alt+Shift+C
*markAllMessagesRead.documentationString:	\
Zaznacz wszystkie wiadomo¶ci jako przeczytane.

*markMessageByDate.labelString:			wg daty
*markMessageByDate.mnemonic:			D
*markMessageByDate.acceleratorText:		C
*markMessageByDate.documentationString:		\
Dogoñ dyskusjê i zaznacz wybrane wiadomo¶ci wg daty.

*markMessageForLater.labelString:		na pó¼niej
*markMessageForLater.mnemonic:			L
*markMessageForLater.acceleratorText:		L
*markMessageForLater.documentationString:	\
Zaznacz wiadomo¶æ do pó¼niejszego przeczytania.
! end Message/Mark Submenu

*menuBar*flagMessage.labelString:	Oflaguj
*menuBar*flagMessage.mnemonic:		F
*flagMessage.documentationString:	Oflaguj zaznaczone wiadomo¶ci.

*menuBar*ignoreThread.labelString:	Pomiñ w±tek
*menuBar*ignoreThread.mnemonic:		I
*menuBar*ignoreThread.acceleratorText:	K
*ignoreThread.documentationString:	Pomiñ wybrany w±tek.

*menuBar*ignoreCategory.labelString:	Pomiñ kategoriê
*ignoreCategory.documentationString:	Pomiñ wybran± kategoriê.

*menuBar*watchThread.labelString:	Obserwuj w±tek
*menuBar*watchThread.mnemonic:		W
*menuBar*watchThread.acceleratorText:	W
*watchThread.documentationString:	\
Poka¿ kiedy w tym w±tku pojawi± sie nowe wiadomo¶ci.

! override shared resources
*MailThread*mommy.tipString:		Centrum wiadomo¶ci
*MailMsg*mommy.tipString:		Otwórz folder

*MailThread*menuBar*composeMessage.labelString:		Nowa wiadomo¶æ
*MailThread*menuBar*composeMessage.mnemonic:		N
*MailThread*menuBar*composeMessage.acceleratorText:	Alt+M

!=============================
!  Insert Menu - Page Composer
!=============================

*menuBar*insert.labelString:			Wstaw
*menuBar*insertLink.labelString:		Po³±czenie...
*menuBar*insertLink.mnemonic:			P
*insertLink.documentationString:		Wstaw po³±czenie.

*menuBar*insertTarget.labelString:		Odno¶nik...
*menuBar*insertTarget.mnemonic:			O
*insertTarget.documentationString:		Wstaw odno¶nik.

*menuBar*insertImage.labelString:		Obrazek...
*menuBar*insertImage.mnemonic:			b
*insertImage.documentationString:		Wstaw obrazek.

*insertTableMenu.labelString:			Tabelê
*insertTableMenu.mnemonic:			T
*insertTableMenu.documentationString:		\
Wstaw tabelê w miejscu, gdzie znajduje siê kursor.

*menuBar*insertHorizontalLine.labelString:	Liniê poziom±...
*menuBar*insertHorizontalLine.mnemonic:		L
*insertHorizontalLine.documentationString:	\
Wstaw liniê poziom±.

*menuBar*insertHtmlTag.labelString:		Znacznik HTML...
*menuBar*insertHtmlTag.mnemonic:		H
*insertHtmlTag.documentationString:		\
Wstaw znacznik HTML.

*menuBar*insertNewLineBreak.labelString:	Przej¶cie do nowej linii (Nastêpn± liniê bez akapitu)
*menuBar*insertNewLineBreak.mnemonic:		N
*menuBar*insertNewLineBreak.acceleratorText:	Shift+Return
*insertNewLineBreak.documentationString:	\
Wstaw now± liniê w miejscu, gdzie znajduje siê kursor.

*menuBar*insertBreakBelow.labelString:		Przej¶cie do nowej linii pod obrazkiem(ami) (Nastêpn± liniê pod obrazkiem bez akapitu)
*menuBar*insertBreakBelow.mnemonic:		B
*insertBreakBelow.documentationString:		\
Wstaw prze³amanie by kontynuowaæ tekst do lewej i prawej.

*menuBar*insertNonBreaking.labelString:		Odstêp
*menuBar*insertNonBreaking.mnemonic:		S
*menuBar*insertNonBreaking.acceleratorText:	Shift+Space
*insertNonBreaking.documentationString:		\
Wstaw twardy odstêp w miejscu, gdzie znajduje siê kursor.

!=============================
!  Format Menu - Page Composer
!=============================

*menuBar*formatMenu.labelString:		Format
*menuBar*formatMenu.mnemonic:			t
*menuBar*fontStyleMenu.labelString:		Czcionka
*menuBar*fontStyleMenu.mnemonic:		C
*fontStyleMenu.documentationString:		Zmieñ czcionkê.

*menuBar*characterSizeMenu.labelString:		Rozmiar
*menuBar*characterSizeMenu.mnemonic:		R

! Format/Size Submenu
*setFontSizeMinusTwo.labelString:		-2
*setFontSizeMinusTwo.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na -2.
*setFontSizeMinusOne.labelString:		-1
*setFontSizeMinusOne.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na -1.
*setFontSizeZero.labelString:			+0
*setFontSizeZero.documentationString:		\
Ustaw rozmiar pokrerwnej czcionki na +0.
*setFontSizePlusOne.labelString:		+1
*setFontSizePlusOne.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na +1.
*setFontSizePlusTwo.labelString:		+2
*setFontSizePlusTwo.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na +2.
*setFontSizePlusThree.labelString:		+3
*setFontSizePlusThree.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na +3.
*setFontSizePlusFour.labelString:		+4
*setFontSizePlusFour.documentationString:	\
Ustaw rozmiar pokrerwnej czcionki na +4.
*setFontSize.labelString:				Domy¶lny
*setFontSize.documentationString:			\
Ustaw rozmiar pokrewnej czcionki na warto¶æ domy¶ln±.
! end Format/Size Submenu

*menuBar*characterStyleMenu.labelString:		Styl
*menuBar*characterStyleMenu.mnemonic:			S

! Format/Style Submenu
*toggleCharacterStyleBold.labelString:			Pogrubiony
*toggleCharacterStyleBold.documentationString:		\
Ustaw styl tekstu na pogrubiony <Alt+B>.
*toggleCharacterStyleItalic.labelString:		Pochy³y
*toggleCharacterStyleItalic.documentationString:	\
Ustaw styl tekstu na pochy³y <Alt+I>.
*toggleCharacterStyleUnderline.labelString:		Podkre¶lony
*toggleCharacterStyleUnderline.documentationString:	\
Ustaw styl tekstu na podkre¶lony <Alt+U>.
*toggleCharacterStyleFixed.labelString:			Sta³ej szeroko¶ci
*toggleCharacterStyleFixed.documentationString:		\
Ustaw styl tekstu na sta³ej szeroko¶ci.
*toggleCharacterStyleSuperscript.labelString:		Indeks górny
*toggleCharacterStyleSuperscript.documentationString:	\
Ustaw styl tekstu na indeks górny.
*toggleCharacterStyleSubscript.labelString:		Indeks dolny
*toggleCharacterStyleSubscript.documentationString:	\
Ustaw styl tekstu na indeks dolny.
*toggleCharacterStyleStrikethrough.labelString:		Przekre¶lony
*toggleCharacterStyleStrikethrough.documentationString:	\
Ustaw styl tekstu na przekre¶lony.
*toggleCharacterStyleBlink.labelString:			Migaj±cy
*toggleCharacterStyleBlink.documentationString:		\
Ustaw styl tekstu na migaj±cy.
! end Format/Style Submenu

*menuBar*characterColorMenu.labelString:		Kolor tekstu
*menuBar*characterColorMenu.mnemonic:			K

*menuBar*setCharacterColor.labelString:			Kolor tekstu...
*menuBar*setCharacterColor.mnemonic:			K

*menuBar*clearAllStyles.labelString:			Usuñ wszystkie style
*menuBar*clearAllStyles.mnemonic:			U
*clearAllStyles.documentationString:			Usuñ wszystkie style znaków <Alt+K>.

*menuBar*setTableProperties.labelString:		W³asno¶ci tabeli
*menuBar*setTableProperties.mnemonic:			t
*setTableProperties.documentationString:		Zmieñ w³asno¶ci tabeli.

*menuBar*headingStyleMenu.labelString:			Nag³ówek
*menuBar*headingStyleMenu.mnemonic:			N

! Format/Heading Submenu
*setParagraphStyleNormal.labelString:			Normalnie
*setParagraphStyleNormal.documentationString:		\
Ustaw styl tekstu na normalny.
*setParagraphStyleHeadingOne.labelString:		Nag³ówek 1
*setParagraphStyleHeadingOne.documentationString:	\
Ustaw styl tekstu na nag³ówek 1.
*setParagraphStyleHeadingTwo.labelString:		Nag³ówek 2
*setParagraphStyleHeadingTwo.documentationString:	\
Ustaw styl tekstu na nag³ówek 2.
*setParagraphStyleHeadingThree.labelString:		Nag³ówek 3
*setParagraphStyleHeadingThree.documentationString:	\
Ustaw styl tekstu na nag³ówek 3.
*setParagraphStyleHeadingFour.labelString:		Nag³ówek 4
*setParagraphStyleHeadingFour.documentationString:	\
Ustaw styl tekstu na nag³ówek 4.
*setParagraphStyleHeadingFive.labelString:		Nag³ówek 5
*setParagraphStyleHeadingFive.documentationString:	\
Ustaw styl tekstu na nag³ówek 5.
*setParagraphStyleHeadingSix.labelString:		Nag³ówek 6
*setParagraphStyleHeadingSix.documentationString:	\
Ustaw styl tekstu na nag³ówek 6.
! end Format/Heading Submenu

*menuBar*paragraphStyleMenu.labelString:		Akapit
*menuBar*paragraphStyleMenu.mnemonic:	  		A

! Format/Paragraph Style Submenu
*setParagraphStyleAddress.labelString:			Adres
*setParagraphStyleAddress.documentationString:		\
Ustaw styl akapitu na adres.
*setParagraphStyleFormatted.labelString:		Formatowany
*setParagraphStyleFormatted.documentationString:	\
Ustaw styl akapitu na formatowany.
*setParagraphStyleDescriptionTitle.labelString:		Tytu³ opisu
*setParagraphStyleDescriptionTitle.documentationString:	\
Ustaw styl akapitu na tytu³ opisu.
*setParagraphStyleDescriptionText.labelString:		Tekst opisu
*setParagraphStyleDescriptionText.documentationString:	\
Ustaw styl akapitu na tekst opisu.
! end Format/Paragraph Style Submenu

*menuBar*listStyleMenu.labelString:		Lista
*menuBar*listStyleMenu.mnemonic:		L

! Format/List Submenu
*setListStyleNone.labelString:			Brak
*setListStyleNone.documentationString:		\
Wstaw listê bez stylu.
*setListStyleBulleted.labelString:		Wyliczanie
*setListStyleBulleted.documentationString:	\
Wstaw listê wyliczan±.
*setListStyleNumbered.labelString:		Numerowanie
*setListStyleNumbered.documentationString:	\
Wstaw listê numerowan±.
! end Format/List Submenu

*menuBar*indent.labelString:			Zwiêksz wciêcie akapitu
*menuBar*indent.mnemonic:			i
*indent.documentationString:			Zwiêksz wciêcie akapitu o jeden poziom.

*menuBar*outdent.labelString:			Zmniejsz wciêcie akapitu
*menuBar*outdent.mnemonic:			m
*outdent.documentationString:			Zmniejsz wciêcie akapitu o jeden poziom.

*menuBar*setObjectProperties.labelString:	W³asno¶ci obiektu
*menuBar*setObjectProperties.mnemonic:		b
*setObjectProperties.documentationString:	\
Zmieñ w³asno¶ci wybranego obiektu.

*setPageProperties.labelString:			W³asno¶ci i kolory strony
*setPageProperties.mnemonic:			o
*setPageProperties.documentationString:		\
Zmieñ w³asno¶ci strony.

*setSaveEncrypted.labelString:			Zachowaj zaszyfrowany
*setSaveEncrypted.mnemonic:			f
*setSaveEncrypted.documentationString:		\
Zachowaj ten plik w postaci zaszyfrowanej.

*menuBar*alignmentStyleMenu.labelString:	Wyrównaj
*menuBar*alignmentStyleMenu.mnemonic:		W

*setAlignmentStyleLeft.labelString:		Do lewej
*setAlignmentStyleLeft.documentationString:	\
Wyrównaj bie¿±cy akapit do lewej.
*setAlignmentStyleCenter.labelString:		Na ¶rodku
*setAlignmentStyleCenter.documentationString:	\
Wy¶rodkuj bie¿±cy akapit.
*setAlignmentStyleRight.labelString:		Do prawej
*setAlignmentStyleRight.documentationString:	\
Wyrównaj bie¿±cy akapit do prawej.

!============================
!  Tools Menu - Page Composer
!============================

*menuBar*toolsMenu.labelString:			Narzêdzia 
*menuBar*toolsMenu.mnemonic:			N
*spellCheck.labelString:			Sprawd¼ pisowniê...
*spellCheck.acceleratorText:			Alt+K
*spellCheck.mnemonic:				S
*spellCheck.tipString:				Sprawd¼ pisowniê
*spellCheck.documentationString:		Sprawd¼ czy nie ma b³êdów pisowni na stronie.
*Composition*spellCheck.documentationString:	\
Sprawd¼ czy nie ma b³êdów pisowni w wiadomo¶ci.

!===================
!  Communicator Menu
!===================

*menuBar*openOrBringUpBrowser.labelString:	Nawigator
*menuBar*openOrBringUpBrowser.mnemonic:		N
*menuBar*openOrBringUpBrowser.acceleratorText:	Alt+1
*openOrBringUpBrowser.documentationString:	Otwórz okno przegladarki.

*menuBar*openInbox.labelString:			Poczta
*menuBar*openInbox.mnemonic:			P
*menuBar*openInbox.acceleratorText:		Alt+2
*openInbox.documentationString:			Otwórz nowe okno do czytania poczty.

*menuBar*openNewsgroups.labelString:		Grupy dyskusyjne
*menuBar*openNewsgroups.mnemonic:		G
!*menuBar*openNewsgroups.acceleratorText:	Alt+3
*openNewsgroups.documentationString:		Otwórz listê grup dyskusyjnych.

*menuBar*openEditor.labelString:		Edytor
*menuBar*openEditor.mnemonic:			E
*menuBar*openEditor.acceleratorText:		Alt+3
*openEditor.documentationString:		Otwórz edytor stron WWW.

*menuBar*openConference.labelString:		Konferencja
*menuBar*openConference.mnemonic:		o
*menuBar*openConference.acceleratorText:	Alt+5
!*openConference.documentationString:		\
!Open the conferencing window

*menuBar*openCalendar.labelString:		Kalendarz
*menuBar*openCalendar.mnemonic:			r
*menuBar*openCalendar.acceleratorText:		Alt+4
*openCalendar.documentationString:		\
Otwórz okienko osobistego kalendarza.

*menuBar*openRadio.labelString:			Radio
*menuBar*openRadio.mnemonic:			R
*menuBar*openRadio.acceleratorText:		Alt+7
*openRadio.documentationString:			\
Otwórz odbieranie programu radia.

*menuBar*toggleTaskbarShowing.labelString:	P³ywaj±cy pasek komponentów
*menuBar*toggleTaskbarShowing.mnemonic:		C
*toggleTaskbarShowing.documentationString:	\
Poka¿ lub ukryj pasek komponentów.

*menuBar*openFolders.labelString:		Centrum wiadomo¶ci
*menuBar*openFolders.mnemonic:			M
!*menuBar*openFolders.acceleratorText:		Alt+Shift+1
*openFolders.documentationString:		\
Otwórz okienko folderów pocztowych i grup dyskusyjnych.

*menuBar*openAddrBook.labelString:		Ksi±¿ka adresowa
*menuBar*openAddrBook.mnemonic:			K
*menuBar*openAddrBook.acceleratorText:		Alt+Shift+2
*openAddrBook.documentationString:		Otwórz ksi±¿kê adresow±.

*menuBar*bookmarksSubmenu.labelString:		Zak³adki
*menuBar*bookmarksSubmenu.mnemonic:		Z

*menuBar*toolsSubmenu.labelString:		Narzêdzia 
*menuBar*toolsSubmenu.mnemonic:			N

*menuBar*serverToolsSubmenu.labelString:	Narzêdzia serwera
*menuBar*serverToolsSubmenu.mnemonic:		s

! Communicator/Bookmarks Submenu
*addBookmark.labelString:			Dodaj zak³adkê
*addBookmark.mnemonic:				D
!*addBookmark.acceleratorText:			Alt+K
*addBookmark.documentationString:		\
Dodaj bie¿±c± stronê do listy zak³adek.

*menuBar*openBookmarks.labelString:		Edytuj zak³adki...
*menuBar*openBookmarks.mnemonic:		E
!*menuBar*openBookmarks.acceleratorText:	Alt+B
*openBookmarks.documentationString:		\
Edytuj listê zak³adek.

*menuBar*fileBookmarksSubmenu.labelString:      Plik zak³adek
*menuBar*fileBookmarksSubmenu.mnemonic:	        P
*fileBookmarksSubmenu.documentationString:	\
Wstaw bie¿±c± stronê do folderu zak³adek.

*menuBar*placesSubmenu.labelString:		Przewodnik
*menuBar*placesSubmenu.mnemonic:		w

! Communicator/Bookmarks/Guide Submenu
*menuBar*inetIndex.labelString:			Internet
*menuBar*inetIndex.mnemonic:			I

*menuBar*inetWhite.labelString:			Osoby
*menuBar*inetWhite.mnemonic:			O

*menuBar*inetYellow.labelString:		Yellow Pages
*menuBar*inetYellow.mnemonic:			Y

*menuBar*whatsNew.labelString:			Co nowego?
*menuBar*whatsNew.mnemonic:			n

*menuBar*whatsCool.labelString:			Co jest fajne?
*menuBar*whatsCool.mnemonic:			C
! end Communicator/Bookmarks/Guide Submenu

! end Communicator/Bookmarks Submenu

*menuBar*openHistory.labelString:		Historia
*menuBar*openHistory.mnemonic:			H
!*menuBar*openHistory.acceleratorText:		Alt+H
*openHistory.documentationString:		Rozwiñ okno historii.

*menuBar*javaConsole.labelString:		Konsola Javy
*menuBar*javaConsole.mnemonic:			J
*javaConsole.documentationString:		Rozwiñ okno Javy.

*menuBar*viewSecurity.labelString:		Informacje o bezpieczeñstwie
*menuBar*viewSecurity.mnemonic:			b
!*menuBar*viewSecurity.acceleratorText:		Alt+Shift+I
*viewSecurity.documentationString:		\
Poka¿ informacje o zabezpieczeniu tej strony.

! Communicator/Server Tools Submenu
*menuBar*manageMailingList.labelString:		Listy dystrybucyjne
*menuBar*manageMailingList.mnemonic:		L

*managePublicFolders.labelString:		Prawa dostêpu do folderu
*managePublicFolders.mnemonic:			f

! end Communicator/Bookmarks Submenu

!===========
!  Help Menu
!===========

*menuBar*manual.labelString:		Zawarto¶æ pomocy
*menuBar*manual.mnemonic:		p
*manual.documentationString:		Wersja online instrukcji obs³ugi.

*menuBar*relnotes.labelString:		Uwagi koñcowe
*menuBar*relnotes.mnemonic:		U
*relnotes.documentationString:		\
Informacje o u¿ywanej wersjii Komunikatora.

*menuBar*productInfo.labelString:	Informacje i wsparcie dla programu
*productInfo.documentationString:	\
Informacje i wsparcie dla programu.

*menuBar*feedback.labelString:		Jak kontaktowaæ siê z producentem
*menuBar*feedback.mnemonic:		k
*feedback.documentationString:		\
Instrukcje jak kontaktowaæ siê z producentem.

*menuBar*intl.labelString:		Dla u¿ytkowników miêdzynarodowych
*intl.documentationString:		\
Informacje o uzywaniu Netscape dla u¿ytkowników miêdzynarodowych.

*menuBar*aboutSecurity.labelString:	O bezpieczeñstwie
*menuBar*aboutSecurity.mnemonic:	O
*aboutSecurity.documentationString:	\
Informacje o bezpieczeñstwie Internetowym.

*menuBar*registration.labelString:	Zarejestruj siê teraz
*menuBar*registration.mnemonic:		Z
*registration.documentationString:	\
Rejestracja programu.

*menuBar*upgrade.labelString:		Oprogramowanie
*menuBar*upgrade.mnemonic:		g
*upgrade.documentationString:		\
Pobierz oprogramowanie Netscape oraz aktualizacje.

*menuBar*services.labelString:		Netscape Direct

*menuBar*aboutUsenet.labelString:	Netykieta (etyka sieciowa)

*menuBar*aboutplugins.labelString:	O wtyczkach
*menuBar*aboutplugins.mnemonic:		w
*aboutplugins.documentationString:	\
Poka¿ informacje o Twoich wtyczkach.

*menuBar*aboutfonts.labelString:	O wy¶wietlaczach czcionek
*menuBar*aboutfonts.mnemonic:		c

*menuBar*about.labelString:		O Komunikatorze
*menuBar*aboutLite.labelString:		O Nawigatorze
*menuBar*about.mnemonic:		O
*about.documentationString:		\
Poka¿ informacje o programie, numer wersji i prawa autorskie.

!==============
!  end of menus
!==============

! Leftovers, old, and duplicates...

*viewMailFilter.labelString:				Filtry poczty

! Mail filter stuff

*filterDialog.dialogTitle:				Filtry wiadomo¶ci
*filterDialog*form*orderBox*orderLabel.labelString:	Kolejno¶c\nfiltrowania
*filterDialog*form*newFilter.labelString:		Nowy...
*filterDialog*form*newFilter.mnemonic:			N
*filterDialog*form*editFilter.labelString:		Edytuj...
*filterDialog*form*editFilter.mnemonic:			E
*filterDialog*form*delFilter.labelString:		Kasuj
*filterDialog*form*delFilter.mnemonic:			K
*filterDialog*form*javaScript.labelString:		Java Script
*filterDialog*form*logbtn.labelString:			Rejestruj u¿ycie filtru
*filterDialog*form*logbtn.mnemonic:			R
*filterDialog*form*viewLog.labelString:			Podgl±d rejestru
*filterDialog*form*viewLog.mnemonic:			P
*filterDialog*form*okbtn.labelString:			OK
*filterDialog*form*cancelbtn.labelString:		Anuluj
*filterDialog*form*onserver.labelString:		Filtry na serwerze...
*filterDialog*form*dropdownLabel.labelString:   	Filtry dla:
*filterDialog*form*outlinerLabel.labelString:		\
Filtry bêd± na³o¿one w nastêpuj±cej kolejno¶ci:
*filterDialog*form*frameTitle.labelString:		Opis

*editFilterDialog.dialogTitle:	Zasady filtrowania
*editFilterDialog*filterLabel.labelString:		Nazwa filtru:
*editFilterDialog*criteriaFrameTitle.labelString:	Kryteria filtrowania
*editFilterDialog*actionFrameTitle.labelString:		Podejmowane dzia³anie

*editFilterDialog*scriptokbtn.labelString:	OK
*editFilterDialog*scriptokbtn.alignment:	ALIGNMENT_CENTER
*editFilterDialog*scriptcancelbtn.labelString:	Anuluj
*editFilterDialog*scriptcancelbtn.alignment:	ALIGNMENT_CENTER
*editFilterDialog*scripteditbtn.labelString:	Edytuj skrypt
*editFilterDialog*scripteditbtn.alignment:	ALIGNMENT_CENTER

*editFilterDialog*editContainer*commandGrp*more.labelString: 	Wiêcej
*editFilterDialog*editContainer*commandGrp*more.mnemonic:    	W
*editFilterDialog*editContainer*commandGrp*fewer.labelString: 	Mniej
*editFilterDialog*editContainer*commandGrp*fewer.mnemonic:	M
*editFilterDialog*editContainer*despLabel.labelString:		Opis:
*editFilterDialog*editContainer*okbtn.labelString:		OK
*editFilterDialog*editContainer*cancelbtn.labelString:		Anuluj
*editFilterDialog*newFolder.labelString:	 		Nowy folder...
*editFilterDialog*newFolder.mnemonic:		 		F
*editHdrBtn.labelString:					Wybrane nag³ówki...

! The Edit headers dialog, for search and filter:
*editHdrDialog.title:				Wybirane nag³ówki
*editHdrDialog*editHdrLabel.labelString:	Wybierz nag³ówki wiadomo¶ci, których\nszukasz lub ktore odfiltrowujesz.
*editHdrDialog*new.labelString:			Nowe
*editHdrDialog*edit.labelString:		Edycja
*editHdrDialog*delete.labelString:		Kasuj

! The New Folder dialog:
*newFolderDialog*dialogTitle:			Nowy folder
*newFolderDialog*name.labelString:		Nazwa:
*newFolderDialog*subFolderOf.labelString:	Utwórz jako podfolder:
*newFolderDialog*folderTypeLabel.labelString:	\
Ten serwer nak³ada ograniczenia na zawarto¶æ folderów.\n\
Co ten folder bêdzie zawiera³?
*newFolderDialog*foldersOnly.labelString:	Tylko foldery.
*newFolderDialog*messagesOnly.labelString:	Tylko wiadomo¶ci.


!=============================================================================
! MailCompose menubar
!=============================================================================

! Don't limit these to just menubars or else they won't show up
! in popups.
*setPriority.labelString:			Priorytet

*messageActionAskUser.labelString:		Zapytaj mnie
*messageActionText.labelString:			Tekst
*messageActionHTML.labelString:			HTML
*messageActionTextAndHTML.labelString:		Tekst i HTML

*attachFile.labelString:			Plik...
*attachFile.mnemonic:				P
*attachWebPage.labelString:			Strona WWW...
*attachWebPage.mnemonic:			W
*deleteAttachment.labelString:			Kasuj za³±cznik
*deleteAttachment.mnemonic:			z
*attachAddressBookCard.labelString:		Karta osobista (vCard)
*attachAddressBookCard.mnemonic:		K

! Edit Menu
*menuBar*undoNull.labelString:			Nic do cofniêcia
*menuBar*undoTyping.labelString:		Cofnij pisanie
*menuBar*undoAddText.labelString:		Cofnij dodanie tekstu
*menuBar*undoDeleteText.labelString:		Cofnij kasowanie tekstu
*menuBar*undoCut.labelString:			Cofnij wyciêcie
*menuBar*undoPasteText.labelString:		Cofnij wklejenie tekstu
*menuBar*undoPasteHTML.labelString:		Cofnij wklejenie HTML
*menuBar*undoPasteHREF.labelString:		Cofnij wklejenie HREF
*menuBar*undoChangeAttributes.labelString:	Cofnij zmianê atrybutów
*menuBar*undoIndent.labelString:		Cofnij wciêcie
*menuBar*undoParagraphAlign.labelString:	Cofnij wyrównanie akapitu
*menuBar*undoMorphContainer.labelString:	Cofnij zmianê stylu akapitu
*menuBar*undoInsertHorizRule.labelString:	Cofnij wstawienie linii poziomej
*menuBar*undoSetHorizRuleData.labelString:	Cofnij ustawienie danych linii poziomej
*menuBar*undoInsertImage.labelString:		Cofnij wstawienie obrazka
*menuBar*undoSetImageData.labelString:		Cofnij ustawienie danych obrazka
*menuBar*undoInsertBreak.labelString:		Cofnij wstawienie prze³amania
*menuBar*undoChangePageData.labelString:	Cofnij zmianê danych strony
*menuBar*undoSetMetaData.labelString:		Cofnij ustawienie danych Meta
*menuBar*undoDeleteMetaData.labelString:	Cofnij kasowanie danych Meta
*menuBar*undoInsertTarget.labelString:		Cofnij wstawienieienie odnosnika
*menuBar*undoSetTargetData.labelString:		Cofnij ustawienie danych odno¶nika
*menuBar*undoInsertUnknownTag.labelString:	Cofnij nieznany znacznik
*menuBar*undoSetUnknownTagData.labelString:	Cofnij ustawienie nieznanych danych znacznika
*menuBar*undoGroupOfChanges.labelString:	Cofnij zmiany
*menuBar*undoSetListData.labelString:		Cofnij ustawienie spisu danych
*menuBar*undoInsertTable.labelString:		Cofnij wstawienie tabeli
*menuBar*undoDeleteTable.labelString:		Cofnij kasowanie tabeli
*menuBar*undoSetTableData.labelString:		Cofnij ustawienie danych tabeli
*menuBar*undoInsertTableCaption.labelString:	Cofnij wstawienie napisu
*menuBar*undoSetTableCaptionData.labelString:	Cofnij ustawienie danych napisu
*menuBar*undoDeleteTableCaption.labelString:	Cofnij kasowanie napisu
*menuBar*undoInsertTableRow.labelString:	Cofnij wstawienie wiersza
*menuBar*undoSetTableRowData.labelString:	Cofnij ustawienie danych wiersza
*menuBar*undoDeleteTableRow.labelString:	Cofnij kasowanie wiersza
*menuBar*undoInsertTableColumn.labelString:	Cofnij wstawienie kolumny
*menuBar*undoSetTableCellData.labelString:	Cofnij ustawienie danych komórki
*menuBar*undoDeleteTableColumn.labelString:	Cofnij kasowanie kolumny
*menuBar*undoInsertTableCell.labelString:	Cofnij wstawienie komórki
*menuBar*undoDeleteTableCell.labelString:	Cofnij kasowanie komórki

*menuBar*redoNull.labelString:			Nic do odtworzenia
*menuBar*redoTyping.labelString:		Odtwórz pisanie
*menuBar*redoAddText.labelString:		Odtwórz dodanie tekstu
*menuBar*redoDeleteText.labelString:		Odtwórz kasowanie tekstu
*menuBar*redoCut.labelString:			Odtwórz wyciêcie
*menuBar*redoPasteText.labelString:		Odtwórz wstawienie tekstu
*menuBar*redoPasteHTML.labelString:		Odtwórz wstawienie HTML
*menuBar*redoPasteHREF.labelString:		Odtwórz wstawienie HREF
*menuBar*redoChangeAttributes.labelString:	Odtwórz zmianê atrubutów
*menuBar*redoIndent.labelString:		Odtwórz wciêcie
*menuBar*redoParagraphAlign.labelString:	Odtwórz wyrównamie akapitu
*menuBar*redoMorphContainer.labelString:	Odtwórz zmianê stylu akapitu
*menuBar*redoInsertHorizRule.labelString:	Odtwórz wstawienie linii poziomej
*menuBar*redoSetHorizRuleData.labelString:	Odtwórz ustawienie danych linii poziomej
*menuBar*redoInsertImage.labelString:		Odtwórz wstawienie obrazka
*menuBar*redoSetImageData.labelString:		Odtwórz ustawienie danych obrazka
*menuBar*redoInsertBreak.labelString:		Odtwórz wstawienie prze³amania
*menuBar*redoChangePageData.labelString:	Odtwórz zminê danych strony
*menuBar*redoSetMetaData.labelString:		Odtwórz ustawienie danych Meta
*menuBar*redoDeleteMetaData.labelString:	Odtwórz kasowanie danych Meta
*menuBar*redoInsertTarget.labelString:		Odtwórz wstawienie odno¶nik
*menuBar*redoSetTargetData.labelString:		Odtwórz ustawienie danych odno¶nika
*menuBar*redoInsertUnknownTag.labelString:	Odtwórz nieznany znacznik
*menuBar*redoSetUnknownTagData.labelString:	Odtwórz ustawienie danych nieznanego znacznika
*menuBar*redoGroupOfChanges.labelString:	Odtwórz zmiany
*menuBar*redoSetListData.labelString:		Odtwórz ustawienie opisu danych
*menuBar*redoInsertTable.labelString:		Odtwórz wstawienie tabeli
*menuBar*redoDeleteTable.labelString:		Odtwórz kasowanie tabeli
*menuBar*redoSetTableData.labelString:		Odtwórz ustawienie danych tabeli
*menuBar*redoInsertTableCaption.labelString:	Odtwórz wstawienie napisu
*menuBar*redoSetTableCaptionData.labelString:	Odtwórz ustawienie danych
*menuBar*redoDeleteTableCaption.labelString:	Odtwórz kasowanie napisu
*menuBar*redoInsertTableRow.labelString:	Odtwórz wstawienie wiersza
*menuBar*redoSetTableRowData.labelString:	Odtwórz ustawienie danych wiersza
*menuBar*redoDeleteTableRow.labelString:	Odtwórz kasowanie wiersza
*menuBar*redoInsertTableColumn.labelString:	Odtwórz wstawienie kolumny
*menuBar*redoSetTableCellData.labelString:	Odtwórz ustawienie danych komórki
*menuBar*redoDeleteTableColumn.labelString:	Odtwórz kasowanie kolumny
*menuBar*redoInsertTableCell.labelString:	Odtwórz wstawienie komórki
*menuBar*redoDeleteTableCell.labelString:	Odtwórz kasowanie komórki
! new


! View Menu
*Editor*menuBar*source.labelString:		Podgl±d ¼ród³a dokumentu
*Editor*menuBar*source.mnemonic:		d
*menuBar*editSource.labelString:		Edycja ¼ród³a dokumentu
*menuBar*editSource.mnemonic:			E
*menuBar*paragraphMarks.labelString:		Poka¿ znaki akapitu
*menuBar*paragraphMarks.mnemonic:		a
!*displayTableBoundaries.labelString:		Poka¿ obramowanie tabeli
*displayTables.labelString:			Poka¿ tabele
*displayTables.mnemonic:			t
! new
*menuBar*toggleComposeToolbar.labelString:	Pasek kompozycji
*menuBar*toggleComposeToolbar.mnemonic:		k
*menuBar*toggleFormatToolbar.labelString:	Pasek formatowania
*menuBar*toggleFormatToolbar.mnemonic:		f
*menuBar*toggleTableBorders.labelString:	Obramowanie tabeli
*menuBar*toggleTableBorders.mnemonic:		b

! Insert Menu
! new
*menuBar*insertMenu.labelString:		Wstaw
*menuBar*insertListMenu.labelString:		Lista
*menuBar*insertBulletedList.labelString:	Wyliczana
*menuBar*insertNumberedList.labelString:	Numerowana
*insertTableRow.labelString:			Wiersz
*insertTableRow.mnemonic:			R
*insertTableRow.documentationString:		Wstaw nowy wiersz w tabeli.
*insertTableColumn.labelString:			Kolumna
*insertTableColumn.mnemonic:			o
*insertTableColumn.documentationString:		Wstaw now± kolumnê w tabeli.
*insertTableCell.labelString:			Komórka
*insertTableCell.mnemonic:			C
*insertTableCell.documentationString:		Wstaw now± komórkê w tabeli.

*insertHtml.labelString:			Znacznik HTML...
*insertHtml.mnemonic:				H
*insertHtml.documentationString:		\
Wstaw dowolny znacznik HTML w miejscu, gdzie znajduje siê kursor.
*insertNonBreakingSpace.labelString:		Odstêp
*insertNonBreakingSpace.mnemonic:		S
*insertBreakBelowImage.labelString:		Przej¶cie do nowej linii pod obrazkiem(ami) (Nastêpn± liniê pod obrazkiem bez akapitu)
*insertBreakBelowImage.mnemonic:		B
*insertLineBreak.labelString:			Przej¶cie do nowej linii (Nastêpn± liniê bez akapitu)
*insertLineBreak.mnemonic:			L

! Insert/Tables pullaside.
*insertTable.labelString:			Tabela...
*insertTable.mnemonic:				T
*insertRow.labelString:				Wiersz
*insertRow.mnemonic:				R
*insertColumn.labelString:			Kolumna
*insertColumn.mnemonic:				o
*insertCell.labelString:			Komórka
*insertCell.mnemonic:				C

! new
! Format Menu
! Properties Menu
*menuBar*properties.labelString:		W³asno¶ci
*menuBar*textProperties.labelString:		W³asno¶ci znaku
*menuBar*textProperties.mnemonic:		z
*menuBar*linkProperties.labelString:		W³asno¶ci po³±czenia
*menuBar*linkProperties.mnemonic:		p
*menuBar*imageProperties.labelString:		W³asno¶ci obrazka
*menuBar*imageProperties.mnemonic:		o
*menuBar*targetProperties.labelString:		W³asno¶ci odno¶nika
*menuBar*targetProperties.mnemonic:		d
*menuBar*tableProperties.labelString:		W³asno¶ci tabeli
*menuBar*tableProperties.mnemonic:		t
*menuBar*hruleProperties.labelString:		W³asno¶ci linii poziomej
*menuBar*hruleProperties.mnemonic:		l
*menuBar*tagProperties.labelString:		W³asno¶ci znacznika HTML
*menuBar*tagProperties.mnemonic:		H
*menuBar*documentProperties.labelString:	W³asno¶ci dokumentu
*menuBar*documentProperties.mnemonic:		d

! Properties Character Pullaside
*charProperties.labelString:				Znak
*charProperties.mnemonic:				C
*charProperties.bold.labelString:			Pogrubiony
*charProperties.bold.acceleratorText:			Alt+B
*charProperties.bold.mnemonic:				B
*charProperties.underline.labelString:			Podkre¶lony
*charProperties.underline.acceleratorText:		Alt+U
*charProperties.underline.mnemonic:			U
*charProperties.italic.labelString:			Pochy³y
*charProperties.italic.acceleratorText:			Alt+I
*charProperties.italic.mnemonic:			I
*charProperties.fixed.labelString:			Sta³ej szeroko¶ci
*charProperties.fixed.acceleratorText:			Alt+T
*charProperties.fixed.mnemonic:				F
*charProperties.superscript.labelString:		Indeks górny
*charProperties.superscript.mnemonic:			p
*charProperties.subscript.labelString:			Indeks dolny
*charProperties.subscript.mnemonic:			S
*charProperties.strikethrough.labelString:		Przekre¶lony
*charProperties.strikethrough.mnemonic:			t
*charProperties.blink.labelString:			Migaj±cy
*charProperties.blink.mnemonic:				k
*charProperties.textColor.labelString:			Kolor tekstu...
*charProperties.textColor.mnemonic:			C
*charProperties.defaultColor.labelString:		Domy¶lny kolor
*charProperties.defaultColor.mnemonic:			D
*charProperties.serverJavaScript.labelString:		JavaScript (Serwer)
*charProperties.serverJavaScript.mnemonic:		J
*charProperties.clientJavaScript.labelString:		JavaScript (Klient)
*charProperties.clientJavaScript.mnemonic:		v
*menuBar*charProperties.clearAllStyles.labelString:	Wyczy¶æ wszystkie style <Alt+K>
*menuBar*charProperties.clearAllStyles.acceleratorText:	Alt+K
*menuBar*charProperties.clearAllStyles.mnemonic:	a
*menuBar*fontSize.labelString:				Wielko¶æ czcionki
*menuBar*fontSize.mnemonic:				S
*menuBar*paragraphProperties.labelString:		Akapit
*menuBar*paragraphProperties.mnemonic:			P
*menuBar*paragraphProperties.indent.labelString:	Zwiêksz o jeden poziom
*menuBar*paragraphProperties.indent.acceleratorText:	Tabulacja
*menuBar*paragraphProperties.indent.mnemonic:		I
*menuBar*paragraphProperties.outdent.labelString:	Zmniejsz o jeden poziom
*menuBar*paragraphProperties.outdent.acceleratorText:	Shift+Tab
*menuBar*paragraphProperties.outdent.mnemonic:		R

! Properties Font Size PullAside/Toolbar Font Size Popup.
*characterToolbar*fontSize.marginWidth:		0
*characterToolbar*fontSize.marginHeight:	0
*composeToolbar*fontSize.marginWidth:		0
*composeToolbar*fontSize.marginHeight:		0
*fontSize.XmPushButtonGadget.labelType:		STRING
*fontSize.minusTwo.labelString: 		-2
*fontSize.minusOne.labelString: 		-1
*fontSize.plusZero.labelString:			+0
*fontSize.plusZero.mnemonic:			0
*fontSize.plusOne.labelString:	 		+1
*fontSize.plusOne.mnemonic:			1
*fontSize.plusTwo.labelString:  		+2 
*fontSize.plusTwo.mnemonic:			2
*fontSize.plusThree.labelString:		+3
*fontSize.plusThree.mnemonic:			3
*fontSize.plusFour.labelString: 		+4
*fontSize.plusFour.mnemonic:			 4

! Properties Paragraph PullAside/Toolbar Properties Popup.
*composeToolbar*paragraphProperties.marginWidth:	0
*composeToolbar*paragraphProperties.marginHeight:	0
*paragraphProperties.XmPushButtonGadget.labelType:	STRING
*normal.labelString:			Normalny
*normal.mnemonic:			N
*headingOne.labelString:		Nag³ówek 1
*headingOne.mnemonic:			1
*headingTwo.labelString:		Nag³ówek 2
*headingTwo.mnemonic:			2
*headingThree.labelString:		Nag³ówek 3
*headingThree.mnemonic:			3
*headingFour.labelString:		Nag³ówek 4
*headingFour.mnemonic:			4
*headingFive.labelString:		Nag³ówek 5
*headingFive.mnemonic:			5
*headingSix.labelString:		Nag³ówek 6
*headingSix.mnemonic:			6
*address.labelString:			Adres
*address.mnemonic:			A
*formatted.labelString:			Formatowany
*formatted.mnemonic:			F
*listItem.labelString:			Lista pozycji
*listItem.mnemonic:			L
*descriptionItem.labelString:		Tytu³ opisu
*descriptionItem.mnemonic:		T
*descriptionText.labelString:		Tekst opisu
*descriptionText.mnemonic:		x

! Tools menu
! Options Menu
*menuBar*editorPrefs.labelString:	Ustawienia edytora...
*menuBar*editorPrefs.mnemonic:		E
*Editor*menuBar*showToolbar.labelString:Poka¿ pasek Plik/Edycja
*Editor*menuBar*showToolbar.mnemonic:	T
*menuBar*showCharacter.labelString:	Poka¿ pasek znaków
*menuBar*showCharacter.mnemonic:	C
*menuBar*showParagraph.labelString:	Poka¿ pasek akapitu
*menuBar*showParagraph.mnemonic:	P

! Windows Menu
*menuBar*netBrowser.labelString:	Przegl±darka Netscape

!=============
!  Popup Menus
!=============

!this comes up when you right click on a person in the address book
!so it should say "New Message" and not "Message"
*popup*composeMessage.labelString:	Nowa wiadomo¶æ
!
*popup*viewProperties.labelString:	W³asno¶ci
*popup*viewProperties.mnemonic:   	s
!
*popup*abDelete.labelString:    	Kasuj
*popup*abDelete.mnemonic:    		D
*popup*abDelete.acceleratorText: 	Alt+D
!
*popup*abDeleteAllEntries.labelString:	Kasuj z wszystkich list
!
*popup*addToAddressBook.labelString:	Nowa karta...
*popup*addToAddressBook.mnemonic:	w
*popup*abNewList.labelString:		Nowa lista...
*popup*abNewList.mnemonic:        	L
!
*popup*saveMessagesAs.labelString:	Zachowaj jako...
*popup*saveMessagesAs.mnemonic:		S
*popup*saveMessagesAs.acceleratorText:	Alt+S

! These are std Mail folder names.
*popup*sentMail.labelString:		Wys³ana
*popup*sentMail.mnemonic:		S

*popup*inbox.labelString:		Poczta przychodz±ca
*popup*inbox.mnemonic:			I

*popup*trash.labelString:		Kosz na ¶mieci
*popup*trash.mnemonic:			T

*popup*newFolder.labelString:		Nowy...
*popup*newFolder.mnemonic:		N

! A few Message Center popups:
*popup*openFolder.labelString:		Otwórz
*popup*openFolderInNew.labelString:	Otwórz w nowym okienie
*popup*deleteFolder.labelString:	Kasuj
*popup*renameFolder.labelString:	Zmieñ nazwê...
*popup*compactFolder.labelString:	Kompresuj
*popup*subscribeFolder.labelString:	Prenumeruj...
*popup*unsubscribeFolder.labelString:	Zakoñcz prenumeratê

*popup*search.labelString:		Przeszukaj wiadomo¶ci
*popup*search.labelString:		Przeszukaj wiadomo¶ci
*popup*openNewsgroups.labelString:	Otwórz grupy dyskusyjne
*popup*markNewsgroupsRead.labelString:	Zaznacz grupê jako przeczytan±
*popup*updateMessageCount.labelString:	Aktualizuj liczbê wiadomo¶ci

! These are only in the threads window popup:
*popup*ignoreThread.labelString:		Pomiñ w±tek
*popup*ignoreThread.mnemonic:			I
*popup*watchThread.labelString:			Obserwuj w±tek
*popup*watchThread.mnemonic:			W
*popup*changePriority.labelString:		Zmieñ priorytet  
*popup*openSelected.labelString:		Otwórz wiadomo¶æ
*popup*openMsgInNew.labelString:		Otwórz wiadomo¶æ w nowym oknie
*popup*editMsg.labelString:			Edytuj wiadomo¶æ
*popup*addSenderToAddressBook.labelString:	Dodaj do ksi±¿ki adresowej

! the Mail Message window popup:
! many of these don't actually get there because they're
! overridden by the backend's allxpstr.h defs.
*popup*replyToSender.labelString:		Odpowiedz tylko nadawcy
*popup*replyToSender.mnemonic:			R
*popup*replyToAll.labelString:			Odpowiedz nadawcy i wszystkim odbiorcom
*popup*replyToAll.mnemonic:			A
*popup*replyToNewsgroup.labelString:		Odpowiedz na grupie dyskusyjnej

*toolBar*popup_PopupMenu.PopupMenu.replyToSender.labelString:	tylko nadawcy
*toolBar*popup_PopupMenu.PopupMenu.replyToNewsgroup.labelString:na grupie dyskusyjnej

*popup*replyToSenderAndNewsgroup.labelString:	Odpowiedz nadawcy i na grupie
*popup*forwardMessage.labelString:		Dalej
*popup*forwardMessage.mnemonic:			a
*popup*forwardMessageQuoted.labelString:	Prze¶lij dalej cytuj±c
*popup*forwardMessage.mnemonic:			Q
*popup*forwardMessageInLine.labelString:	Prze¶lij dalej w tre¶ci
*popup*forwardMessageInLine.mnemonic:		l
! "Recipients"?  What does that do?  It's in the spec.


*popup*addToAddrBkSubmenu.labelString:	Dodaj do ksi±¿ki adresowej
*popup*addToABSubmenu.labelString:	Dodaj do ksi±¿ki adresowej
*popup*addSenderToAddrBk.labelString:	Nadawca
*popup*addAllToAddrBk.labelString:	Wszystko

*popup*fileSubmenu.labelString:		Przenie¶ wiadomo¶æ
*popup*deleteMessage.labelString:	Kasuj wiadomo¶æ
*popup*deleteMessage.mnemonic:		D
*popup*saveMessage.labelString:		Zachowaj wiadomo¶æ
*popup*saveMessage.mnemonic:		v
*popup*print.labelString:		Drukuj wiadomo¶æ...
*popup*print.mnemonic:			P

! Editor Popup Menu
*popup*textProperties.labelString:      W³asno¶ci znaku
*popup*textProperties.mnemonic:         z
*popup*targetProperties.labelString:    W³asno¶ci odno¶nika
*popup*targetProperties.mnemonic:       n
*popup*imageProperties.labelString:     W³asno¶ci obrazka
*popup*imageProperties.mnemonic:        b
*popup*tableProperties.labelString:     W³asno¶ci tabeli
*popup*tableProperties.mnemonic:        t
*popup*hruleProperties.labelString:     W³asno¶ci linii poziomej
*popup*hruleProperties.mnemonic:        l
*popup*tagProperties.labelString:       W³asno¶ci znacznika HTML
*popup*tagProperties.mnemonic:          H
*popup*paragraphProperties.labelString: W³asno¶ci akapitu...
*popup*paragraphProperties.mnemonic:    a
*popup*documentProperties.labelString:  W³asno¶ci dokumentu
*popup*documentProperties.mnemonic:     d
*popup*insert.labelString:              Wstaw
*popup*insert.mnemonic:                 W
*popup*insertLink.labelString:          Wstaw po³±czenie...
*popup*insertLink.mnemonic:             p
*popup*linkProperties.labelString:      W³asno¶ci po³±czenia
*popup*linkProperties.mnemonic:         c
*popup*browseLink.labelString:          Otwórz po³±czenie w przegl±darce...
*popup*browseLink.mnemonic:             O
*popup*browseToLink.labelString:        Przegl±daj: (%s)
*popup*editLink.labelString:            Otwórz po³±czenie w edytorze...
*popup*editLink.mnemonic:               e
*popup*bookmarkLink.labelString:        Dodaj p³±czenie do zak³adek
*popup*bookmarkLink.mnemonic:           B
*popup*copyLink.labelString:            Kopiuj adres po³±czenia
*popup*copyLink.mnemonic:               K
*popup*removeLink.labelString:          Usuñ po³±czenie
*popup*removeLink.mnemonic:             U

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (submenu).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*toolBar*newBlank.labelString:          Pusta strona
*toolBar*newTemplate.labelString:       Nowa strona wg wzoru
*toolBar*newWizard.labelString:         Nowa strona z kreatora
*toolBar*openPage.labelString:          Otwórz stronê...
*toolBar*save.labelString:              Zachowaj
*toolBar*saveAs.labelString:            Zachowaj jako...
*toolBar*publish.labelString:           Publikuj
*toolBar*sendPage.labelString:          Wy¶lij stronê

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (text only).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*toolBar.editDocument.labelString:	Edycja
*toolBar.editorNewBlank.labelString:	Nowe
*toolBar.editorOpenFile.labelString:	Otwórz...
*toolBar.save.labelString:		Zapisz
*toolBar.editorBrowse.labelString:	Podgl±d
*toolBar.cut.labelString:		Wytnij
*toolBar.copy.labelString:		Kopiuj
*toolBar.paste.labelString:		Wstaw
*toolBar.publish.labelString:		Publikuj
! new
*toolBar.newBlank.labelString:		Nowe
*newBlank.tipString:			Nowa strona
*toolBar.openPage.labelString:		Otwórz
*toolBar.browsePage.labelString:	Podgl±d
*toolBar.findInObject.labelString:	Szukaj
*toolBar.insertLink.labelString:	Po³±cz
*toolBar.insertTarget.labelString:	Odno¶nik
*toolBar.insertImage.labelString:	Obrazek
*toolBar.insertHorizontalLine.labelString:Linia
*toolBar.insertTable.labelString:	Tabela
*toolBar.spellCheck.labelString:	Pisownia

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor dialogs.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*textPropertiesDialog_popup.title:			Netscape: W³asno¶ci
*textPropertiesDialog.folder.XmForm.marginHeight: 	10
*textPropertiesDialog.folder.XmForm.marginWidth:	10
*textPropertiesDialog*XmFrame.marginHeight: 		2
*textPropertiesDialog*XmFrame.marginWidth:		2
*imagePropertiesDialog_popup.title:			Netscape: W³asno¶ci
*imagePropertiesDialog.folder.XmForm.marginHeight:	10
*imagePropertiesDialog.folder.XmForm.marginWidth:	10
*imagePropertiesDialog*XmFrame.marginHeight:		2
*imagePropertiesDialog*XmFrame.marginWidth:		2

! Properties/Link properties.
*linkProperties.tabLabelString:		Po³±cz
*linkSourceTitle.labelString:		¬ród³o po³±czenia
*linkSourceLabel.labelString:		Podaj tekst po³±czenia:
*linkToTitle.labelString:		Po³±cz z
*linkToLabel.labelString:		Podaj po³±czenie do adresu strony lub pliku lokalnego:
*browseFile.labelString:		Przegl±daj plik...
*linkTarget.labelString:		\
Po³±cz nazwany znacznik w wybranym dokumencie (opcjonalnie)
*showTargets.labelString:		Poka¿ cele w:
*currentDocument.labelString:		Bie¿±cym dokumencie
*selectedFile.labelString:		Wybranym pliku
*linkProperties*targetText.height:	100

! Properties/Character properties:
*characterProperties.tabLabelString:			Znak
*colorTitle.labelString:				Kolor
*colorLabel.labelString:				Bie¿±cy kolor: 
*default.labelString:					Domy¶lny kolor dokumentu
*custom.labelString:					Kolor u¿ytkownika
*chooseColor.labelString:				Wybierz kolor...
*colorText.labelString:					Wybrany kolor zostanie przypisany do\nzaznaczonego tekstu.
*sizeTitle.labelString:					Rozmiar
*sizeText.labelString:					Ka¿dy akapit ma swój\nw³asny domy¶lny rozmiar.
*styleTitle.labelString:				Styl
*clearStyles.labelString:				Wyczy¶æ ustawienia stylu
*characterProperties*clearStyles.marginWidth:		10
*characterProperties*clearStyles.marginHeight:		5
*characterProperties*clearStyles.leftOffset:		30
*characterProperties*clearStyles.rightOffset:		30
*characterProperties*clearStyles.bottomAttachment:	ATTACH_FORM
*characterProperties*clearStyles.bottomOffset:		5
*characterProperties*javaFrame.leftOffset:		10
*characterProperties*sizeFrame.leftOffset:		10
*javaTitle.labelString:					Java Script
*java*client.labelString:				Klient
*java*server.labelString:				Serwer 
*clearAll.labelString:					Wyczy¶æ wszystkie ustawienia
*characterProperties*clearAll.marginWidth:		10
*characterProperties*clearAll.marginHeight:		5
*characterProperties*clearAll.topOffset:		20
*characterProperties*clearAll.leftOffset:		15
*characterProperties*clearAll.rightOffset:		15

! Properties/Paragraph properties:
*paragraphProperties.tabLabelString:		Akapit
*styleLabel.labelString:			Styl akapitu:
*additionalLabel.labelString:			Dodatkowy styl:
*additional*default.labelString:		Domy¶lny
*additional*list.labelString:			Lista
*additional*blockQuote.labelString:		Blok cytatu
*listTitle.labelString:				Lista
*listLabel.labelString:				Styl:
*numbered.labelString:				Numerowanie
*unnumbered.labelString:			Nienumerowany
*directory.labelString:				Katalog
*menu.labelString:				Menu
*description.labelString:			Opis
*automatic.labelString:				Automatycznie
*digital.labelString:				1,2,3,4,5..
*lowerRoman.labelString:			i,ii,iii,iv,v..
*upperRoman.labelString:			I,II,III,IV,V..
*lowerAlpha.labelString:			a,b,c,d,e..
*upperAlpha.labelString:			A,B,C,D,E..
*solidCircle.labelString:			Pe³ne kó³ko
*openCircle.labelString:			Puste kó³ko
*openSquare.labelString:			Pusty kwadrat
*startLabel.labelString:			Pocz±tkowy numer
*startText.columns:				4
*spaceAvailable.labelString:			Ta przestrzeñ jest dostêpna
*paragraphProperties*spaceAvailable.topOffset:	40
*paragraphProperties*spaceAvailable.leftOffset:	150

! Properties/Image properties:
*imageProperties.tabLabelString:			Obrazek
*imageFileTitle.labelString:				\
Adres grafiki - Podaj zdalny adres URL lub plik lokalny:
*chooseFile.labelString:				Wybierz plik...
*browse.labelString:					Przegl±daj...
*alternativeImageTitle.labelString:			Alternatywny opis (opcjonalny):
*alternativeImageLabel.labelString:			Obrazek:
*alternativeTextLabel.labelString:			Tekst:
*alignmentRowColumn*XmToggleButtonGadget.shadowThickness: 2
*alignmentTitle.labelString:				Wyrównanie tekstu i zawiniêcie wokó³ obrazków
*alignmentInfoLabel.labelString:			\
By zobaczyæ zawiniêty tekst podejrzyj stronê w oknie przegl±darki.
*imageSpaceTitle.labelString:				Przestrzeñ wokó³ obrazka
*imageProperties.imageSpaceFrame.leftOffset:		10
*leftRightLabel.labelString:				Lewa i prawa:
*topBottomLabel.labelString:				Górna i dolna:
*solidBorderLabel.labelString:				Sta³y brzeg:
*originalSize.labelString:				Oryginalny rozmiar
*customSize.labelString:				Rozmiar zdefiniowany przez u¿ytkownika
*constrain.labelString:					Wymu¶
*copyImage.labelString:					Kopiuj obrazek razem z dokumentem
*leaveImage.labelString:				Zostaw obrazek w oryginalnym po³o¿eniu
*useAsBackground.labelString:				U¿yj jako t³o 
*removeImageMap.labelString:				Usuñ mapê obrazka
*editImage.labelString:					Edytuj obrazek

! Horizontal Line Properties
*horizontalLineProperties_popup.title:		Netscape: Linia pozioma
*dimensionsTitle.labelString:			Wymiary
*horizontalLineProperties*XmFrame.marginWidth:  10
*horizontalLineProperties*XmFrame.marginHeight: 10
*heightLabel.labelString:			Wysoko¶æ:
*heightText.columns:				4
*pixels.labelString:				pikseli
*widthLabel.labelString:			Szeroko¶æ:                          
*widthText.columns:				4
*percent.labelString:				% okna
*alignTitle.labelString:			Wyrównaj
*left.labelString:				Do lewej
*center.labelString:				Na ¶rodku
*right.labelString:				Do prawej
*threeDShading.labelString:			Cieniowanie 3-D

! Document Properties & Editor Preferences/Appearance
*appearanceProperties.tabLabelString:		Kolory i t³o
*documentPropertiesDialog_popup.title:		Netscape: Ustawienia dokumentu
*editorPreferencesDialog_popup.title:		Netscape: Ustawienia edytora
*folder*appearance.marginHeight: 		10
*folder*appearance.marginWidth:			10
*folder*appearance*XmFrame.marginHeight:	2
*folder*appearance*XmFrame.marginWidth:		2
*appearance*custom.labelString:			U¿yj kolorów u¿ytkownika
*appearance*browser.labelString:		\
U¿yj ustawieñ kolorów przegl±darki
*schemesTitle.labelString:			Dobór kolorów
*save.labelString:				Zachowaj
*remove.labelString:				Usuñ
*documentColorsTitle.labelString:		Kolory dokumentu
*documentPropertiesDialog*previewFrame.marginHeight: 	0
*documentPropertiesDialog*previewFrame.marginWidth:	0
*appearance*normal.labelString:			Tekst normalny...
*appearance*link.labelString:			Tekst po³±czenia...
*appearance*active.labelString:			Tekst aktywnego po³±czenia...
*appearance*followed.labelString:		Tekst odwiedzonego po³±czenia...
*appearance*background.labelString:		T³o...
*appearance*backgroundInfo.labelString:		Grafika t³a nadpisuje kolor.
*appearance*preview.normal.labelString: 	Tekst normalny
*appearance*preview.link.labelString:		Tekst po³±czenia
*appearance*preview.active.labelString:		Aktywne (wybrane) po³±czenie
*appearance*preview.followed.labelString:	Odwiedzone po³±czenie
*appearance*preview*normalLabelString:		Tekst normalny
*appearance*preview*linkLabelString:		Tekst po³±czenia
*appearance*preview*activeLabelString:  	Aktywne (wybrane) po³±czenie
*appearance*preview*followedLabelString:	Odwiedzone po³±czenie
*backgroundImageTitle.labelString:		Grafika t³a
*browseImageFile.labelString:			Przegl±daj pliki...
*solid.labelString:				Kolor sta³y
*useImage.labelString:				U¿yj grafiki
*choose.labelString:				Wybierz kolor...
*documentPropertiesDialog*appearance*infoLabel.labelString:	\
Te ustawienia bêd± zastosowane do bie¿±cego dokumentu.
*editorAppearance*appearance*infoLabel.labelString:	\
Te ustawienia bêd± zastosowane do nowych dokumentów, ale nie bie¿±cego.

! Document Properties/General
*generalProperties.tabLabelString:	G³ówne
*folder*general.marginHeight: 		10
*folder*general.marginWidth:		10
*locationLabel.labelString:		Adres URL:
*titleLabel.labelString:		Tytu³:
*authorLabel.labelString:		Autor:
*descriptionLabel.labelString:		Opis:
*createdLabel.labelString:		Data utworzenia:
*updatedLabel.labelString:		Modyfikowany ostatnio:
*otherAttributesTitle.labelString:	Inne atrybuty
*infoLabel.labelString:			\
U¿yj przecinków by rozdzieliæ s³owa lub frazy.
*keywordsLabel.labelString:		S³owa kluczowe:
*classificationLabel.labelString:	Klasyfikacja:

! Document Properties/Advanced
*advanced.tabLabelString:		Zaawansowane
*folder*advanced.marginHeight: 		10
*folder*advanced.marginWidth:		10
*systemLabel.labelString:		Zmienna systemowa Netscape (HTTP-EQUIV):
*userLabel.labelString:			Zmienne u¿ytkownika (META):
*nameLabel.labelString:			Nazwa:
*valueLabel.labelString:		Warto¶æ:
*delete.labelString:			Kasuj
*set.labelString:			Ustaw
*new.labelString:			Nowe

! Target Properties
*targetPropertiesDialog_popup.title: 	Netscape: W³a¶ciwo¶ci odno¶nika
*targetLabel.labelString:		Podaj nazwê tego odno¶nika:

! Html Properties
*htmlPropertiesDialog_popup.title: 	Netscape: Znacznik HTML
*htmlPropertiesInfo.labelString:	\
Podaj nazwê znacznika i jego atrybuty lub parametry tylko dla niego.
*htmlPropertiesDialog.Apply.labelString:Weryfikuj
*htmlPropertiesDialog.ApplyLabelString: Weryfikuj

! Editor Preferences/General
*generalPreferences.tabLabelString:	G³ówne
*authorTitle.labelString:		Autor
*externalTitle.labelString:		Zewnêtrzne edytory
*htmlLabel.labelString:			¬ród³o HTML:
*imageLabel.labelString:		Obrazek:
*templateTitle.labelString:		Wzór nowego dokumentu
*templateInfo.labelString:		\
Ta strona zostanie wczytana jesli wybierzesz z menu:\n\
Plik/Nowy/Strona z kreatora.
*restoreDefault.labelString:		Przywróæ ustawienia domy¶lne
*autosaveTitle.labelString:		Automatyczny zapis
*autosaveEnable.labelString:		Automatycznie zapisuj dokument co:
*minutes.labelString:			minut

! Editor/Tables Properties&Create
*table.tabLabelString:			Tabela
*row.tabLabelString:			Wiersz
*cell.tabLabelString:			Komórka
*tableCreateDialog_popup.title:		Netscape: W³asno¶ci nowej tabeli
*tablePropertiesDialog_popup.title: 	Netscape: W³asno¶ci tabeli
*tableRowsLabel.labelString:		Ilo¶æ wierszy:
*tableColumnsLabel.labelString:		Ilo¶æ kolumn:
*attributesTitle.labelString:		Atrybuty
*tableAlignmentTitle.labelString:	Wyrównanie tabeli
*borderLineWidthLabel.labelString:	Szeroko¶æ linii brzegowej
*borderLineWidthUnits.labelString:	pikseli
*cellSpacingLabel.labelString:		Odstêp miêdzy komórkami
*cellSpacingUnits.labelString:		pikseli pomiêdzy komórkami
*cellPaddingLabel.labelString:		Odstêp w komórkach
*cellPaddingUnits.labelString:		pikseli pomiêdzy komórkami
*tableWidthToggle.labelString:		Szeroko¶æ tabeli
*tableHeightToggle.labelString:		Min. wysko¶æ tabeli
*tableColorToggle.labelString:		Kolor tabeli
*captionToggle.labelString:		Wstaw podpis
*above.labelString:			nad
*below.labelString:			pod tabel±
*tableWidthUnits.marginWidth:		0
*tableWidthUnits.marginHeight:		0
*tableHeightUnits.marginWidth:		0
*tableHeightUnits.marginHeight:		0
*captionUnits.marginWidth:		0
*captionUnits.marginHeight:		0
*textAlignmentTitle.labelString:	Wy¶rodkowanie tekstu
*horizontalLabel.labelString:		Poziomo
*verticalLabel.labelString:		Pionowo
*textAlignment*default.labelString:	Domy¶lne
*textAlignment*left.labelString:	Do lewej
*textAlignment*right.labelString:	Do prawej
*textAlignment*center.labelString:	Na ¶rodku
*textAlignment*top.labelString:		Do góry
*textAlignment*bottom.labelString:	Do do³u
*textAlignment*baselines.labelString:	Linie podstawowe
*tableAlignmentBox*left.labelString:	Do lewej
*tableAlignmentBox*right.labelString:	Do prawej
*tableAlignmentBox*center.labelString:	Na ¶rodku
*rowColorToggle.labelString:		Kolor wiersza
*textOtherTitle.labelString:		Tekst
*headerStyle.labelString:		Styl nag³ówka
*nonBreaking.labelString:		Nie³amany
*cellRowsLabel.labelString:		Komórka zawiera
*cellColumnsLabel.labelString:		wierszy i
*cellColumnsUnits.labelString:		kolumn
*cellWidthToggle.labelString:		Szeroko¶æ komórki
*cellHeightToggle.labelString:		Min. wysoko¶æ komórki
*cellColorToggle.labelString:		Kolor komórki
*percentOfCell.labelString:		% komórki nadrzêdnej
*percentOfWindow.labelString:		% okna
*cancel.cancelLabelString:              Anuluj
*cancel.closeLabelString:               Zamknij
*Cancel.cancelLabelString:              Anuluj
*Cancel.closeLabelString:               Zamknij
*borderLineWidth.labelString:           Szeroko¶æ linii brzegowej
*equalColumnWidth.labelString:          Równa szeroko¶æ kolumn
*backgroundTitle.labelString:           T³o
*backgroundAttributes.useColor.labelString:	U¿yj koloru:
*backgroundAttributes.useImage.labelString:	U¿yj grafiki:
*backgroundAttributes.chooseImage.labelString:	Wybierz grafikê...

! Editor Preferences/Publish
*publishPreferences.tabLabelString:	Publikuj
*folder*publish.marginHeight: 		10
*folder*publish.marginWidth:		10
*linksAndImagesTitle.labelString:	Po³±czenia i obrazki
*linksAndImagesLabel.labelString:	\
Kiedy zachowujê zdalne dokumenty i kiedy wstawiam po³±czenia oraz obrazki:
*linksToggle.labelString:		Zachowaj po³±czenia
*linksInfo.labelString:			\
Dostosuj po³±czenia by dzia³a³y z adresu URL dokumentu. (po³±czenia do\n\
lokalnych dokumentów bêd± dzia³a³y, gdy bêdzie istnieæ wersja lokalna).
*imagesToggle.labelString:		Trzymaj obrazki z dokumentem
*imagesInfo.labelString:		\
Zachowaj kopie obrazków tam gdzie jest dokument.\n\
Obrazki bêd± siê zawsze pojawiaæ w lokalnych wersjach dokumentu\n\
i kiedy dokument zostanie opublikowany.
*linksAndImagesTip.labelString:		\
Rada: Ustaw obie opcje je¶li bêdziesz u¿ywaæ zdalnej publikacji.
*publishTitle.labelString:		Domy¶lny adres (URL) publikacji
*publishLabel.labelString:		Publikuj do (FTP lub HTTP):
*browseLabel.labelString:		Przegl±daj (HTTP):
*usernameLabel.labelString:		U¿ytkownik:
*passwordLabel.labelString:		Has³o:
*savePassword.labelString:		Zapamiêtaj has³o

! Publish Files dialog box
*publishFilesDialog_popup.title: 	Netscape: Publikuj pliki
*localFilesTitle.labelString:		Pliki lokalne
*localFiles.publishLabel.labelString:	Publikuj:
*includeLabel.labelString:		Uwzglêdnij pliki:
*includeImages.labelString:		Pliki w³±czone do tej strony
*includeAll.labelString:		Wszystkie pliki w katalogu
*selectNone.labelString:		Nie wybieraj ¿adnego
*selectAll.labelString:			Wybierz wszystkie
!
!
*titleFrameTitle.labelString:		Tytu³ strony
*publishLocationTitle.labelString:	Adres URL publikacji
*publishLocation.publishLabel.labelString:	\
Umie¶æ pliki pod adresem (FTP lub HTTP):
*useDefault.labelString:		U¿yj domy¶lnego adresu URL
! bogus url alert default button:
*publishFilesDialog_popup.question_popup.dialog.defaultButtonType:	\
dialog_cancel_button

*hintDialog_popup.title:		Netscape: Rada
*dontDisplayAgain.labelString:		Nie pokazuj tej wiadomo¶ci ponownie.
*hintDialog.dontDisplayAgainRow.marginWidth:	9

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor popups.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Color Picker
*setColors_popup.title:                         Netscape: Ustaw kolory
*standardColorsTitle.labelString:               Paleta kolorów
*colorPicker*oldSample.labelString:             Stary
*colorPicker*newSample.labelString:             Nowe
*colorPicker*swatches.tabLabelString:           Wzorce
*colorPicker*rgb.tabLabelString:                RGB
*colorPicker*rgb*unitsMenu.decimal.labelString: Dziesiêtnie
*colorPicker*rgb*unitsMenu.hex.labelString:     Szesnastkowo
*colorPicker*rgb*unitsMenu.percent.labelString: %
*colorPicker*defaultColor.labelString:          Domy¶lny kolor
*colorPicker*otherColor.labelString:            Inny kolor...

! Save Remote Dialog.
*saveRemote.marginHeight:		10
*saveRemote.marginWidth:		10
! These don't seem to get set by above two lines.
*saveRemote*infoIcon.marginWidth:	15
*saveRemote*infoIcon.marginHeight:	15
*saveRemote_popup.title:		Netscape: Zachowaj zdalny dokument
*saveRemote*infoText.labelString:	\
Ten dokument znajduje siê na zdalnej maszynie.\n\
Zanim zrobisz jakiekolwiek zmiany\n\
musisz go najpierw zachowaæ lokalnie.
*saveRemote*linksTitle.labelString:	Po³±czenia
*saveRemote*linksToggle.labelString:	Ustaw po³±czenia do wsparcia w zdalnej publikacji
*saveRemote*linksText.labelString:	\
Po³±czenia do innych dokumentów bêd±cych w tym samym miejscu (katalogu)\n\
bêd± lokalne, równie¿ po ich opublikowaniu.\n\
\n\
Po³±czenia do zdalnych zasobów siê nie zmieni±.
*saveRemote*imagesTitle.labelString:	Obrazki
*saveRemote*imagesToggle.labelString:	Zachowaj obrazki razem z dokumentem
*saveRemote*imagesText.labelString:	\
Obrazki pojawi± siê w lokalnych wersjach dokumentu.
*saveRemote*save.labelString:		Zachowaj
*saveRemote*cancel.labelString:		Anuluj
*saveRemote*help.labelString:		Pomoc

! Confirm Save File(s) Dialog.
*confirmSaveFiles_popup.title:			Netscape: Potwierd¼ zachowanie pliku
*confirmSaveFiles.marginHeight:			0
*confirmSaveFiles.marginWidth:			0
*yes.labelString:				Tak
*confirmSaveFiles*yesToAll.labelString:		Tak na wszystkie
*no.labelString:				Nie
*confirmSaveFiles*noToAll.labelString:		Nie na wszystkie
*confirmSaveFiles*cancel.labelString:		Anuluj
*confirmSaveFiles*help.labelString:		Pomoc
*confirmSaveFiles*defaultButtonShadowThickness:	0

! Save/Upload files message dialogs.
*saveMessageDialog_popup.title:			Zachowywanie plików
*uploadMessageDialog_popup.title:		Umieszczanie plików
*imageLoadMessageDialog_popup.title:		£adowanie grafiki
*saveMessageDialog.width:               	400
*uploadMessageDialog.width:             	400
*imageLoadMessageDialog.width:          	400

!=============================================================================
! Mail/News column titles
!=============================================================================
*mailNewsColumns.folderlist.Name:		Nazwa
*mailNewsColumns.folderlist.Unread:		Nieczytane
*mailNewsColumns.folderlist.Total:		Razem
*mailNewsColumns.messagelist.Thread:		W±tek
*mailNewsColumns.messagelist.Sender:		Nadawca
*mailNewsColumns.messagelist.Subject:		Temat
*mailNewsColumns.messagelist.Date:		Data


!=============================================================================
*toolBar*spacer.marginWidth:			4

*urlBar*whatsNew.labelString:			Co nowego?
*whatsNew.documentationString:			Co nowego w sieci.
*urlBar*whatsCool.labelString:			Co jest fajne?
*whatsCool.documentationString:			Fajne miejsca w sieci.
*urlBar*inetIndex.labelString:			Internet
*inetIndex.documentationString:			Odkrywanie sieci.
*urlBar*inetSearch.labelString:			Szukaj w sieci
*inetSearch.documentationString:		Przeszukaj Internet.
*urlBar*inetWhite.labelString:			Ludzie
*inetWhite.documentationString:			Ludzie i miejsca.
*urlBar*inetYellow.labelString:			Yellow Pages
*urlBar*upgrade.labelString:			Oprogramowanie
*urlBar*welcome.labelString:			Powitanie
*urlBar*newsgroups.labelString:			Grupy
*inetAbout.documentationString:			O Internecie.

*toolBar.getNewMail.labelString:		Pobierz pocztê
*toolBar.deleteMessage.labelString:		Kasuj
*toolBar.mailNew.labelString:			Nowa wiadomo¶æ poczty
*toolBar.postNew.labelString:			Nowe
*toolBar.replyToSender.labelString:		Odpowiedz
*toolBar.replyToAll.labelString:		Odpowiedz\nwszystkim
*toolBar.postReply.labelString:			Wy¶lij\nodpowied¼
*toolBar.postAndMailReply.labelString:		Odpowiedz
*toolBar.forwardMessage.labelString:		Dalej
*toolBar.previousUnreadMessage.labelString:	Poprzedni
*toolBar.nextUnreadMessage.labelString:		Nastêpny
*toolBar.markThreadRead.labelString:		W±tek
*toolBar.markAllRead.labelString:		Wszystko

*msgViewAttachPopup*open.labelString:		Otwórz...
*msgViewAttachPopup*open.mnemonic:		O
*msgViewAttachPopup*save.labelString:		Zachowaj...
*msgViewAttachPopup*save.mnemonic:		S
*msgViewAttachPopup*properties.labelString:	W³asno¶ci
*msgViewAttachPopup*properties.mnemonic:	P

*attachmentProps.dialogTitle:			Za³±cznik
Netscape*attachmentProps*XmLabelGadget.fontList:-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*attachmentProps.okLabelString:			OK
*attachmentProps*nameLabel.labelString:		Nazwa:
*attachmentProps*typeLabel.labelString:		Typ:
*attachmentProps*encLabel.labelString:		Strona kodowa:
*attachmentProps*descLabel.labelString:		Opis:

!=============================================================================
! Toolbar for addressbook
!
*toolBar.addToAddressBook.labelString:		Nowa\nkarta
*toolBar.abNewList.labelString:			Nowa\nlista
*toolBar.deleteABEntry.labelString:		Kasuj
*toolBar.toAB.labelString:			To:
*toolBar.ccAB.labelString:			CC:
*toolBar.bccAB.labelString:			BCC:
*toolBar.directoryAB.labelString:		Katalog

!
*Properties*showSecurBtn.labelString:		Poka¿ certyfikat
!*filterBoxForm.filterPrompt.labelString:	Wybierz katalog i wpisz nazwê, której szukasz:
*filterBoxForm.filterPrompt.labelString:	Poka¿ nazwy zawieraj±ce:
*filterBoxForm.filterInLabel.labelString:	Rezultaty przeszukiwania
*filterBoxForm.filterSearchBtn.labelString:	Szukaj...
*filterBoxForm.filterStopBtn.labelString:	Przerwij

!=============================================================================
! Toolbar for mail compose
*toolBar.SendOrSendLater.labelString:	Wy¶lij
*toolBar.quoteMessage.labelString:	Cytuj
*toolBar.attach.labelString:		Do³±cz
*toolBar.openAddrBook.labelString:	Adres

!=============================================================================
! Turn off beeping on name completion in the address outliner:
*addressText*verifyBell:		False

!=============================================================================
*noDocumentLoadedMessage:	¯aden dokument nie zosta³ jeszcze za³adowany w tym oknie.
*optionsSavedMessage:		Opcje zosta³y zachowane.
*clickToSaveMessage:		Kliknij na po³±czenie by je zachowaæ.
*clickToSaveCancelledMessage:	Zachowanie po³±czenia do pliku zosta³o anulowane.
*noPreviousURLMessage:		Brak poprzedniego dokumentu.
*noNextURLMessage:		Brak nastêpnego dokumentu.
*noHomeURLMessage:		Brak wyszczególnionej strony startowej.
*notOverImageMessage:		Nie ponad obrazkiem.
*notOverLinkMessage:		Nie ponad po³±czeniem.
*noSearchStringMessage:		Nie ma czego szukaæ.
*wrapSearchMessage:		Zosta³ osi±gniêty koniec dokumentu; kontynuowaæ od pocz±tku?
*wrapSearchBackwardMessage:	Zosta³ osi±gniêty pocz±tek dokumentu; kontynuowaæ od koñca?
*wrapSearchNotFoundMessage:	Nie znaleziono szukanej frazy.
*noAddressesMessage:		¯aden odbiorca nie zosta³ podany.
*noFileMessage:			¯aden plik wyj¶ciowy nie zosta³ podany.
*noPrintCommandMessage:		Brak wyszczególnienia polecenia drukowania.
*overwriteFileMessage:		Zast±piæ istniej±cy plik %s?
*bookmarksChangedMessage:	Plik zak³adek zmieni³ siê na dysku: zast±piæ go?
*bookmarkConflictMessage:	\
			 Lista zak³adek nie zachowana.\nZa³adowaæ teraz wersjê z dysku?
*bookmarksNoFormsMessage:	\
	      Nie mogê dodaæ wyniku potwierdzenia formularza do listy zak³adek.
*reallyQuitMessage:		Czy naprawdê zakoñczyæ?
*doubleInclusionMessage:	\n\
Dokument by³ ju¿ cytowany.\n\
 \n\
Czy na pewno chcesz go zacytowaæ ponownie?\n

*expireNowMessage:		\
		Operacja ta zaznaczy wszystkie Twoje po³±czenia jako nieodwiedzone.\nKontynuowaæ?
*clearMemCacheMessage:		\
    Operacja ta usunie wszystkie obecne w buforach w pamiêci pliki.\nKontynuowaæ?
*clearDiskCacheMessage:		\
    Operacja ta usunie wszystkie pliki obecne w cache na dysku.\nKontynuowaæ?

*createCacheDirErrorMessage:	\
B³±d: nie mogê utworzyæ trwa³ego katalogu cache:\n\
 \n\
            %s: %s.\n\
 \n\
Ustaw nowy katalog cache na dysku w sekcji\n\
Zaawansowane/Cache z menu Edycja/Ustawienia.\n

*createdCacheDirMessage:	\
Zosta³ utworzony katalog dla cache na dysku:\n\
 \n\
            %s/\n\
 \n\
Mo¿esz zmieniæ katalog cache w sekcji Zaawansowane/Cache\n\
z menu Edycja/Ustawienia.\n

*cacheNotDirMessage:		\
B³±d: obiekt podany jako katalog dla cache na dysku\n\
istnieje, lecz nie jest katalogiem:

*cacheSuffixMessage:		\
 \n\
Powinien byæ osobny cache dyskowy dla ka¿dego u¿ytkownika, wiêc\n\
korzystanie z katalogu (takiego jak /tmp) nie jest zalecane\n\
 \n\
Maksymalny rozmiar dyskowego cache wynosi w tej chwili %d kilobajtów.\n\
Mo¿esz zmieniæ rozmiar cache w sekcji Zaawansowane/Cache z menu\n\
Edycja/Ustawienia.\n\
 \n\
Je¶li chcesz wy³±czyæ swój cache na dysku, ustaw jego rozmiar na 0.\n\
Gdy to zrobisz, dokumenty bêd± buforowane w pamiêci zgodnie z usta-\n\
wieniami buforów w pamiêci, lecz ju¿ bez wykorzystania dyskowego cache.\n\
Oznacza to, ¿e cache z jednej sesji nie przetrwa do nastêpnej sesji Netscape.

*cubeTooSmallMessage:		\
We were only able to allocate %d cells for the color\n\
cube to which images are dithered.  As a result, the\n\
image quality may be poor.\n\
 \n\
One way to improve image quality is to exit any other\n\
color-intensive applications which are running and\n\
restart Netscape.\n\
 \n\
Another way is to run Netscape with the `-install'\n\
command-line option, which will cause it to use a\n\
private colormap.  The drawback to this is that on\n\
some systems, this will result in colormap flashing\n\
when moving focus to other windows.

*renameInitFilesMessage:	\
Istniej± pliki ustawieñ ze starszej wersji Netscape;\n\
Ta wersja Netscape u¿ywa tego samego formatu pliku, ale\n\
nazwa pliku zosta³a zmieniona. Czy chcia³by¶ zmieniæ\n\
nazwy tych plików teraz?

*unsentMailMessage:		\
 Istnieje niewys³ana poczta, czy naprawdê chcesz zakoñczyæ pracê bez jej wys³ania?

*binaryDocumentMessage:		\
 Dokument ten zawiera dane binarne; nie mo¿na podejrzeæ ¼ród³a.

! For Helper App Editor - Delete
*helperAppDeleteMessage:	\
Czy jeste¶ pewien(na), ¿e chcesz skasowaæ typ MIME? ¯adne z przysz³ych\n\
plików tego typu nie zostan± rozpoznane przez program.

!=============================================================================
!*preeditType:			root
!*Netscape.preeditType:		overthespot

! default titles for the TopLevelShell widgets.
! note that the title and icon title of Navigator windows are
! changed at runtime; these resources won't override that.
*title:				Netscape
*iconName:			Netscape
*Navigator.title:		Netscape Nawigator 4.8
*MailThread.title:		Netscape: Poczta i grupy dyskusyjne
*MailThread.iconName:		Poczta i grupy dyskusyjne


*Download.title:		Netscape pobieranie pliku
*Download.iconName:		Pobierz plik
*Composition.title:		Tworzenie wiadomo¶ci
*Composition.iconName:		Tworzenie wiadomo¶ci
*bookmarks.title:		Netscape: Zak³adki
*bookmarks.iconName:		Zak³adki
*AddressBook.title:		Netscape: Ksi±¿ka adresowa
*AddressBook.iconName:		Ksi±¿ka adresowa
*Editor.title:			Netscape: Edytor stron
*Editor.iconName:		Edytor stron
*MailFolder.title:		Centrum wiadomo¶ci Netscape
*MailFolder.iconName:		Centrum wiadomo¶ci
*AWTapp.iconName:       	Konsola Javy
*history.iconName:      	Historia
*MailMsg.iconName:		Wiadomo¶æ

!========================
!  Popup Menu - Navigator
!========================

*popup.title.labelString:		Komendy Netscape:
*popup.openURLNewWindow.labelString:	Otwórz to po³±czenie w nowym oknie
*popup.openURLNewWindow.mnemonic:	O
*popup*openURLNewWindow.acceleratorText:Przycisk2
*popup.openFrameNew.labelString:	Otwórz ramkê w nowym oknie
*popup.openFrameNew.mnemonic:		w
*popup.openFrameInWindow.labelString:	Otwórz ramkê w oknie
*popup.openFrameInWindow.mnemonic:	i
*popup.editLink.labelString:		Otwórz po³±czenie w Edytorze
*popup.editLink.mnemonic:		e
!                                       ------------------------
! back
! forward
*reloadNonFrameCmdString:		Prze³aduj
*reloadWithFrameCmdString:		Prze³aduj ramkê
*popup.frameReload.mnemonic:		R
*popup.showImage.labelString:		Poka¿ obrazek
*popup.showImage.mnemonic:              g
! stopLoading
!                                       ------------------------
*pageSourceNonFrameCmdString:		Podgl±d ¼ród³a dokumentu
*pageSourceWithFrameCmdString:		Podgl±d ¼ród³a ramki
*popup.framePageSource.mnemonic:	u
*pageInfoNonFrameCmdString:		Informacje o dokumencie
*pageInfoWithFrameCmdString:		Informacje o ramce
*popup.framePageInfo.mnemonic:		V
*openImageCmdString:			Podgl±d obrazka
*popup.openImage.mnemonic:		m
!                                       ------------------------
*popup.addLinkBookmark.labelString:	Dodaj zak³adkê dla po³±czenia
*popup.addLinkBookmark.mnemonic:	k
*popup.addFrameBookmark.labelString:	Dodaj zak³adkê dla ramki
*popup.addFrameBookmark.mnemonic:	k
! sendPage
!                                       ------------------------
*popup.saveURL.labelString:		Zachowaj po³±czenie jako...
*popup.saveURL.mnemonic:		S
*popup.saveURL.acceleratorText:		Shift+Przycisk1
*popup.saveImage.labelString:		Zachowaj obrazek jako...
*popup.saveImage.mnemonic:		i
*popup.saveBGImage.labelString:		Zachowaj t³o jako...
*popup.saveBGImage.mnemonic:		d
!                                       ------------------------
! 'copy' command defined in editor popup above
! 'copyLink' command defined in editor popup above
*popup.copyImage.labelString:			Kopiuj adres obrazka
*popup.copyImage.mnemonic:			y


!
! Convert from old version file formats
*convertQuestion_popup*OK.labelString:		Kasuj stare pliki konfiguracyjne
*convertQuestion_popup*Cancel.labelString:	Zatrzymaj stare pliki konfiguracyjne

!
! Convert from old version file formats
*sendNow_popup*OK.labelString:			Tak
*sendNow_popup*Cancel.labelString:		Nie


! Mail/News popup menus
!
*Mail*popup.title.labelString:			Poczta Netscape
*News*popup.title.labelString:			Grupy dyskusyjne Netscape

! News open News host dialog
!
*News*openNewsHost.title:			Netscape: Po³±cz siê z serwerem grup dyskusyjnych
*News*openNewsHost*selectionLabelString:	\
		Podaj nazwê i port hosta z którym chcesz siê po³±czyæ:
*News*openNewsHost*hostLabel.labelString:	Serwer grup dyskusyjnych:
*News*openNewsHost*hostLabel.alignment:		ALIGNMENT_END
*News*openNewsHost*portLabel.labelString:	Port:
*News*openNewsHost*portLabel.leftOffset:	10
*News*openNewsHost*portLabel.alignment:		ALIGNMENT_END
*News*openNewsHost*secure.labelString:		Bezpiecznie
*News*openNewsHost*secure.topOffset:		10
*News*openNewsHost*portText.columns:		5

*history_popup.title:				Netscape: Historia okna
*history_popup*listLabelString:			Gdzie by³e¶(a¶)...
*history_popup*OK.labelString:			Id¼ do
*history_popup*OkLabelString:			Id¼ do
*history_popup*Cancel.labelString:		Zamknij
*history_popup*CancelLabelString:		Zamknij
*history_popup*Apply.labelString:		Utwórz zak³adkê
*history_popup*ApplyLabelString:		Utwórz zak³adkê

*source_popup.title:				Netscape: Podgl±d tekstu ¼ród³owego
*source_popup*save.labelString:			Zachowaj...
*source_popup*OK.labelString:			OK
*source_popup*text.editable:			False
*source_popup*text.cursorPositionVisible:	False
*source_popup*text.wordWrap:			True
*source_popup*text.scrollHorizontal:		False
*source_popup*urlLabel.labelString:		Adres URL:
*source_popup*titleLabel.labelString:		Tytu³:
*source_popup*titleLabel.leftOffset:		0
*source_popup*titleLabel.rightOffset:		4
*source_popup*titleLabel.alignment:		ALIGNMENT_END
*source_popup*urlLabel.topOffset:		0
*source_popup*urlLabel.leftOffset:		0
*source_popup*urlLabel.rightOffset:		4
*source_popup*urlLabel.alignment:		ALIGNMENT_END
*source_popup*titleText.leftOffset:		0
*source_popup*titleText.rightOffset:		0
*source_popup*urlText.leftOffset:		0
*source_popup*urlText.rightOffset:		0
*source_popup*text.leftOffset:			0
*source_popup*text.rightOffset:			0
*source_popup*XmScrolledWindow.topOffset:	8
*source_popup*text.columns:			80
*source_popup*text.rows:			20

*docinfo_popup.title:				Netscape: Informacje o dokumencie
*docinfo_popup*OK.labelString:			OK
*docinfo_popup*titleLabel.labelString:		Tytu³:
*docinfo_popup*urlLabel.labelString:		Adres URL:
*docinfo_popup*modifiedLabel.labelString:	Modyfikowany ostatnio:
*docinfo_popup*sourceLabel.labelString:		¬ród³o:
*docinfo_popup*charsetLabel.labelString:	Strona kodowa:
*docinfo_popup*dpyLabel.labelString:		Widoczno¶æ:
*docinfo_popup*securityFrame.label.labelString:	Informacja o bezpiczeñstwie
*docinfo_popup*certificateLabel.labelString:	Certyfikat serwera:
*docinfo_popup*certificateText.columns:		60
*docinfo_popup*certificateText.rows:		6
*docinfo_popup*certificateText.wordWrap:	True
*docinfo_popup*certificateText.scrollHorizontal:False
*docinfo_popup*scrollBarDisplayPolicy:		AS_NEEDED
*docinfo_popup*scrollingPolicy:			AUTOMATIC
*docinfo_popup*securityText.wordWrap:		True
*docinfo_popup*securityText.scrollHorizontal:	False
*docinfo_popup*urlLabel.topOffset:		0
*docinfo_popup*urlLabel.leftOffset:		0
*docinfo_popup*urlLabel.rightOffset:		4
*docinfo_popup*urlLabel.alignment:		ALIGNMENT_END
*docinfo_popup*titleLabel.leftOffset:		0
*docinfo_popup*titleLabel.rightOffset:		4
*docinfo_popup*titleLabel.alignment:		ALIGNMENT_END
*docinfo_popup*modifiedLabel.topOffset:		0
*docinfo_popup*modifiedLabel.leftOffset:	0
*docinfo_popup*modifiedLabel.rightOffset:	4
*docinfo_popup*modifiedLabel.alignment:		ALIGNMENT_END
*docinfo_popup*charsetLabel.topOffset:		0
*docinfo_popup*charsetLabel.leftOffset:		0
*docinfo_popup*charsetLabel.rightOffset:	4
*docinfo_popup*charsetLabel.alignment:		ALIGNMENT_END
*docinfo_popup*sourceLabel.topOffset:		0
*docinfo_popup*sourceLabel.leftOffset:		0
*docinfo_popup*sourceLabel.rightOffset:		4
*docinfo_popup*sourceLabel.alignment:		ALIGNMENT_END
! add 5 to dpyLabel.topOffset to align label with text baseline (gag)
*docinfo_popup*dpyLabel.topOffset:		5
*docinfo_popup*dpyLabel.leftOffset:		0
*docinfo_popup*dpyLabel.rightOffset:		4
*docinfo_popup*dpyLabel.alignment:		ALIGNMENT_END
*docinfo_popup*dpyText.rows:			3
*docinfo_popup*dpyText.columns:			48
*invalidLangTagFormatMsg:		\
Invalid Language/Country Tag format.\n\n\
The format is: 'Aaaaa/Bbbbb [xx-YY]' where:	\n\
    'Aaaa/Bbbb' is the Language/Country (optional, not used)\n\
    '[' and ']' bracket the tag (required, spaces not allowed between these)\n\
    'xx' specifies the language (required)\n\
    '-YY' specifies the Country (optional)

*invalidLangTagFormatDialogTitle:	B³êdny format znacznika

*docinfo_popup*titleText.columns:		40
*docinfo_popup*securityFrame.topOffset:		10
*docinfo_popup*keyDescLabel.leftOffset:		14
*docinfo_popup*keyDescLabel.rightOffset:	14
*docinfo_popup*keyDescLabel.alignment:		ALIGNMENT_BEGINNING
*docinfo_popup*certificateLabel.leftOffset:	10
*docinfo_popup*certificateLabel.rightOffset:	10
*docinfo_popup*certificateLabel.alignment:	ALIGNMENT_BEGINNING
*docinfo_popup*securityLabel.leftOffset:	14
*docinfo_popup*securityLabel.rightOffset:	14
*docinfo_popup*securityLabel.alignment:		ALIGNMENT_BEGINNING
*docinfo_popup*XmScrolledWindow.leftOffset:	10
*docinfo_popup*XmScrolledWindow.rightOffset:	10

*docinfo*noSecurityMessage:\
Ta wrsja Netscape nie zawiera wbudowanego modu³u bezpieczeñstwa.

*docinfo*securityLabel.labelString:\
Bezpieczeñstwo zabezpiecza dokumenty Internetowe które otrzymasz i informacje\n\
które wy¶lesz z powrotem z autoryzacj± serwera, u¿ywaj±c prywatnego szyfrowania\n\
i integralno¶ci danych. Mo¿esz zobaczyæ stan bezpieczeñstwa dokumentu zwracaj±c\n\
uwagê na ikonkê wska¼nika bezpieczeñstwa.



*bmPreferences_popup.title:				Netscape: Zak³adki
*bmPreferences_popup*frame1label.labelString:		Dodaj zak³adkê
*bmPreferences_popup*frame2label.labelString:		Menu zak³adek
*bmPreferences_popup*addbm_option.labelString:		\
						Dodaj zak³adkê do tego nag³ówka
*bmPreferences_popup*bmmenu_option.labelString:		\
					  Podejrzyj ten nag³ówek w menu zak³adek
*bmPreferences_popup*addbm_default.labelString:		Dodaj do g³ównego poziomu
*bmPreferences_popup*bmmenu_default.labelString:	Nag³ówek g³ównego poziomu

*bookmarksWhatsChanged*button_0.labelString:		Wszystkich zak³adek
*bookmarksWhatsChanged*button_1.labelString:		Wybranych zak³adek
*bookmarksWhatsChanged*Apply.labelString:		Pocz±tek
*bookmarksWhatsChanged*ApplyLabelString:		Rozpocznij
*bookmarksWhatsChanged*title.labelString:		Co zosta³o zmienione?
*bookmarksWhatsChanged.width:				400
*bookmarksWhatsChanged.minWidth:			400
*bookmarksWhatsChanged.maxWidth:			400
!*bookmarksWhatsChanged.height:				300
!*bookmarksWhatsChanged.minHeight:			300
!*bookmarksWhatsChanged.maxHeight:			300

*composeFolder.height:                          650
*composeFolder.shadowThickness:                 2
*composeFolder.bottomOffset:                    3
*composeFolder.leftOffset:                      3
*composeFolder.rightOffset:                     3
*composeFolder.topOffset:                       5
*composeFolder.spacing:                         1
*composeFolder.autoSelect:                      False


*mailto_field*fromLabel.labelString:		Od:
*mailto_field*replyToLabel.labelString:		Odpowiedz do:
*mailto_field*toLabel.labelString:		Wy¶lij do:
*mailto_field*ccLabel.labelString:		CC poczty:
*mailto_field*bccLabel.labelString:		BCC poczty:
*mailto_field*fccLabel.labelString:		Wype³nij CC:
*mailto_field*newsgroupsLabel.labelString:	Grupy dyskusyjnye:
*mailto_field*followupToLabel.labelString:	Prze¶lij do:
*mailto_field*attachmentsLabel.labelString:	Za³±cznik:
*mailto_field*attachButton.labelString:		Do³±cz...
*mailto_field*browseButton.labelString:		Przegl±daj...
*mailto_field*secureToggle.labelString:		Bezpiecznie
*mailto_bodyText.wordWrap:			True
*mailto_bodyText.scrollHorizontal:		False
*mailto_field*attachButton.marginWidth:		10
*mailto_field*fromLabel.alignment:		ALIGNMENT_END
*mailto_field*replyToLabel.alignment:		ALIGNMENT_END
*mailto_field*toLabel.alignment:		ALIGNMENT_END
*mailto_field*ccLabel.alignment:		ALIGNMENT_END
*mailto_field*bccLabel.alignment:		ALIGNMENT_END
*mailto_field*fccLabel.alignment:		ALIGNMENT_END
*mailto_field*newsgroupsLabel.alignment:	ALIGNMENT_END
*mailto_field*followupToLabel.alignment:	ALIGNMENT_END
*mailto_field*subjectLabel.alignment:		ALIGNMENT_END
*mailto_field*attachmentsLabel.alignment:	ALIGNMENT_END

! This is 72 rather than 79 or 80 because the width of the window controls
! when word wrapping should occur; the Motif text area has no mechanism for
! wrapping at a column other than the last one.  So, if we want a fill-column
! of N, the window must be N wide.  Note that wrapping must occur before 80:
! sending out lines with 80 characters on them is antisocial, as many programs
! and terminals (including emacs) can only display 79 characters without 
! wrapping.  Wrapping at 72 is better than wrapping at 79 because it leaves
! room for further followups to quote the lines with ">" without causing
! lines to wrap.
!
! Note that, in the composition window, lines beginning with ">" will not
! be wrapped at all, despite the appearance on the screen.  So just because
! it looks like the quoted text has been mangled, doesn't mean it has.
!
*mailto_bodyText.columns:					72
! This resource will change the size of the compose tab
*mailto_bodyText.rows:						25
*composeViewBaseWidget*composeViewEditFormWidget.leftOffset:	3
*composeViewBaseWidget*composeViewEditFormWidget.bottomOffset:	3
*composeViewBaseWidget*subject.topOffset:			3
*composeViewBaseWidget*subject.bottomOffset:			3
*composeViewBaseWidget*addReceipient.topOffset:			20
*composeViewBaseWidget*removeReceipient.topOffset:		15
*composeViewBaseWidget*selectReceipient.topOffset:		15
*composeViewBaseWidget*addReceipient.leftOffset:		5
*composeViewBaseWidget*removeReceipient.leftOffset:		5
*composeViewBaseWidget*selectReceipient.leftOffset:		5


! Some people just aren't too hip.
!*defaultMailtoText:			Hey, check out this cool URL:\n\n

*attachForm*attachWebPage.labelString:		Do³±cz stronê WWW...
*attachForm*attachWebPage.mnemonic:		W
*attachForm*attachFile.labelString:		Do³±cz plik...
*attachForm*attachFile.mnemonic:		F
*attachForm*deleteAttachment.labelString:	Kasuj za³±cznik
*attachForm*deleteAttachment.mnemonic:		D
*attachForm*attachAddressBookCard.labelString:	Do³±cz kartê osobist± (vCard)
*attachForm*attachAddressBookCard.mnemonic:	A

*location_popup.dialogTitle:			Netscape: Do³±cz stronê WWW
*location_popup*label.labelString:		Podaj stronê WWW do za³±czenia:
*location_popup*locationLabel.labelString:	Strona WWW (Adres URL):
*location_popup*locationText.columns:		40
*location_popup*locationText.leftOffset:	20
*location_popup*okLabelString:			Do³±cz
*location_popup*cancelLabelString:		Anuluj
*location_popup*clear.labelString:		Wyczy¶æ

*attachForm*fileBrowser_popup.title:		Netscape: Do³±cz plik
*attachForm*fileBrowser.OkLabelString:		Do³±cz

*formatType*none.labelString:		Bez za³±czników
*formatType*text.labelString:		Tekst
*formatType*formattedText.labelString:	Sformatowany tekst
*formatType*html.labelString:		¬ród³o
*formatType*tree.labelString:		¬ród³o i obrazki
*formatType*ps.labelString:		PostScript
*formatType*url.labelString:		Tylko URL


! Helper Editor stuff
*helperEditor_popup.title:				Aplikacje wspomagaj±ce Netscape
*helperEditor.width:					400
*helperEditor*mimeTypesDescriptionLabel.labelString:	Opis
*helperEditor*mimeTypesDescriptionLabel.leftOffset:	3
*helperEditor*mimeTypesLabel.labelString:		Typ
*helperEditor*mimeTypesLabel.leftOffset:		3
*helperEditor*mimeTypesSuffixLabel.labelString:		Rozszerzenie
*helperEditor*mimeTypesSuffixLabel.leftOffset:		3
*helperEditor*helperEditForm.XmTextField.rightOffset:	3
*helperEditor*helperEditFrameLabel.labelString:		Obs³ugiwany przez
*helperEditor*helperEditNavigator.labelString:		Nawigator
*helperEditor*helperEditPlugin.labelString:		Wtyczka
*helperEditor*helperEditApp.labelString:		Aplikacja
*helperEditor*helperEditSave.labelString:		Zachowaj na dysku
*helperEditor*helperEditUnknown.labelString:		Nieznany: Zapytaj u¿ytkownika
*helperEditor*helperEditAppBrowse.labelString:		Przegl±daj...
*helperEditor*helperEditNavigator.leftOffset:		20
*helperEditor*helperEditAppText.columns:		40


! Preferences: Styles 2
!


*enteringSecureDialog_popup.title:		Netscape: Dokument bezpieczny
*enteringSecureDialog*toggle.labelString:  	Poka¿ powiadomienie nastêpnym razem
*enteringSecureDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*enteringSecureDialog*toggle.leftOffset:	100
*enteringSecureDialog.selectionLabelString:	\
Za¿yczy³e¶(a¶) sobie dokument zabezpieczony. Dokument ten i ka¿da informacja\n\
któr± wy¶lesz z powrotem bêd± w czasie transmisji zaszyfrowane dla zapewnienia\n\
prywatno¶ci danych. Wiêcej informacji o bezpieczeñstwie uzyskasz z pozycji\n\
"Informacja o stronie" z menu Widok.

*leavingSecureDialog_popup.title:		Netscape: Alarm bezpieczeñstwa
*leavingSecureDialog*toggle.labelString:	Poka¿ powiadomienie nastêpnym razem
*leavingSecureDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*leavingSecureDialog.OkLabelString:		Kontynuj ³adowanie
*leavingSecureDialog.CancelLabelString:		Anuluj ³adowanie
*leavingSecureDialog*toggle.leftOffset:		100
*leavingSecureDialog.selectionLabelString:	\
Za¿yczy³e¶(a¶) sobie dokument niezabezpieczony. Dokument ten i ka¿da informacja\n\
któr± wy¶lesz z powrotem mo¿e byæ obserwowana przez innych w czasie transmisji.\n\
Wiêcej informacji o bezpieczeñstwie uzyskasz z pozycji "Informacja o stronie"\n\
z menu Widok.

*mixedSecurityDialog_popup.title:		Netscape: Alarm bezpieczeñstwa
*mixedSecurityDialog*toggle.labelString:	Poka¿ powiadomienie nastêpnym razem
*mixedSecurityDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*mixedSecurityDialog*toggle.leftOffset:		100
*mixedSecurityDialog.selectionLabelString:	\
Za¿yczy³e¶(a¶) sobie zabezpieczony dokument, który zawiera kilka\n\
niezabezpieczonych informacji.\n\
 \n\
Niezabezpieczone informacje nie zostan± pokazane.\n\
Wiêcej informacji o bezpieczeñstwie uzyskasz z pozycji "Informacja o stronie"\n\
z menu Widok.

*redirectionToInsecureDialog_popup.title:	Netscape: Alarm bezpieczeñstwa
*redirectionToInsecureDialog*toggle.labelString:Poka¿ powiadomienie nastêpnym razem
*redirectionToInsecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToInsecureDialog.OkLabelString:	Kontynuj ³adowanie
*redirectionToInsecureDialog.CancelLabelString:	Anuluj ³adowanie
*redirectionToInsecureDialog*toggle.leftOffset:	100
*redirectionToInsecureDialog.selectionLabelString:\
Uwaga! Za¿yczy³e¶(a¶) sobie niezabezpieczony dokument, który oryginalnie\n\
zosta³ zaprojektowany jako zabezpieczony. Dokument ten i ka¿da\n\
informacja, któr± wy¶lesz z powrotem mo¿e byæ obserwowana przez\n\
innych podczas transmisji.

*redirectionToSecureDialog_popup.title:	Netscape: Alarm bezpieczeñstwa
*redirectionToSecureDialog*toggle.labelString:	Poka¿ powiadomienie nastêpnym razem
*redirectionToSecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToSecureDialog.OkLabelString:	Kontynuj ³adowanie
*redirectionToSecureDialog.CancelLabelString:	Anuluj ³adowanie
*redirectionToSecureDialog*toggle.leftOffset:	100
*redirectionToSecureDialog.selectionLabelString:\
Uwaga! Twoje po³±czenie zosta³o przekierunkowane do innego serwera.\n\
Mo¿esz nie byæ pod³±czony(na) do serwera, którego próbowa³e¶(a¶) osi±gn±æ.

*insecurePostFromSecureDocDialog_popup.title:	     Netscape: Alarm bezpieczeñstwa
*insecurePostFromSecureDocDialog*toggle.labelString: Poka¿ powiadomienie nastêpnym razem
*insecurePostFromSecureDocDialog*toggle.alignment:   ALIGNMENT_BEGINNING
*insecurePostFromSecureDocDialog.OkLabelString:      Kontynuj potwierdzenie
*insecurePostFromSecureDocDialog.CancelLabelString:  Anuluj potwierdzenie
*insecurePostFromSecureDocDialog*toggle.leftOffset:  100
*insecurePostFromSecureDocDialog.selectionLabelString:\
Uwaga! Jakkolwiek ten dokument jest bezpieczny, jak±kolwiek informacjê\n\
zatwierdzisz, bêdzie ona niezabezpieczona i mo¿e byæ obserwowana przez\n\
innych w czasie transmisji. Je¶li podajesz has³a, numery kart kredytowych\n\
lub inne osobiste informacje, bêdzie bezpieczniej je¶li anulujesz tê\n\
operacjê.

*insecurePostFromInsecureDocDialog_popup.title:	      Netscape: Alarm bezpieczeñstwa
*insecurePostFromInsecureDocDialog.OkLabelString:     Kontynuj potwierdzenie
*insecurePostFromInsecureDocDialog.CancelLabelString: Anuluj potwierdzenie
*insecurePostFromInsecureDocDialog*toggle.labelString:Poka¿ powiadomienie nastêpnym razem
*insecurePostFromInsecureDocDialog*toggle.alignment:  ALIGNMENT_BEGINNING
*insecurePostFromInsecureDocDialog*toggle.leftOffset: 100
*insecurePostFromInsecureDocDialog.selectionLabelString:\
Informacja któr± zatwierdzasz jest niezabezpieczona i mo¿e byæ\n\
obserwowana przez innych podczas transmisji. Je¶li zatwierdzasz\n\
has³a, numery kart kredytowych lub inne informacje, które s± poufne\n\
by³oby bezpieczniej anulowaæ tê operacjê.


*licenseDialog_popup.title:			Netscape: Umowa Licencyjna
*licenseDialog*label1.labelString:\n\
 Netscape jast programem licencjonowanym. Jego u¿ywanie jest\n\
 tematem poni¿szej umowy licencyjnej.\n
*licenseDialog*label2.labelString:		\n\
 Je¶li zgadzasz siê z warunkami tej umowy licencyjnej,\n\
 wci¶nij 'Akceptujê'. W przeciwnym razie wci¶nij 'Nie akceptujê'.\n
*licenseDialog*text.columns:			72
*licenseDialog*text.rows:			23
*licenseDialog*text.wordWrap:			True
*licenseDialog*text.scrollHorizontal:		False
*licenseDialog.accept.labelString:		Akceptujê
*licenseDialog.reject.labelString:		Nie akceptujê

*printSetup_popup.title:			Netscape: Wydruk
*printSetup*printToLabel.labelString:		Kieruj wydruk:
*printSetup*toPrinterToggle.labelString:	na drukarkê
*printSetup*toFileToggle.labelString:		do pliku
*printSetup*printCommandLabel.labelString:	Polecenie drukowania:
*printSetup*fileNameLabel.labelString:		Nazwa pliku:
*printSetup*browseButton.labelString:		Przegl±daj...
*printSetup*printLabel.labelString:		Drukuj:
*printSetup*firstFirstToggle.labelString:	Najpierw strona pierwsza
*printSetup*lastFirstToggle.labelString:	Najpierw strona ostatnia
*printSetup*orientationLabel.labelString:	Po³o¿enie:
*printSetup*portraitToggle.labelString:		Pionowo
*printSetup*landscapeToggle.labelString:	Poziomo
*printSetup*printColorLabel.labelString:	Drukuj:
*printSetup*greyscaleToggle.labelString:	Odcienie szaro¶ci
*printSetup*colorToggle.labelString:		Kolor
*printSetup*paperSizeLabel.labelString:		Rozmiar papieru:
*printSetup*letterToggle.labelString:		Listowy (8 1/2 x 11 in.)
*printSetup*legalToggle.labelString:		Legal (8 1/2 x 14 in.)
*printSetup*executiveToggle.labelString:	Executive (7 1/2 x 10 in.)
*printSetup*a4Toggle.labelString:		A4 (210 x 297 mm)
*printSetup*OK.labelString:			Drukuj
*printSetup*OkLabelString:			Drukuj
*printSetup*CancelLabelString:			Anuluj
*printSetup*XmLabel.alignment:			ALIGNMENT_END
*printSetup*XmLabelGadget.alignment:		ALIGNMENT_END
*printSetup*XmToggleButtonGadget.alignment:	ALIGNMENT_BEGINNING
*printSetup*XmToggleButtonGadget.indicatorType:	ONE_OF_MANY
*printSetup*lastFirstToggle.leftOffset:		10
*printSetup*landscapeToggle.leftOffset:		10
*printSetup*colorToggle.leftOffset:		10
*printSetup*legalToggle.leftOffset:		10
*printSetup*a4Toggle.leftOffset:		10
*printSetup*XmLabel.rightOffset:		10
*printSetup*XmLabelGadget.rightOffset:		10
*printSetup*browseButton.marginHeight:		3
*printSetup*browseButton.marginWidth:		4
*printSetup*line.topOffset:			4
*printSetup*printLabel.topOffset:		4
*printSetup*firstFirstToggle.topOffset:		10
*printSetup*portraitToggle.topOffset:		10
*printSetup*greyscaleToggle.topOffset:		10
*printSetup*letterToggle.topOffset:		10
!*printSetup_popup*preeditType:			none

*findDialog_popup.title:			Netscape: Szukaj
*findDialog*findInLabel.labelString:		Szukaj w:
*findDialog*msgHeaders.labelString:		Nag³ówkach wiadomo¶ci tego folderu
*findDialog*msgBody.labelString:		Tre¶ci tej wiadomo¶ci
*findDialog*msgHeaders.indicatorType:		ONE_OF_MANY
*findDialog*msgBody.indicatorType:		ONE_OF_MANY
*findDialog*findLabel.labelString:		Szukaj:
*findDialog*findLabel.alignment:		ALIGNMENT_END
*findDialog*caseSensitive.labelString:		Uwzglêdnij wielko¶æ liter
*findDialog*backwards.labelString:		Wstecz
*findDialog*backwards.leftOffset:		20
*findDialog*caseSensitive.alignment:		ALIGNMENT_BEGINNING
*findDialog*backwards.alignment:		ALIGNMENT_BEGINNING
*findDialog*XmToggleButtonGadget.indicatorType:	N_OF_MANY
*findDialog*XmToggleButtonGadget.visibleWhenOff:True
*findDialog*OK.labelString:			Szukaj
*findDialog*OkLabelString:			Szukaj
*findDialog*Apply.labelString:			Wyczy¶æ
*findDialog*ApplyLabelString:			Wyczy¶æ
*findDialog*Cancel.labelString:			Zamknij
*findDialog*CancelLabelString:			Zamknij
!*findDialog_popup*preeditType:			overthespot
! Bookmark Find dialog shares resources with the main find dialog
! Extra resources specific to bookmark find dialog
*findDialog*lookinLabel.labelString:		Szukaj w:
*findDialog*nameToggle.labelString:		Nazwach
*findDialog*locationToggle.labelString:		Adresach URL
*findDialog*descriptionToggle.labelString:	Opisach
*findDialog*wordToggle.labelString:		Ca³e s³owo
*findDialog*helptext.labelString:		U¿yj "Przeszukaj ponownie" by dalej szukaæ

! More resources for the Addressbook find dialog
*findDialog*nicknameToggle.labelString:		Pseudonim


*openURLDialog_popup.title:			Netscape: Otwórz stronê
!*openURLDialog_popup*preeditType:		none
*openURLDialog*label.labelString:		\
Wpisz adres (URL) lub podaj nazwê pliku lokalnego, który\n\
chcesz wczytaæ:
*openURLDialog*choose.labelString:		Wybierz plik...
*openURLDialog*toolLabel.labelString:		Otwórz adres URL lub plik w:
*openURLDialog*browserToggle.labelString:	Nawigator
*openURLDialog*editorToggle.labelString:	Edytor
*openURLDialog*OK.labelString:			Otwórz
*openURLDialog*OkLabelString:			Otwórz
*openURLDialog*Apply.labelString:		Wyczy¶æ
*openURLDialog*ApplyLabelString:		Wyczy¶æ
*openURLDialog*Cancel.labelString:		Anuluj
*openURLDialog*CancelLabelString:		Anuluj
*openURLDialog*label.alignment:			ALIGNMENT_BEGINNING
*openURLDialog*XmToggleButtonGadget.indicatorType: ONE_OF_MANY
*openURLDialog*XmRowColumn.orientation:		VERTICAL
*openURLDialog*browserToggle.set:		True
*openURLDialog*XmTextField.columns:		45
!*openURLDialog.width:				500
*openURLDialog*openInEditor.labelString:	W Edytorze
*openURLDialog*openInBrowser.labelString:	W Nawigatorze

*message_popup.title:			Netscape
*message_popup*OK.labelString:		OK
*message_popup*OkLabelString:		OK

*error_popup.title:			Netscape: B³±d

*question_popup.title:			Netscape: Pytanie
*question_popup*OK.labelString:		OK
*question_popup*Cancel.labelString:	Anuluj

*prompt_popup.title:			Netscape: Wpisz
*password_popup.title:			Netscape: Has³o
*promptSubject_popup.title:		Netscape: Wpisz temat
*stdout_popup.title:			Netscape: diagnostyka podprocesu (stdout)
*stderr_popup.title:			Netscape: diagnostyka podprocesu (stderr)
*stdout_stderr_popup.title:		Netscape: diagnostyka podprocesu (stdout/stderr)

*citing_popup.title:			Netscape
*citing_popup*messageString:		\nCytujê...\n

*printing_popup.title:			Netscape
*printing_popup*messageString:		\nDrukujê...\n

*deliveringMessage_popup.title:		Netscape
*deliveringMessage_popup*messageString:	\nDostarczam wiadomo¶æ...\n

*saving_popup.title:			Netscape
*saving_popup*messageString:		\nZachowujê na dysku...\n

*visual_popup.title:			Netscape: Zmieñ X Visual
*visual_popup*listLabelString:		Dostêpne widoczno¶ci:

*autoSaveNew.title:			Netscape: Automatycznie zachowaæ nowy dokument
*saveFile_popup.title:			Netscape: Zachowaæ dokument
*saveNewFile_popup.title:		Netscape: Zachowaæ nowy dokument
*markMessagesRead_popup.title:		Oznacz wiadomo¶æ jako przeczytan±

*promptSubject_popup*messageString:	\
Nie poda³e¶(a¶) tematu tej wiadomo¶ci.\n\
Je¶li chcesz podaæ jaki¶, wpisz go teraz.

*dialog*OK.labelString:			OK
*dialog*clear.labelString:		Wyczy¶æ
*dialog*Cancel.labelString:		Anuluj
*dialog*userLabel.labelString:		ID u¿ytkownika:
*dialog*passwdLabel.labelString:	Has³o:
*dialog*userLabel.alignment:		ALIGNMENT_END
*dialog*passwdLabel.alignment:		ALIGNMENT_END
*dialog*dialogform*text.columns:	50
*dialog*dialogform*pwtext.columns:	50

*clear.labelString:			Wyczy¶æ
*cancel.labelString:			Anuluj
*OK.labelString:			OK
*Cancel.labelString:			Anuluj
*Apply.labelString:			Zastosuj
*Help.labelString:			Pomoc

*citationQuery_popup.title:		Pytanie o styl cytatu
*citationQuery.selectionLabelString:	\n\
Cytujesz ca³y dokument zamiast go do³±czyæ.

*citationQuery*OK.labelString:		Wy¶lij jako\nZa³±cznik tekstowy
*citationQuery*OkLabelString:		Wy¶lij jako\nZa³±cznik tekstowy
*citationQuery*Apply.labelString:	Wy¶lij jako\nCytat
*citationQuery*ApplyLabelString:	Wy¶lij jako\nCytat
*citationQuery*Cancel.labelString:	Anuluj
*citationQuery*CancelLabelString:	Anuluj

*doubleCitationQuery_popup.title:	Pytanie o styl cytatu
*doubleCitationQuery.selectionLabelString:	\n\
Prawdopodobnie nie¶wiadomie wstawi³e¶(a¶) ten sam dokument drugi raz:\n\
pierwotnie jako cytat (ze znakiem `>' na pocz±tku ka¿dej linii)\n\
a pó¼niej jako za³±cznik (jako drug± czê¶æ wiadomo¶ci dodan±\n\
po nowym tekscie).\n\
 \n\
Czy chcia³by¶/chcia³aby¶ wys³aæ za³±czony lub cytowany dokument?

*doubleCitationQuery*OK.labelString:	Wy¶lij jako\nZa³±cznik tekstowy
*doubleCitationQuery*OkLabelString:	Wy¶lij jako\nZa³±cznik tekstowy
*doubleCitationQuery*Apply.labelString:	Wy¶lij jako\nCytat
*doubleCitationQuery*ApplyLabelString:	Wy¶lij jako\nCytat
*doubleCitationQuery*Cancel.labelString:Anuluj
*doubleCitationQuery*CancelLabelString:	Anuluj

*streamingAudioQuery_popup.title:	Pytanie dotycz±ce d¼wiêku
*streamingAudioQuery.selectionLabelString:	\
Czy chcesz ods³uchaæ d¼wiêk(i) z zewnetrznego odtwarzacza podczas\n\
¶ciagania danych, czy te¿ zachowaæ do pliku i odegraæ pó¼niej?
*streamingAudioQuery*OK.labelString:	Odegraj z sieci
*streamingAudioQuery*OkLabelString:	Odegraj z sieci
*streamingAudioQuery*Apply.labelString:	Najpierw zachowaj
*streamingAudioQuery*ApplyLabelString:	Najpierw zachowaj
*streamingAudioQuery*Cancel.labelString:Anuluj
*streamingAudioQuery*CancelLabelString:	Anuluj

*fileSelector*filterLabelString:	Filtr
*fileSelector*dirListLabelString:	Katalogi
*fileSelector*fileListLabelString:	Pliki
*fileSelector*OkLabelString:		OK
*fileSelector*ApplyLabelString:		Filtr
*fileSelector*CancelLabelString:	Anuluj
*fileSelector.Selection.labelString:	Wybór
*fileSelector.pattern:			*.html
*fileSelector*fileTypeMask:		FILE_ANY_TYPE
*fileSelector*saveTypeBox.orientation:	HORIZONTAL
*fileSelector*formatType.labelString:	Format zachowywanego dokumentu:
!*fileSelector_popup*preeditType:	overthespot

*fileBrowser_popup.title:		Netscape: Wybierz plik
*fileBrowser*filterLabelString:		Filtr
*fileBrowser*dirListLabelString:	Katalogi
*fileBrowser*fileListLabelString:	Pliki
*fileBrowser*Selection.labelString:	Wybór
*fileBrowser*OkLabelString:		OK
*fileBrowser*ApplyLabelString:		Filtr
*fileBrowser*CancelLabelString:		Anuluj
*fileBrowser*HelpLabelString:		Pomoc
*fileBrowser*encodingFrame*optionMenu.labelString: Typ pliku:
*fileBrowser*encodingFrame*attachAutoDetect.labelString: Autodetekcja
*fileBrowser*encodingFrame*attachBinary.labelString: Binarny


*formSubmitButton.labelString:		OK
*formResetButton.labelString:		Kasuj
*formButton.labelString:		Ma³pie mó¿d¿ki (ale co to jest?)
*formFileBrowseButton.labelString:	Przegl±daj...

! Bookmarks popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*bookmarks*popup.title.labelString:		Zak³adki
*bookmarks*popup*newFolder.labelString:		Nowy folder...
*bookmarks*popup.saveURL.acceleratorText:

*titleSeparator.separatorType:			XmDOUBLE_LINE

! Bookmarks edit properties window.
!
*bookmarkProps_popup*title:			Netscape: W³asno¶ci zak³adek
*bookmarkProps*nameLabel.labelString:		Nazwa:
*bookmarkProps*nameLabel.alignment:		ALIGNMENT_END
*bookmarkProps*locationLabel.labelString:	Adres URL:
*bookmarkProps*locationLabel.alignment:		ALIGNMENT_END
*bookmarkProps*descriptionLabel.labelString:	Opis:
*bookmarkProps*descriptionLabel.alignment:	ALIGNMENT_END
*bookmarkProps*lastvisitedLabel.labelString:	Ostatnio odwiedzany:
*bookmarkProps*lastvisitedLabel.alignment:	ALIGNMENT_END
*bookmarkProps*addedonLabel.labelString:	Dodany w dniu:
*bookmarkProps*addedonLabel.alignment:		ALIGNMENT_END
*bookmarkProps*descriptionText.topOffset:	8
*bookmarkProps*descriptionText.columns:		40
*bookmarkProps*descriptionText.rows:		5
*bookmarkProps*aliasButton.labelString:		Wybierz skróty

!
! Address Book
!
*AddressBook*mainform.width:			760
*AddressBook*mainform.height:			400
*AddressBook*menuBar.Item.labelString:		Pozycja
*AddressBook*addUser.labelString:		Dodaj u¿ytkownika...
*AddressBook*addUser.mnemonic:			U
*AddressBook*addList.labelString:		Dodaj listê...
*AddressBook*addList.mnemonic:			L
*AddressBook*properties.labelString:		W³asno¶ci
*AddressBook*properties.mnemonic:		P
*AddressBook*queryLabel.labelString:		Wpisz nazwê której szukasz:
*AddreMsgWin*toBtn.labelString:                 To:
!*AddreMsgWin*toBtn.mnemonic:			T
*AddreMsgWin*ccBtn.labelString:                 CC:
!*AddreMsgWin*ccBtn.mnemonic:			C
*AddreMsgWin*bccBtn.labelString:              	BCC:
!*AddreMsgWin*bccBtn.mnemonic:			B
*AddreMsgWin*removeBtn.labelString:           	Usuñ
*AddreMsgWin*addToAddressBtn.labelString:       Dodaj do ksi±¿ki adresowej
*AddreMsgWin*propertiesBtn.labelString:     	W³asno¶ci
*AddreMsgWin*delBtn.labelString:     		Kasuj
!*AddreMsgWin*addToAddressBtn.mnemonic:       	A
*AddressBook*dirLabel.labelString:		w:
*AddressBook*searchBtn.labelString:		Szukaj
*AddressBook*helpBar.height:			10
*AddressBook*outline.Name:			Nazwa
*AddressBook*outline.Nick:			Pseudonim
*AddressBook*outline.Secure:			Bezpiecznie
*AddressBook*outline.HTML:			HTML
*AddressBook*mainform.fontList:			-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2

! The mail compose window part of addr book
*mc_queryLabel.labelString:	Wpisz nazwê której szukasz:
*mc_dirLabel.labelString:	w:
*mc_searchBtn.labelString:	Szukaj
*mc_tobtn.labelString:		To:
*mc_ccbtn.labelString:		CC:
*mc_bccbtn.labelString:		BCC:
*mc_okbtn.labelString:		OK
*mc_cancelbtn.labelString:	Anuluj

! Address Book popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*AddressBook*popup.title.labelString:			Ksi±¿ka adresowa
*AddressBook*popup.titleSeparator.separatorType:	XmDOUBLE_LINE


!
! Download
!
*Download*downloadURLLabel.labelString:			¬ród³o:
*Download*downloadFileLabel.labelString:		Zachowaj w:
*Download*stopLoading.labelString:			Przerwij
*Download*downloadURLLabel.alignment:			ALIGNMENT_END
*Download*downloadFileLabel.alignment:			ALIGNMENT_END

*Download*downloadURLLabel.topOffset:			10
*Download*downloadURLLabel.leftOffset:			10
*Download*downloadURLValue.columns:			45
*Download*downloadURLValue.editable:			False
*Download*downloadURLValue.cursorPositionVisible:	False
*Download*downloadURLValue.leftOffset:			10
*Download*downloadURLValue.rightOffset:			10

*Download*downloadFileLabel.topOffset:			5
*Download*downloadFileLabel.leftOffset:			10
*Download*downloadFileLabel.bottomOffset:		15
*Download*downloadFileValue.columns:			45
*Download*downloadFileValue.editable:			False
*Download*downloadFileValue.cursorPositionVisible:	False
*Download*downloadFileValue.leftOffset:			10
*Download*downloadFileValue.rightOffset:		10

*Download*logo.topOffset:				15
*Download*logo.rightOffset:				10
*Download*cancel.marginWidth:				15
*Download*cancel.marginHeight:				10
*Download*cancel.topOffset:				20
*Download*cancel.bottomOffset:				10


! Need class name in here to defeat *sgiMode and HP-VUE color nonsense...
! On SGIs, not having the class will cause the default SGI colors to
! be used instead of the ones specified here.  With VUE, the behavior
! is even worse - if we're using a non-default visual (for example, if
! we have requested a 24-bit TrueColor visual instead of the default
! 8-bit PseudoColor) then VUE will ignore the fact that we're not using
! the default visual, and give us colors allocated from the wrong
! colormap, resulting in lovely effects like brown-on-brown menubars!
!
! (Note: if you comment this stuff out in an attempt to let the current
! "scheme" override things, you'll find that the colors of the toolbar
! icons and the colors of form elements (like option menus) will get
! messed up.)
!Netscape*background:			#B2B2B2
Netscape*foreground:			Black
Netscape*background:			#C0C0C0

*textBackground:			#FFFFFF

! All but SGI: Set reasonable Text and List colors.
! SGI uses the default IRIX scheme colors.
Netscape*XmTextField.foreground:	Black
Netscape*XmText.foreground:		Black
Netscape*XmList.foreground:		Black
Netscape*XmTextField.background:	#FFFFFF
Netscape*XmText.background:		#FFFFFF
Netscape*XmList.background:		#FFFFFF

! On SGI, the IRIX scheme colors will override these resources,
! but we need to specify them for SGI users who turn off schemes.
! Resource color values must match the 'NOTSGI' values above.
!*XmTextField.foreground:	Black
!*XmText.foreground:		Black
!*XmList.foreground:		Black
!*XmTextField.background:	#FFFFFF
!*XmText.background:		#FFFFFF
!*XmList.background:		#FFFFFF

! Colors of the outline lists used in mail and news windows.
Netscape*XmLGrid.foreground:		#000000
Netscape*XmLGrid.background:		#C0C0C0
!Netscape*XmLGrid.selectBackground:	#FFFFCC


! Turn off borders in XmLFolder widgets.
Netscape*XmLFolder.highlightThickness: 0

! Colors of the "Secure Document" bar.
!*secureDocumentColor:			#0000BF
!*insecureDocumentColor:		#0C0C0C

! Default for all buttons
Netscape*XmPushButton*shadowThickness:		2
Netscape*XmPushButtonGadget*shadowThickness:	2

! And for option menus:
Netscape*XmCascadeButton.shadowThickness:	2
Netscape*XmCascadeButtonGadget.shadowThickness:	2

!!
!! *logo
!!
*logo.animationInterval:		150
*logo.marginBottom:			0
*logo.marginLeft:			0
*logo.marginRight:			0
*logo.marginTop:			0
*logo.shadowThickness:			1
*logo.documentationString:		Strona domowa firmy Netscape Communications Corporation.
*logo.tipString:			Poka¿ firmê Netscape

*historyMenuBox.marginHeight:		0
*historyMenuBox.marginWidth:		0

*characterToolbarFrame.leftOffset:	2
*paragraphToolbarFrame.leftOffset:	2
*composeToolbarFrame.leftOffset:	2

*topPane.shadowThickness:		2
*bottomPane.shadowThickness:		2
*topPane.shadowType:			SHADOW_IN
*bottomPane.shadowType:			SHADOW_IN

! Go ahead, try and figure out why some of these need to be on the
! _popup version, and some need to be one level deeper.  I dare you.
!*dialog.width:				500
!*history.width:			500
!*mailto.width:				500
!*cache_popup.width:			500
*userConfig_popup.width:		500
*userConfig.width:			500
*fileSelector.width:			500
*fileBrowser.width:			500

! I had to hardcode this in the C code - doesn't work from here...
!*history_popup.allowShellResize:	False

! Get rid of all navigation; it's totally broken for Paned windows,
! and for the form widgets under the drawingArea.
*highlightThickness:			0
*navigationType:			NONE

! Uh, but turn it back on in the popups (really I'd like to turn it off
! in all non-popups, but I don't think there's a way to specify that...)
*XmDialogShell*highlightThickness:	2
*XmDialogShell*navigationType:		TAB_GROUP

! Mail compose needs TAB_GROUP
!*Composition*form.navigationType:       TAB_GROUP
*mailcompose_container*XmText.navigationType:           TAB_GROUP
*mailcompose_container*XmTextField.navigationType:      TAB_GROUP

! Uh, and turn it on only in text fields of forms.
! But of course this doesn't work quite right.
*drawingArea*XmText.navigationType:	TAB_GROUP
*drawingArea*XmTextField.navigationType:TAB_GROUP

! Sorry, things don't display properly if you configure Netscape to put its
! scrollbars on the left or top of the document area.
Netscape*scroller.scrollBarPlacement:	BOTTOM_RIGHT

! Put scrollbars right next to text fields in forms (and lists).
*drawingArea*XmScrolledWindow.spacing:			0

! Do not under any circumstances change the following line:
Netscape.version: 		4.8


! ============================================================================
! Fonts in the widgets.
! These fonts are all down in Motif land, and thus are not controlled by the
! font selector on the Preferences dialog.  That applies only to fonts in
! the document display area.
! ============================================================================
!
*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2

*XmTextField.fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*XmText.fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*XmList*fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2

! SGI default:
!*menuBar*fontList:		-*-helvetica-bold-o-*-*-*-120-*-*-*-*-iso8859-2
! Sensible default:
!*menuBar*fontList:		-*-lucida-medium-r-normal-*-*-120-*-*-*-*-iso8859-2

*menuBar*historyTruncated.fontList:\
				-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-2
*popup*fontList:		-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2

!*topArea*fontList:		-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
!*topArea*XmTextField.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2
!*topArea*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2

!*bookmark*fontList:		-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
!*bookmark*fontList:		-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
!*bookmark*selectedLabel.fontList:\
				-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
!*bookmark*XmTextField.fontList:-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2
!*bookmark*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*docinfoButton.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*mailto*urlLabel.fontList:	-*-helvetica-medium-r-*-*-*-140-*-*-*-*-iso8859-2

*licenseDialog*text.fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2

! These are the fonts used in the outline lists used in Mail, News, Bookmarks,
! and Address Book windows.  (Note that there can't be any whitespace after
! the commas.)

! For non-SUN platforms, user can accept font size to be 10 pt on the message list
Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2,\
-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-2=BOLD,\
-*-helvetica-medium-o-*-*-*-100-*-*-*-*-iso8859-2=ITALIC

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2,\
-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2=BOLD,\
-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-2=ITALIC

! Font for the Mail/News banner
! For non-SUN platforms, user can accept font size to be 10 pt to be default on the message list
Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-2
Netscape*banner*folderDropdown*fontList:\
-adobe-courier-medium-r-*-*-*-100-*-*-*-*-iso8859-2,\
-adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-2=BOLD

Netscape*banner*title.fontList:		-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-2
Netscape*banner*subtitle.fontList:	-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2
Netscape*banner*info.fontList:		-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-2
!Netscape*banner*folderDropdown*.fontList:\
-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2,\
-adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-2=BOLD

!Netscape*banner*title.fontList:	-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
!Netscape*banner*subtitle.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
!Netscape*banner*info.fontList:		-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*banner*folderDropdown*shadowThickness: 1
! Font for the Thread window expando flippy label
*arrowlabel.fontList:			-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

! Font for the attachment panel icon label
! need class name to defeat *sgiMode
Netscape*attachItemLabel*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

! This is the default charset for the View | Character Set menu.
! The following values have special meanings:
!   iso-2022-jp: Japanese (Auto-Detect)
!   iso-2022-kr: Korean (Auto-Detect)
!
!*defaultCharset:	iso-8859-1
*defaultCharset:	iso-8859-2
!*defaultCharset:	windows-1250
!*defaultCharset:	iso-2022-jp
!*defaultCharset:	shift_jis
!*defaultCharset:	euc-jp
!*defaultCharset:	big5
!*defaultCharset:	x-euc-tw
!*defaultCharset:	gb2312
!*defaultCharset:	iso-2022-kr
!*defaultCharset:	iso-8859-5
!*defaultCharset:	koi8-r
!*defaultCharset:	windows-1251
!*defaultCharset:	iso-8859-7
!*defaultCharset:	windows-1253
!*defaultCharset:	iso-8859-9
!*defaultCharset:	utf-8
!*defaultCharset:	utf-7



! ============================================================================
! Fonts used in the display area.
! ============================================================================


! Default fonts for various charsets, prop(ortional) and fixed.
!
! Format is foundry-family-pointsize-scaling.
! Pointsize is in tenths of a point.
! Scaling is either "scale" or "noscale".
!
! These are only used the first time you start up.
! After that, the preferences file is used.
! The "Defaults" button in the Preferences dialog will revert to these.
!
*documentFonts.defaultFont*iso-8859-1.prop:	adobe-times-120-noscale
*documentFonts.defaultFont*iso-8859-1.fixed:	adobe-courier-100-noscale

*documentFonts.defaultFont*UTF-8.prop:	nsPseudoFont-times-120-noscale
*documentFonts.defaultFont*UTF-8.fixed:	nsPseudoFont-courier-100-noscale


! This table maps weight/slant pairs to bold/italic/boldItalic/normal
!
*documentFonts.face*-:			normal
*documentFonts.face*bold-i:		boldItalic
*documentFonts.face*bold-o:		boldItalic
*documentFonts.face*bold-r:		bold
*documentFonts.face*book-o:		italic
*documentFonts.face*book-r:		normal
*documentFonts.face*demi-i:		boldItalic
*documentFonts.face*demi-o:		boldItalic
*documentFonts.face*demi-r:		bold
*documentFonts.face*demibold-i:		boldItalic
*documentFonts.face*demibold-r:		bold
*documentFonts.face*light-i:		italic
*documentFonts.face*light-r:		normal
*documentFonts.face*medium-i:		italic
*documentFonts.face*medium-o:		italic
*documentFonts.face*medium-r:		normal
*documentFonts.face*medium-roman:	normal
*documentFonts.face*normal-i:		italic
*documentFonts.face*normal-r:		normal
*documentFonts.face*regular-i:		italic
*documentFonts.face*regular-r:		normal
*documentFonts.face*roman-r:		normal
*documentFonts.face*w3-r:		normal
*documentFonts.face*w3h-r:		normal
*documentFonts.face*w4-r:		normal
*documentFonts.face*w5-r:		normal
*documentFonts.face*w9-r:		normal


! This table maps XLFD family names to nice family names
!
*documentFonts.family*djb:			DJB
*documentFonts.family*haebfix:			Haeberli Fixed
*documentFonts.family*itc avant garde gothic:	ITC Avant Garde Gothic
*documentFonts.family*itc bookman:		ITC Bookman
*documentFonts.family*itc zapf chancery:	ITC Zapf Chancery
*documentFonts.family*itc zapf dingbats:	ITC Zapf Dingbats
*documentFonts.family*lucidatypewriter:		Lucida Typewriter


! This table maps XLFD foundry names to nice foundry names
!
*documentFonts.foundry*b&h:	B&H
*documentFonts.foundry*dec:	DEC
*documentFonts.foundry*hku:	HKU
*documentFonts.foundry*sgi:	SGI
*documentFonts.foundry*nsPseudoFont:	NSPseudoFonts


! This table maps MIME charsets to language groups
!
*documentFonts.charsetlang*gb_2312-80:			Chiñska uproszczona
*documentFonts.charsetlang*iso-8859-1:			Zachodnia
*documentFonts.charsetlang*iso-8859-2:			Europy ¦rodkowej
*documentFonts.charsetlang*iso-8859-5:			Cyrylica
*documentFonts.charsetlang*iso-8859-7:			Grecka
*documentFonts.charsetlang*iso-8859-9:			Turecka
*documentFonts.charsetlang*jis_x0201:			Japoñska
*documentFonts.charsetlang*jis_x0208-1983:		Japoñska
*documentFonts.charsetlang*jis_x0212-1990:		Japoñska
*documentFonts.charsetlang*koi8-r:			Cyrylica
*documentFonts.charsetlang*ks_c_5601-1987:		Koreañska
*documentFonts.charsetlang*x-cns11643-1110:		Chiñska tradycyjna
*documentFonts.charsetlang*x-cns11643-1:		Chiñska tradycyjna
*documentFonts.charsetlang*x-cns11643-2:		Chiñska tradycyjna
*documentFonts.charsetlang*x-gb2312-11:			Chiñska uproszczona
*documentFonts.charsetlang*x-jisx0208-11:		Japoñska
*documentFonts.charsetlang*x-ksc5601-11:		Koreañska
*documentFonts.charsetlang*x-x-big5:			Chiñska tradycyjna
*documentFonts.charsetlang*unicode-2-0:			Unikod


! This table maps X11 font charsets to MIME charsets
!
*documentFonts.charset*-:					x-ignore
*documentFonts.charset*-ascii:					x-ignore
*documentFonts.charset*-dingbats:				x-ignore
*documentFonts.charset*-hiragana:				x-ignore
*documentFonts.charset*-ibm pc:					x-ignore
*documentFonts.charset*-katakana:				x-ignore
*documentFonts.charset*-roman:					x-ignore
*documentFonts.charset*-symbol:					x-ignore
*documentFonts.charset*78-h:					x-ignore
*documentFonts.charset*78.euc-h:				x-ignore
*documentFonts.charset*add-h:					x-ignore
*documentFonts.charset*adobe.cns1-0:				x-ignore
*documentFonts.charset*adobe.gb1-0:				x-ignore
*documentFonts.charset*adobe.japan1-0:				x-ignore
*documentFonts.charset*adobe.japan1-1:				x-ignore
*documentFonts.charset*adobe.japan1-2:				x-ignore
*documentFonts.charset*adobe.japan2-0:				x-ignore
*documentFonts.charset*adobe.korea1-0:				x-ignore
*documentFonts.charset*big5-0:					x-x-big5
*documentFonts.charset*big5.et-0:				x-x-big5
*documentFonts.charset*big5.et.ext-0:				x-x-big5
*documentFonts.charset*big5.etext-0:				x-x-big5
*documentFonts.charset*big5.hku-0:				x-x-big5
*documentFonts.charset*big5.hku-1:				x-x-big5
*documentFonts.charset*big5.pc-0:				x-x-big5
*documentFonts.charset*big5.shift-0:				x-x-big5
*documentFonts.charset*cmr.sun-fontspecific:			x-ignore
*documentFonts.charset*cns11643-0:				x-cns11643-1
*documentFonts.charset*cns11643-1:				x-cns11643-2
*documentFonts.charset*cns11643.1986-1:				x-cns11643-1
*documentFonts.charset*cns11643.1986-2:				x-cns11643-2
*documentFonts.charset*cns11643.1992-1:				x-cns11643-1
*documentFonts.charset*cns11643.1992-2:				x-cns11643-2
*documentFonts.charset*cns11643.1992.1-0:			x-cns11643-1
*documentFonts.charset*cns11643.1992.2-0:			x-cns11643-2
*documentFonts.charset*dec-decctrl:				x-ignore
*documentFonts.charset*dec-decksroman:				x-ignore
*documentFonts.charset*dec-decmath_extension:			x-ignore
*documentFonts.charset*dec-decmath_italic:			x-ignore
*documentFonts.charset*dec-decmath_symbol:			x-ignore
*documentFonts.charset*dec-decsuppl:				x-ignore
*documentFonts.charset*dec-dectech:				x-ignore
*documentFonts.charset*dec-drcs:				x-ignore
*documentFonts.charset*dec-fontspecific:			x-ignore
*documentFonts.charset*dec.cns11643.1986-2:			x-cns11643-1110
*documentFonts.charset*dec.cns11643.1986-udc:			x-ignore
*documentFonts.charset*dec.dtscs.1990-2:			x-ignore
*documentFonts.charset*euc-h:					x-ignore
*documentFonts.charset*ext-h:					x-ignore
*documentFonts.charset*gb2312.1980-0:				gb_2312-80
*documentFonts.charset*gb2312.1980-1:				x-gb2312-11
*documentFonts.charset*gb2312.1980-udc:				x-ignore
*documentFonts.charset*hojo-h:					x-ignore
*documentFonts.charset*hp-japanese15:				x-ignore
*documentFonts.charset*hp-japaneseeuc:				x-ignore
*documentFonts.charset*hp-roman8:				x-ignore
*documentFonts.charset*hpbig5-:					x-x-big5
*documentFonts.charset*ibm-850:					x-ignore
*documentFonts.charset*ibm-fontspecific:			x-ignore
*documentFonts.charset*ibm-ibmcs01007ext:			x-ignore
*documentFonts.charset*ibm-special:				x-ignore
*documentFonts.charset*ibm-udcjp:				x-ignore
*documentFonts.charset*iso646.1991-irv:				x-ignore
!*documentFonts.charset*iso8859-1:				iso-8859-*
*documentFonts.charset*iso8859-1:				iso-8859-1
*documentFonts.charset*iso8859-2:				iso-8859-2
*documentFonts.charset*iso8859-3:				x-ignore
*documentFonts.charset*iso8859-4:				x-ignore
*documentFonts.charset*iso8859-5:				iso-8859-5
*documentFonts.charset*iso8859-6:				x-ignore
*documentFonts.charset*iso8859-7:				iso-8859-7
*documentFonts.charset*iso8859-8:				x-ignore
*documentFonts.charset*iso8859-9:				iso-8859-9
*documentFonts.charset*iso8859-adobe:				x-ignore
*documentFonts.charset*itc zapf dingbats.adobe-fontspecific:	x-ignore
*documentFonts.charset*itc zapfdingbats.sun-fontspecific:	x-ignore
*documentFonts.charset*jisx0201-romankana:			x-ignore
*documentFonts.charset*jisx0201.1976-0:				jis_x0201
*documentFonts.charset*jisx0201.1976-1:				jis_x0201
*documentFonts.charset*jisx0208-kanji00:			x-ignore
*documentFonts.charset*jisx0208-kanji11:			x-ignore
*documentFonts.charset*jisx0208.1983-0:				jis_x0208-1983
*documentFonts.charset*jisx0208.1983-1:				x-jisx0208-11
*documentFonts.charset*jisx0208.1990-0:				jis_x0208-1983
*documentFonts.charset*jisx0212.1990-0:				jis_x0212-1990
*documentFonts.charset*jisx0212.1990-ocmp.1992:			jis_x0212-1990
*documentFonts.charset*koi8-1:					koi8-r
*documentFonts.charset*koi8-r:					koi8-r
*documentFonts.charset*ks-roman:				x-ignore
*documentFonts.charset*ksc5601.1987-0:				ks_c_5601-1987
*documentFonts.charset*ksc5601.1987-1:				x-ksc5601-11
*documentFonts.charset*misc-fontspecific:			x-ignore
*documentFonts.charset*necjisx0208.1983-0:			x-ignore
*documentFonts.charset*novanet-1:				x-ignore
*documentFonts.charset*nwp-h:					x-ignore
*documentFonts.charset*pimai.adobe-fontspecific:		x-ignore
*documentFonts.charset*rksj-h:					x-ignore
*documentFonts.charset*screen.sun-fontspecific:			x-ignore
*documentFonts.charset*sgi-fontspecific:			x-ignore
*documentFonts.charset*shiftjis-0:				x-ignore
*documentFonts.charset*sunolcursor-1:				x-ignore
*documentFonts.charset*sunolglyph-1:				x-ignore
*documentFonts.charset*symbol.adobe-fontspecific:		x-ignore
*documentFonts.charset*symbol.sun-fontspecific:			x-ignore
*documentFonts.charset*tis620.2533-1:				x-ignore
*documentFonts.charset*ucs2.cjk-rest:				x-ignore
*documentFonts.charset*ucs2.cns11643.1986-1:			x-ignore
*documentFonts.charset*ucs2.cns11643.1986-2:			x-ignore
*documentFonts.charset*ucs2.gb2312.1980-0:			x-ignore
*documentFonts.charset*ucs2.ibm-udccn:				x-ignore
*documentFonts.charset*wp-symbol:				x-ignore
*documentFonts.charset*zapfdingbats.adobe-fontspecific:		x-ignore


! There are 7 font sizes, 1 thru 7.  The default font is 3, and the others
! are based on this.  The default increment is 20%, which means that the 4
! is 20% larger than the 3, the 5 is 40% larger, and so on.
!
*documentFonts.sizeIncrement:	20

! Maximum size to scale fonts, in points.
*documentFonts.maximumPoints:	200

! CSS-1 generic font family mapping
! to change the defaults, uncomment and give a different family name
! *documentFonts.generic.serif: times
! *documentFonts.generic.sans-serif: helvetica
! *documentFonts.generic.cursive: itc zapf chancery
! *documentFonts.generic.fantasy: new century schoolbook
! *documentFonts.generic.monospace: courier

! Some people have both 75 DPI (dots per inch) and 100 DPI versions of the
! same fonts in their font path, and, to make matters even worse, they have
! the 75 before the 100 even if their monitor is around 100 DPI.  The
! following is provided so that these people can hack their fonts without
! having to correct their font path.
!
! To correct your font path, take a look at
!   http://home.netscape.com/assist/support/client/tn/unix/10305.html
! which is a Technical Note linked from Help->Frequently Asked Questions.
!
! The last part of the left hand side (iso-8859-1) is the MIME charset
! corresponding to the X11 font charset (see above).
!
! To use e.g. 100 DPI fonts, change the final "*" to "100".
!
*documentFonts.xResolution*iso-8859-1:	*
*documentFonts.yResolution*iso-8859-1:	*


! ============================================================================
! Fonts used for printing.
! ============================================================================
!
! psname  is the full PostScript font name
! pscode  is the character encoding used in the PostScript font
! pswidth is the PostScript width per character, only useful for "square"
!         fonts such as those found in East Asia


! The following Latin-1 PostScript printer fonts are hard-coded into Netscape
! and cannot be changed.
!
!*documentFonts.latin1.variable.normal*psname:		Times-Roman
!*documentFonts.latin1.variable.bold*psname:		Times-Bold
!*documentFonts.latin1.variable.italic*psname:		Times-Italic
!*documentFonts.latin1.variable.boldItalic*psname:	Times-BoldItalic
!*documentFonts.latin1.fixed.normal*psname:		Courier
!*documentFonts.latin1.fixed.bold*psname:		Courier-Bold
!*documentFonts.latin1.fixed.italic*psname:		Courier-Oblique
!*documentFonts.latin1.fixed.boldItalic*psname:		Courier-BoldOblique
!*documentFonts.latin1*pscode:				iso-8859-1
!*documentFonts.latin1*pswidth:				*


! Netscape does not differentiate between variable and fixed, and between
! normal, bold, italic and boldItalic for the following East Asian fonts.
!
! The charset fields are the charset names corresponding to the available
! locales (e.g. for Japan, that would be euc-jp and shift_jis).
!
*documentFonts.euc-jp*psname:		Ryumin-Light-RKSJ-H
*documentFonts.euc-jp*pscode:		shift_jis
*documentFonts.euc-jp*pswidth:		1000
*documentFonts.euc-jp*psascent:		950

*documentFonts.shift_jis*psname:	Ryumin-Light-RKSJ-H
*documentFonts.shift_jis*pscode:	shift_jis
*documentFonts.shift_jis*pswidth:	1000
*documentFonts.shift_jis*psascent:	950

*documentFonts.EUC-KR*psname:		SMgoJ
*documentFonts.EUC-KR*pscode:		euc-kr
*documentFonts.EUC-KR*pswidth:		1000
*documentFonts.EUC-KR*psascent:		950

!*documentFonts.gb2312*psname:		???
!*documentFonts.gb2312*pscode:		???
!*documentFonts.gb2312*pswidth:		???
!*documentFonts.gb2312*psascent:	???

!*documentFonts.x-euc-tw*psname:	???
!*documentFonts.x-euc-tw*pscode:	???
!*documentFonts.x-euc-tw*pswidth:	???
!*documentFonts.x-euc-tw*psascent:	???

! Unicode Pseudo Font
! These map a Unicode Pseudo Font 
! latin-1 font name to an equivalent 
! font name for a different encoding
*unicodeFont.helvetica*jis_x0208-1983:		gothic
*unicodeFont.helvetica*jis_x0201:		gothic
*unicodeFont.times*jis_x0208-1983:		mincho
*unicodeFont.times*jis_x0201:			mincho
*unicodeFont.courier*jis_x0208-1983:		fixed
*unicodeFont.courier*jis_x0201:			fixed
*unicodeFont.lucida*jis_x0208-1983:		gothic
*unicodeFont.lucida*jis_x0201:			gothic
*unicodeFont.lucidatypewriter*jis_x0208-1983:	gothic
*unicodeFont.lucidatypewriter*jis_x0201:	gothic
*unicodeFont.allowHPScaling:			false
!*unicodeFont.screenDpi:			100
!*javaFont.usePointSizing:			false
!*javaFont.screenDpi:				100


*scrollerX*VertScrollBar.width:			10
*scrollerX*VertScrollBar.height:		100

! Mail search dialog...
*MNSearch.title:				Netscape: Szukaj
*MNSearch.iconName:				Szukaj
*MNSearch*SearchBtn.labelString:		Szukaj
*MNSearch*NewBtn.labelString:			Wyczy¶æ
*MNSearch*MiscBtn.labelString:			Opcje...
*MNSearch*HelpBtn.labelString:			Pomoc
*MNSearch*SaveAsBtn.labelString:		Zachowaj jako...
*MNSearch*CloseBtn.labelString:			Zamknij
*matchAll.labelString:				Spe³niaj±ce wszystkie z poni¿szych
*matchAny.labelString:				Spe³niaj±ce dowolny z poni¿szych
*MNSearch*SaveAsDialogTextLabel.labelString:	Grupa dyskusyjna:
*searchSaveAsPromptDialog.dialogTitle:		Netscape: Zachowaj jako wirtualn± grupê dyskusyjn±
*MNSearch*SaveAsDialogInfo.labelString:		Saving search criteria will create a Virtual Newsgroup based on that\n\criteria. The Virtual Newsgroup will be available from the folder list in\n\the Messenger window.

*where.labelString:				gdzie
*MNSearch*searchFolderLabel.labelString:	Szukaj wiadomo¶ci w
*MNSearch*itemsLabelTitle.labelString:		Razem znale¼ionych pozycji:
*MNSearch.width:				650
! needs to match up with XFE_SEARCH_DATE_FORMAT in ns/cmd/xfe/xfe_err.h
*MNSearch*labelValueField.labelString:		mm/dd/rrrr
*MNSearch*moreBtn.labelString:			Wiêcej
*MNSearch*lessBtn.labelString:			Kilka
*MNSearch*searchContent.marginWidth:		5
*MNSearch*searchContent.marginHeight:		5
*MNSearch*resultComment.topOffset: 		4
*MNSearch*goToMessageFolder.labelString:	Otwórz folder wiadomo¶ci
*MNSearch*fileMsg.labelString:			Plik w:
*MNSearch*fileMsg.buttonLayout:			button_label_only
*MNSearch*deleteMsg.labelString:		Kasuj wiadomo¶æ
*popup*copySubmenu.labelString:			Kopiuj wiadomo¶æ

! Advanced mail search (Options) dialog
*advancedSearch*subfolderToggle.labelString:	Przeszukaj podfoldery
*advancedSearch*whenOnlineSearch.labelString:	Jesli jeste¶ w trybie online, szukaj wiadomo¶ci:
*advancedSearch*searchLocalToggle.labelString:	lokalnie
*advancedSearch*searchServerToggle.labelString:	na podanym serwerze

! Ldap Search
*Ldap.title:					Netscape: Przeszukaj katalogi
*Ldap.iconName:					Przeszukaj katalogi
*Ldap*A_the1.labelString:			the
*Ldap*A_the2.labelString:			i
*Ldap*SearchBtn.labelString:			Szukaj
*Ldap*NewBtn.labelString:			Wyczy¶æ
*Ldap*MiscBtn.labelString:			Pomoc
*Ldap*CloseBtn.labelString:			Zamknij
*Ldap*ldapSearchFolderLabel.labelString:	Szukaj pozycji w
*Ldap*itemsLabelTitle.labelString:		Razem znale¼ionych pozycji:
*Ldap.width:					650
*Ldap.height:					250
*Ldap*labelValueField.labelString:		mm/dd/rr
*Ldap*searchContent.marginWidth:		5
*Ldap*searchContent.marginHeight:		5
*Ldap*resultComment.topOffset: 			4
*Ldap*ldapCommands.marginWidth:   		10
*Ldap*ldapCommands.spacing:   			20	
*Ldap*toAddrBook.labelString:   		Dodaj do ksi±¿ki adresowej
*Ldap*toCompose.labelString:    	 	Utwórz wiadomo¶æ

!
! Navigator mouse documentation.
!
*tipLabel.fontList:			-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
Netscape*tipLabel.background:		#FFFFCC
Netscape*tipLabel.foreground:		Black
Netscape*tipShell.borderColor:		Black
Netscape*tipShell.borderWidth:		1

!
! Browser documentation and tip strings
!

! Navigator/Toolbar (tip strings and special documentation strings)
*back.tipString:			Poprzedni dokument
*forward.tipString:			Nastêpny dokument
*home.tipString:			Id¼ do strony startowej
*home.documentationString:		Id¼ do strony startowej.
*search.tipString:			Szukaj w Internecie
*search.documentationString:		Szukaj w Internecie informacji.
*MailThread*search.documentationString:	Przeszukaj wiadomo¶ci poczty i grup dyskusyjnych.
*MailMsg*search.documentationString:	Przeszukaj wiadomo¶ci poczty i grup dyskusyjnych.
*MailFolder*search.documentationString:	Przeszukaj wiadomo¶ci poczty i grup dyskusyjnych.
*destinations.tipString:		Ciekawe miejsce w Internecie
*destinations.documentationString:	Id¼ do ciekawych miejsc w Internecie.
*guide.tipString:			Ciekawe miejsca w Internecie
*guide.documentationString:		Po³±cz siê z ciekawymi miejscami w Internecie.
*myshopping.tipString:			Id¼ do Sklep@Netscape
*myshopping.documentationString:	Id¼ do Sklep@Netscape.
*showImages.tipString:			Wy¶wietl obrazki w bie¿±cym dokumencie
*reload.tipString:			Prze³aduj bie¿±c± stronê z serwera
*stopLoading.tipString:			Przerwij bie¿±cy transfer

!
! Some mail/news documentation and tip strings
!
!*MailFolder*stopLoading.tipString:	Stop downloading messages
!*MailFolder*search.documentationString:Search mail and newsgroup messages
!*MailThread*search.documentationString:Search mail and newsgroup messages
!*MailMsg*search.documentationString:	Search mail and newsgroup messages

!!
!! *urlBarItem
!!
*urlBarItem.shadowType:				shadow_out
*urlBarItem.shadowThickness:			1
*urlBarItem.marginLeft:				1
*urlBarItem.marginRight:			1
*urlBarItem.marginTop:				1
*urlBarItem.marginBottom:			1

!!
!! *bookmarkQuickfile
!!
*bookmarkQuickfile.labelString:			Zak³adki
*bookmarkQuickfile.tipString:			Podrêczne zak³adki
*bookmarkQuickfile.documentationString:		Podrêczne zak³adki.
*bookmarkQuickfile.topOffset:			2
*bookmarkQuickfile.leftOffset:			2
*bookmarkQuickfile.buttonLayout:		button_label_on_right
*bookmarkQuickfile.mappingDelay:		0

!!
!! *relatedItems
!!
*relatedItems.labelString:			Powi±zania
*relatedItems.tipString:			Powi±zania
*relatedItems.documentationString:		Poka¿ powi±zania.
*relatedItems.topOffset:			2
*relatedItems.leftOffset:			2
*relatedItems.buttonLayout:			button_label_on_right

!!
!! *urlLocationProxyIcon
!!
*urlLocationProxyIcon.tipString:		\
Przeci±gnij to by utworzyæ po³±czenie do tej strony
*urlLocationProxyIcon.documentationString:	\
Przeci±gnij to by utworzyæ po³±czenie do tej strony.
*urlLocationProxyIcon.topOffset:		3
*urlLocationProxyIcon.leftOffset:		3
*urlLocationProxyIcon.cursor:			hand2

*urlLocationProxyIcon.shadowThickness:		0
*urlLocationProxyIcon.raiseBorderThicknes:	0
*urlLocationProxyIcon.fillOnArm:		false
*urlLocationProxyIcon.buttonLayout:		button_pixmap_only


!!
!! *urlLocationLabel
!!
*urlLocationLabel.alignment:			alignment_end
*urlLocationLabel.recomputeSize:		False
*urlLocationLabel.marginHeight:			0
*urlLocationLabel.leftOffset:			4


*urlLocationLabel.netsiteLabelString:		Adres:
*urlLocationLabel.uneditedLabelString:		Adres URL:
*urlLocationLabel.editedLabelString:		Po³±cz siê:

! this must be the longer of the two...
*urlLocationLabel.labelString:			Adres URL:

!!
!! Fixed Quickfile items
!!
*bookmarkQuickfile*addBookmark.labelString:		Dodaj zak³adkê
*bookmarkQuickfile*addBookmark.mnemonic:		D
*bookmarkQuickfile*addBookmark.acceleratorText:		Alt+K

*bookmarkQuickfile*openBookmarks.labelString:		Edytuj zak³adki...
*bookmarkQuickfile*openBookmarks.mnemonic:		E
*bookmarkQuickfile*openBookmarks.acceleratorText:	Alt+B

*bookmarkQuickfile*fileBookmarksSubmenu.labelString:	Dodaj do pliku
*bookmarkQuickfile*fileBookmarksSubmenu.mnemonic:	p

!!
!! *personalToolbarItem
!!
*personalToolbarItem.shadowType:			shadow_out
*personalToolbarItem.shadowThickness:			1
*personalToolbarItem.marginLeft:			1
*personalToolbarItem.marginRight:			1
*personalToolbarItem.marginTop:				1
*personalToolbarItem.marginBottom:			1

*personalToolbar.shadowThickness:			0
*personalToolbar.marginLeft:				0
*personalToolbar.marginRight:				0
*personalToolbar.marginTop:				0
*personalToolbar.marginBottom:				0

*personalToolbar.spacing:				1
*personalToolbar.raiseBorderThickness:			2

*personalToolbar*XfeButton.marginBottom:		1
*personalToolbar*XfeButton.marginLeft:			1
*personalToolbar*XfeButton.marginRight:			1
*personalToolbar*XfeButton.marginTop:			1
*personalToolbar*XfeButton.shadowThickness:		1

*personalToolbar*XfeCascade.marginBottom:		1
*personalToolbar*XfeCascade.marginLeft:			1
*personalToolbar*XfeCascade.marginRight:		1
*personalToolbar*XfeCascade.marginTop:			1
*personalToolbar*XfeCascade.shadowThickness:		1
*personalToolbar*XfeCascade.mappingDelay:		0

*personalToolbar*toolBarSeparator.shadowThickness:	0
*personalToolbar*toolBarSeparator.width:		20
*personalToolbar*toolBarSeparator.height:		2
*personalToolbar*toolBarSeparator.orientation:		horizontal


! Navigator/Dashboard
*docinfoLabel.documentationString:	\
Wska¼nik bezpieczeñstwa, dokument jest zabezpieczony kiedy klucz jest niez³amany.
*docinfoLabel.tipString:		Wska¼nik bezpieczeñstwa
*biffButton.documentationString:	Uruchom pocztê w oddzielnym oknie i sprawd¼ czy s± nowe wiadomo¶ci.
*biffButton.tipString:			Sprawd¼ pocztê

! Editor/Toolbar
*editorNewBlank.tipString:		Nowy dokument
*editorOpenFile.tipString:		Otwórz plik
*save.tipString:			Zachowaj
*browsePage.tipString:			Podgl±d w przegladarce
*editorBrowse.tipString:		Podgl±d w przegladarce
*cut.tipString:				Wytnij
*copy.tipString:			Kopiuj
*paste.tipString:			Wstaw
*publish.tipString:			Publikuj dokument
*findInObject.tipString:		Znajd¼ na stronie <Alt+F>
*Editor*openPage.tipString:		Otwórz plik

*findInObject.tipString:		Znajd¼ na stronie <Alt+F>

*editorFormattingToolbar*buttonLayout:	button_pixmap_only
*editorFormattingToolbar*buttonLayout:	button_pixmap_only
*editorFormattingToolbar*mappingDelay:	0

*charSizeShrink.documentationString:		Zmniejsz rozmiar czcionki o 1 jednostkê.
*charSizeShrink.tipString:			Zmniejsz rozmiar czcionki
*charSizeGrow.documentationString:		Zwiêksz rozmiar czcionki o 1 jednostkê.
*charSizeGrow.tipString:			Zwiêksz rozmiar czcionki
*fontSize.documentationString:			Ustaw rozmiar czcionki.
*fontSize.tipString:				Ustaw rozmiar czcionki
!*bold.documentationString:	Set the style to Bold <Alt+B>
*bold.tipString:				Pogrubiony
!*italic.documentationString:	Set the style to Italic <Alt+I>
*italic.tipString:				Pochy³y
!*fixed.documentationString:	Set the style to Fixed Width <Alt+T>
*fixed.tipString:				Sta³ej szeroko¶ci
!*textColor.documentationString:		Zmieñ lub edytuj bie¿±cy kolor.
*textColor.tipString:           		Kolor czcionki
*makeLink.documentationString:			\
Wstaw lub utwórz nowe po³±czenie do zaznaczonego tekstu lub grafiki.
*makeLink.tipString:				Skojarz powi±zanie
*insertLink.tipString:				Wstaw lub utwórz po³±czenie
*clearAllStyles.tipString:			Wyczy¶æ wszystkie style <Alt+K>
*insertTarget.documentationString:		Wstaw odno¶nik.
*insertTarget.tipString:			Wstaw odno¶nik
*insertImage.documentationString:		Wstaw obrazek.
*insertImage.tipString:				Wstaw grafikê
*insertHorizontalLine.documentationString:	\
Wstaw liniê poziom±.
*insertHorizontalLine.tipString:		Wstaw liniê poziom±
*insertTable.documentationString:		Wstaw tabelê w miejscu gdzie znajduje siê kursor.
*insertTable.tipString:				Wstaw tabelê
*objectProperties.documentationString:		\
Zmieñ w³asno¶ci zaznaczonego obiektu.
*objectProperties.tipString:			W³asno¶ci obiektu

*paragraphProperties.documentationString:	Zmieñ styl akapitu lub nag³ówka.
*paragraphProperties.tipString:			Zmieñ styl akapitu
*insertBulleted.documentationString:		\
Zacznij, zmieñ, lub wyczy¶æ listê wyliczan±.
*insertBulleted.tipString:			Wyliczanie
*insertNumbered.documentationString:		\
Zacznij, zmieñ, lub wyczy¶æ listê numerowan±.
*insertNumbered.tipString:			Numerowanie
*indent.documentationString:			Zwiêksz wciêcie akapitu o jeden poziom.
*indent.tipString:				Zwiêksz wciêcie akapitu
*outdent.documentationString:			Zmniejsz wciêcie akapitu o jeden poziom.
*outdent.tipString:				Zmniejsz wciêcie akapitu
*alignLeft.documentationString:			Wyrównaj do lewego marginesu.
*setAligmentStyleLeft.documentationString:	Wyrównaj do lewego marginesu.
*alignLeft.tipString:				Wyrównaj do lewej
*alignCenter.documentationString:		Wy¶rodkuj pomiêdzy marginesami.
*setAligmentStyleCenter.documentationString:	Wy¶rodkuj pomiêdzy marginesami.
*alignCenter.tipString:				Wy¶rodkuj
*alignRight.documentationString:		Wyrównaj do prawego marginesu.
*setAligmentStyleRight.documentationString:	Wyrównaj do prawego marginesu.
*alignRight.tipString:				Wyrównaj do prawej

! Formatting toolbar
*setParagraphStyle*documentationString:	Zmieñ styl akapitu lub nag³ówka.
*setParagraphStyle*tipString:		Styl akapitu
*setFontFace*documentationString:	Zmieñ czcionkê.
*setFontFace*tipString:			Czcionka
*setFontSize*documentationString:	Zmieñ rozmiar czcionki.
*setFontSize*tipString:			Wielko¶æ czcionki
*setFontColor*documentationString:	Zmieñ kolor czcionki.
*setFontColor*tipString:		Kolor czcionki
*setFontColor*documentationString:	Zmieñ kolor czcionki.
*setFontColor*tipString:		Kolor czcionki
*toggleCharacterStyleBold.tipString:	Pogrubiony <Alt+B>
*toggleCharacterStyleItalic.tipString:	Pochy³y <Alt+I>
*toggleCharacterStyleUnderline.tipString:Podkre¶lony <Alt+U>
*insertNumberedList.tipString:		Numerowanie
*insertNumberedList.documentationString:\
Zacznij, zmieñ, lub wyczy¶æ listê numerowan±.
*insertBulletedList.tipString:		Wyliczanie
*insertBulletedList.documentationString:Zacznij, zmieñ, lub wyczy¶æ listê wyliczan±.
*setAlignmentStyle.tipString:		Wyrównanie
*setAlignmentStyle.documentationString:	Wybierz wyrównanie w poziomie.
*insertLineBreak.documentationString:	\
Wstaw za³amanie do nastêpnej linii.
*insertBreakBelowImage.documentationString:\
Wstaw za³amanie do nastêpnej linii pod grafik±.
*setCharacterColor.documentationString:	Zmieñ bie¿±cy kolor tekstu.
*editorGoodiesMenu.tipString:		Wstaw obiekt
*editorGoodiesMenu.documentationString:	Wstaw obiekt.

! Editor/Popups (additional items)
*browseLink.documentationString:	Przegl±daj to po³±czenie.
*editLink.documentationString:		Otwórz to po³±czenie w nowym oknie edytora.
*bookmarkLink.documentationString:	Dodaj to po³±czenie do listy zak³adek.
*copyLink.documentationString:		Kopiuj to po³±czenie do schowka.
*removeLink.documentationString:	\
Usuñ po³±czenie lub wszystkie po³±czenia z zaznaczonego tekstu.

! Mail/Toolbar
*getNewMail.tipString:			Pobierz now± pocztê
*deleteMessage.tipString:		Kasuj wybran± wiadomo¶æ
*deleteMessage.documentationString:	Kasuj wybran± wiadomo¶æ.
*mailNew.tipString:			U³ó¿ now± wiadomo¶æ
*replyToSender.tipString:		Odpowiedz na wiadomo¶æ
*replyToAll.tipString:			Odpowiedz wszystkim adresatom
*forwardMessage.tipString:		Prze¶lij wybran± wiadomo¶æ dalej
*previousUnreadMessage.tipString:	Poprzednia nieczytana
*nextUnreadMessage.tipString:		Nastêpna nieczytana

! Composition/Edit menu (additional items)
*pasteQuote.documentationString:	Wstaw zawarto¶æ schowka w postaci cytatu.
*clear.documentationString:		Wyma¿ zaznaczone.
*clearAllText.documentationString:	Wyma¿ wszystko.
*selectAllText.documentationString:	Zaznacz ca³y dokument.
*rot13.documentationString:		Koduj ROT13.

! Composition/View menu (additional items)
*showFrom.documentationString:		Poka¿ pole mail-from.
*showReplyTo.documentationString:	Poka¿ pole reply-to.
*showTo.documentationString:		Poka¿ pole mail-to.
*showCC.documentationString:		Poka¿ pole Carbon-Copy.
*showBCC.documentationString:		Poka¿ pole Blind-Carbon-Copy.
*showFCC.documentationString:		Poka¿ pole kopiuj plik.
*showPostTo.documentationString:	Poka¿ pole Post-to-newsgroup.
*showFollowupTo.documentationString:	Poka¿ pole Send-followups-to.
*showSubject.documentationString:	Poka¿ pole tematu.
*showAttachments.documentationString:	Poka¿ pole za³±cznika.
*wrapLines.documentationString:		Zawiñ linie zawieraj±ce wiêcej ni¿ 72 znaki.

! Composition/Options menu (additional items)
*deliverNow.documentationString:	Wy¶lij wiadomo¶ci natychmiast.
*deliverLater.documentationString:	Prze³ó¿ wys³anie wiadomo¶ci na pó¼niej.

! Compose/Toolbar
*sendOrSendLater.documentationString:	Wy¶lij bie¿±c± wiadomo¶æ.
*sendOrSendLater.tipString:		Wy¶lij wiadomo¶æ
*quoteMessage.documentationString:	\
Wstaw tekst z oryginalnego dokumentu w formie cytatu.
*quoteMessage.tipString:		Cytuj orygina³

*options.labelString:			Opcje
*options.tipString:			Poka¿ opcje wiadomo¶ci
*options.documentationString:		\
Poka¿ opcje wiadomo¶ci.

*attach.tipString:			Wstaw za³±cznik
*attachFile.documentationString:	\
Do³±cz plik do tej wiadomo¶ci.
*attachFile.tipString:			Do³±cz plik
*attachWebPage.documentationString:	\
Do³±cz stronê WWW do tej wiadomo¶ci.
*attachWebPage.tipString:		Do³±cz stronê WWW
*deleteAttachment.documentationString:	\
Kasuj wybrany za³±cznik.
*deleteAttachment.tipString:		Kasuj za³±cznik

*attachAddressBookCard.documentationString:	\
Do³±cz kartê osobist± jako vCard.
*attachAddressBookCard.tipString:	Do³±cz moj± kartê
*attachForm.documentationString:	\
Przeci±gnij tutaj ten dokument i za³±cz go do tej wiadomo¶ci.
*attachForm.tipString:			Przeci±gnij ten dokument do za³±czenia

!*editAddressBook.documentationString:	Otwórz ksi±¿kê adresow±.
*editAddressBook.tipString:		Adresy

*formattingToolbar*buttonLayout:	button_pixmap_only
*formattingToolbar*buttonLayout:	button_pixmap_only
*formattingToolbar*mappingDelay:	0


! News/Toolbar
*postNew.tipString:			Zamie¶æ now± wiadomo¶æ
*postReply.tipString:			Zamie¶æ odpowied¼
*postAndMailReply.tipString:		Zamie¶æ i wy¶lij odpowied¼
*markThreadRead.tipString:		Zaznacz w±tek jako czytany
*markAllRead.tipString:			Zaznacz wszystkie jako czytane

! Preferences dialog
!
*prefs*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*prefs_popup.title:			Netscape: Ustawienia
*pref.category:				Kategoria

*prefs.form.leftPane.topOffset:		8
*prefs.form.leftPane.leftOffset:	8
*prefs.form.leftPane.bottomOffset:	8

*prefs.form.rightPane.leftOffset:	8
*prefs.form.rightPane.rightOffset:	8
*prefs.form.rightPane.bottomOffset:	8

*prefs*pageTitle.alignment:		ALIGNMENT_BEGINNING
*prefs*pageTitle.fontList:		\
-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2=NORMAL,\
-*-helvetica-bold-r-*-*-*-140-*-*-*-*-iso8859-2=BOLD,\
-*-helvetica-medium-o-normal-*-*-120-*-*-*-*-iso8859-2=ITALIC

*prefs*categoryList*fontList:		-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2

*prefs*pageForm.topOffset:		4
*prefs*XmFrame.marginWidth:		8
*prefs*XmFrame.marginHeight:		4
*prefs*XmPushButtonGadget.marginWidth:	8

! Preferences dialog - Appearance

*prefs*appearance*launchBoxLabel.labelString:		Przy starcie uruchom
*prefs*appearance*navigator.labelString:		Nawigatora
*prefs*appearance*messenger.labelString:		Kuriera
*prefs*appearance*collabra.labelString:			Grupy dyskusyjne
*prefs*appearance*composer.labelString:			Edytor
*prefs*appearance*conference.labelString:		Konferencja
*prefs*appearance*netcaster.labelString:		Netcaster
*prefs*appearance*calendar.labelString:			Kalendarz
*prefs*appearance*radio.labelString:			Radio	
*prefs*appearance*frame2*toolbarBoxLabel.labelString:	Poka¿ pasek jako
*prefs*appearance*frame2*picAndText.labelString:	Obrazki i tekst
*prefs*appearance*frame2*picOnly.labelString:		Tylko obrazki
*prefs*appearance*frame2*textOnly.labelString:		Tylko tekst
*prefs*appearance*frame2*showTooltips.labelString:	Poka¿ podpowiedzi
*prefs*appearance*frame2*showTooltips.tipString:	Pokazuj podpowiedzi paska narzêdzi
*prefs*appearance*underline.labelString:		Podkre¶lone po³±czenia

! Preferences dialog - General/Fonts

*prefs*fontsFrame*fontsBoxLabel.labelString:		Czionki i strony kodowe
*prefs*fontsFrame*encodingLabel.labelString:		Strona kodowa:
*prefs*fontsFrame*proportionalLabel.labelString:	Proporcjonalne:
*prefs*fontsFrame*propSizeLabel.labelString:		Rozmiar:
*prefs*fontsFrame*propSizeToggle.labelString:		Skaluj
*prefs*fontsFrame*fixedLabel.labelString:		Sta³ej szeroko¶ci:
*prefs*fontsFrame*fixedSizeLabel.labelString:		Rozmiar:
*prefs*fontsFrame*fixedSizeToggle.labelString:		Skaluj
*prefs*fontsFrame*0.labelString:			Ka¿dy
*prefs*webFontFrame*useFontLabel.labelString:		Czasami dokument dostarczy swoich w³asnych czcionek
*prefs*webFontFrame*dynaFont.labelString:		Fonty dynamiczne...
*prefs*webFontFrame*useMyFont.labelString:		\
U¿ywaj domy¶lnych czcionek zamiast czcionek dokumentu
*prefs*webFontFrame*useDocFontSelective.labelString:	\
U¿yj czcionek dokumentu, ale wy³±cz Czcionki dynamiczne
*prefs*webFontFrame*useDocFontWhenever.labelString:	\
U¿yj czcionek dokumentu, w³±czaj±c w to Czcionki dynamiczne

! Preferences dialog - General/Colors

*prefs*colors*colorBoxLabel.labelString:		Kolory
*prefs*colors*textColorLabel.labelString:		Tekst:
*prefs*colors*bgColorLabel.labelString:			T³o:
*prefs*colors*useDefColors.labelString:			U¿yj domy¶lnych
*prefs*colors*linksBoxLabel.labelString:		Po³±czenia
*prefs*colors*linksLabel.labelString:			Nieodwiedzone po³±czenia:
*prefs*colors*vlinksLabel.labelString:			Odwiedzone po³±czenia:
*prefs*colors*underline.labelString:			podkre¶lone po³±czenia
*prefs*colors*useColor.labelString:			\
Czasami dokument dostarczy swoich w³asnych kolorów i t³a
*prefs*colors*useMyColor.labelString:			Zawsze u¿ywaj moich kolorów zamiast tych z dokumentu

! Preferences dialog - Browser/Languages - Add

*prefsLang*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*prefsLang_popup.title:					Netscape: Dodaj jêzyki
*prefsLang*langLabel.labelString:			Wybierz j±zyk, który chcesz dodaæ.\n\Jêzyki:
*prefsLang*langList.visibleItemCount:			15
*prefsLang*otherLabel.labelString:			Inne:

! Preferences dialog - Smart Browsing
*prefs*relatedFrame*relatedBoxLabel.labelString:	Powi±zania
*prefs*relatedFrame*enableRelated.labelString:		W³±cz "Co jest z sob± powi±zane - Powi±zania"

*prefs*relatedFrame*autoloadLabel.labelString:		Automatycznie wczytuj "Powi±zania"

*prefs*relatedFrame*autoloadAlways.labelString:		Zawsze
*prefs*relatedFrame*autoloadAdaptive.labelString:	Po pierwszym u¿yciu
*prefs*relatedFrame*autoloadNever.labelString:		Nigdy

*prefs*relatedFrame*excludedLabel.labelString:		\
Podaj rozdzielon± przecinkami listê domen, dla których\n\
pozycje Powi±zañ nigdy nie bêd± wczytywane

*prefs*keywordFrame*keywordBoxLabel.labelString:	Internetowe s³owa kluczowe
*prefs*keywordFrame*enableKeywords.labelString:		W³±cz "Internetowe s³owa kluczowe"

! Preferences dialog - Advanced

*prefs*advanced*showImage.labelString:			\
Automatycznie ³aduj obrazki i inne typy danych\n\
(w innym przypadku, gdy potrzeba kliknij na przycisku Obrazki by je za³adowaæ)
*prefs*advanced*enableJava.labelString:			W³±cz jêzyk Java
*prefs*advanced*enableJs.labelString:			W³±cz JavaScript
*prefs*advanced*enableJsMailNews.labelString:           W³±cz JavaScript dla poczty i grup dyskusyjnych
*prefs*advanced*enableStyleSheet.labelString:		W³±cz Style Sheets
*prefs*advanced*emailAnonFtp.labelString:		Wy¶lij adres poczty jako has³o dla anonimowego FTP
*prefs*cookieFrame*cookieBoxLabel.labelString:		Ciasteczka (Cookies)
*prefs*cookieFrame*alwaysAcceptCookie.labelString:	Zawsze akceptuj Ciasteczka (Cookies)
*prefs*cookieFrame*noForeignCookie.labelString:	\
Akceptuj tylko Ciasteczka pochodz±ce z tego samego serwera co strona,\n\
któr± ogl±dasz
*prefs*cookieFrame*neverAcceptCookie.labelString:	Nigdy nie wysy³aj ani nie akceptuj Ciasteczek (Cookies)
*prefs*cookieFrame*warnCookie.labelString:		Alarmuj przed zaakceptowaniem Ciasteczka (Cookie)

*prefs*alertFrame*submDoc.labelString:			zatwierdzanie bezpiecznego dokumentu
*prefs*alertFrame*dpyDoc.labelString:			wy¶wietlanie ¼ród³a dokumentu
*prefs*alertFrame*viewMixed.labelString:		ogl±danie dokumentu mieszanego bezpiecznego/niezabezpieczonego 
*prefs*alertFrame*submForm.labelString:			zatwierdzanie formularza niezabezpieczonego
*prefs*alertFrame*submMixedForm.labelString:		zatwierdzanie formularza mieszanego bezpiecznego/niezabezpieczonego

! Preferences dialog - Browser/Applications

*prefs*applFrame*newButton.labelString:			Nowy...
*prefs*applFrame*editButton.labelString:		Edytuj...
*prefs*applFrame*deleteButton.labelString:		Kasuj
*prefs*appl*folderLabel.labelString:			Katalog dla pobieranych plików:
*prefs*appl*browseButton.labelString:			Wybierz...

! Preferences dialog - General - Applications - Edit

*prefsApplEdit*fontList:				-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*prefsApplEdit_popup.title:				Netscape: Aplikacja
*prefsApplEdit*mimeTypesDescriptionLabel.labelString:	Opis:
*prefsApplEdit*mimeTypesLabel.labelString: 		Typ MIME:
*prefsApplEdit*mimeTypesSuffixLabel.labelString:	Rozszerzenia:
*prefsApplEdit*applEditFrameLabel.labelString:		Obs³ugiwany przez
*prefsApplEdit*applEditNavigator.labelString: 		Nawigator
*prefsApplEdit*applEditPlugin.labelString: 		Wtyczka:
*prefsApplEdit*applEditApp.labelString: 		Aplikacja:
*prefsApplEdit*applEditSave.labelString: 		Zachowaj na dysku
*prefsApplEdit*applEditUnknown.labelString: 		Nieznany: Zapytaj u¿ytkownika
*prefsApplEdit*applEditAppBrowse.labelString: 		Wybierz...
*prefsApplEdit*defaultOutgoingToggle.labelString:	U¿yj tego formatu MIME jako domyslnego dla tych rozszerzeñ.

! Preferences dialog - General/Cache

*prefs*cache*cacheLabel.labelString:		\
Cache jest u¿ywany do trzymania lokalnych kopii czêsto u¿ywanych doku-\n\
mentów i dziêki temu redukuje czas po³±czeñ w sieci. Przycisk Prze³aduj\n\
bêdzie zawsze porównywa³ dokument w cache z dokumentem z sieci\n\
i pokazywa³ najbardziej aktualny. By ³adowaæ strony i obrazki z sieci,\n\
a nie z cache, wci¶nij klawisz Shift i kliknij na klawisz Prze³aduj.
*prefs*cache*cacheDirLabel.labelString:		Katalog Cache:
*prefs*cache*memoryLabel.labelString:		Cache pamiêci:
*prefs*cache*memoryK.labelString:		kB 
*prefs*cache*diskLabel.labelString:		Cache dyskowy:
*prefs*cache*diskK.labelString:			kB 
*prefs*cache*verifyLabel.labelString:		\
Dokument w cache jest porównany z dokumentem z sieci
*prefs*cache*verifyRc*once.labelString:		Raz na sesjê
*prefs*cache*verifyRc*every.labelString:	Za ka¿dym razem
*prefs*cache*verifyRc*never.labelString:	Nigdy
*prefs*cache*browse.labelString:		Wybierz...
*prefs*cache*clearDisk.labelString:		Wyczy¶æ cache na dysku
*prefs*cache*clearMem.labelString:		Wyczy¶æ bufory w pamiêci

! Preferences dialog - General/Proxies

*prefs*proxies*proxiesLabel.labelString:	\
Proxy jest ³±cznikiem miêdzy twoim komputerem a Internetem i jest\n\
u¿ywany przy dostêpie do Internetu poprzez ¶cianê ognia (firewall),\n\
lub by zwiêkszyæ przepustowo¶æ pomiêdzy sieciami poprzez zmniejszenie\n\
obci±¿enia ³±czy. Administrator Twojego systemu mo¿e ci pomóc\n\
w ustawieniu opcji Proxy.
*prefs*proxies*direct.labelString:		Bezpo¶rednie pod³±czenie do internetu
*prefs*proxies*manual.labelString:		Rêczna konfiguracja Proxy
*prefs*proxies*auto.labelString:		Automatyczna konfiguracja Proxy
*prefs*proxies*config.labelString:		Adres (URL) konfiguracji
*prefs*proxies*view.labelString:		Podgl±d...
*prefs*proxies*reload.labelString:		Prze³aduj

! Preferences dialog - General - Proxies - View

*prefsProxiesView*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*prefsProxiesView_popup.title:			Netscape: Podgl±d rêcznej konfuguracji Proxy
*prefsProxiesView*proxyViewLabel1.labelString:	\
Mo¿esz skonfigurowaæ proxy i numer portu dla ka¿dego z protoko³ów\n\
Internetowych, które obs³uguje Netscape.
*prefsProxiesView*proxyViewLabel2.labelString:	\
Mo¿esz utworzyæ listê domen, do których Netscape powinien mieæ dostêp\n\
bezpo¶redni, raczej ni¿ poprzez proxy:
*prefsProxiesView*ftpProxyLabel.labelString:	Proxy FTP:
*prefsProxiesView*gopherProxyLabel.labelString:	Proxy Gophera:
*prefsProxiesView*httpProxyLabel.labelString:	Proxy HTTP:
*prefsProxiesView*httpsProxyLabel.labelString:	Proxy bezpiecz. HTTP:
*prefsProxiesView*waisProxyLabel.labelString:	Proxy WAIS:
*prefsProxiesView*noProxyLabel.labelString:	Nie korzystaj z Proxy dla:
*prefsProxiesView*socksHostLabel.labelString:	Serwer SOCKS:
*prefsProxiesView*ftpPortLabel.labelString:	Port:
*prefsProxiesView*gopherPortLabel.labelString:	Port:
*prefsProxiesView*httpPortLabel.labelString:	Port:
*prefsProxiesView*httpsPortLabel.labelString:	Port:
*prefsProxiesView*waisPortLabel.labelString:	Port:
*prefsProxiesView*socksPortLabel.labelString:	Port:

! Roaming Access Conflict Dialog
*liConflict*queryLabel.labelString:		Co chcesz teraz zrobiæ?
*liConflict*alwaysToggle.labelString:		Apply this decision to remaining items.

! Preferences dialog - Roaming Access:		General Prefs
!*prefs*liGeneral*topTitle.labelString:		General Flags
*prefs*liGeneral*hint.labelString:		\
Za pomoc± wêdrownego dostêpu odtworzysz swój profil u¿ytkownika\n\
z dowolnego miejsca w sieci.\n\
\n\
Informacje o twoim profilu u¿ytkownika bêd± odtwarzane z serwera\n\
wêdrownego dostêpu za ka¿dym razem przy starcie i przes³±ne na\n\
serwer przy zamykaniu.

*prefs*liGeneral*enableToggle.labelString:	W³±cz wêdrowny dostêp dla tego profilu
!*prefs*liGeneral*syncToggle.labelString:	Synchronizuj w tle co
!*prefs*liGeneral*unitLabel.labelString:	minut.
*prefs*liLoginAdvancedButton.labelString:	Opcje

!*prefs*liGeneral*bottomTitle.labelString:	User Information
*prefs*liGeneral*bottomFrame.topOffset:		20
*prefs*liGeneral*userInfoLabel.labelString:	\
Podaj swoje informacje o logowaniu, które bêd± u¿ywane podczas odtwarzania\n\
Twojego profilu u¿ytkownika z serwera wêdrownego dostêpu.
*prefs*liGeneral*userLabel.labelString:		Nazwa u¿ytkownika:
*prefs*liGeneral*passwordLabel.labelString:	Has³o:
*prefs*liGeneral*passwordText.maxLength:	256
*prefs*liGeneral*savePasswordToggle.labelString:Zapamiêtaj moje has³o wêdrownego dostêpu

! Preferences dialog - Roaming Access: Server Prefs
*prefs*liServer*frameLabel.labelString: Informacje o serwerze

*prefs*liServer*serverLabel.labelString: \
Poni¿sze informacje s± niezbêdne do po³±czenia z Twoim serwerem\n\
wêdrownego dostêpu. Je¶li nie znasz wymaganych informacji, skontaktuj\n\
siê z administratorem Twojego systemu.

*prefs*liServer*bottomFrame.topOffset:		20
*prefs*liServer*ldapToggle.labelString:		Katalog LDAP serwera
*prefs*liServer*ldapAddrLabel.labelString:	Adres:
*prefs*liServer*ldapBaseLabel.labelString:	DN u¿ytkownika:
*prefs*liServer*httpToggle.labelString:		Serwer HTTP
*prefs*liServer*httpBaseLabel.labelString:	Bazowy adres URL:

! Preferences dialog - Roaming Access:		File Prefs
*prefs*liFiles*fileLabel.labelString:		\
Zaznaczone poni¿ej elementy profilu u¿ytkownika zostan± pobrane\n\
z Twojego serwera wêdrownego dostêpu prze starcie i przes³ane na\n\
serwer przy zamykaniu.
*prefs*liFiles*frameLabel.labelString:		Pozycje
*prefs*liFiles*bookmarkToggle.labelString:	Zak³adki
*prefs*liFiles*cookiesToggle.labelString:	Ciasteczka (Cookies)
*prefs*liFiles*filterToggle.labelString:	Filtry poczty
*prefs*liFiles*addrbookToggle.labelString:	Ksi±¿ka adresowa
*prefs*liFiles*historyToggle.labelString:	Historia
*prefs*liFiles*prefsToggle.labelString:		Ustawienia u¿ytkownika
*prefs*liFiles*javasecToggle.labelString:	Bezpieczeñstwo Javy
*prefs*liFiles*certToggle.labelString:		Certyfikaty i klucze prywatne

! Preferences dialog - Advanced/Disk space

*prefs*diskSpace*allMsgsBoxLabel.labelString: 	Wszystkie wiadomo¶ci
*prefs*diskSpace*maxMsgSize.labelString: 	Nie przechowuj lokalnie wiadomo¶ci wiêkszych ni¿
*prefs*diskSpace*k.labelString: 		kB
*prefs*diskSpace*askThreshold.labelString: 	Automatycznie skompresuj foldery gdy to oszczêdzi ponad
*prefs*diskSpace*k2.labelString: 		kB

*prefs*diskSpace*newsMsgsBoxLabel.labelString: 	Tylko wiadomo¶ci grup dyskusyjnych
*prefs*diskSpace*newsMsgsLabel.labelString: 	Gdy nadejdzie czas na porz±dki w¶ród wiadomo¶ci:
*prefs*diskSpace*keepNewsByAge.labelString:	Zatrzymaj wiadomo¶ci które dotar³y w ci±gu ostatnich
*prefs*diskSpace*keepAllNews.labelString:	Zatrzymaj wszystkie wiadomo¶ci
*prefs*diskSpace*keepNewsByCount.labelString:	Zatrzymaj
*prefs*diskSpace*keepUnreadNews.labelString:	Zatrzymaj tylko nieczytane wiadomo¶ci
*prefs*diskSpace*daysLabel.labelString: 	dni
*prefs*diskSpace*msgsLabel.labelString: 	najnowszych wiadomo¶ci
*prefs*diskSpace*more.labelString: 		Wiêcej opcji...
*prefs*diskSpace*rmMsgBodyToggle.labelString:	Usuñ tre¶æ wiadomo¶ci tylko starszych od

! Preferences dialog - Advanced/Help Files

*prefs*helpFiles*helpLabel.labelString: 	Pliki pomocy pochodz± z:
*prefs*helpFiles*netscapeToggle.labelString:	Serwer pomocy Netscape
*prefs*helpFiles*installToggle.labelString:	Zainstalowane pliki pomocy
*prefs*helpFiles*customToggle.labelString:	Strona u¿ytkownika:
*prefs*helpFiles*browse.labelString: 		Wybierz...

! Preferences dialog - Advanced/SmartUpdate
*prefs*smartUpdate*enableToggle.labelString: 	W³±cz SmartUpdate
*prefs*smartUpdate*confirmToggle.labelString: 	Wymaga rêcznego potwierdzenia ka¿dej instalacji

*prefs*smartUpdate*uninstallLabel.labelString:	By dokonaæ rozinstalacji, wybierz z poni¿szej listy i kliknij na przycizku Rozinstaluj
*prefs*smartUpdate*uninstallButton.labelString: Rozinstaluj

! Preferences dialog - Browser

*prefs*browser*indicatorType:			ONE_OF_MANY
*prefs*browser*XmLabelGadget.alignment:		ALIGNMENT_BEGINNING
*prefs*browser*browserBoxLabel.labelString:	Przegl±darka startuje z
*prefs*browser*blankPage.labelString:		Pust± stron±
*prefs*browser*homePage.labelString:		Stron± startow±
*prefs*browser*lastPage.labelString:		Ostatnio odwiedzan± stron±
*prefs*browser*homePageBoxLabel.labelString:	Stron± startow±

*prefs*browser*homePageLabel.labelString:	Adres strony startowej:
*prefs*browser*locLabel.labelString:		Adres URL:
*prefs*browser*browse.labelString:		Wybierz...
*prefs*browser*useCurrent.labelString:		U¿yj strony bie¿±cej
*prefs*browser*historyBoxLabel.labelString:	Historia
*prefs*browser*expireLabel.labelString:		Historia odwiedzin po³±czeñ wygasa po
*prefs*browser*daysLabel.labelString:		dniach
*prefs*browser*expireNow.labelString:		Wygasa teraz

! Preferences dialog - Browser/Languages

*prefs*lang*langLabel.alignment:		ALIGNMENT_BEGINNING
*prefs*lang*langLabel.labelString:		\
Wybierz zestaw znaków dla ró¿nych jêzyków w kolejno¶ci ogl±dania stron\n\
WWW wy¶wietlanych w tych jêzykach. Nawigator zaprezentuje strony w jêzyku,\n\
który wolisz najbardziej.
*prefs*lang*addButton.labelString:		Dodaj...
*prefs*lang*deleteButton.labelString:		Kasuj

! Preferences dialog - Mail News

*prefs.quotedTextStyle.plain:				Prosty
*prefs.quotedTextStyle.bold:				Pogrubiony
*prefs.quotedTextStyle.italic:				Pochy³y
*prefs.quotedTextStyle.boldItalic:			Pogrubiony pochy³y
*prefs.quotedTextSize.normal:				Normalnie
*prefs.quotedTextSize.bigger:				Wiêkszy
*prefs.quotedTextSize.smaller:				Mniejszy
*prefs*mailnews*quotedTextLabel.labelString:		\
Zwyk³y tekst cytowany zaczynaj±cy siê od ">" jest wy¶wietlany jako:
*prefs*mailnews*quotedTextStyleLabel.labelString:	Styl:
*prefs*mailnews*quotedTextSizeLabel.labelString:	Rozmiar:
*prefs*mailnews*quotedTextColorLabel.labelString:	Kolor:
*prefs*mailnews*msgArticleLabel.labelString:		\
Pokazuj wiadomo¶ci i artyku³y tekstowe u¿ywaj±c
*prefs*mailnews*fixedWidthFont.labelString:		Czcionki o sta³ej szeroko¶ci
*prefs*mailnews*varWidthFont.labelString:		Czcionki o zmiennej szeroko¶ci
*prefs*mailnews*rememberSelected.labelString:		Pamiêtaj ostatnio wybran± wiadomo¶æ
*prefs*mailnews*reuseThread.labelString:		Podwójne klikniêcie folderu lub grupy dyskusyjnej otwiera w nowym oknie.
*prefs*mailnews*reuseMsg.labelString:			Podwójne klikniêcie folderu otwiera w nowym oknie.
*prefs*mailnews*confirmFolderTrash.labelString:		Potwierd¼, gdy przenosisz foldery do Kosza.

*prefs*mailnews*newsBehaviorLabel.labelString:		Pozycja menu lub przycisk Grupy dyskusyjne:
*prefs*mailnews*newsInThreePaneToggle.labelString:	Otwiera grupy dyskusyjne w oknie Kuriera.
*prefs*mailnews*newsInMessageCenterToggle.labelString:	Otwiera Centrum wiadomo¶ci.
! Preferences dialog - Mail News/Messages
*prefs*mailnewsMessages*replyLabel.labelString:		Przekazywanie i odpowiadanie na wiadomo¶ci:
*prefs*mailnewsMessages*forwardLabel.labelString:	Domy¶lnie, przekazuj wiadomo¶ci:
*prefs*mailnewsMessages*autoquoteToggle.labelString:	Automatycznie cytuj wiadomo¶æ oryginaln± przy odpowiedzi
*prefs*mailnewsMessages*autoquoteMyReplyLabel.labelString: Wtedy,
*prefs*mailnewsMessages*autoquoteSepLabel.labelString:	Oddziel odpowied¼ od cytowanego tekstu 
*prefs*mailnewsMessages*autoquoteSepLinesLabel.labelString: liniami
*prefs*mailnewsMessages*spellToggle.labelString:	Sprawdzaj pisowniê wiadomo¶ci przed wys³aniem
*prefs*mailnewsMessages*wrapLabel.labelString:		Zawijanie wiadomo¶ci:
*prefs*mailnewsMessages*wrapToggle.labelString:		Zawijaj tekst otrzymanych wiadomo¶ci tekstowych na szeroko¶ci okna
*prefs*mailnewsMessages*wrapLengthLabel.labelString:	Zawijaj tekst wysy³anych wiadomo¶ci tekstowych na:
*prefs*mailnewsMessages*wrapLengthAfterLabel.labelString: znaku
*prefs*mailnewsMessages*eightbitLabel.labelString:	Wysy³aj wiadomo¶ci zawieraj±ce 8-bitowe znaki:
*prefs*mailnewsMessages*eightbitAsIsToggle.labelString:	Jak s± (nie dzia³a najlepiej z niektórymi serwerami pocztowymi)
*prefs*mailnewsMessages*eightbitQuotedToggle.labelString: \
Korzystaj±c z kodowania MIME "quoted printable" (nie dzia³a \n\
najlepiej z niektórymi czytnikami poczty i grup dyskusyjnych)

! Preferences dialog - Mail News/Identity

*prefs*mailnewsIdentity*idLabel.labelString:		\
Poni¿sze informacje s± niezbêdne do wys³ania poczty.\n\
Je¶li ich nie znasz skontaktuj siê z administratorem\n\
Twojego systemu lub dostawc± us³ug Internetowych.
*prefs*mailnewsIdentity*nameLabel.labelString:		Twoje imiê i nazwisko:
*prefs*mailnewsIdentity*emailAddrLabel.labelString:	Adres e-mail:
*prefs*mailnewsIdentity*replyToAddrLabel.labelString:	\
Reply-to adres (potrzebny tylko je¶li inny od adresu e-mail):
*prefs*mailnewsIdentity*orgLabel.labelString:		Organizacja/Firma:
*prefs*mailnewsIdentity*sigFileLabel.labelString:	Plik podpisu:
*prefs*mailnewsIdentity*browse.labelString:		Wybierz...
*prefs*mailnewsIdentity*editCardButton.labelString:	Edytuj kartê...
*prefs*mailnewsIdentity*attachCard.labelString:		Do³±cz do wiadomo¶ci moj± osobist± kartê (jako vCard)
*prefs*mailnewsIdentity*editCard.labelString:		Edytuj kartê...

! Preferences dialog - Mail News/Mail Server

*prefs*mailnewsMserver*iServerFrame*incomingServerLabel.labelString: \
Serwery poczty przychodz±cej
*prefs*mailnewsMserver*oServerFrame*outgoingServerLabel.labelString: \
Serwery poczty wychodz±cej
*prefs*mailnewsMserver*localFrame*localMailDirLabel.labelString: Katalog poczty lokalnej
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*newButton.labelString: Dodaj...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*editButton.labelString: Edytuj...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*deleteButton.labelString: Kasuj
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*defaultButton.labelString: \
Jako domy¶lny

*prefs*mailnewsMserver*iServerFrame*iServerBox*incomingServerLabel.labelString:\
Aby zmieniæ ustawienia serwera (takie jak automatyczne\n\
sprawdzanie czy s± nowe wiadomo¶ci), wybierz serwer\n\
i kliknij Edytuj.
*SubUpgradeDialog*paragraphLabel.labelString: \
Kurier stwierdzi³, ¿e wykona³e¶ upgrade wcze¶niejszej wersji. Aby przeczytaæ Twoje\n\
wiadomo¶ci, Kurier musi wiedzieæ, które foldery chcesz prenumerowaæ.\n\
\n\
Tylko foldery, które zaprenumerujesz bêd± widoczne w¶ród Twoich folderów. Wszystkie\n\
inne foldery bêd± niedostêpne. (Uwaga: zawsze mo¿esz zmieniæ listê folderów, które\n\
prenumerujesz wybieraj±c Prenumeruj z menu Plik.)
*SubUpgradeDialog*customToggle.labelString: \
Pozwól mi teraz wybraæ, które foldery subskrybowaæ

! Preferences dialog - incoming mail server - new server pop up

*MailServerInfo.title:					Netscape: informacje o serwerach pocztowych
*MailServerInfo*form1*ServerName.labelString:		Nazwa serwera: 
*MailServerInfo*form1*ServerType.labelString:		\
Rodzaj serwera
*MailServerInfo*form1*ServerUser.labelString:		Nazwa u¿ytkownika:
*MailServerInfo*form1*RememberPass.labelString:		\
Zapamiêtaj has³o.
*MailServerInfo*form1*CheckMail.labelString:		Sprawdzaj pocztê co
*MailServerInfo*form1*MinuteLabel.labelString:		\
minut.
*MailServerInfo*form1*downloadToggle.labelString:	\
Automatycznie pobieraj wszystkie nowe wiadomo¶ci.
*MailServerInfo*form1*imapOption.labelString:		IMAP
*MailServerInfo*form1*popOption.labelString:		POP
*MailServerInfo*form1*movemailOption.labelString:	MoveMail

! Imap tab

*prefs_popup*MailServerInfo*xmlFolder*form2*imapImap.labelString:	IMAP
*prefs_popup*MailServerInfo*xmlFolder*form2*deleteLabel.labelString:	\
Przy kasowaniu wiadomo¶ci:
*prefs_popup*MailServerInfo*xmlFolder*form2*trashToggle.labelString:	\
Przeno¶ j± do folderu Kosz.\n\
(Bêdzie usuwana po wybraniu 'Opró¿nij Kosz')
*prefs_popup*MailServerInfo*xmlFolder*form2*markToggle.labelString:	\
Zaznacz do skasowania.\n\
(Bêdzie usuwana po wybraniu 'Kompresuj ten folder')
*prefs_popup*MailServerInfo*xmlFolder*form2*removeToggle.labelString:	\
Usuwaj natychmiast.\n\
(Mo¿e byæ odtworzona przez wybranie Cofnij)
*prefs_popup*MailServerInfo*xmlFolder*form2*trashExitToggle.labelString:\
Opró¿niaæ Kosz przy zamykaniu.
*prefs_popup*MailServerInfo*xmlFolder*form2*expungeExitToggle.labelString:\
Czy¶ciæ ("Expunge") Inbox przy zamykaniu.
*prefs_popup*MailServerInfo*xmlFolder*form2*UseSSL.labelString:		\
Korzystaæ z bezpiecznego po³±czenia (SSL).

! Advanced tab 

*MailServerInfo*form3*PathPrefsLabel.labelString: \
Poni¿sze ustawienia okre¶laj± ró¿ne przestrzenie nazw na\n\
tym serwerze IMAP.
*MailServerInfo*form3*PersonalDir.labelString: \
Osobista przestrzeñ nazw
*MailServerInfo*form3*PublicDir.labelString: \
Publiczna (wspó³dzielona)
*MailServerInfo*form3*OtherUsers.labelString: \
Innych u¿ytkowników
*MailServerInfo*form3*AllowServer.labelString: \
Pozwoliæ serwerowi na zast±pienie tych przestrzeni nazw
*MailServerInfo*form3*imapDirLabel.labelString: \
Katalog na serwerze IMAP:
*MailServerInfo*form3*subfolderMessageToggle.labelString: \
Serwer obs³ubuje foldery zawieraj±ce podfoldery i wiadomo¶ci.
*MailServerInfo*form3*useSubscriptions.labelString: \
Pokazuj tylko przenumerowane foldery.

! pop server - general tab

*MailServerInfo*form4*LeaveMessages.labelString:	\
Pozostaw kopie wiadomo¶ci na serwerze
*MailServerInfo*form4*deleteOnPopServer.labelString:	\
Przy usuwaniu wiadomo¶ci lokalnie, usuwaj równie¿ z serwera
*MailServerInfo*form4*CleanupAllFolders.labelString:	\
Czy¶æ wszystkie foldery przy zamykaniu

! Movemail tab

*MailServerInfo*form5*builtinToggle.labelString:		Use built-in movemail
*MailServerInfo*form5*externalToggle.labelString:		Use an external application:
*MailServerInfo*form5*appChoose.labelString:			Wybierz..
! Preferences dialog - outgoing mail server
*prefs*mailnewsMserver*oServerFrame*oServerBox*outgoingServerLabel.labelString: \
Serwer poczty wychodz±cej (SMTP):
*prefs*mailnewsMserver*oServerFrame*oServerBox*serverUsernameLabel.labelString:\
Nazwa u¿ytkownika serwera poczty wychodz±cej:
*prefs*mailnewsMserver*oServerFrame*oServerBox*chooseSSLLabel.labelString:\
Korzystaæ z Secure Socket Layer (SSL) lub TLS dla poczty wychodz±cej:
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslNever.labelString:	Nigdy
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslIfPossible.labelString:\
Je¶li mo¿liwe
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslAlways.labelString:	Zawsze

! Preferences dialog - mail server - local mail directory

*prefs*mailnewsMserver*localFrame*localBox*localMailDir.labelString:	\
Katalog: 
*prefs*mailnewsMserver*localFrame*localBox*chooseButton.labelString:	Wybierz...

! Preferences dialog - Mail News/News Server

*prefs*mailnewsNServer*serverLabel.labelString:
*prefs*mailnewsNServer*serverAddButton.labelString:	Dodaj...
*prefs*mailnewsNServer*serverEditButton.labelString:	Edytuj...
*prefs*mailnewsNServer*serverDeleteButton.labelString:	Kasuj
*prefs*mailnewsNServer*serverDefaultButton.labelString:	Jako domy¶lny
*prefs*mailnewsNServer*localLabel.labelString:		Katalog grup dyskusyjnych:
*prefs*mailnewsNServer*dirLabel.labelString:		Folder dla grup dyskusyjnych (news):
*prefs*mailnewsNServer*chooseButton.labelString:	Wybierz...
*prefs*mailnewsNServer*sizeLimitToggle.labelString:	Zapytaj mnie zanim pobierzesz wiêcej ni¿ 
*prefs*mailnewsNServer*sizeLimit2.labelString:		wiadomo¶ci.

! Preferences dialog - Mail News/News Server popup

*NewsServerInfo*serverLabel.labelString:	Serwer:
*NewsServerInfo*portLabel.labelString:		Port:
*NewsServerInfo*sslToggle.labelString:		\
Obs³uguje szyfrowane po³±czenia (SSL)
*NewsServerInfo*passwordToggle.labelString:	\
Zawsze podawaæ nazwê u¿ytkownika i has³o

! Preferences dialog - Mail News/Address Book

*prefs*mailnewsAddrBook*addrBookLabel.labelString:	\
Kiedy przeszukiwane s± katalogi, szukaj pozycji u¿ywaj±c\n\
tych katalogów w nastêpuj±cej kolejno¶ci:
*prefs*mailnewsAddrBook*newButton.labelString:		Nowy...
*prefs*mailnewsAddrBook*editButton.labelString:		Edytuj...
*prefs*mailnewsAddrBook*deleteButton.labelString:	Kasuj
*prefs*mailnewsAddrBook*fullNameLabel.labelString:	Poka¿ pe³ne nazwy jako
*prefs*mailnewsAddrBook*firstLastToggle.labelString:	(Imiê)(Nazwisko)
*prefs*mailnewsAddrBook*lastFirstToggle.labelString:	(Nazwisko),(Imiê)
*prefs*mailnewsAddrBook*firstLastLabel.labelString:	(Jan Kowalski)
*prefs*mailnewsAddrBook*lastFirstLabel.labelString:	(Kowalski, Jan)

*prefs*mailnewsAddress*messageLabel.labelString:	Precyzyjne adresowanie:
*prefs*mailnewsAddress*completeLabel.labelString:	Poszukuj adresów w:
*prefs*mailnewsAddress*completeABToggle.labelString:	Ksi±¿kach adresowych.
*prefs*mailnewsAddress*completeDirToggle.labelString:	Serwerze us³ug katalogowych:
*prefs*mailnewsAddress*conflictLabel.labelString:	W przypadku znalezienia wielu adresów:
*prefs*mailnewsAddress*conflictShowToggle.labelString:	Poka¿ listê do wyboru
*prefs*mailnewsAddress*conflictAcceptToggle.labelString:Zaakceptuj to co wpisa³em(³am)
*prefs*mailnewsAddress*onlyMatchLabel.labelString:	Je¶li dok³adnie jeden adres z ksi±¿ek adresowych pasuje:
*prefs*mailnewsAddress*onlyMatchToggle.labelString:	U¿yj tego adresu i nie przeszukuj katalogu
*prefs*mailnewsAddress*sortLabel.labelString:		Przy wy¶wietlaniu pe³nej nazwy:
*prefs*mailnewsAddress*sortFirstToggle.labelString:	Poka¿, korzystaj±c z nazwy wy¶wietlanej (z karty w ksi±¿ce adresowej).
*prefs*mailnewsAddress*sortLastToggle.labelString:	Poka¿ w postaci: nazwisko, imiê.
! Preferences dialog - Mail News/Directory - New/Edit

*prefsLdapProp*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*prefsLdapProp_popup.title:			Netscape: Ustawienia serwera LDAP
*prefsLdapProp*descLabel.labelString:		Opis:
*prefsLdapProp*serverLabel.labelString:		Serwer LDAP:  
*prefsLdapProp*rootLabel.labelString:		G³ówne drzewko szukania:
*prefsLdapProp*portNumberLabel.labelString:	Numer portu:  
*prefsLdapProp*numHitLabel.labelString:		Maksymalna ilo¶æ wyników:
*prefsLdapProp*secure.labelString:		Bezpiecznie
*prefsLdapProp*savePasswd.labelString:		Zachowaj has³o

! Preferences dialog - Mail News/Message Copies

*prefs*mailnewsCopies*newsCopies.labelString:		Wysy³aj±c wiadomo¶æ do grupy dyskusyjnej automatycznie
*prefs*mailnewsCopies*newsOtherToggle.labelString:	Wy¶lij BCC na inne adresy:
*prefs*mailnewsCopies*newsChooseButton.labelString:	Wybierz folder ...
*prefs*mailnewsCopies*newsFccToggle.labelString:	Folder %s na %s
*prefs*mailnewsCopies*mailCopies.labelString:		Wysy³aj±c wiadomo¶æ pocztow± automatycznie
*prefs*mailnewsCopies*mailOtherToggle.labelString:	Wy¶lij BCC na inne adresy:
*prefs*mailnewsCopies*mailChooseButton.labelString:	Wybierz folder ...
*prefs*mailnewsCopies*mailFccToggle.labelString:	Folder %s na %s
*prefs*mailnewsCopies*dtCopies.labelString:		Miejsce przechowywania szkiców i wzorców
*prefs*mailnewsCopies*dSaveToggle.labelString:		Trzymaj szkice w '%s' na %s
*prefs*mailnewsCopies*tSaveToggle.labelString:		Trzymaj wzorce w '%s' na %s
*prefs*mailnewsCopies*dFccButton.labelString:		Wybierz folder ...
*prefs*mailnewsCopies*tFccButton.labelString:		Wybierz folder ...

*prefsMailFolderDialog*specificFolder.labelString:	Inny:

! Preferences dialog - HTML Formatting
*prefs*mailnewsHTML*useHTML.labelString:	Formatowanie wiadomo¶ci
*prefs*mailnewsHTML*useHTMLToggle.labelString:	U¿ywaj edytora HTML do tworzenia wiadomo¶ci.
*prefs*mailnewsHTML*usePlainToggle.labelString:	U¿ywaj edytora U¿ywaj edytora tekstowego do tworzenia wiadomo¶ci.
*prefs*mailnewsHTML*noHTML.labelString:		Przy wysy³aniu wiadomo¶ci w HTML do adresatów, których nie zaznaczono\njako potrafi±cych je odbieraæ:
*prefs*mailnewsHTML*noHTMLoverride.labelString:	Mo¿esz zast±piæ te ustawienia w ka¿dej wiadomo¶ci poprzez\npanel opcji w okienku tworzenia wiadomo¶ci.
*prefs*mailnewsHTML*noHTMLAsk.labelString:	Pytaj mnie, co zrobic je¶li wiadomo¶æ zawiera formatowanie HTML,\nw przeciwnym razie wysy³aj jako czysty tekst.
*prefs*mailnewsHTML*noHTMLText.labelString:	Przetwórz wiadomo¶æ do czysto tekstowej.\n(mo¿na straciæ czê¶æ formatowania)
*prefs*mailnewsHTML*noHTMLHTML.labelString:	Wysy³aj wiadomo¶æ w HTML pomimo to.\n(niektórzy adresaci mog± nie byc w stanie jej przeczytaæ)
*prefs*mailnewsHTML*noHTMLBoth.labelString:	Wysy³aj wiadomo¶æ jako tekst i HTML.\n(zu¿ywa wiêcej miejsca na dysku)

*prefs*editor*authorLabel.labelString:		Imiê i nazwisko autora:
*prefs*editor*externalFrameTitle.labelString:	Zewnêtrzne edytory
*prefs*editor*htmlLabel.labelString:		¬ród³o HTML:
*prefs*editor*imageLabel.labelString:		Obrazki:
*prefs*editor*locationLabel.labelString:	Wzór dla nowej strony:
*prefs*editor*restoreDefault.labelString:	U¿yj domy¶lnych
*prefs*editor*browseTemplate.labelString:	Wybierz...
*prefs*editor*autosaveEnable.labelString:	Automatycznie zachowuj dokument co:
*prefs*editor*minutes.labelString:		minut
*prefs*editor*browse.labelString:		Wybierz...

! Preferences dialog - Read Receipts
*prefs*mailnewsReceipts*requestReceiptsLabel.labelString:	Je¶li za¿±dam potwierdzenia wysy³aj±c wiadomo¶æ, oczekujê
*prefs*mailnewsReceipts*dsn.labelString:			Potwierdzenia dorêczenia od serwera odbiorcy (DSN)
*prefs*mailnewsReceipts*mdn.labelString:			Potwierdzenia informuj±cego o obejrzeniu wiadomo¶ci przez odbiorców (MDN)
*prefs*mailnewsReceipts*both.labelString:			Obu rodzajów potwierdzeñ
*prefs*mailnewsReceipts*receiptsArriveLabel.labelString:	Gdy przybêdzie potwierdzenie
*prefs*mailnewsReceipts*inbox.labelString:			Pozostaw je w Inbox
*prefs*mailnewsReceipts*sentmail.labelString:			Przenie¶ je do folderu Wys³ane
*prefs*mailnewsReceipts*receiveReceiptsLabel.labelString:	Gydy otrzymam wiadomo¶æ, której nadawca ¿±da potwierdzenia (MDN)
*prefs*mailnewsReceipts*never.labelString:			Nigdy nie zwracaj potwierdzenia
*prefs*mailnewsReceipts*some.labelString:			Potwierdzaj niektóre wiadomo¶ci
*prefs*mailnewsReceipts*customizeButton.labelString:		Konfiguruj...

! make sure these are multi-line, otherwise the widgets line up funny
*prefsDialogReceipts.title:			Potwierdzanie wybranych wiadomo¶ci
*prefsDialogReceipts*instructLabel.labelString:		\
Gdy otrzymam wiadomo¶æ, której nadawca za¿±da³ potwierdzenia (MDN), wysy³aj je\n\
w nastêpuj±cych przypadkach:
*prefsDialogReceipts*mailingLabel.labelString:		\
Gdy nie ma mnie w polach To ani CC odebranej wiadomo¶ci\n\
(jak dla wiadomo¶ci z list wysy³kowych):
*prefsDialogReceipts*outsideLabel.labelString:		\
Gdy wiadomo¶æ pochodzi spoza domeny:
*prefsDialogReceipts*otherLabel.labelString:		\
W pozosta³ych przypadkach:
*prefsDialogReceipts*Cancel.labelString:		Anuluj
*prefsDialogReceipts*CancelLabelString:			Anuluj


! Preferences dialog - Editor/Publish

*prefs*editor*linksAndImagesTitle.labelString:		Po³±czenia i obrazki
*prefs*editor*linksAndImagesLabel.labelString:		\
Kiedy zachowujesz zdalne dokumenty i gdy wstawiasz po³±czenie oraz obrazki:
*prefs*editor*linksToggle.labelString:			Zachowaj po³±czenia
*prefs*editor*linksInfo.labelString:			\
Ustaw po³±czenia do pracy z adresem URL dokumentu. Po³±czenia do lokalnych\n\
dokumentów bêd± istnieæ, gdy bêd± istnieæ ich lokalne wersje.
*prefs*editor*imagesToggle.labelString:			Trzymaj obrazki z dokumentem
*prefs*editor*imagesInfo.labelString:			\
Zachowaj kopie obrazków w adresie URL dokumentu.\n\
Obrazki bêd± zawsze siê pojawiaæ w lokalnych wersjach dokumentu\n\
oraz gdy dokument zostanie opublikowany.
*prefs*editor*linksAndImagesTip.labelString:			\
Rada: Ustaw obie opcje je¶li bêdziesz u¿ywaæ zdalnej publikacji.
*prefs*editor*publishTitle.labelString:			Domy¶lny adres (URL) publikacji
*prefs*editor*publishLabel.labelString:			Publikuj do (FTP lub HTTP):
*prefs*editor*browseLabel.labelString:			Przegl±daj (HTTP):

! Preferences dialog - Offline

*prefs*offline*startupBoxLabel.labelString:		Uruchom Komunikatora w 
*prefs*offline*online.labelString:			Trybie Online
*prefs*offline*offline.labelString:			Trybie Offline
*prefs*offline*ask.labelString:				Zapytaj mnie
*prefs*offline*onlineDesc.labelString:			\
Wybierz to jesli masz na sta³e dostêp do Internetu.
*prefs*offline*offlineDesc.labelString:			\
Wybierz to jesli masz modem i/lub chcesz kontrolowaæ\n\
stan po³±czeñ sieciowych.
*prefs*offline*askDesc.labelString:			\
Wybierz to jesli nie jeste¶ pewien(na) kiedy bêdziesz mieæ\n\
dostêp do sieci, gdy u¿ywasz Komunikatora. Przy starcie\n\
otrzymasz mozliwo¶c wyboru.

! Preferences dialog - Offline/News

*prefs*offlineNews*downloadBoxLabel.labelString: 	Pobieranie wiadomo¶ci
*prefs*offlineNews*downloadMsgs.labelString: 		Pobierz plik
*prefs*offlineNews*downloadByDate.labelString:		Pobierz wg daty
*prefs*offlineNews*downloadDateFrom.labelString:	z
*prefs*offlineNews*downloadDateSince.labelString:	od
*prefs*offlineNews*msgsLabel.labelString:		wiadomo¶ci
*prefs*offlineNews*daysAgoLabel.labelString:		dni temu
!*prefs*offlineNews*discussionLabel.labelString:	\
!In order to read newsgroups offline, you must first select them for\n\
!download. Click the Select newsgroups... button to choose newsgroups\n\
!for download.
*prefs*offlineNews*selectDiscussion.labelString:	Wybierz grupy dyskusyjne...
*prefs*offlineNews*discussionLabel2.labelString:	(wybrano 12 grup dyskusyjnych)

! Preferences dialog - page labels

*pref.appearance:		Widok
*pref.fonts:			Czcionki
*pref.colors:			Kolory
*pref.browser:			Nawigator
*pref.lang:			Jêzyki
*pref.smart:			Przegl±danie "z g³ow±"
*pref.applications:		Aplikacje
*pref.mailNews:			Poczta i grupy dyskusyjne
*pref.identity:			Identyfikacja
*pref.messages:			Wiadomo¶ci
*pref.mailServer:		Serwery poczty
*pref.newsServer:		Serwery news
*pref.addressing:		Adresowanie
*pref.copies:			Kopie i foldery
*pref.htmlmail:			Formatowanie
*pref.readreceipts:		Potwierdzenia odbioru
*pref.diskSpace:		Przestrzeñ dyskowa
*pref.editor:			Edytor
*pref.editorAppearance:		Kolory nowej strony
*pref.editorPublish:		Publikuj
*pref.offline:			Tryb Offline
*pref.offlineNews:		Grupy
*pref.helpFiles:		Pliki pomocy
*pref.advanced:			Zaawansowane
*pref.cache:			Cache
*pref.proxies:			Proxy
*pref.liGeneral:		Wêdruj±cy u¿ytkownik
*pref.liServer:			Informacje o serwerze
*pref.liFiles:			Wybór pozycji

*prefDesc.appearance:		Zmieñ parametry wy¶wietlania
*prefDesc.fonts:		Zmieñ czcionki 
*prefDesc.colors:		Zmieñ kolory
*prefDesc.browser:		Podaj adres strony startowej
*prefDesc.lang:			Ogl±daj strony WWW w innych jêzykach
*prefDesc.smart:		Konfiguruj wspomaganie przegl±dania
*prefDesc.applications:		Podaj aplikacje wspomagaj±ce ró¿ne typy plików
*prefDesc.mailNews:		Zmieñ ustawienia poczty i grup dyskusyjnych
*prefDesc.identity:		Podaj swoje imiê i nazwisko, adres e-mail oraz plik podpisu
*prefDesc.composition:		Wybierz ustawienia dla wychodz±cych wiadomo¶ci
*prefDesc.mailServer:		Podaj serwer dla poczty
*prefDesc.newsServer:		Podaj serwery do czytania grup dyskusyjnych
*prefDesc.addressBook:		Wybierz katalogi dla przeszukiwania adresów
*prefDesc.addressing:		Sposób adresowania wiadomo¶ci
*prefDesc.copies:		Kopie, szkice i wzorce
*prefDesc.messages:		Wybierz ustawienia dla wiadomo¶ci
*prefDesc.htmlMail:		Formatowanie wiadomo¶ci
*prefDesc.readReceipts:		Ustawienia dla wymagania i wysy³ania potwierdzeñ
*prefDesc.editor:		Podaj g³ówne preferencje autora stron WWW
*prefDesc.editorAppearance:	Wybierz domy¶lny wygl±d nowych stron WWW
*prefDesc.editorPublish:	Przypisz domy¶lny adres URL publikacji
*prefDesc.offline:		Wybierz domy¶lny tryb uruchomienia programu 
*prefDesc.offlineNews:		Wybierz ustawienia czytania list dyskusyjnych w trybie offline
*prefDesc.diskSpace:		Okre¶l przestrzeñ dyskow± zajet± przez wiadomo¶ci
*prefDesc.helpFiles:		Wybierz pliki pomocy
*prefDesc.advanced:		Zmieñ ustawienia maj±ce wp³yw na ca³y program
*prefDesc.cache:		Przypisz rozmiar cache
*prefDesc.proxies:		Konfiguruj proxy
*prefDesc.liGeneral:		Podaj Twoje dane o logowaniu do serwera
*prefDesc.liServer:		Podaj informacje o serwerze wêdrownego dostêpu
*prefDesc.liFiles:		Wybierz transmitowane elementy
*prefDesc.smartUpdate:		Konfiguruj instalacje oprogramowania

! Preferences dialog - TODOs


*prefs*mailnewsMserver*inboxToggle.sensitive:	false


! Color picker

*colorDialog_popup.title:			Netscape: Wybierz kolory

! Mail/News banners
*bannerItem.shadowType:				shadow_out
*bannerItem.shadowThickness:			1
*bannerItem.marginLeft:				1
*bannerItem.marginRight:			1
*bannerItem.marginTop:				1
*bannerItem.marginBottom:			1

*banner*mommy.buttonLayout:			button_pixmap_only

! Subscribe UI

*subscribeFolder*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*subscribeFolder*subscribe.labelString:		Prenumeruj
*subscribeFolder*unsubscribe.labelString:	Zakoñcz prenumeratê
*subscribeFolder*setSubscribe.labelString:	Prenumeruj
*subscribeFolder*clearSubscribe.labelString:	Zakoñcz prenumeratê
*subscribeFolder*expandAll.labelString:		Rozszerz
*subscribeFolder*collapseAll.labelString:	Z³ó¿ wszystko
*subscribeFolder*fetchGroupList.labelString:	Od¶wie¿ listê
*subscribeFolder*stopLoading.labelString:	Przerwij
*subscribeFolder*getNewGroups.labelString:	Pobierz nowe
*subscribeFolder*clearNewGroups.labelString:	Wyczy¶æ nowe
*subscribeFolder*search.labelString:		Szukaj teraz
*subscribeFolder*addNewsServer.labelString:	Dodaj serwer...
*subscribeFolder*subNewInfoLabel.labelString:	Ta lista ukazuje wszystkie nowe grupy dyskusyjne, które siê pojawi³y\n\
od ostatniego wyczyszczenia listy.
*subscribeFolder*searchLabel.labelString:	Szukaj:
*subscribeFolder*onserverLabel.labelString:	Na serwerze:
*subscribeFolder*serverLabel.labelString:	Serwer:
*subscribeFolder*newsgroupLabel.labelString:	Grupa dyskusyjna:
*subscribeFolder*subNewInfoLabel.alignment:	ALIGNMENT_BEGINNING

! The Add server dialog
*serverDialog*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
*serverDialogForm*serverLabel.labelString:		Nazwa serwera: 
*serverDialogForm*portLabel.labelString:		Port serwera:
*serverDialogForm*secureLabel.labelString:		Bezpiecznie:
*serverDialogForm*secureToggle.labelString:

! Compose Window attachment panel resources
*newComposeFolder*attachItemImage.highlightThickness:	2
*newComposeFolder*attachItemImage.navigationType:	NONE

*addressFolderBaseWidget*addressBook.labelString:	Ksi±¿ka adresowa
*addressBook.documentationString:			Do³±cz do bie¿±cej wiadomo¶ci kartê ksi±¿ki adresowej.

*subjectFormW*subjectLabel.labelString:		Temat:
*PriorityOption.labelString:			Priorytet:
*optionForm*returnReceipt.labelString:		¯±daj potwierdzenia
*optionForm*encrypted.labelString:		Szyfrowany
*optionForm*signed.labelString:			Podpisane
*optionForm*leftMargin:				40
*optionForm*rightMargin:			40	

*TextEncodingOption.labelString:		U¿yj 8-bitowego kodowania zamiast zgodnego z MIME dla tekstu wiadomo¶ci
*AttachmentEncodingOption.labelString:		U¿yj uuencode zamiast MIME do za³±czników
*MessageActionOption.labelString:		Format:

!!
!! *menuBar
!!
*menuBar.shadowThickness:		1
*menuBar.marginHeight:			0
*menuBar.marginWidth:			0

!!
!! *toolBox
!!
*Navigator*toolBox*Tab0.tipString:			Pasek nawigacji
*Navigator*toolBox*Tab1.tipString:			Pasek adresu
*Navigator*toolBox*Tab2.tipString:			Pasek prywatny

*Editor*toolBox*Tab0.tipString:				Pasek kompozycji
*Editor*toolBox*Tab1.tipString:				Pasek formatowania

*Composition*toolBox*Tab0.tipString:			Pasek wiadomo¶ci
*Composition*toolBox*Tab1.tipString:			Przestrzeñ adresowa
*Composition*subjectFormW.toolBox*Tab0.tipString:	Pasek formatowania

*MailFolder*toolBox*Tab0.tipString:			Pasek centrum wiadomo¶ci
*MailFolder*toolBox*Tab1.tipString:			Pasek adresu

*MailThread*toolBox*Tab0.tipString:			Pasek wiadomo¶ci
*MailThread*toolBox*Tab1.tipString:			Pasek adresu

*MailMsg*toolBox*Tab0.tipString:			Pasek wiadomo¶ci
*MailMsg*toolBox*Tab1.tipString:			Pasek adresu

*toolBox*Tab0.tipString:				Pasek nawigacji
*toolBox*Tab1.tipString:				Pasek adresu

*Navigator*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek nawigacji.
*Navigator*toolBox*Tab1.documentationString:		Poka¿ lub ukryj pasek adresu.
*Navigator*toolBox*Tab2.documentationString:		Poka¿ lub ukryj pasek prywatny.

*Editor*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek kompozycji.
*Editor*toolBox*Tab1.documentationString:		Poka¿ lub ukryj pasek formatowania.

*Composition*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek wiadomo¶ci.
*Composition*toolBox*Tab1.documentationString:		Przestrzeñ adresowa.
*Composition*subjectFormW.toolBox*Tab0.documentationString:	Poka¿ lub ukryj pasek formatowania.

*MailFolder*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek centrum wiadomo¶ci.
*MailFolder*toolBox*Tab1.documentationString:		Poka¿ lub ukryj pasek adresu.

*MailThread*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek wiadomo¶ci.
*MailThread*toolBox*Tab1.documentationString:		Poka¿ lub ukryj pasek adresu.

*MailMsg*toolBox*Tab0.documentationString:		Poka¿ lub ukryj pasek wiadomo¶ci.
*MailMsg*toolBox*Tab1.documentationString:		Poka¿ lub ukryj pasek adresu.

*toolBox*Tab0.documentationString:			Poka¿ lub ukryj pasek nawigacji.
*toolBox*Tab1.documentationString:			Poka¿ lub ukryj pasek adresu.

!! Number of pixels to move an item before swapping
*toolBox.swapThreshold:					10

!! Maximum number of pixels an item can be dragged (for one mouse motion)
*toolBox.dragThreshold:					10

*toolBox.marginLeft:					0
*toolBox.marginRight:					0
*toolBox.marginTop:					0
*toolBox.marginBottom:					0

!!
!! *toolBar
!!
*toolBarItem.shadowType:				shadow_out
*toolBarItem.shadowThickness:				1
*toolBarItem.marginLeft:				1
*toolBarItem.marginRight:				1
*toolBarItem.marginTop:					1
*toolBarItem.marginBottom:				1

*toolBar*XfeButton.marginBottom:			1
*toolBar*XfeButton.marginLeft:				1
*toolBar*XfeButton.marginRight:				1
*toolBar*XfeButton.marginTop:				1
*toolBar*XfeButton.shadowThickness:			1

*toolBar*XfeCascade.marginBottom:			1
*toolBar*XfeCascade.marginLeft:				1
*toolBar*XfeCascade.marginRight:			1
*toolBar*XfeCascade.marginTop:				1
*toolBar*XfeCascade.shadowThickness:			1

*toolBar*XmSeparator.shadowThickness:			0
*toolBar*XmSeparator.width:				20
*toolBar*XmSeparator.height:				2
*toolBar*XmSeparator.orientation:			horizontal

*toolBar*armOffset:					1
*toolBar*fillOnEnter:					false
*toolBar*raiseForeground:				Blue
*toolBar*fontList:					-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*toolBar.spacing:					0
*toolBar.shadowThickness:				0
*toolBar.marginLeft:					0
*toolBar.marginRight:					0
*toolBar.marginTop:					0
*toolBar.marginBottom:					0


!!
!! Browser Toolbar destinations
!!
!*toolBar*destinations.mapingDelay:			1
!*toolBar*destinations*whatsNew.labelString:		What's New?
!*toolBar*destinations*whatsCool.labelString:		What's Cool?
!*toolBar*destinations*inetIndex.labelString:		The Internet
!*toolBar*destinations*inetSearch.labelString:		Net Search
!*toolBar*destinations*inetWhite.labelString:		People
!*toolBar*destinations*inetYellow.labelString:		Yellow Pages
!*toolBar*destinations*upgrade.labelString:		Software
!*toolBar*destinations*welcome.labelString:		Welcome
!*toolBar*destinations*newsgroups.labelString:		Groups

!!
!! *dashBoard
!!
*dashBoard.shadowThickness:				1
*dashBoard.shadowType:					shadow_out
*dashBoard.bottomOffset:				0
*dashBoard.leftOffset:					0
*dashBoard.rightOffset:					0
*dashBoard.topOffset:					0
*dashBoard.marginBottom:				2
*dashBoard.marginLeft:					2
*dashBoard.marginRight:					2
*dashBoard.marginTop:					2

!!
!! *dashBoard*securityBar
!!
*dashBoard*securityBar.marginBottom:			0
*dashBoard*securityBar.marginLeft:			0
*dashBoard*securityBar.marginRight:			0
*dashBoard*securityBar.marginTop:			0
*dashBoard*securityBar.buttonLayout:			button_pixmap_only

!!
!! *dashBoard*viewSecurity
!!
*dashBoard*viewSecurity.shadowType:			shadow_in
*dashBoard*viewSecurity.shadowThickness:		1
*dashBoard*viewSecurity.raiseOnEnter:			false
*dashBoard*viewSecurity.buttonType:			button_none
*dashBoard*viewSecurity.marginTop:			1
*dashBoard*viewSecurity.marginBottom:			1

!!
!! *dashBoard*statusBar
!!
*dashBoard*statusBar.shadowType:			shadow_in
*dashBoard*statusBar.shadowThickness:			1
*dashBoard*statusBar.truncateLabel:			false
*dashBoard*statusBar.fontList:				-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*dashBoard*statusBar.labelAlignment:			alignment_beginning

! initial value for the status bar
*dashBoard*statusBar.labelString:			Netscape

!!
!! *dashBoard*progressBar
!!
*dashBoard*progressBar.shadowType:			shadow_in
*dashBoard*progressBar.shadowThickness:			1
*dashBoard*progressBar.fontList:			-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*dashBoard*progressBar.width:				100

!! The color of the progress bar
*dashBoard*progressBar.barColor:			Gray60

!! The about the cylon moves on each tick
*dashBoard*progressBar.cylonOffset:			2

!! The interval in msec between cylon ticks
*dashBoard*progressBar.cylonInterval:			100

!! The cylon width (percent of total)
*dashBoard*progressBar.cylonWidth:			20

!!
!! *dockedTaskBar
!!
*dockedTaskBar.shadowType:				shadow_out
*dockedTaskBar.shadowThickness:				1
*dockedTaskBar.spacing:					0
*dockedTaskBar.buttonLayout:				button_pixmap_only
*dockedTaskBar*fontList:				*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*dockedTaskBar*openOrBringUpBrowser.labelString:	Nawigator
*dockedTaskBar*openInboxAndGetNewMessages.labelString:	Poczta przychodz±ca
*dockedTaskBar*openNewsgroups.labelString:		Grupy dyskusyjne
*dockedTaskBar*openAddrBook.labelString:		Ksi±¿ka adresowa
*dockedTaskBar*openEditor.labelString:			Edytor stron

*dockedTaskBar*openOrBringUpBrowser.tipString:		Otwórz okno przegladarki
*dockedTaskBar*openInboxAndGetNewMessages.tipString:	Otwórz nowe okno do czytania poczty
*dockedTaskBar*openNewsgroups.tipString:		Otwórz listê grup dyskusyjnych
*dockedTaskBar*openAddrBook.tipString:			Otwórz ksi±¿kê adresow±
*dockedTaskBar*openEditor.tipString:			Otwórz edytor stron WWW

*openInboxAndGetNewMessages.documentationString:	Otwórz nowe okno do czytania poczty.

*dockedTaskBar*XfeButton.marginBottom:			1
*dockedTaskBar*XfeButton.marginLeft:			1
*dockedTaskBar*XfeButton.marginRight:			1
*dockedTaskBar*XfeButton.marginTop:			1
*dockedTaskBar*XfeButton.shadowThickness:		1

!!
!! *floatingTaskBar
!!
*floatingTaskBar.shadowType:				shadow_out
*floatingTaskBar.shadowThickness:			1
*floatingTaskBar.spacing:				0
*floatingTaskBar*fontList:				*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2

*floatingTaskBar*openOrBringUpBrowser.labelString:	Nawigator
*floatingTaskBar*openInboxAndGetNewMessages.labelString:Poczta przychodz±ca
*floatingTaskBar*openNewsgroups.labelString:		Grupy dyskusyjne
*floatingTaskBar*openAddrBook.labelString:		Ksi±¿ka adresowa
*floatingTaskBar*openEditor.labelString:		Edytor stron

*floatingTaskBar*openOrBringUpBrowser.tipString:	Otwórz okno przegladarki
*floatingTaskBar*openInboxAndGetNewMessages.tipString:	Otwórz nowe okno do czytania poczty
*floatingTaskBar*openNewsgroups.tipString:		Otwórz listê grup dyskusyjnych
*floatingTaskBar*openAddrBook.tipString:		Otwórz ksi±¿kê adresow±
*floatingTaskBar*openEditor.tipString:			Otwórz edytor stron WWW

*openInboxAndGetNewMessages.documentationString:	Otwórz nowe okno do czytania poczty.

*floatingTaskBar*XfeButton.marginBottom:		2
*floatingTaskBar*XfeButton.marginLeft:			2
*floatingTaskBar*XfeButton.marginRight:			2
*floatingTaskBar*XfeButton.marginTop:			2
*floatingTaskBar*XfeButton.shadowThickness:		1


!!
!! *taskBarContextMenu
!!
*taskBarContextMenu*floatingTaskBarAlwaysOnTop.labelString:	Zawsze na wierzchu
*taskBarContextMenu*floatingTaskBarClose.labelString:		Zamknij

*floatingTaskBarVerticalCmdString:								Pionowo
*floatingTaskBarHorizontalCmdString:							Poziomo

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! buttons for compose/post  message pulldown on the toolbar
*toolBar*composeMessagePlain.labelString: 	jako zwyk³y tekst
*toolBar*composeMessageHTML.labelString: 	w formacie HTML

*toolBar*composeArticlePlain.labelString: 	jako zwyk³y tekst
*toolBar*composeArticleHTML.labelString: 	w formacie HTML

! buttons specific to the folder frame.
*toolBar*getNewMessages.labelString:		Pobierz\nwiad.
*toolBar*composeMessage.labelString:		Nowa\nwiad.
*composeMessage.tipString:			Nowa wiadomo¶æ
*toolBar*newFolder.labelString:			Nowy folder
*toolBar*addNewsgroup.labelString:		Prenumeruj
*toolBar*deleteFolder.labelString:		Kasuj
*toolBar*deleteAny.labelString:			Kasuj
*toolBar*deleteAny.tipString:   		Kasuj wybran± wiadomo¶æ
*toolBar*deleteAny.documentationString:		Kasuj wybran± wiadomo¶æ.

*unsubscribeNewsgroupCmdString: 		Zakoñcz prenumeratê
!
*getNewMessages.tipString:			Pobierz nowe wiadomo¶ci
*getNewMessages.documentationString:		Pobierz nowe wiadomo¶ci poczty i list dyskusyjnych.
*getNewMessages.labelString:			Pobierz nowe wiadomo¶ci
*getNewMessages.mnemonic:			M

*newFolder.tipString:				Folder nowej poczty
*addNewsgroup.tipString:			Dodaj grupê dyskusyjn±
*deleteFolder.tipString:			Kasuj folder poczty

! buttons specific to the thread/message frame.
*toolBar*composeArticle.labelString:		Nowa\nwiad.
*toolBar*replyToNewsgroup.labelString:		Odpowiedz
*toolBar*replyToSender.labelString:		Odpowiedz
*toolBar*nextMessage.labelString:		Nastêpny
*toolBar*nextUnreadMessage.labelString:		Nastêpna nieczytana wiadomo¶æ
*toolBar*nextUnreadThread.labelString:		Nastêpny nieczytany w±tek
*toolBar*nextFlaggedMessage.labelString:	Nastêpna oflagowana wiadomo¶æ
*toolBar*nextCategory.labelString:		Nastêpna kategoria
*toolBar*nextUnreadCategory.labelString:	Nastêpna nieczytana kategoria
*toolBar*nextUnreadCollection.labelString:	Nastêpna nieczytana kolekcja
*toolBar*forwardMessage.labelString:		Dalej
*toolBar*deleteMessage.labelString:		Kasuj
*toolBar*previousUnreadMessage.labelString:	Poprzedni
*toolBar*previousMessage.labelString:		Poprzedni
*previousMessage.tipString:			Poprzednia wiadomo¶æ
*toolBar*moveMessage.labelString:		Plik
*toolBar*copyMessage.labelString:		Plik
*toolBar*composeArticle.tipString:		Nowa wiadomo¶æ do tej grupy dyskusyjnej
*toolBar*replyToNewsgroup.tipString:		Odpowiedz na wiadomo¶æ
*toolBar*nextMessage.tipString:			Nastêpna nieczytana


*toolBar*moveMessage.tipString:			Zapisz do pliku wybran± wiadomo¶æ
*toolBar*copyMessage.tipString:			Zapisz do pliku wybran± wiadomo¶æ
*toolBar*moveMessage.documentationString:	Zapisz do folderu wybran± wiadomo¶æ.
*toolBar*copyMessage.documentationString:	Kopiuj do folderu wybran± wiadomo¶æ.

! buttons specific to the browser frame.
*toolBar*back.labelString:		Wstecz
*toolBar*forward.labelString:		Dalej
*toolBar*home.labelString:		Start
*toolBar*search.labelString:		Szukaj
*toolBar*destinations.labelString:	Netscape
*toolBar*guide.labelString:		Przewodnik
*toolBar*myshopping.labelString:	Sklep
*toolBar*showImages.labelString:	Obrazki
*toolBar*loadImages.labelString:	£aduj\nobrazki
*toolBar*print.labelString:		Drukuj
*print.tipString:			Drukuj tê stronê
*MailThread*print.tipString:		Drukuj wybran± wiadomo¶æ
*MailMsg*print.tipString:		Drukuj wybran± wiadomo¶æ
*toolBar*reload.labelString:		Prze³aduj

! buttons specific to the compose frame.
*toolBar*sendMessageNow.labelString:	Wy¶lij
*toolBar*quote.labelString:		Cytuj
*toolBar*addresseePicker.labelString:	Adres
*toolBar*saveDraft.labelString:		Zachowaj
*toolBar*viewAddresses.labelString:	Adres
*toolBar*viewDirectories.labelString:	Katalog
!
*sendMessageNow.tipString:		Wy¶lij tê wiadomo¶æ
*saveDraft.tipString:			Zachowaj wiadomo¶æ
*quote.tipString:			Cytuj poprzedni dokument
*viewDirectories.tipString:		Szukaj adresu
*viewSecurity.tipString:        	Poka¿ informacje o bezpieczeñstwie
!
*addressBook.tipString:
!
*quote.documentationString:		Wstaw tekst z oryginalnej wiadomo¶ci lub strony w formie cytatu.
*viewDirectories.documentationString:	Szukaj adresu w katalogu LDAP.
!
! buttons specific to the Addressbook frame. documentationString
*toolBar*abEditEntry.labelString:	W³asno¶ci
*toolBar*abDelete.labelString:		Kasuj
*toolBar*searchAddress.labelString:	Katalog
*toolBar*abCall.labelString:		Wywo³aj
!
*addToAddressBook.tipString:		Utwórz now± pozycjê
*abNewList.tipString:			Utwórz now± listê dystrybucyjn±
*abEditEntry.tipString:			Edytuj zaznaczon± pozycjê
*abDelete.tipString:			Kasuj wybran± pozycjê
*abCall.tipString:			Rozpocznij konferencjê
*searchAddress.tipString:		Szukaj adresu
!

*abEditEntry.documentationString:	\
Podgl±d i edycja w³asno¶ci karty z ksi±¿ki adresowej.
*viewProperties.documentationString:	\
Podgl±d i edycja w³asno¶ci karty z ksi±¿ki adresowej.
*displayHTMLDomainsDialog.documentationString: \
Edytuj listê domen, które mog± otrzymywaæ wiadomo¶ci w formacie HTML.
*abVCard.documentationString:		Utwórz lub edytuj kartê mojej ksi±¿ki adresowej.

*abDelete.documentationString:		\
Kasuj wybran± pozycjê z ksi±¿ki adresowej.

*searchAddress.documentationString:	Szukaj adresu w katalogu LDAP.

!*AddressBook*toggleNavigationToolbar.documentationString: 
!
*toBtn.documentationString:		Utwórz wiadomo¶æ dla tego adresata.
*ccBtn.documentationString:		Utwórz wiadomo¶æ i wy¶lij kopiê do tego adresata.
*bccBtn.documentationString:		Utwórz wiadomo¶æ i wy¶lij ukryt± kopiê do tego adresata.
!
! buttons used everywhere (it seems.)
*toolBar*viewSecurity.labelString:	Ochrona
*toolBar*stopLoading.labelString:	Przerwij

*changeDocumentEncoding.documentationString: Oznaczaj kodowanie dokumentów.


*MailFolder.width:			280
*MailFolder.height:			400
!
*abCardProperties*strip.topOffset:	3
*abCardProperties*strip.leftOffset:	15
*abCardProperties*strip.bottomOffset:	3
*abCardProperties*strip.rightOffset:	15

!
! For the mail message download dialog
!
Netscape*MessageDownload*label.alignment:		ALIGNMENT_BEGINNING
Netscape*MessageDownload*stopButtonForm*stopLoading.labelString:Anuluj

Netscape*NewsDownload*fontList:				-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2
Netscape*NewsDownload_popup.title:			Netscape: Pobierz nag³ówki

Netscape*NewsDownload*allToggle.labelString:		Pobierz wszystkie nag³ówki
Netscape*NewsDownload*numMessagesToggle.labelString:	Pobierz
Netscape*NewsDownload*numMessagesCaption.labelString:	nag³ówki
Netscape*NewsDownload*markOthersRead.labelString:	Zaznacz pozosta³e nag³ówki jako przeczytane.

!
! For the news group property dialog
!
*NewsgroupProps*name_label.labelString:			Nazwa:
*NewsgroupProps*location_label.labelString:		Adres URL:
*NewsgroupProps*unread_label.labelString:		Nieczytane wiadomo¶ci:
*NewsgroupProps*total_label.labelString:		Razem wiadomo¶ci:
*NewsgroupProps*space_label.labelString:		Zajêta przestrzeñ dyskowa:
*NewsgroupProps*html_toggle.labelString:		Mo¿e otrzymywaæ wiadomo¶ci w formacie HTML

!
! For the mail folder property dialog
!
*MailFolderProps*name_label.labelString:		Nazwa:
*MailFolderProps*name_value.columns:			20
*MailFolderProps*location_label.labelString:		Adres URL:
*MailFolderProps*unread_label.labelString:		Nieczytane wiadomo¶ci:
*MailFolderProps*total_label.labelString:		Razem wiadomo¶ci:
*MailFolderProps*wasted_label.labelString:		Niewykorzystana przestrzeñ dyskowa:
*MailFolderProps*space_label.labelString:		Zajêta przestrzeñ dyskowa:
*MailFolderProps*sharePrivilegesLabel.labelString:	Podziel siê tym oraz \
innymi folderami z innymi u¿ytkownikami\n\
sieci i ustaw prawa dostêpu

!
! For the news server property dialog
!
*NewsServerProps*name_label.labelString:	Nazwa:
*NewsServerProps*port_label.labelString:	Nr portu:
*NewsServerProps*security_label.labelString:	Zabezpieczenie:
*NewsServerProps*desc_label.labelString:	Opis:
*NewsServerProps*prompt_toggle.labelString:	Zawsze pytaj mnie o nazwê u¿ytkownika i has³o
*NewsServerProps*anonymous_toggle.labelString:	\
Pytaj mnie o u¿ytkownika i has³o\n\
kiedy jest to potrzebne
*NewsServerProps*html_toggle.labelString:	Mo¿e otrzymywaæ wiadomo¶ci w formacie HTML

!
! For the splash screen
!
Netscape*splashShell*background:		Black
Netscape*splashShell*foreground:		White
Netscape*splashShell*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2

!
! Special for HTMLCompose
!
Netscape*composeViewEditFormWidget.scrollerForm.pane.scroller.spacing:	0
Netscape*composeViewEditFormWidget.scrollerForm.pane*spacing:		0
Netscape*composeViewEditFormWidget.scrollerForm.pane*marginWidth:	0
Netscape*composeViewEditFormWidget.scrollerForm.pane*marginHeight:	0
Netscape*composeViewEditFormWidget.scrollerForm.pane*highlightThickness:0
Netscape*composeViewEditFormWidget.scrollerForm.pane*traversalOn:	False

!Composition navigation
*Composition*navigationType:			TAB_GROUP
*Composition*XmTextField.highlightThickness:	2
*Composition*XmText.highlightThickness:		2

! Plain Text Compose Popup
*popup*pasteAsQuoted.labelString:		Wstaw jako cytat
*popup*pasteAsQuoted.mnemonic:			Q
*popup*quoteOriginalText.labelString:		Cytuj oryginalny tekst

!
! Special for SpellHandler...
!
*spellDialog*right_rc.entryAlignment:		ALIGNMENT_CENTER

*spellDialog*replace.labelString:		Zast±p
*spellDialog*replace_all.labelString:		Zast±p wszystkie
*spellDialog*check.labelString:			Sprawd¼
*spellDialog*ignore.labelString:		Pomiñ
*spellDialog*ignore_all.labelString:		Pomiñ wszystko
*spellDialog*learn.labelString:			Ucz siê
*spellDialog*stop.labelString:			Przerwij
*spellDialog*text_label.labelString:		S³owo:
*spellDialog*list_label.labelString:		Sugestie:

*spellDialog*done.labelString:			Wykonano
*spellDialog*msgFinished.labelString:		[ zakoñczono sprawdzanie ]
*spellDialog*msgNoSuggestions.labelString:	[ brak sugestii ]
*spellDialog*msgUnRecognized.labelString:	[ nieznane s³owo ]
*spellDialog*msgCorrect.labelString:		[ pisownia poprawna ]
*spellDialog*msgNull.labelString:		[ ]

*spellDialog*text_label.fontList:			-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
*spellDialog*list_label.fontList:			-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
*spellDialog*right_rc*fontList:				-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2
*spellDialog*combo_frame*fontList:			-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2
*spellDialog*langCzech.labelString:			Czeski
*spellDialog*langRussian.labelString:			Rosyjski
*spellDialog*langCatalan.labelString:			Kataloñski
*spellDialog*langHungarian.labelString:			Wêgierki
*spellDialog*langFrench.labelString:			Francuski
*spellDialog*langGerman.labelString:			Niemiecki
*spellDialog*langSwedish.labelString:			Szwecki
*spellDialog*langSpanish.labelString:			Hiszpañski
*spellDialog*langItalian.labelString:			W³oski
*spellDialog*langDanish.labelString:			Duñski
*spellDialog*langDutch.labelString:			Holenderski
*spellDialog*langPortugueseBrazilian.labelString:	Portugalski (Brazylijski)
*spellDialog*langPortugueseEuropean.labelString:	Portugalski (Europejski)
*spellDialog*langNorwegianBokmal.labelString:		Norweski (Bokmal)
*spellDialog*langNorwegianNynorsk.labelString:		Norweski (Nynorsk)
*spellDialog*langNorwegian.labelString:			Norweski
*spellDialog*langFinnish.labelString:			Fiñski
*spellDialog*langGreek.labelString:			Grecki
*spellDialog*langEnglishUS.labelString:			Angielski (US)
*spellDialog*langEnglishUK.labelString:			Angielski (UK)
*spellDialog*langEnglish.labelString:			Angielski
*spellDialog*langAfrikaans.labelString:			Afrykanerski
*spellDialog*langPolish.labelString:			Polski
 
!
! tips for SwatchMatrix in colorPicker...
!
!*#FFFFFF.tipString: 255 255 255
!*#CCCCCC.tipString: 204 204 204
!*#999999.tipString: 153 153 153
!*#666666.tipString: 102 102 102
!*#333333.tipString: 51 51 51
!*#000000.tipString: 0 0 0
!
!*#FFCCCC.tipString: 255 204 204
!*#FF6666.tipString: 255 102 102
!*#FF0000.tipString: 255 0 0
!*#CC0000.tipString: 204 0 0
!*#990000.tipString: 153 0 0
!*#660000.tipString: 102 0 0
!*#330000.tipString: 51 0 0
!
!*#FFCC99.tipString: 255 204 153
!*#FFCC33.tipString: 255 204 51
!*#FF9900.tipString: 255 153 0
!*#FF6600.tipString: 255 102 0
!*#CC6600.tipString: 204 102 0
!*#993300.tipString: 153 51 0
!*#663300.tipString: 102 51 0
!
!*#FFFFCC.tipString: 255 255 204
!*#FFFF99.tipString: 255 255 153
!*#FFFF00.tipString: 255 255 0
!*#FFCC00.tipString: 255 204 0
!*#999900.tipString: 153 153 0
!*#666600.tipString: 102 102 0
!*#333300.tipString: 51 51 0
!
!*#99FF99.tipString: 153 255 153
!*#66FF99.tipString: 102 255 153
!*#33FF33.tipString: 51 255 51
!*#33CC00.tipString: 51 204 0
!*#009900.tipString: 0 153 0
!*#006600.tipString: 0 102 0
!*#003300.tipString: 0 51 0
!
!*#CCFFFF.tipString: 204 255 255
!*#66FFFF.tipString: 102 255 255
!*#33CCFF.tipString: 51 204 255
!*#3366FF.tipString: 51 102 255
!*#3333FF.tipString: 51 51 255
!*#000099.tipString: 0 0 153
!*#000066.tipString: 0 0 102
!
!*#FFCCFF.tipString: 255 204 255
!*#FF99FF.tipString: 255 153 255
!*#CC66CC.tipString: 204 102 204
!*#CC33CC.tipString: 204 51 204
!*#993399.tipString: 153 51 153
!*#663366.tipString: 102 51 102
!*#330033.tipString: 51 0 51
!
!*#FFFF99.tipString: 255 255 153
!*#FFFF66.tipString: 255 255 102
!*#FFCC66.tipString: 255 204 102
!*#FFCC33.tipString: 255 204 51
!*#CC9933.tipString: 204 153 51
!*#996633.tipString: 153 102 51
!*#663333.tipString: 102 51 51
!
!*#99FFFF.tipString: 153 255 255
!*#33FFFF.tipString: 51 255 255
!*#66CCCC.tipString: 102 204 204
!*#00CCCC.tipString: 000 204 204
!*#339999.tipString: 51 153 153
!*#336666.tipString: 51 102 102
!*#003333.tipString: 0 51 51
!
!*#CCCCFF.tipString: 204 204 255
!*#9999FF.tipString: 153 153 204
!*#6666CC.tipString: 102 102 204
!*#6633FF.tipString: 102 51 255
!*#6600CC.tipString: 102 0 204
!*#333399.tipString: 51 51 153
!*#330099.tipString: 51 0 153

!
! doc strings for SwatchMatrix in colorPicker...
!
*#FFFFFF.documentationString: Kolor RGB [ 255 255 255 ][ #FFFFFF ]
*#CCCCCC.documentationString: Kolor RGB [ 204 204 204 ][ #CCCCCC ]
*#999999.documentationString: Kolor RGB [ 153 153 153 ][ #999999 ]
*#666666.documentationString: Kolor RGB [ 102 102 102 ][ #666666 ]
*#333333.documentationString: Kolor RGB [ 51 51 51 ][ #333333 ]
*#000000.documentationString: Kolor RGB [ 0 0 0 ][ #000000 ]

*#FFCCCC.documentationString: Kolor RGB [ 255 204 204 ][ #FFCCCC ]
*#FF6666.documentationString: Kolor RGB [ 255 102 102 ][ #FF6666 ]
*#FF0000.documentationString: Kolor RGB [ 255 0 0 ][ #FF0000 ]
*#CC0000.documentationString: Kolor RGB [ 204 0 0 ][ #CC0000 ]
*#990000.documentationString: Kolor RGB [ 153 0 0 ][ #990000 ]
*#660000.documentationString: Kolor RGB [ 102 0 0 ][ #660000 ]
*#330000.documentationString: Kolor RGB [ 51 0 0 ][ #330000 ]

*#FFCC99.documentationString: Kolor RGB [ 255 204 153 ][ #FFCC99 ]
*#FFCC33.documentationString: Kolor RGB [ 255 204 51 ][ #FFCC33 ]
*#FF9900.documentationString: Kolor RGB [ 255 153 0 ][ #FF9900 ]
*#FF6600.documentationString: Kolor RGB [ 255 102 0 ][ #FF6600 ]
*#CC6600.documentationString: Kolor RGB [ 204 102 0 ][ #CC6600 ]
*#993300.documentationString: Kolor RGB [ 153 51 0 ][ #993300 ]
*#663300.documentationString: Kolor RGB [ 102 51 0 ][ #663300 ]

*#FFFFCC.documentationString: Kolor RGB [ 255 255 204 ][ #FFFFCC ]
*#FFFF99.documentationString: Kolor RGB [ 255 255 153 ][ #FFFF99 ]
*#FFFF00.documentationString: Kolor RGB [ 255 255 0 ][ #FFFF00 ]
*#FFCC00.documentationString: Kolor RGB [ 255 204 0 ][ #FFCC00 ]
*#999900.documentationString: Kolor RGB [ 153 153 0 ][ #999900 ]
*#666600.documentationString: Kolor RGB [ 102 102 0 ][ #666600 ]
*#333300.documentationString: Kolor RGB [ 51 51 0 ][ #333300 ]

*#99FF99.documentationString: Kolor RGB [ 153 255 153 ][ #99FF99 ]
*#66FF99.documentationString: Kolor RGB [ 102 255 153 ][ #66FF99 ]
*#33FF33.documentationString: Kolor RGB [ 51 255 51 ][ #33FF33 ]
*#33CC00.documentationString: Kolor RGB [ 51 204 0 ][ #33CC00 ]
*#009900.documentationString: Kolor RGB [ 0 153 0 ][ #009900 ]
*#006600.documentationString: Kolor RGB [ 0 102 0 ][ #006600 ]
*#003300.documentationString: Kolor RGB [ 0 51 0 ][ #003300 ]

*#CCFFFF.documentationString: Kolor RGB [ 204 255 255 ][ #CCFFFF ]
*#66FFFF.documentationString: Kolor RGB [ 102 255 255 ][ #66FFFF ]
*#33CCFF.documentationString: Kolor RGB [ 51 204 255 ][ #33CCFF ]
*#3366FF.documentationString: Kolor RGB [ 51 102 255 ][ #3366FF ]
*#3333FF.documentationString: Kolor RGB [ 51 51 255 ][ #3333FF ]
*#000099.documentationString: Kolor RGB [ 0 0 153 ][ #000099 ]
*#000066.documentationString: Kolor RGB [ 0 0 102 ][ #000066 ]

*#FFCCFF.documentationString: Kolor RGB [ 255 204 255 ][ #FFCCFF ]
*#FF99FF.documentationString: Kolor RGB [ 255 153 255 ][ #FF99FF ]
*#CC66CC.documentationString: Kolor RGB [ 204 102 204 ][ #CC66CC ]
*#CC33CC.documentationString: Kolor RGB [ 204 51 204 ][ #CC33CC ]
*#993399.documentationString: Kolor RGB [ 153 51 153 ][ #993399 ]
*#663366.documentationString: Kolor RGB [ 102 51 102 ][ #663366 ]
*#330033.documentationString: Kolor RGB [ 51 0 51 ][ #330033 ]

*#FFFF99.documentationString: Kolor RGB [ 255 255 153 ][ #FFFF99 ]
*#FFFF66.documentationString: Kolor RGB [ 255 255 102 ][ #FFFF66 ]
*#FFCC66.documentationString: Kolor RGB [ 255 204 102 ][ #FFCC66 ]
*#FFCC33.documentationString: Kolor RGB [ 255 204 51 ][ #FFCC33 ]
*#CC9933.documentationString: Kolor RGB [ 204 153 51 ][ #CC9933 ]
*#996633.documentationString: Kolor RGB [ 153 102 51 ][ #996633 ]
*#663333.documentationString: Kolor RGB [ 102 51 51 ][ #663333 ]

*#99FFFF.documentationString: Kolor RGB [ 153 255 255 ][ #99FFFF ]
*#33FFFF.documentationString: Kolor RGB [ 51 255 255 ][ #33FFFF ]
*#66CCCC.documentationString: Kolor RGB [ 102 204 204 ][ #66CCCC ]
*#00CCCC.documentationString: Kolor RGB [ 000 204 204 ][ #00CCCC ]
*#339999.documentationString: Kolor RGB [ 51 153 153 ][ #339999 ]
*#336666.documentationString: Kolor RGB [ 51 102 102 ][ #336666 ]
*#003333.documentationString: Kolor RGB [ 0 51 51 ][ #003333 ]

*#CCCCFF.documentationString: Kolor RGB [ 204 204 255 ][ #CCCCFF ]
*#9999FF.documentationString: Kolor RGB [ 153 153 204 ][ #9999FF ]
*#6666CC.documentationString: Kolor RGB [ 102 102 204 ][ #6666CC ]
*#6633FF.documentationString: Kolor RGB [ 102 51 255 ][ #6633FF ]
*#6600CC.documentationString: Kolor RGB [ 102 0 204 ][ #6600CC ]
*#333399.documentationString: Kolor RGB [ 51 51 153 ][ #333399 ]
*#330099.documentationString: Kolor RGB [ 51 0 153 ][ #330099 ]

!*selector*background:				gray70
!*selector*shadowThickness:			1
!*selector.orientation:				vertical
!
!*selector*ToolBar.buttonLayout:		button_label_on_top
!
!*selector.leftAttachment:			attach_form
!*selector.rightAttachment:			attach_none
!*selector.topAttachment:			attach_form
!*selector.bottomAttachment:			attach_form
!
!
!*selector.leftOffset:				10
!*selector.rightOffset:				10
!*selector.topOffset:				10 
!*selector.bottomOffset:			10
!
!*selector.usePreferredWidth:			false
!*selector.usePreferredHeight:			false

!*selector.clipShadowThickness:			1
!*selector.clipShadowType:			shadow_in

!*selector.marginLeft:				0
!*selector.marginRight:				0
!*selector.marginTop:				0
!*selector.marginBottom:			0

!*selector.marginLeft:				0
!*selector.marginRight:				0
!*selector.marginTop:				0
!*selector.marginBottom:			0

!*selector.spacing:				10

!*selector*ToolBar.radioBehavior:		true


!*selector*XfeButton.buttonType:		button_toggle

!*selector*XfeButton.buttonTrigger:		button_trigger_either
!*selector*XfeButton.marginLeft:		4
!*selector*XfeButton.marginRight:		4
!*selector*XfeButton.marginTop:			4
!*selector*XfeButton.marginBottom:		4
!
!*selector*XfeButton.raiseOnEnter:		true
!*selector*XfeButton.shadowThickness:		0
!*selector*XfeButton.fillOnEnter:		true
!*selector*XfeButton.armOffset:			0

!*selector*XfeButton.transparentCursor:		cross
!*selector*XfeButton.cursor:			hand2

Netscape*AddressOutlinerPopup*fontList:\
-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2,\
-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-2=BOLD,\
-*-helvetica-medium-o-*-*-*-100-*-*-*-*-iso8859-2=ITALIC

! This table maps the host's locale names to MIME charsets
!
!*localeCharset*C:		iso-8859-*
*localeCharset*C:		iso-8859-2
*localeCharset*chinese:		gb2312
*localeCharset*de_DE:		iso-8859-1
*localeCharset*fr_FR.iso8859:	iso-8859-1
*localeCharset*ja_JP.mscode:	x-sjis
*localeCharset*ja_JP.ujis:	x-euc-jp
*localeCharset*japanese:	x-euc-jp
*localeCharset*ko_KR.euc:	euc-kr
*localeCharset*korean:		euc-kr
*localeCharset*zh_CN.ugb:	gb2312
*localeCharset*zh_TW.big5:	big5
*localeCharset*pl_PL.iso8859:	iso-8859-2
*localeCharset*pl_PL:		iso-8859-2

! English strings are built into the binary

*strings.-5288:Netscape nie mo¿e po³±czyæ siê bezpiecznie z tym miejscem,\n\
gdy¿ serwer nie obs³uguje szyfrowania wysokiej jako¶ci.

*strings.-5287:Netscape nie mo¿e po³±czyæ siê bezpiecznie z tym miejscem,\n\
gdy¿ serwer wymaga u¿ycia szyfrowania wysokiej jako¶ci.\n\
\n\
Ta wersja Netscape nie obs³uguje szyfrowania wysokiej\n\
jako¶ci, prawdopodobnie ze wzglêdu na ograniczenia\n\
eksportowe USA.

*strings.-5286:Netscape i ten serwer nie mog± siê po³±czyæ w sposób\n\
bezpieczny, gdy¿ nie maj± ¿adnego wspólnego algorytmu\n\
szyfrowania.

*strings.-5285:Netscape nie mo¿e znale¼æ certyfikatu lub klucza\n\
niezbêdnego do autoryzacji.

*strings.-5284:Netscape nie mo¿e po³±czyæ siê bezpiecznie z tym miejscem,\n\
gdy¿ certyfikat serwera zosta³ odrzucony.

*strings.-5282:Serwer otrzyma³ na b³êdne dane od klienta.

*strings.-5281:Netscape otrzyma³ na b³êdne dane od serwera.

*strings.-5280:Netscape otrzyma³ nieobs³ugiwany rodzaj certyfikatu.\n\
\n\
Rozwi±zaniem problemu mo¿e byæ nowa wersja Netscape.

*strings.-5279:Serwer u¿ywa nieobs³ugiwanej wersji protoko³u\n\
zabezpieczeñ.\n\
\n\
Rozwi±zaniem problemu mo¿e byæ nowa wersja Netscape.

*strings.-5277:Client authentication failed due to mismatch between private\n\
key found in client key database and public key found in client\n\
certificate database.

*strings.-5276:Netscape is unable to communicate securely with this site\n\
because the domain to which you are attempting to connect\n\
does not match the domain name in the server's certificate.

*strings.-5274:This site only supports SSL version 2.  You can enable\n\
support for SSL version 2 by selecting Security Info from\n\
the Communicator menu and opening the Navigator section.

*strings.-5273:SSL has received a record with an incorrect Message\n\
Authentication Code.  This could indicate a network error,\n\
a bad server implementation, or a security violation.

*strings.-5272:SSL has received an error from the server indicating an\n\
incorrect Message Authentication Code.  This could indicate\n\
a network error, a bad server implementation, or a\n\
security violation.

*strings.-5271:The server cannot verify your certificate.

*strings.-5270:The server has rejected your certificate as revoked.

*strings.-5269:The server has rejected your certificate as expired.

*strings.-5268:You cannot connect to an encrypted website because SSL\n\
has been disabled.  You can enable SSL by selecting\n\
Security Info from the Communicator menu and opening the\n\
Navigator section.

*strings.-5267:The server is in another FORTEZZA domain,\n\
you cannot connect to it.

*strings.-1192:An I/O error occurred during security authorization.\n\
Please try your connection again

*strings.-1191:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1190:The security library has received bad data.\n\
You will probably be unable to connect to this site securely.

*strings.-1189:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1188:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1187:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1186:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1185:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1184:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1183:The security library has encountered an improperly formatted\n\
DER-encoded message.

*strings.-1182:The server's certificate has an invalid signature.\n\
You will not be able to connect to this site securely.

*strings.-1181:This operation cannot be performed because a required\n\
certificate has expired.  Click on the `Security' icon\n\
for more information about certificates.

*strings.-1180:This operation cannot be performed because a required\n\
certificate has been revoked.  Click on the `Security'\n\
icon for more information about certificates.

*strings.-1179:The certificate issuer for this server is not recognized by\n\
Netscape. The security certificate may or may not be valid.\n\
\n\
Netscape refuses to connect to this server.

*strings.-1178:The server's public key is invalid.\n\
You will not be able to connect to this site securely.

*strings.-1177:Podane has³o zabezpieczaj±ce jest nieprawid³owe.

*strings.-1176:Nie poda³e¶(a¶) poprawnie nowego has³a. Spróbuj ponownie.

*strings.-1175:The security library has experienced an error.\n\
You will probably be unable to connect to this site securely.

*strings.-1174:The security library has experienced a database error.\n\
You will probably be unable to connect to this site securely.

*strings.-1173:The security library has experienced an out of memory error.\n\
Please try to reconnect.

*strings.-1172:The certificate issuer for this server has been marked as\n\
not trusted by the user.  Netscape refuses to connect to this\n\
server.

*strings.-1171:The certificate for this server has been marked as not\n\
trusted by the user.  Netscape refuses to connect to this\n\
server.

*strings.-1170:The Certificate that you are trying to download\n\
already exists in your database.

*strings.-1169:You are trying to download a certificate whose name\n\
is the same as one that already exists in your database.\n\
If you want to download the new certificate you should\n\
delete the old one first.

*strings.-1168:Error adding certificate to your database

*strings.-1167:Error refiling the key for this certificate

*strings.-1166:The Private Key for this certificate can\n\
not be found in your key database

*strings.-1165:Ten certyfikat jest wa¿ny.

*strings.-1164:Ten certyfikat jest niewa¿ny.

*strings.-1163:Brak odpowiedzi

*strings.-1162:The certificate authority that issued this site's\n\
certificate has expired.\n\
Check your system date and time.

*strings.-1161:The certificate revocation list for this certificate authority\n\
that issued this site's certificate has expired.\n\
Reload a new certificate revocation list or check your system data and time.

*strings.-1160:The certificate revocation list for this certificate authority\n\
that issued this site's certificate has an invalid signature.\n\
Reload a new certificate revocation list.

*strings.-1159:The certificate revocation list you are trying to load has\n\
an invalid format.

*strings.-1158:Warto¶æ rozszerzenia jest niewa¿na.

*strings.-1157:Nie znaleziono rozszerzenia.

*strings.-1156:Certifikat wystawcy jest niewa¿ny.

*strings.-1155:Certificate path length constraint is invalid.

*strings.-1154:Certificate usages is invalid.

*strings.-1153:**Modu³ WY£¡CZNIE wewnêtrzny**

*strings.-1152:System próbowa³ u¿yc klucza, który nie obs³uguje\n\
¿±danej operacji.

*strings.-1151:Certifikat zawiera nieznane rozszerzenie krytyczne.

*strings.-1150:Lista odwo³anych certyfikatów, któr± próbujesz za³adowaæ\n\
nie jest nowsza od obecnie u¿ywanej.

*strings.-1149:Tej wiadomo¶ci nie mo¿na zaszyfrowaæ ani podpisaæ, poniewa¿ nie\n\
posiadasz jeszcze certyfikatu e-mail. Kliknij na obrazku `Ochrona'\n\
po wiecej informacji na temat certyfikatów.

*strings.-1148:Tej wiadomo¶ci nie mo¿na zaszyfrowaæ, poniewa¿ nie posiadasz\n\
certyfikatów wszystkich adresatów. Klikniêcie na obrazku\n\
`Ochrona' da Ci wiêcej informacji.\n\
\n\
Czy wy³±czyæ szyfrowanie i wys³aæ wiadomo¶æ pomimo to?

*strings.-1147:Tych danych nie mo¿na rozszyfrowaæ, gdy¿ nie jeste¶ adresatem;\n\
albo nie s± one przeznaczone dla Ciebie, albo nie mo¿na znale¼æ\n\
w³a¶ciwego dla certyfikatu klucza prywatnego w Twojej lokalnej\n\
bazie danych.

*strings.-1146:The data cannot be decrypted because the key encryption\n\
algorithm it used does not match that of your certificate.

*strings.-1145:Signature verification failed due to no signer found,\n\
too many signers found, or improper or corrupted data.

*strings.-1144:An unsupported or unknown key algorithm was encountered;\n\
the current operation cannot be completed.

*strings.-1143:The data cannot be decrypted because it was encrypted using an\n\
algorithm or key size which is not allowed by this configuration.

*strings.-1134:No Compromised Key List for this site's certificate has been found.\n\
You must load the Compromised Key List before continuing.

*strings.-1133:The Compromised Key List for this site's certificate has expired.\n\
Reload a new Compromised Key List.

*strings.-1132:The Compromised Key List for this site's certificate has an invalid signature.\n\
Reload a new Compromised Key List.

*strings.-1131:The key for this site's certificate has been revoked.\n\
You will be unable to access this site securely.

*strings.-1130:The Compromised Key List you are trying to load has\n\
an invalid format.

*strings.-1129:Zabrak³o danych losowych w bibliotece zabezpieczeñ.

*strings.-1128:Biblioteka zabezpieczeñ nie mo¿e znale¼æ modu³u bezpieczeñstwa\n\
który potrafi wykonaæ ¿±dan± operacjê.

*strings.-1127:Karta lub token zabezpieczaj±cy(a) nie istnieje, wymaga inicjalizacji\n\
lub zosta³(a) usuniêty(a).

*strings.-1126:Wyst±pi³ b³±d bazy danych w bibliotece zabezpieczeñ.\n\
Prawdopodobnie nie bêdziesz w stanie po³±czyæ siê bezpiecznie z tym miejscem.

*strings.-1125:Nie wybrano slotu ani tokena.

*strings.-1124:Certyfikat o takiej nazwie ju¿ istnieje.

*strings.-1123:Klucz o takiej nazwie ju¿ istnieje.

*strings.-1122:Podczas tworzenia bezpiecznego obiektu wyst±pi³ b³±d

*strings.-1121:Podczas tworzenia bezpiecznego obiektu wyst±pi³ b³±d

*strings.-1120:Nie mo¿na usun±æ the principal

*strings.-1119:Nie mo¿na skasowaæ uprawnieñ

*strings.-1118:This principal nie posiada certyfikatu

*strings.-1117:Operacja nie mo¿e byæ wykonana, gdy¿ wymagany algorytm\n\
nie jest dozwolony w bie¿±cej konfiguracji.

*strings.-1116:Nie mo¿na wyeksportowaæ certyfikatów. Podczas próby eksportu\n\
ceryfikatów wyst±pi³ b³±d.

*strings.-1115:Podczas próby importu ceryfikatów wyst±pi³ b³±d.

*strings.-1114:Nie mo¿na zaimportowaæ certyfikatów. Podany plik jest\n\
uszkodzony lub nieprawid³owy.

*strings.-1113:Nie mo¿na zaimportowaæ certyfikatów. Albo has³o wi±¿±ce jest\n\
nieprawid³owe, albo dane w podanym pliku zosta³y sfa³szowane\n\
lub w jaki¶ sposób uszkodzone.

*strings.-1112:Nie mo¿na zaimportowaæ certyfikatów. Algorytm u¿yty do generacji\n\
informacji wi±¿±cej dla tego pliku nie jest obs³ugiwany przez aplikacjê.

*strings.-1111:Nie mo¿na zaimportowaæ certyfikatów. Komunikator obs³uguje jedynie\n\
tryby hase³ wi±¿±cych i hase³ prywatnych przy importowaniu certyfikatów.

*strings.-1110:Nie mo¿na zaimportowaæ certyfikatów. Plik zawieraj±cy certyfikaty\n\
jest uszkodzony. Brak wymaganych informacji lub s± one nieprawid³owe. 

*strings.-1109:Nie mo¿na zaimportowaæ certyfikatów. Komunikator nie obs³uguje\n\
algorytmu u¿ytego do zaszyfrowania zawarto¶ci.

*strings.-1108:Nie mo¿na zaimportowaæ certyfikatów. Komunikator nie obs³uguje\n\
tej wersji pliku.

*strings.-1107:Nie mo¿na zaimportowaæ certyfikatów. Podane has³o prywatne\n\
jest niepoprawne.

*strings.-1106:Nie mo¿na zaimportowaæ certyfikatów. W bazie danych Komunikatora\n\
istnieje jy¿ certyfikat o takim samym pseudonimie jak importowany. 

*strings.-1105:U¿ytkownik nacisn±³ Anuluj.

*strings.-1104:Certificates could not be imported since they already exist on the machine.

*strings.-1102:The certificate is not approved for the attempted operation.

*strings.-1101:The certificate is not approved for the attempted application.

*strings.-1100:The email address in the signing certificate does not match\n\
the email address in the message headers.  If these two\n\
addresses do not belong to the same person, then this could\n\
be an attempt at forgery.

*strings.-1099:Unable to import certificates.  An error occurred while attempting\n\
to import the Private Key associated with the certificate being imported.

*strings.-1098:Unable to import certificates.  An error occurred while attempting\n\
to import the certificate chain associated with the certificate\n\
being imported.

*strings.-1097:Unable to export certificates.  An error occurred while trying to locate\n\
a certificate or a key by its nickname.

*strings.-1096:Unable to export certificates.  The Private Key associated with a\n\
certificate could not be located or could not be exported from the\n\
key database.

*strings.-1095:Unable to export certificates.  An error occurred while trying to write\n\
the export file.  Make sure the destination drive is not full and try\n\
exporting again.

*strings.-1094:Unable to import certificates.  An error occurred while reading the\n\
import file.  Please make sure the file exists and is not corrupt and\n\
then try importing the file again.

*strings.-1093:Unable to export certificates.  The database which contains\n\
Private Keys has not been initialized.  Either your key database\n\
is corrupt or has been deleted.  There is no key associated with\n\
this certificate.

*strings.-1092:Nie mo¿na wygenerowac pary kluczy publicznego/prywatnego.

*strings.-1091:Podane has³o jest nieprawid³owe. Wybierz inne.

*strings.-1090:Nie poda³e¶ poprawnie starego has³a. Spróbuj ponownie.

*strings.-1089:Podanej nazwy certyfikatu u¿ywa ju¿ inny certyfikat.

*strings.-1088:£añcuch FORTEZZA serwera posiada certyfikat inny ni¿ FORTEZZA.\n\
Prawdopodobnie nie bêdzie mo¿na po³±czyæ siê z tym miejscem bezpiecznie.

*strings.-1087:Nieznany

*strings.-1086:Nieprawid³owa nazwa modu³u.

*strings.-1085:Nieprawid³owa ¶cie¿ka/plik modu³u.

*strings.-1084:Nie uda³o siê dodaæ modu³u

*strings.-1083:Nie uda³o siê usun±æ modu³u

*strings.-1082:The Compromised Key List you are trying to load is not\n\
later than the current one.

*strings.-1081:The CKL you are trying to load has a different issuer\n\
than your current CKL.  You must first delete your\n\
current CKL.

*strings.-1080:The Compromised Key List for this site's certificate\n\
is not yet valid.  Reload a new Compromised Key List.

*strings.-1079:The certificate revocation list for this site's\n\
certificate is not yet valid. Reload a new certificate\n\
revocation list.

*strings.6523:Znak %s jest zastrze¿ony na serwerze IMAP. Wybierz inn± nazwê.

*strings.6524:Operacja wysy³ania zakoñczy³a siê pomy¶lnie, lecz nie uda³o\n\
sie skopiowaæ wiadomo¶ci do folderu Wys³ane. Czy chcia³by¶\n\
powróciæ do okienka tworzenia wiadomo¶ci?

*strings.6525:Serwer SMTP nie móg³ nawi±zaæ bezpiecznego po³±czenia.\n\
Za¿yczy³e¶(a¶) sobie wysy³aæ pocztê TYLKO w trybie bezpiecznym, wobec czego\n\
po³±czenie zosta³o przerwane. Sprawd¼ swoje ustawienia.

*strings.6526:Netscape nie móg³ zachowaæ Twojej wiadomo¶ci jako wzorca\n\
Upewnij siê, ¿e masz poprawne ustawienia poczty\n\
i spróbuj ponownie.

*strings.6527:Netscape nie móg³ zachowaæ Twojej wiadomo¶ci jako szkicu.\n\
Upewnij siê, ¿e masz poprawne ustawienia poczty\n\
i spróbuj ponownie.

*strings.6528:Twoje nowe ustawienia katalogów poczty\n\
zostan± uwzglêdnione po nastêpnym\n\
restarcie Komunikatora.

*strings.6529:Ten folder IMAP jest przeterminowany. Otwórz go ponownie, aby go przeszukaæ w ca³o¶ci.

*strings.6531:Wysy³anie do grup dyskusyjnych na ró¿nych serwerach nie\n\
jest obs³ugiwane.

*strings.6532:Podaj nazwê katalogu dla serwera IMAP.

*strings.6533:Znaleziono co najmniej 30 nowych folderów IMAP na serwerze.\n\
\n\
Naci¶nij <OK>, aby kontynuowaæ lub <Anuluj>, aby.\n\
zmieniæ katalog dla serwera IMAP.

*strings.6534:Kompresja siê nie powiod³a.

*strings.6535:<TITLE>Go Online to View This Message</TITLE>\n\
The body of this message has not been downloaded from \n\
the server for reading offline. To read this message, \n\
you must reconnect to the network, choose Offline from \n\
the File menu and then select Work Online.

*strings.6536:Ten serwer pocztowy nie jest serwerem IMAP4.

*strings.6537:Problem serwera poczty: Numery ID wiadomo¶ci w tym folderze\n\
       nie rosn±. Skontaktuj sie z administratorem systemu. 

*strings.6538:Nie mo¿na przesun±æ grupy dyskusyjnej do folderu pocztowego.

*strings.6539:Nie mo¿na przesun±æ folderu pocztowego do grupy dyskusyjnej.

*strings.6540:Nie uda³o siê dorêczyæ %d wiadomo¶ci.\n\
\n\
Wiadomo¶ci te pozostan± w folderze Outbox.\n\
Zanim bêdzie mo¿na je dorêczyæ, nale¿y\n\
poprawiæ b³êdy.

*strings.6541:Nie uda³o siê dorêczyæ 1 wiadomo¶ci.\n\
\n\
Wiadomo¶æ ta pozostanie w folderze Outbox.\n\
Zanim bêdzie mo¿na j± dorêczyæ, nale¿y\n\
poprawiæ b³±d.

*strings.6542:Nie mogê skopiowaæ wiadomo¶ci do folderu 'Outbox':  \n\
Folder ten jest po to by trzymaæ w nim tylko wiadomo¶ci\n\
przeznaczone do wys³ania pó¼niej.

*strings.6543:Ten serwer pocztowy nie pozwala na cofniêcie operacji skasowania\n\
folderu, skasowaæ pomimo to?

*strings.6544:Wskazany folder docelowy nie mo¿e przechowywaæ wiadomo¶ci.

*strings.6545:Wybrany folder nadrzêdny nie mo¿e zawieraæ podfolderów.\n\
 Spróbuj wybraæ folder serwera i wpisaæ\n\
 'nadrzêdny/mowyFolder' aby utworzyæ now± hierarchiê.

*strings.6546:Wskazany folder docelowy nie mo¿e zawieraæ podfolderów.

*strings.6547:You cannot undo or redo a folder action while\n\
 the folder is loading.  Wait until the folder has\n\
 finished loading, then try again.

*strings.6548:Could not find the summary information\n\
 for the %s IMAP folder.

*strings.6549:You cannot move your Inbox Folder.

*strings.6550:A problem has occurred uploading an offline change.\n\
 Continue uploading remaining offline changes (OK) \n\
 or try again later (Cancel)

*strings.6551:The IMAP message move failed.\n\
The copy succeeded but a source message was not deleted.

*strings.6552:Skopiowanie wiadomo¶ci IMAP siê nie powiod³o.

*strings.6553:This message cannot be moved while Communicator is offline.\n\
It has not been downloaded for offline reading.\n\
Select Go Online from the File menu, then try again.

*strings.6554:Nie pobrano pe³nej listy grup dyskusyjnych z tego serwera.\n\
Operacji nie mo¿na kontynuowaæ do czasu pobrania listy\n\
wszystkich grup dyskusyjnych.\n\
\n\
Kliknij na zak³adkê 'All' aby kontynuowaæ pobieranie\n\
grup dyskusyjnych.

*strings.6555:Can't delete message folder '%s' because you are viewing\n\
its contents. Please close those windows and try again.

*strings.6556:Can't copy messages because the mail folder is in use.\n\
Please wait until other copy operations are \n\
complete and try again.\n

*strings.6557:Can only delete mail folders.

*strings.6558:It will not be possible to send this message encrypted to all of the\n\
addressees.  Send it anyway?

*strings.6559:This message has no subject.  Send anyway?

*strings.6560:Delivery failed for %d messages.\n\
\n\
These messages have been left in the Unsent Messages folder.\n\
Before they can be delivered, the errors must be\n\
corrected.

*strings.6561:Delivery failed for 1 message.\n\
\n\
This message has been left in the Unsent Messages folder.\n\
Before it can be delivered, the error must be\n\
corrected.

*strings.6562:You have included the same document twice: first as a quoted\n\
document (meaning: with '>' at the beginning of each line), and\n\
then as an attachment (meaning: as a second part of the message,\n\
included after your new text).\n\
\n\
Send it anyway?

*strings.6563:Jeszcze niczego nie wpisa³e¶/a¶ i nie ma ¿adnego za³±cznika.\n\
Wys³aæ w takiej postaci?

*strings.6564:Nie znaleziono.

*strings.6565:Co najmniej jeden z Twoich folderów pocztowych zajmuje\n\
du¿o miejsca na dysku. Je¶li teraz skompresujesz swoje\n\
foldery pocztowe, mo¿esz odzyskaæ %ld kbajtów miejsca\n\
na dysku. Kompresja folderów mo¿e chwilê potrwaæ.\n\
\n\
Czy kompresowaæ foldery teraz?

*strings.6566:Error writing mail file!

*strings.6567:Error saving newsrc file!

*strings.6568:%.300s does not appear to be a mail file.\n\
Attempt to write it anyway?

*strings.6569:%.300s does not appear to be a mail file.\n\
Attempt to read it anyway?

*strings.6570:B³±d!\n\
Odpowied¼ serwera grup dyskusyjnych: %.512s\n

*strings.6571:Wiadomo¶ci nie anulowano.

*strings.6572:Nie mo¿na anulowaæ wiadomo¶ci!

*strings.6573:Wygl±da na to, ¿e ta wiadomo¶æ nie pochodzi od Ciebie.\n\
Mo¿esz anulowaæ tylko swoje w³asne wiadomo¶ci, a nie\n\
wys³ane przez innych.

*strings.6574:Czy na pewno chcesz anulowaæ wys³anie tej wiadomo¶ci?

*strings.6575:Nie podano serwera poczty wychodz±cej (SMTP)\n\
w ustawieniach Poczty i grup dyskusyjnych.

*strings.6576:Adresem zwrotnym e-mail w ustawieniach jest: %s\n\
Adres ten wygl±da na niekompletny (nie zawiera `.').\n\
Poprawny adres powinien mieæ formê `u¿ytkownik@serwer', gdzie\n\
`u¿ytkownikiem' jest Twój login, a `serwerem' nazwa komputera lub domeny.\n\
np. `kowalski@xyz.com.pl' lub `nowak@xyz.gov.pl'.

*strings.6577:Adresem zwrotnym e-mail w ustawieniach jest: %s\n\
Adres ten wygl±da na niekompletny (nie zawiera `@').\n\
Poprawny adres powinien mieæ formê `u¿ytkownik@serwer', gdzie\n\
`u¿ytkownikiem' jest Twój login, a `serwerem' nazwa komputera lub domeny,\n\
np. `kowalski@xyz.com.pl' lub `nowak@xyz.gov.pl'.

*strings.6579:Your email address has not been specified.\n\
Before sending mail or news messages, you must specify a\n\
return address in Mail and News Preferences.

*strings.6580:A newsrc file exists but is unparsable.

*strings.6581:Wybrana wiadomo¶æ nie istnieje w tym folderze.\n\
Mog³a zostaæ skasowana lub przeniesiona do innego folderu.

*strings.6582:Couldn't open temporary folder file for output.

*strings.6583:Couldn't find the summary file.

*strings.6584:Couldn't find the folder.

*strings.6585:Couldn't open Sent Mail file. \n\
Please verify that your Mail preferences are correct.

*strings.6586:Wiadomo¶æ anulowano.

*strings.6590:Nie okre¶lono serwera pocztowego. Podaj swój serwer pocztowy\n\
w ustawieniach (wybierz Ustawienia z menu Edycja).

*strings.6591:Couldn't create a mail folder directory.  Mail will not work!

*strings.6592:Couldn't create default inbox folder!

*strings.6593:Can't delete a folder without first deleting the messages in it.

*strings.6594:Can't delete a folder without first deleting the messages in it.

*strings.6595:A folder with that name already exists.

*strings.6596:Couldn't create the folder! Your hard disk may be full\n\
or the folder pathname may be too long.

*strings.6597:Nie mogê skopiowaæ wiadomo¶ci do folderu `Szkice':  \n\
Folder ten jest po to by trzymaæ w nim tylko drafty \n\
wiadomo¶ci, które nie zosta³y jeszcze wys³ane.

*strings.6598:Nie mogê skopiowaæ wiadomo¶ci do folderu \n\
'Niewys³ane':  \n\
Folder ten jest po to by trzymaæ w nim tylko wiadomo¶ci\n\
przeznaczone do wys³ania pó¼niej.

*strings.6599:Can't move or copy messages to the folder they're already in.

*strings.6664:Corruption was detected in the compressed GZip file that was requested

*strings.6665:There was an attempt to redirect a url request,\n\
but the attempt was not allowed by the client.

*strings.6666:This trial copy of Netscape Navigator \n\
will expire at %s.\n\
\n\
To purchase a regular copy of Netscape Navigator\n\
(which will not expire) choose Software Updates from the Help menu.

*strings.6667:This trial copy of Netscape has expired.\n\
\n\
To purchase a regular copy of Netscape Navigator\n\
(which will not expire) choose Software Updates from the Help menu.

*strings.6668:Authorization failed

*strings.6669:Obiekt nie jest katalogiem:\n\
     %s

*strings.6670:Nie mogê utworzyæ katalogu:\n\
        %s

*strings.6671:Cannot create directory because a file or\n\
directory of that name already exists: \n\
	%s

*strings.6672:Nie mogê usun±æ katalogu:\n\
        %s

*strings.6673:Nie mogê skasowaæ pliku:\n\
        %s

*strings.6674:This is a pre-release copy of Netscape Navigator that\n\
will expire at %s.\n\
To obtain a newer pre-release version or the latest full\n\
release of Netscape Navigator (which will not expire) \n\
choose Software Updates from the Help menu.

*strings.6675:Could not post the file %.80s\n\
because\n\
%.200s.\n\
\n\
You may not have permission to write to\n\
this directory.\n\
Check the permissions and try again.

*strings.6678:An error occurred while saving mail messages.

*strings.6679:There isn't enough room on the local disk to download\n\
your mail from the POP3 mail server.  Please make room and\n\
try again.  (The `Empty Trash' and `Compact This Folder'\n\
commands may recover some space.)

*strings.6680:An error occurred while removing messages from the POP3 mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6681:An error occurred while getting messages from the POP3 mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6682:An error occurred while querying the POP3 mail server for\n\
the last processed message.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6683:An error occurred while listing messages on the POP3 mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6684:Brak nowych wiadomo¶ci na serwerze.

*strings.6685:An error occurred while sending your password to the mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6686:An error occurred while sending your user name to the mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6687:Error getting mail password.

*strings.6688:Netscape nie mo¿e u¿yæ serwera pocztowego, gdy¿\n\
nie poda³e¶ nazwy u¿ytkownika. Podaj jak±¶ nazwê\n\
w ustawieniach i spróbuj ponownie 

*strings.6689:An error occurred with the POP3 mail server.\n\
You should contact the administrator for this server\n\
or try again later.

*strings.6691:Netscape was unable to connect to the secure news server\n\
because of a proxy error

*strings.6692:A communications error occurred.\n\
Please try again.

*strings.6693:No NNTP server is configured.\n\
\n\
Check your Mail and News preferences and try again.

*strings.6694:Netscape could not find a News file (newsrc)\n\
and is creating one for you.

*strings.6695:A News error occurred. The scan of all newsgroups is incomplete.\n\
 \n\
Try to View All Newsgroups again.

*strings.6696:Pojawi³ siê b³±d serwera grup dyskusyjnych (NNTP):\n\
 %.100s

*strings.6697:No WAIS proxy is configured.\n\
\n\
Check your Proxy preferences and try again.

*strings.6698:This trial or pre-release copy of Netscape Navigator has expired\n\
and can only be used to purchase or download a newer version of Navigator.

*strings.6699:This copy of Netscape has expired.\n\
This pre-release copy of Netscape Navigator has expired\n\
and can only be used to download a newer version of Navigator.

*strings.6718:Unable to load the requested help topic

*strings.6719:Pojawi³ siê b³±d sieciowy:\n\
    nie mo¿na po³±czyæ siê z serwerem.\n\
Serwer mo¿e byæ w tej chwili niedostêpny.\n\
\n\
Spróbuj ponownie po³±czyæ siê pó¼niej.

*strings.6720:Your signature exceeds the recommended 79 columns.\n\
For most readers, the lines will appear truncated, or\n\
will be wrapped unattractively.  \n\
\n\
Please edit it to keep the lines shorter than 80 characters.

*strings.6721:Twój podpis jest wiêkszy ni¿ zalecane 4 linie

*strings.6722:Printing stopped.  A problem occurred while receiving\n\
the document.  Transmission may have been interrupted\n\
or there may be insufficient space to write the file.\n\
\n\
Try again. Check that space is available in the\n\
temporary directory or restart Netscape.

*strings.6725:To jest wieloczê¶ciowa wiadomo¶æ w formacie MIME.

*strings.6731:B³±d podczas zapisu do pliku tymczasowego.

*strings.6732:Nie podano tematu.

*strings.6733:Nie okre¶lono ¿adnego adresata.\n\
Podaj adresata w linii To: lub\n\
grupê dyskusyjn± w linii Group:...

*strings.6734:Nie okre¶lono nadawcy.\n\
Uzupe³nij swój adres pocztowy\n\
w ustawieniach Poczty i grup dyskusyjnych.

*strings.6740:Wyst±pi³ b³±d autoryzacji:\n\
\n\
%s\n\
\n\
Spróbuj ponownie podaæ swój identyfikator i has³o.

*strings.6747:Netscape nie mo¿e otworzyæ pliku tymczasowego\n\
%.200s.\n\
\n\
Sprawd¼ ustawienia `Katalog tymczasowy' i spróbuj ponownie.

*strings.6748:Wyst±pi³ b³±d sieci podczas otrzymywania\n\
danych przez Netscape.\n\
(B³±d sieci: %s)\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6749:Dokument nie zawiera ¿adnych danych.\n\
Spróbuj ponownie pó¼niej lub skontaktuj siê z administratorem serwera.

*strings.6750:Dysk jest pe³ny. Netscape anuluje transmisjê pliku\n\
i usunie plik.\n\
\n\
Usuñ kilka plików i spróbuj ponownie.

*strings.6753:Netscape nie mo¿e zlokalizowaæ Twojego serwera proxy.\n\
Serwer mo¿e byæ wy³±czony lub nieprawid³owo skonfigurowany.\n\
\n\
Sprawd¼, czy Twoje ustawienia proxy s± poprawne i spróbuj\n\
ponownie lub skontaktuj siê z administratorem serwera.

*strings.6754:Netscape nie mo¿e po³±czyæ siê z Twoim serwerem proxy.\n\
Serwer mo¿e byæ wy³±czony lub ¼le skonfigurowany.\n\
\n\
Sprawd¼ czy ustawienia serwera proxy s± poprawne i spróbuj\n\
ponownie lub skontaktuj siê z administratorem serwera.

*strings.6755:Netscape nie mo¿e zrealizowaæ po³±czenia gniazda\n\
z tym serwerem. Mo¿e brakowaæ zasobów systemowych.\n\
\n\
Spróbuj zrestartowaæ Netscape.

*strings.6757:Netscape nie móg³ utworzyæ gniazda po³±czenia sieciowego.\n\
Mo¿e brakowaæ zasobów systemowych lub sieæ mo¿e byæ\n\
wy³±czona.  (Powód: %s)\n\
\n\
Spróbuj po³±czyæ siê ponownie pó¼niej lub zrestartowaæ\n\
Netscape.

*strings.6758:Serwer %.200s odmówi³ Netscape po³±czenia.\n\
Serwer mo¿e nie przyjmowaæ po³±czeñ lub mo¿e byæ zajêty.\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6759:Nie by³o odpowiedzi. Serwer móg³ byæ wy³±czony\n\
lub nie odpowiada.\n\
\n\
Je¶li nie bêdzie mo¿na po³±czyæ siê ponownie pó¼niej,\n\
skontaktuj siê z administratorem serwera.

*strings.6760:Wyst±pi³ b³±d sieci:\n\
nie mo¿na po³±czyæ siê z serwerem (B³±d TCP: %s)\n\
Serwer jest wy³±czony lub niedostêpny.\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6764:Podczas wysy³ania danych przez Netscape\n\
wyst±pi³ b³±d sieci.\n\
(B³±d sieci: %s)\n\
\n\
Spróbuj po³±czyæ siê ponownie.

*strings.6765:Wyst±pi³ b³±d podczas wysy³ania poczty:\n\
adres zwrotny jest nieprawid³owy.\n\ 

*strings.6766:Wyst±pi³ b³±d podczas wysy³ania poczty: b³±d serwera SMTP.\n\
Odpowied¼ serwera:\n\
  %s\n\
Po pomoc skontaktuj siê ze swoim administaratorem poczty.

*strings.6767:Wyst±pi³ b³±d podczas wysy³ania poczty.\n\
Odpowied¼ serwera poczty:\n\
  %s\n\
Sprawd¼ wiadomo¶æ i spróbuj ponownie.

*strings.6768:Wyst±pi³ b³±d (SMTP) podczas wysy³ania poczty.\n\
Odpowied¼ serwera: %s

*strings.6769:Wyst±pi³ b³±d podczas wysy³ania poczty.\n\
Odpowied¼ serwera poczty:\n\
  %s\n\
Sprawd¼ listê odbiorców wiadomo¶ci\n\
i spróbuj ponownie.

*strings.6770:Wyst±pi³ b³±d podczas wysy³ania poczty.\n\
Odpowied¼ serwera poczty:\n\
  %s\n\
Sprawd¼ czy Twoje ustawienia poczty\n\
s± poprawne i spróbuj ponownie.

*strings.6771:Wyst±pi³ b³±d podczas wysy³ania poczty:\n\
Netscape nie mo¿e po³±czyæ siê z serwerem SMTP.\n\
Serwer mo¿e byæ wy³±czony lub ¼le skonfigurowany.\n\
\n\
Sprawd¼ czy Twoje ustawienia poczty\n\
s± poprawne i spróbuj ponownie.

*strings.6775:Przerwane przez u¿ytkownika

*strings.6776:(nie podano nazwy)

*strings.6777:Netscape nie mo¿e otworzyæ pliku\n\
%.200s.\n\
\n\
Sprawd¼ nazwê pliku i spróbuj ponownie.

*strings.6778:Netscape nie mo¿e otworzyæ Twojego pliku News (newsrc).\n\
\n\
Sprawd¼ czy Twoje ustawienia Poczty i grup dyskusyjnych\n\
s± poprawne i spróbuj ponownie. 

*strings.6779:Pozycja z grupy dyskusyjnej jest niedostêpna. Mog³a ulec\n\
przeterminowaniu.\n\
\n\
Spróbuj pobraæ inn± pozycjê.

*strings.6780:Serwer roz³±czy³ siê.\n\
Serwer móg³ zostaæ wy³±czony lub móg³ wystapiæ\n\
problem z sieci±.\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6781:Netscape nie mo¿e zlokalizowaæ serwera: %.200s.\n\
\n\
Sprawd¼ nazwê serwera w polu Adres i spróbuj ponownie.

*strings.6782:Nie by³o odpowiedzi. Serwer mo¿e byæ wy³±czony\n\
lub nie odpowiadaæ.\n\
\n\
Je¶li pó¼niej ponowne po³±czenie zawiedzie,\n\
skontaktuj siê z administratorem serwera.

*strings.6783:Wyst±pi³ b³±d serwera News.
\n\
Je¶li ponowne po³±czenie zawiedzie, skontaktuj\n\
siê z administratorem tego serwera.

*strings.6784:Wyst±pi³ b³±d News: Niew³a¶ciwe po³±czenie NNTP.\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6785:Netscape nie mo¿e znale¼æ pliku lub katalogu:\n\
  %.200s.\n\
\n\
Sprawd¼ nazwê i spróbuj ponownie.

*strings.6786:Netscape nie mo¿e wys³aæ polecenia PORT do serwera FTP,\n\
aby ustanowiæ po³±czenia dla transmisji danych.\n\
\n\
Skontaktuj siê z administratorem tego serwera\n\
lub spróbuj ponownie pó¼niej.

*strings.6787:Netscape nie mo¿e wys³aæ polecenia zmiany katalogu\n\
(cd) do serwera FTP. Nie mo¿na obejrzeæ innego\n\
katalogu.\n\
\n\
Skontaktuj siê z administratorem tego serwera\n\
lub spróbuj ponownie pó¼niej.

*strings.6788:Netscape nie mo¿e ustawiæ trybu transferu FTP\n\
z tym serwerem. W zwi±zku z tym nie bêdzie mo¿liwe\n\
pobranie z niego ¿adnych plików.\n\
\n\
Skontaktuj siê z administratorem tego serwera\n\
lub spróbuj ponownie pó¼niej.

*strings.6789:Nie mo¿na u¿yæ trybu pasywnego FTP

*strings.6791:Adres URL nie rozpoznany: \n\
  %.200s\n\
\n\
Sprawd¼ adres i spróbuj ponownie.

*strings.6793:Brak pamiêci.\n\
\n\
Spróbuj zakoñczyæ jak±¶ inn± aplikacjê lub zamkn±æ\n\
kilka okienek.

*strings.6794:Wyst±pi³ b³±d sieciowy.\n\
  (B³±d TCP: %s)\n\
Spróbuj po³±czyæ siê ponownie.

*strings.6795:Netscape nie mo¿e po³±czyæ siê z serwerem pod\n\
wskazanym przez Ciebie adresem. Serwer ten mo¿e byæ\n\
w tej chwili nieaktywny lub niedostêpny.\n\
\n\
Spróbuj po³±czyæ siê pó¼niej.

*strings.6796:Wyst±pi³ b³±d sieciowy.\n\
  (B³±d TCP: %s)\n\
Spróbuj po³±czyæ siê ponownie.

*strings.7004:przerwane wywo³anie systemu

*strings.7005:b³±d wej¶cia/wyj¶cia

*strings.7009:Niew³a¶ciwy numer pliku

*strings.7011:Dzia³anie stanowi³oby blokadê

*strings.7012:Brak dostatecznej ilo¶ci pamiêci

*strings.7013:Dostêp zabroniony

*strings.7022:Z³y argument

*strings.7032:Przerwany potok

*strings.7098:Ten adres jest ju¿ u¿ywany

*strings.7099:Nie mo¿na przypisaæ ¿±danego adresu

*strings.7100:Sieæ jest nieczynna

*strings.7101:Sieæ jest nieosi±galna

*strings.7102:Sieæ przerwa³a po³±czenie z powodu reinicjalizacji

*strings.7103:Po³±czenie anulowano

*strings.7104:Po³±czenie ponownie zainicjalizowane przez partnera

*strings.7106:Gniazdo jest ju¿ po³±czone

*strings.7107:Gniazdo nie jest po³±czone

*strings.7110:Po³±czenie przeterminowane

*strings.7111:Odmówiono po³±czenia

*strings.7112:Host jest wy³±czony

*strings.7113:Brak routingu do serwera

!*strings.7114:EALREADY

*strings.7115:operacja jest w trakcie wykonywania

*strings.8000:Koniec listy

*strings.8001:Ca³a lista

*strings.8003:Zachowaj jako... (typ %.90s kodowanie %.90s)

*strings.8004:Zachowaj jako... (typ %.90s)

*strings.8005:Zachowaj jako... (kodowanie %.90s)

*strings.8006:Zachowaj jako...

*strings.8007:wyst±pi³ bl±d przy otwarciu %.900s:

*strings.8008:wyst±pi³ bl±d przy kasowaniu %.900s:

*strings.8009:Gdy siê po³±czysz, zarejestruj siê jako u¿ytkownik %.900s'

*strings.8010:Brak pamiêci -- Nie mo¿na otworzyæ adresu URL

*strings.8011:nie mo¿na za³adowaæ: \n\
%s

*strings.8012:%s\n\
Brak innych sensownych zasobów!\n\
Korzystam zamiast nich z czcionki awaryjnej "%s".

*strings.8013:%s\n\
Brak innych sensownych zasobów!\n\
Nie mo¿na za³adowaæ czcionki awaryjnej "%s"!\n\
Dajê za wygran±.

*strings.8014:Plik zak³adek na dysku uleg³ zmianie: czy porzuciæ Twoje zmiany?

*strings.8015:Plik zak³adek na dysku uleg³ zmianie: czy go prze³adowaæ?

*strings.8016:Nowa pozycja

*strings.8017:Nowy nag³ówek

*strings.8018:Czy usun±æ kategoriê "%.900s" i jej %d wpis?

*strings.8019:Czy usun±æ kategoriê "%.900s" i jej %d wpisy(ów)?

*strings.8020:Eksportuj zak³adkê

*strings.8021:Importuj zak³adkê

*strings.8022:Ta wersja obs³uguje ochronê %s z %s.

*strings.8023:Ochrona wy³±czona

*strings.8024:file:/usr/local/lib/netscape/docs/Welcome.html

*strings.8025:Dokument: Za³adowany.

*strings.8026:Otwórz plik

*strings.8027:B³±d przy otwieraniu potoku do %.900s

*strings.8028:Ostrze¿enie:\n\
\n

*strings.8029:%s "%.255s" nie istnieje.\n

*strings.8030:%s "%.255s" jest nieznany.\n

*strings.8031:Nie podano numeru portu dla %s

*strings.8032:Serwer poczty

*strings.8033:Serwer grup dyskusyjnych

*strings.8034:Katalog RC grup dyskusyjnych

*strings.8035:Katalog tymczasowy

*strings.8036:Serwer Proxy dla FTP

*strings.8037:Serwer Proxy dla Gophera

*strings.8038:Serwer Proxy dla HTTP

*strings.8039:Serwer Proxy dla HTTPS

*strings.8040:Serwer Proxy dla WAIS

*strings.8041:Serwer SOCKS

*strings.8042:Ogólny plik typów MIME

*strings.8043:Prywatny plik typów MIME

*strings.8044:Ogólny plik mailcap

*strings.8045:Prywatny plik mailcap

*strings.8046:Nie mo¿na skasowaæ zak³adki najwy¿szego poziomu

*strings.8047:Nie mo¿na wyci±æ zak³adki najwy¿szego poziomu

*strings.8048:To jest skrót do zak³adki:

*strings.8049:Otwórz plik...

*strings.8050:Drukowanie ramek nie jest obecnie obs³ugiwane.

*strings.8051:wyst±pi³ b³±d przy zachowywaniu opcji

*strings.8052:nieznany %s kod ucieczki %%%c:\n\
%%h = serwer, %%p = port, %%u = u¿ytkownik 

*strings.8053:nie uda³o siê fork():

*strings.8054:%s: nie uda³o siê execvp(%s)

*strings.8055:Zachowaj ramkê jako...

*strings.8057:Drukuj ramkê...

*strings.8058:Drukuj...

*strings.8059:Pobierz plik: %s

*strings.8060:Utwórz: (bez tematu)

*strings.8061:Kompozycja: %s

*strings.8062:Netscape: <bez tytu³u>

*strings.8063:Netscape: %s

*strings.8064:(brak tytu³u)

*strings.8065:nieznany kod b³êdu %d

*strings.8066:Niew³a¶ciwy plik za³±cznika.\n\
%s: nie istnieje.\n

*strings.8067:Niew³a¶ciwy plik za³±cznika.\n\
%s: brak prawa odczytu.\n

*strings.8068:Niew³a¶ciwy plik za³±cznika.\n\
%s: jest katalogiem.\n

*strings.8069:nie uda³o siê fork() dla movemail

*strings.8070:problemy z uruchomieniem %s:  

*strings.8071:%s zakoñczony nieprawid³owo:

*strings.8072:Nie mo¿na otworzyæ %.900s

*strings.8073:Podaj nazwê serwera grup dyskusyjnych\n\
w jednym z poni¿szych formatów: \n\
\n\
    news://SERWER,\n\
    news://SERWER:  PORT,\n\
    snews://SERWER, lub\n\
    snews://SERWER:  PORT\n\
\n

*strings.8074:Aby dzia³a³a wewnêtrzna metoda movemail, musi byæ mo¿liwo¶æ utworzenia\n\
plików blokady w katalogu buforowania poczty. W wielu systemach najlepiej\n\
to zrealizowaæ poprzez nadanie tamu katalogowi trybu 01777. Je¶li jest to\n\
niemo¿liwe, trzeba korzystaæ z zewnêtrznego sgidowego/suidowego programu\n\
movemail. Zajrzyj do Release Notes po dodatkowe informacje.

*strings.8075:Nie mo¿na przenie¶æ poczty z %.200s

*strings.8076:Nie mo¿na pobraæ nowej poczty; plik blokady %.200s istnieje.

*strings.8077:Nie mo¿na pobraæ nowej poczty; nie mo¿na utworzyæ pliku blokady %.200s

*strings.8078:Nie mo¿na pobraæ nowej poczty; wyst±pi³ b³±d systemowy.

*strings.8079:Nie mo¿na przenie¶æ poczty; nie mo¿na otworzyæ %.200s

*strings.8080:Nie mo¿na przenie¶æ poczty; nie mo¿na przeczytaæ %.200s

*strings.8081:Nie mo¿na przenie¶æ poczty; nie mo¿na zapisaæ do %.200s

*strings.8082:Wyst±pi³y problemy przy przenoszeniu poczty

*strings.8083:Wyst±pi³y problemy przy przenoszeniu poczty: kod zakoñczenia %d

*strings.8085:%s\n\
U¿ycie: %s [ opcje ... ]\n\
       gdzie opcje oznaczaj±:\n\
\n\
       -help                     poka¿e ten komunikat.\n\
       -version                  poka¿e numer wersji i datê jej utworzenia.\n\
       -display <dpy>            okre¶la wykorzystywany X serwer.\n\
       -geometry =WxH+X+Y        okre¶la po³o¿enie i rozmiar okienka.\n\
       -visual <id-or-number>    to use a specific server visual.\n\
       -install                  aby zainstalowaæ w³asn± mapê kolorów.\n\
       -no-install               aby wykorzystaæ domy¶ln± mapê kolorów.\n\
       

*strings.8086:-ncols <N>                kiedy bez -install, ustawia maksymaln± liczbê\n\
                                 kolorów do zaalokowania dla grafiki.\n\
       -mono                     wymusza 1-bitow± g³êbiê wy¶wietlania grafiki.\n\
       -iconic                   uruchamia jako ikonê.\n\
       -xrm <resource-spec>      ustawia specyficzny zasób Xów.\n\
\n\
       -remote <remote-command>  uruchamia polecenie dla ju¿ pracuj±cego\n\
                                 procesu Netscape. Po wiêcej informacji\n\
				 zajrzyj pod\n\
                          http://home.netscape.com/newsref/std/x-remote.html\n\
       -id <window-id>           id okienka X-ów do którego maj± zostaæ\n\
                                 wys³ane polecenia -remote; je¶li nie podane\n\
                                 to u¿yte zostanie pierwsze znalezione\n\
                                 okienko.\n\
       -raise                    gdy po -remote, polecenia powinny spowodowaæ\n\
                                 wyniesienie okienka na wierzch (jest to\n\
                                 domy¶lne).\n\
       -noraise                  przeciwieñstwo -raise: je¶li po -remote,\n\
                                 polecenia nie wynios± automatycznie okienka.\n\
\n\
       -nethelp                  poka¿e pomoc sieciow±; wymaga adresu URL\n\
                                 pomocy sieciowej.\n\
\n\
       -dont-force-window-stacking  ignoruje atrybuty JavaScriptowego\n\
                                    window.open(): alwaysraised, alwayslowered\n\
                                    i z-lock.\n\
\n\
       -no-about-splash          pomija pocz±tkow± stronê z licencj±.\n\
\n\
       -no-session-management\n\
       -session-management       Netscape domy¶lnie obs³uguje zarz±dzanie\n\
                                 sesjami. Za pomoc± tej flagi mo¿na wymusiæ\n\
                                 w³±czenie/wy³±czenie tej funkcji.\n\
\n\
       -no-irix-session-management\n\
       -irix-session-management  Ró¿ne platformy traktuj± zarz±dzanie sesjami\n\
                                 w zasadniczo ró¿ny sposób. Skorzystaj z tych\n\
                                 flag je¶li do¶wiadczysz problemów przy\n\
                                 zarz±dzaniu sesjami.\n\
\n\
                                 Zarz±dzanie sesjami IRIX-a jest domy¶lnie\n\
                                 w³±czone jedynie na systemach SGI. Jest ono\n\
                                 równie¿ dostêpne na innych platformach i mo¿e\n\
                                 dzia³aæ z zarz±dcami sesji innymi ni¿ pulpit\n\
                                 IRIX-a.\n\
\n\
       -dont-save-geometry-prefs nie zachowuje geometrii okienka podczas sesji.\n\
\n\
       -ignore-geometry-prefs    ignoruje zachowan± geometriê okienka dla\n\
                                 sesji.\n\
\n       

*strings.8087:%s:   program jest w wersji %s, ale zasoby z wersji %s.\n\
\n\
       Oznacza to, ¿e nie ma zainstalowanego odpowiedniego pliku\n\
       z w³a¶ciw± wersj± zasobów w katalogu app-defaults.\n\
       Sprawd¼ na jakie pliki i katalogi wskazuj± poni¿sze zmienne\n\
       systemowe:  \n\
\n\     
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
       Sprawd¼ równie¿ czy nie masz tego pliku w swoim katalogu domowym\n\
       lub w katalogu o nazwie `app-defaults' gdzie¶ w /usr/lib/.

*strings.8088:%s: Czy¿bym nie móg³ znale¼æ swoich zasobów?\n\
\n\
       Mo¿e to oznaczaæ to, ¿e nie jest zainstalowany odpowiedni\n\
       plik `%s' w katalogu app-defaults.\n\
       Sprawd¼ na jakie pliki i katalogi wskazuj± poni¿sze zmienne\n\
       systemowe:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
       Sprawd¼ równie¿ czy nie masz tego pliku w swoim katalogu domowym\n\
       lub w katalogu o nazwie `app-defaults' gdzie¶ w /usr/lib/.

*strings.8089:%s: nieprawid³owo okre¶lona geometria.\n\
\n\
 Najprawdopodobniej w bazie zasobów podano "%s*geometry: %s"\n\
 lub "%s*geometry: %s". Okre¶lenie "*geometry" spowoduje, ¿e\n\
 %s (i wiêkszo¶æ innych programów X-owych) zadzia³a b³êdnie\n\
 w niezrozumia³y sposób. Powinno siê zawsze u¿ywaæ w zamian\n\
 ".geometry".\n

*strings.8090:%s: nierozpoznana opcja "%s"\n

*strings.8091:%s wykry³ plik %s.\n

*strings.8092:\n\
Mo¿e to oznaczaæ, ¿e inny u¿ytkownik uruchamia %s\n\
wykorzystuj±c Twoje pliki %s.\n

*strings.8093:Wygl±da na to, ¿e jest on uruchomiony na stacji\n\
%s jako proces o ID %u.\n

*strings.8094:\n\
Mo¿esz kontynuowaæ korzystanie z %s, ale nie bêdziesz\n\
móg³(mog³a) korzystaæ z cache na dysku, a tak¿e\n\
z historii i swoich indywidualnych certyfikatów.\n

*strings.8095:\n\
W przeciwnym razie mo¿esz wybraæ Anuluj, upewniæ siê,\n\
¿e sam(a) nie uruchamiasz innej kopii %s Nawigatora,\n\
usun±æ plik %s i zrestartowaæ\n\
%s.

*strings.8096:%s: %s istnia³, ale nie by³ katalogiem.\n\
Nazwê starego pliku zmieniono na %s\n\
i utworzono w jego miejsce katalog.\n\
\n

*strings.8097:%s: %s istnieje, ale nie jest katalogiem\n\
i nie mo¿na zmieniæ jego nazwy!\n\
Usuñ ten plik: on przeszkadza.\n\
\n

*strings.8098:%s: nie mo¿na utworzyæ katalogu `%s'.\n\
%s\n\
Utwórz ten katalog.\n\
\n

*strings.8099:nieznany b³±d

*strings.8100:b³±d tworzenia %s

*strings.8101:b³±d zapisu %s

*strings.8102:Ta wersja %s korzysta z innych nazw plików konfiguracyjnych ni¿\n\
poprzednia. Stare pliki konfiguracyjne, które korzystaj± z tego\n\
samego formatu danych zosta³y skopiowane pod nowymi nazwami a te,\n\
których nie skopiowano bêd± ponownie utworzone w razie konieczno¶ci.\n\
%s\n\
\n\
Czy chcesz, aby skasowaæ teraz stare pliki?

*strings.8103:\n\
Stare pliki nadal istnieja, w³±czaj±c katalog cache na dysku\n\
(który mo¿e byæ ogromny).

*strings.8104:Stare pliki nadal istniej±.

*strings.8105:Ogólne

*strings.8106:Has³a

*strings.8107:Certyfikaty osobiste

*strings.8108:Certyfikaty sieciowe

*strings.8109:Sprawdzono %s (pozosta³o %d)\n\
wykonano %d%%)\n\
\n\
Szacunkowy czas do zakoñczenia: %s\n\
(Czas do zakoñczenia zale¿y od witryn, które wybrano\n\
oraz ruchu w sieci.)

*strings.8110:Sprawdzanie ... (pozosta³o %d)\n\
wykonano %d%%)\n\
\n\
Szacunkowy czas do zakoñczenia: %s\n\
(Czas do zakoñczenia zale¿y od witryn, które wybrano\n\
oraz ruchu w sieci.)

*strings.8111:Re: 

*strings.8112:Zakoñczono sprawdzanie %d zak³adek.\n\
%d dokumentów zosta³o sprawdzonych.\n\
%d dokument(ów) zosta³(o) zmieniony(ch) i jest/s± zaznaczony(e) jako nowy(e).

*strings.8115:"%s" zakoñczy³ siê z kodem zakoñczenia %d

*strings.8116:%s: Nie zdefiniowano symboli akcji klawiatury dla Motifa.\n\
\n\
 Zdarza siê to zazwyczaj z powodu nieznalezienia w³a¶ciwego pliku\n\
 XKeysymDB. Mo¿esz ustawiæ zmienn± ¶rodowiska $XKEYSYMDB na po³o¿enie\n\
 pliku, który zawiera w³a¶ciwe symbole akcji klawiatury.\n\
\n\
 Bez w³a¶ciwego XKeysymDB bêdzie generowanych wiele ostrze¿eñ\n\
 i nie bêdzie dzia³aæ wiêkszo¶æ wspomagania z klawiatury.\n\
\n\
 (W³a¶ciwy plik XKeysymDB by³ do³±czony do dystrybucji %s.)\n\
\n

*strings.8117:%s: Nie zdefiniowano niektórych symboli akcji klawiatury dla Motifa.\n\
\n\
 Zdarza siê to zazwyczaj z powodu nieznalezienia w³a¶ciwego pliku\n\
 XKeysymDB. Mo¿esz ustawiæ zmienn± ¶rodowiska $XKEYSYMDB na po³o¿enie\n\
 pliku, który zawiera w³a¶ciwe symbole akcji klawiatury.\n\
\n\
 Bez w³a¶ciwego XKeysymDB bêdzie generowanych wiele ostrze¿eñ\n\
 i nie bêdzie dzia³aæ wiêkszo¶æ wspomagania z klawiatury.\n\
\n\
 (W³a¶ciwy plik XKeysymDB by³ do³±czony do dystrybucji %s.)\n\
\n

*strings.8118:Widoczno¶æ 0x%02x jest %s %d-bitow± widoczno¶ci± %s.\n\
Jest to niewspomogana widoczno¶æ; obrazki %s.\n\
\n\
Obecnie wspomagane widoczno¶ci to:\n\
\n\
        StaticGray, wszystkie g³êbie\n\
        GrayScale, wszystkie g³êbie\n\
        TrueColor, g³êbia 8 lub wy¿sza\n\
        DirectColor, g³êbia 8 lub wy¿sza\n\
        StaticColor, g³êbia 8 lub wy¿sza\n\
        PseudoColor, tylko g³êbia 8\n\
\n\
Je¶li masz jedn± z powy¿szych widoczno¶ci (zobacz `xdyinfo'),\n\
dla wybrania jednej zalecane jest by wystartowaæ %s z opcj± \n\
`-visual' linii poleceñ.\n\
\n\
Wiêcej widoczno¶ci mo¿e byæ bezpo¶rednio wspomaganych w przysz³o¶ci;\n\
propozycje mile widziane.

*strings.8119:Widoczno¶æ 0x%02x jest %s %d-bitow± widoczno¶ci± %s.\n\
Jest to niewspomogana widoczno¶æ; obrazki %s.\n\
\n\
Obecnie wspomagane widoczno¶ci to:\n\
\n\
        StaticGray, wszystkie g³êbie\n\
        GrayScale, wszystkie g³êbie\n\
        TrueColor, g³êbia 8 lub wy¿sza\n\
        StaticColor, g³êbia 8 lub wy¿sza\n\
        PseudoColor, tylko g³êbia 8\n\
\n\
Je¶li masz jedn± z powy¿szych widoczno¶ci (zobacz `xdyinfo'),\n\
dla wybrania jednej zalecane jest by wystartowaæ %s z opcj± \n\
`-visual' linii poleceñ.\n\
\n\
Wiêcej widoczno¶ci mo¿e byæ bezpo¶rednio wspomaganych w przysz³o¶ci;\n\
propozycje mile widziane.

*strings.8120:Widoczno¶æ 0x%02x jest %s %d-bitow± widoczno¶ci± %s.\n\
Jest to niewspomogana widoczno¶æ; obrazki %s.\n\
\n\
Obecnie wspomagane widoczno¶ci to:\n\
\n\
        StaticGray, wszystkie g³êbie\n\
        TrueColor, g³êbia 8 lub wy¿sza\n\
        DirectColor, g³êbia 8 lub wy¿sza\n\
        StaticColor, g³êbia 8 lub wy¿sza\n\
        PseudoColor, tylko g³êbia 8\n\
\n\
Je¶li masz jedn± z powy¿szych widoczno¶ci (zobacz `xdyinfo'),\n\
dla wybrania jednej zalecane jest by wystartowaæ %s z opcj± \n\
`-visual' linii poleceñ.\n\
\n\
Wiêcej widoczno¶ci mo¿e byæ bezpo¶rednio wspomaganych w przysz³o¶ci;\n\
propozycje mile widziane.

*strings.8121:Widoczno¶æ 0x%02x jest %s %d-bitow± widoczno¶ci± %s.\n\
Jest to niewspomogana widoczno¶æ; obrazki %s.\n\
\n\
Obecnie wspomagane widoczno¶ci to:\n\
\n\
        StaticGray, wszystkie g³êbie\n\
        TrueColor, g³êbia 8 lub wy¿sza\n\
        StaticColor, g³êbia 8 lub wy¿sza\n\
        PseudoColor, tylko g³êbia 8\n\
\n\
Je¶li masz jedn± z powy¿szych widoczno¶ci (zobacz `xdyinfo'),\n\
dla wybrania jednej zalecane jest by wystartowaæ %s z opcj± \n\
`-visual' linii poleceñ.\n\
\n\
Wiêcej widoczno¶ci mo¿e byæ bezpo¶rednio wspomaganych w przysz³o¶ci;\n\
propozycje mile widziane.

*strings.8122:Zostanie\n\
Wy¶wietlone w odcieniach szaro¶ci

*strings.8123:bêdzie kiepsko wygl±daæ

*strings.8124:Wygl±d

*strings.8125:Zak³adki

*strings.8126:Kolory

*strings.8127:Czcionki

*strings.8128:Aplikacje

*strings.8129:Obrazki

*strings.8130:Jêzyki

*strings.8131:Cache

*strings.8132:Po³±czenia

*strings.8133:Proxy

*strings.8134:Wyst±pi³y problemy z wyczyszczeniem %s

*strings.8135:Twórz

*strings.8136:Serwery

*strings.8137:To¿samo¶æ

*strings.8138:Organizacja/Firma

*strings.8139:Wy¶lij ramkê poczt±

*strings.8140:Wy¶lij dokument

*strings.8141:Netscape: poczta i grupy dyskusyjne

*strings.8142:Grupy dyskusyjne Netscape

*strings.8143:Ksi±¿ka adresowa

*strings.8144:Zasoby X'ów nie s± odpowiednio zainstalowane!

*strings.8145:<< Pusty >>

*strings.8146:wyst±pi³ b³±d przy zachowywaniu has³a

*strings.8147:Niezaimplementowane.

*strings.8148:%s: sk³adnia ~user/ nie jest dozwolona w pliku ustawieñ, jedynie ~/\n

*strings.8149:%s: nierozpoznana widoczno¶æ "%s".\n

*strings.8150:%s: brak widoczno¶ci o id 0x%x.\n

*strings.8151:%s: brak widoczno¶ci o klasie %s.\n

*strings.8152:\n\
\n\
<< diagnostyka stderr zosta³a obciêta >>

*strings.8153:b³±d przy tworzeniu potoku:

*strings.8154:-share                    gdy -install, powoduje, ¿e wszystkie okienka\n\
                                 korzystaj± z tej samej mapy kolorów, zamiast\n\
                                 nowej dla ka¿dego okienka.\n\
       -no-share                 powoduje, ¿e wszystkie okienka korzystaj±\n\
                                 z tej samej mapy kolorów.\n

*strings.8155:Pomocnicy

*strings.8156:Folder Outbox zawiera niewys³an±\n\
wiadomo¶æ. Czy wys³aæ j± teraz?\n

*strings.8157:Folder Outbox zawiera %d niewys³anych\n\
wiadomo¶ci. Czy wys³aæ je teraz?\n

*strings.8158:Opcja ``Pozostaw na serwerze'' dzia³a jedynie dla\n\
serwera POP3, nie dla lokalnego katalogu buforowania\n\
poczty. Aby pobraæ swoj± pocztê, najpierw wy³±cz tê\n\
opcjê w panelu Serwery ustawieñ Poczty i grup\n\
dyskusyjnych.

*strings.8159:Wstecz

*strings.8160:Wstecz w ramce

*strings.8161:Dalej

*strings.8162:Dalej w ramce

*strings.8163:Ustaw zmienn± ¶rodowiska $MAIL na po³o¿enie\n\
Twojego pliku bufora poczty.

*strings.8164:Brak nowych wiadomo¶ci.

*strings.8165:Okre¶lony przez u¿ytkownika

*strings.8166:Inny

*strings.8167:nie uda³o siê fork() dla dorêcznia zewnêtrznej wiadomo¶ci

*strings.8168:Nie mo¿na odczytaæ pliku %s

*strings.8169:%s nie istnieje.

*strings.8170:%s jest katalogiem.

*strings.8171:Nie znaleziono pliku blokady.

*strings.8172:Nie uda³o siê otworzyæ pliku Netscape.lock.

*strings.8173:Plik Netscape.lock zosta³ zmieniony.

*strings.8174:Nie mo¿na okre¶lic rozmiaru pliku blokady.

*strings.8175:Nie mo¿na odczytaæ danych z Netscape.lock.

*strings.8176:Nie mo¿na otworzyæ pliku animacji.

*strings.8177:Plik animacji zmodyfikowany.\n\
Zostanie u¿yta domy¶lna animacja.

*strings.8178:Nie mo¿na odczytaæ rozmiaru pliku animacji.\n\
Zostanie u¿yta domy¶lna animacja.

*strings.8179:Nie mo¿na odczytaæ liczby kolorów animacji.\n\
Zostanie u¿yta domy¶lna animacja.

*strings.8180:Nie mo¿na odczytaæ kolorów animacji.\n\
Zostanie u¿yta domy¶lna animacja.

*strings.8181:Nie mo¿na odczytaæ ramek animacji.\n\
Zostanie u¿yta domy¶lna animacja.

*strings.8182:Ignorujê dodatkowe bajty na koñcu pliku animacji.

*strings.8183:Szukaj dokumentów, które zosta³y zmienione dla: 

*strings.8184:Znak

*strings.8185:Po³±czenie

*strings.8186:Akapit

*strings.8187:Obrazek

*strings.8188:Od¶wie¿ ramkê

*strings.8189:Od¶wie¿

*strings.8190:Poczta i Grupy dyskusyjne Netscape: %.900s

*strings.8191:Grupy dyskusyjne Netscape: %.900s

*strings.8192:Netscape: %.900s

*strings.8193:Protoko³y

*strings.8194:Jêzyki

*strings.8195:Zmieñ has³o

*strings.8196:Ustaw has³o...

*strings.8197:Brak Wtyczek

*strings.8198:Kontynuuj Movemail

*strings.8199:Anuluj Movemail

*strings.8200:Netscape przeniesie Twoj± pocztê z %s\n\
do %s/Inbox.\n\
\n\
Przeniesienie poczty bêdzie mia³o wp³yw na inne programy\n\
pocztowe, które oczekuj±, ¿e przeczytana poczta pozostanie\n\
w %s.

*strings.8201:Poka¿ powiadomienie nastêpnym razem

*strings.8202:Edytor stron Netscape: %.900s

*strings.8203:Netscape

*strings.8204:Nieznany: Zapytaj u¿ytkownika

*strings.8205:Zachowaj na dysku

*strings.8206:Wtyczka : %s

*strings.8207:Pole "typ MIME" nie mo¿e byæ puste.

*strings.8208:Opis|Obs³ugiwany przez

*strings.8209:Nie mo¿na pobraæ nowej poczty; istnieje plik blokady %s.

*strings.8210:Brak wtyczki %s. Powrót do zachowaj-na-dysku dla typu %s.\n

*strings.8211:B£¡D: %s\n\
Nie mogê za³adowaæ wtyczki %s. Ingorujê.\n

*strings.8212:Wtyczka podaje inny Opis i/lub Rozszerzenie dla typu MIME %s.\n\
\n\
        Opis = "%s "\n\
        Rozszerzenie = "%s"\n\
Czy u¿yæ Opisu i Rozszerzenia wyszczególnionych we wtyczce?

*strings.8213:wyst±pi³ b³±d zachowywania opcji

*strings.8214:Niektóre warto¶ci s± poza zakresem:

*strings.8215:Nastêpuj±ca warto¶æ jest poza zakresem:

*strings.8216:Mo¿esz mieæ od 1 do 100 rzêdów.

*strings.8217:Mo¿esz mieæ od 1 do 100 kolumn.

*strings.8218:Dla szeroko¶ci obramowania mo¿esz mieæ od 0 do 10000 pikseli.

*strings.8219:Dla odstêpu miêdzy komórkami mo¿esz mieæ od 0 do 10000 pikseli.

*strings.8220:Dla marginesów komórek mo¿esz mieæ od 0 do 10000 pikseli.

*strings.8221:Dla szeroko¶ci mo¿esz mieæ od 1 do 10000 pikseli,\n\
lub pomiêdzy 1 i 100%.

*strings.8222:Dla wysoko¶ci mo¿esz mieæ od 1 do 10000 pikseli,\n\
lub pomiêdzy 1 i 100%.

*strings.8223:Dla szeroko¶ci mo¿esz mieæ od 1 do 10000 pikseli.

*strings.8224:Dla wysoko¶ci mo¿esz mieæ od 1 do 10000 pikseli.

*strings.8225:Dla odstêpu mo¿esz mieæ od 1 do 10000 pikseli.

*strings.8226:Podaj now± warto¶æ i spróbuj ponownie.

*strings.8227:Podaj nowe wartosci i spróbuj ponownie.

*strings.8228:Podaj tekst po³±czenia:

*strings.8229:Grafika po³±czenia:

*strings.8230:Tekst po³±czenia:

*strings.8231:Brak odno¶ników w podanym dokumencie

*strings.8232:Po³±cznie do nazwanego celu w okre¶lonym dokumencie (opcjonalne).

*strings.8233:Po³±cznie do nazwanego celu w bie¿±cym dokumencie (opcjonalne).

*strings.8234:Czy chcesz usun±æ po³±czenie?

*strings.8235:<nieznany>

*strings.8236:Nieotwarty znacznik: oczekiwano '<'

*strings.8237:Niezamkniêty znacznik: oczekiwano '>'

*strings.8238:Niezamkniêty ³añcuch w znaczniku: oczekiwano apostrofu zamykaj±cego

*strings.8239:Przedwczesne zamkniêciê znacznika

*strings.8240:Oczekiwano nazwy znacznika

*strings.8241:Nieznany b³±d znacznika

*strings.8242:Znacznik wygl±da poprawnie

*strings.8243:Ten dokument zawiera ramki. Obecnie edytor nie potrafi\n\
edytowaæ dokumentów zawieraj±cych ramki.

*strings.8244:Ten dokument jest dokumentem wewnêtrznym. Edytor nie\n\
potrafi edytowaæ dokumentów wewnêtrznych.

*strings.8245:Musisz zachowaæ ten dokument lokalnie przed\n\
kontynuacj± ¿±danej operacji.

*strings.8246:Czy chcesz zachowaæ zmiany w:?

*strings.8247:Kod b³êdu = (%d).

*strings.8248:Nie mo¿na skopiowaæ lub wyci±æ w tej chwili,\n\
spróbuj ponownie pó¼niej.

*strings.8249:Nic nie zosta³o wybrane.

*strings.8250:Wybrana operacja dotyczy obramowania komórki/tabeli.\n\
Kasowanie i kopiowanie nie jest dozwolone.

*strings.8251:Podano puste polecenie!

*strings.8252:W ustawieniach edytora nie podano polecenia uruchamiaj±cego edytor HTML\n\
Jako argument u¿yj %f. Netscape zamieni %f na odpowiedni± nazwê.\n\
Przyk³ad:\n\ 

*strings.8253:B³±d sk³adni w uchwycie operacji: %s

*strings.8254:Nieprawid³owy typ okienka dla uchwytu operacji: %s

!*strings.8255:Modified by the Netscape Navigator Administration Kit.\n\
!Version: %s\n\
!User agent: C

*strings.8256:Prywatny plik typów MIME (%s) zosta³ na dysku zmieniony. Czy porzuciæ Twoje\n\
niezachowane zmiany i prze³adowaæ go?

*strings.8257:Prywatny plik mailcap (%s) zosta³ na dysku zmieniony. Czy porzuciæ Twoje\n\
niezachowane zmiany i prze³adowaæ go?

*strings.8258:Prywatny plik typów MIME (%s) zosta³ na dysku zmieniony i jest prze³adowywany.

*strings.8259:Prywatny plik mailcap (%s) zosta³ na dysku zmieniony i jest prze³adowywany.

*strings.8260:W ustawieniach edytora nie podano polecenia uruchamiaj±cego edytor\n\
grafiki. Jako argument u¿yj %f. Netscape zamieni %f na odpowiedni± nazwê.\n\
Przyk³ad:\n\
             xgifedit %f\n\
Czy chcesz teraz podaæ tê warto¶æ w ustawieniach edytora?

*strings.8261:Zamierzesz pobraæ zdalny dokument lub obrazek.\n\
Powiniene¶ uzyskaæ zgodê na u¿ywanie dokumentów\n\
lub obrazków chronionych przez prawo autorskie.

*strings.8262:Plik jest oznaczony tylko-do-odczytu.

*strings.8263:Plik jest zablokowany w tej chwili. Spróbuj ponownie pó¼niej.

*strings.8264:Adres URL pliku jest ¼le ukszta³towany.

*strings.8265:B³±d otwarcia pliku do zapisu.

*strings.8266:B³±d zapisu do pliku.

*strings.8267:B³±d tworzenia tymczasowego pliku kopii zapasowej.

*strings.8268:B³±d kasowania tymczasowego pliku kopii zapasowej.

*strings.8269:Czy kontynuowaæ zachowywanie dokumentu?

*strings.8270:Wyst±pi³ b³±d podczas zachowywania pliku:\n\
%.900s

*strings.8271:Nie ustawiono nowej likalizacji wzorca dokumentu.\n\
Czy chcesz teraz podaæ warto¶æ w ustawieniach edytora?

*strings.8272:Podaj okres dla automatycznego zachowywania pomiêdzy 0 i 600 minut.

*strings.8273:Domy¶lne miejsce publikacji nie jest podane.\n\
Czy chcesz wpisaæ je teraz w ustawieniach edytora?

*strings.8274:Miejsce publikacji musi rozpoczynaæ siê od "ftp://", "http://", lub "https://".\n\
Podaj nowe warto¶ci i spróbuj ponownie.

*strings.8275:Obrazek jest w zdalnym po³o¿eniu.\n\
Zachowaj obrazek lokalnie przed edycj±.

*strings.8276:nie mogê zaalokowaæ mapy kolorów

*strings.8277:Umieszczam plik na zdalnym serwerze:\n\
%.900s

*strings.8278:Zachowujê plik na dysku lokalnym:\n\
%.900s

*strings.8279:Wczytujê plik grafiki:\n\
%.900s

*strings.8280:Plik %d z %d

*strings.8281:Nie znaleziono ¼ród³a.

*strings.8282:Naci¶nij Anuluj, aby wy³±czyæ automatyczne\n\
zapisywanie do czasu zachowania przez Ciebie\n\
tego dokumentu.

*strings.8283:Wszystkie

*strings.8284:Szukaj

*strings.8285:Nowe

*strings.8286:Ta lista ukazuje skumulowan± listê nowych grup dyskusyjnych,\n\
które pojawi³y siê od czasu, gdy ostatnio nacisn±³e¶ przycisk\n\
Wyczy¶æ nowe.

*strings.8287:Centrum wiadomo¶ci dla %s

*strings.8288:na lokalnej maszynie.

*strings.8289:na serwerze.

*strings.8290:Wiadomo¶æ:

*strings.8291:'%s' od %s w folderze %s

*strings.8292:Grupa Netscape - [ %s ]

*strings.8293:Folder Netscape - [ %s ]

*strings.8299:Rozmiar

*strings.8300:Linii

*strings.8301:Dane

*strings.8302:Kontakt

*strings.8303:Zabezpieczenia

*strings.8304:Konferencje

*strings.8305:Imiê:  

*strings.8306:Nazwisko:  

*strings.8307:Adres e-mail:  

*strings.8308:Pseudonim:

*strings.8309:Uwagi:

*strings.8310:Woli odbieraæ w formacie HTML

*strings.8311:Organizacja/Firma:

*strings.8312:Tytu³:

*strings.8313:Adres:

*strings.8314:Miasto:

*strings.8315:Stan:

*strings.8316:Kod pocztowy:

*strings.8317:Kraj:

*strings.8318:Praca:

*strings.8319:Fax:

*strings.8320:Dom:

*strings.8321:Nie posiadasz certyfikatu bezpieczeñstwa dla tej osoby.\n\
\n\
Oznacza to, ¿e wysy³ane do tej osoby wiadomo¶ci e-mail nie mog±\n\
byæ szyfrowane. U³atwia to osobom trzecim przeczytanie\n\
wiadomo¶ci od Ciebie.\n\
\n\
Aby otrzymaæ certyfikaty bezpieczeñstwa dla adresatów, musz± oni\n\
najpierw otrzymaæ jakie¶ samodzielnie i wys³aæ do ciebie podpisan±\n\
wiadomo¶æ e-mail. Certyfikat bezpieczeñstwa bêdzie automatycznie\n\
zapamiêtany po jego otrzymaniu.\n

*strings.8322:Posiadasz certyfikat bezpieczeñstwa dla tej osoby.\n\
\n\
Oznacza to, ¿e wysy³ane do tej osoby wiadomo¶ci e-mail mog± byæ\n\
szyfrowane. Szyfrowanie wiadomo¶ci to jakby wys³anie jej w kopercie,\n\
zamiast na pocztówce. Utrudnia to osobom trzecim obejrzenie Twojej\n\
wiadomo¶ci.\n\
\n\
Certyfikat pocztowy tej osoby jest wa¿ny do %s. Gdy ulegnie on\n\
przeterminowaniu, nie bêdziesz móg³ d³u¿ej wysy³aæ zaszyfrowanych\n\
wiadomo¶ci do tej osoby a¿ ona przy¶le Ci nowy certyfikat.

*strings.8323:Certyfikat pocztowy tej osoby jest przeterminowany.\n\
\n\
Nie mo¿esz wysy³aæ do tej osoby szyfrowanej poczty dopóki nie otrzymasz\n\
nowego certyfikatu bezpieczeñstwa dla poczty. Aby to siê sta³o, ta osoba\n\
musi wys³aæ Ci podpisan± wiadomo¶æ e-mail. Spowoduje to automatyczne\n\
do³±czenie nowego certyfikatu bezpieczeñstwa.

*strings.8324:Certyfikat bezpieczeñstwa tej osoby zosta³ uniewa¿niony. Oznacza to,\n\
¿e certyfikat móg³ zostaæ utracony lub skradziony.\n\
\n\
Nie mo¿esz wysy³aæ do tej osoby szyfrowanej poczty dopóki nie otrzymasz\n\
nowego certyfikatu bezpieczeñstwa dla poczty. Aby to siê sta³o, ta osoba\n\
musi wys³aæ Ci podpisan± wiadomo¶æ e-mail. Spowoduje to automatyczne\n\
do³±czenie nowego certyfikatu bezpieczeñstwa.

*strings.8325:Nie posiadasz w³asnego certyfikatu bezpieczeñstwa.\n\
Oznacza to, ¿e nie mo¿esz otrzymywaæ szyfrowanej poczty, któr±\n\
trudno pods³uchaæ innym osobom podczas przesy³ania do Ciebie.\n\
\n\
Nie mo¿esz równiesz podpisywaæ poczty cyfrowo. Cyfrowy podpis\n\
dowodzi, ¿e wiadomo¶æ pochodzi od Ciebie i zapobiega sfa³szowaniu\n\
Twoich wiadomo¶ci przez inne osoby.\n\
\n\
Aby otrzymaæ certyfikat naci¶nij przycisk Pobierz certyfikat.\n\
Po otrzymaniu certyfikatu bêdzie on automatycznie wys³any wraz\n\
z podpisanymi przez Ciebie wiadomo¶ciami tak, aby inne osoby\n\
mog³y przesy³aæ Ci szyfrowan± pocztê.

*strings.8326:Posiadasz w³asny certyfikat bezpieczeñstwa.\n\
Oznacza to, ¿e mo¿esz otrzymywaæ szyfrowan± pocztê. Aby móc to uczyniæ,\n\
musisz najpierw wys³aæ do kogo¶ pocztê i j± podpisaæ. W ten sposób\n\
wysy³asz mu swój certyfikat, który z kolei umo¿liwia wys³anie do Ciebie\n\
szyfrowanej poczty.\n\
\n\
Szyfrowanie wiadomo¶ci to jakby wys³anie jej w kopercie zamiast na\n\
pocztówce. Utrudnia to osobom trzecim sfa³szowanie Twojej wiadomo¶ci.\n\
\n\
Twój certyfikat bezpieczeñstwa jest wa¿ny do %s. Przed up³ywem jego\n\
wa¿no¶ci bêdziesz musia³ otrzymaæ nowy certyfikat.

*strings.8327:Twój certyfikat bezpieczeñstwa jest przeterminowany.\n\
\n\
Oznacza to, ¿e nie mo¿esz ju¿ podpisywaæ cyfrowo wiadomo¶ci za pomoc±\n\
tego certyfikatu. Jednak mo¿esz nadal otrzymywaæ szyfrowan± pocztê.\n\
\n\
Oznacza to, ¿e musisz otrzymaæ inny certyfikat. Kliknij w tym celu na\n\
Poka¿ certyfikat.

*strings.8328:Twój certyfikat bezpieczeñstwa zosta³ uniewa¿niony.\n\
Oznacza to, ¿e nie mo¿esz ju¿ podpisywaæ cyfrowo wiadomo¶ci za pomoc±\n\
tego certyfikatu. Jednak mo¿esz nadal otrzymywaæ szyfrowan± pocztê.\n\
\n\
Oznacza to, ¿e musisz otrzymaæ inny certyfikat.

*strings.8329:Poka¿ certyfikat

*strings.8330:We¼ certyfikat

*strings.8331:Informacje o li¶cie wysy³kowej

*strings.8332:Nazwa listy:

*strings.8333:Pseudonim listy:

*strings.8334:Opis:

*strings.8335:Wpisz nazwy lub przeci±gnij adresy do tej pocztowej listy wysy³kowej:

*strings.8336:Nazwa

!*strings.8337:

*strings.8338:Adres e-mail

*strings.8339:Pseudonim

*strings.8340:Organizacja/Firma

*strings.8341:Miasto

*strings.8342:Kraj

*strings.8343:%d niecztanych, razem %d

*strings.8344:Szukaj

*strings.8345:Zatrzymaj

*strings.8346:Usuñ

*strings.8347:Ta wiadomo¶æ zostanie wys³ana do:

*strings.8348:wszystkich

*strings.8349:1 miesi±c temu

*strings.8350:Nie mo¿na w tej chwili dokoñczyæ operacji do³±czenia.\n\
Trwa dorêczanie wiadomo¶ci lub ³adowanie za³±cznika.

*strings.8351:Ta pozycja jest ju¿ do³±czona:\n\
%s

*strings.8352:Panel za³±czników jest pe³en - nie mo¿na dodaæ wiêcej za³±czników.

*strings.8353:Pobieram nowe wiadomo¶ci...

*strings.8354:Ksi±¿ka adresowa - %s

*strings.8355:Poka¿ certyfikat

*strings.8356:Kolejno¶æ

*strings.8357:Jêzyk

*strings.8358:Filtry bêd± zastosowane do przychodz±cej poczty\n\
w nastêpuj±cej kolejno¶ci:

*strings.8359:Aby wywo³aæ inn± osobê za pomoc± Konferencji Netscape nale¿y\n\
najpierw wybraæ serwer, który bêdzie u¿ywany do poszukiwania\n\
adresu tej osoby.

*strings.8360:Serwer DLS dla Konferencji Netscape

! The strings below are compared with built-in values, so no translation...
!
!*strings.8361:Okre¶lony serwer DLS
!*strings.8362:Nazwa serwera lub adres IP

*strings.8363:Adres:

*strings.8364:(np., %s)

*strings.8365:Karta dla <%s>

*strings.8366:Nowa\nkarta

*strings.8367:Zaznacz wiadomo¶æ jako przeczytan±

*strings.8368:Zaznacz jako przeczytane wiadomo¶ci sprzed: (MM/DD/RR)

*strings.8369:Data musi byc poprawna\n\
i mieæ postaæ MM/DD/RR.

*strings.8370:Jest %d nag³ówków nowych wiadomo¶ci do\n\
pobrania dla tej grupy dyskusyjnej.

*strings.8371:Pobierz nastêpne %d wiadomo¶ci

*strings.8372:nie przeczytane

*strings.8373:wczoraj

*strings.8374:1 tydzieñ temu

*strings.8375:2 tygodnie temu

*strings.8376:6 miesiêcy temu

*strings.8377:1 rok temu

*strings.8378:Wpis w ksi±¿ce adresowej o takiej nazwie i adresie e-mail ju¿ istnieje.

*strings.8379:Listy wysy³kowe mog± zawieraæ jedynie wpisy z Osobistej ksi±¿ki adresowej.\n\
Czy chcesz dodaæ %s do ksi±¿ki adresowej?

*strings.8380:Upewnij siê, ¿e nazwa i port serwera s± podane i poprawne.

*strings.8381:nieznany

*strings.8382:To:

*strings.8383:CC:

*strings.8384:BCC:

*strings.8385:Nazwa typu

*strings.8386:Nastêpny %d

*strings.8387:Ten dokument nie mo¿e zostaæ do³±czony do wiadomo¶ci:\n\
%s

*strings.8388:Komunikator Netscape nie znalaz³ Twojej karty\n\
osobistej. Czy chcia³by¶ utworzyæ teraz now±\n\
kartê osobist±?

*strings.8389:Centrum wiadomo¶ci Komunikatora dla %s

*strings.8390:Zwyk³y

*strings.8391:Pogrubiony

*strings.8392:Pochy³y

*strings.8393:Pogrubiony pochy³y

*strings.8394:Normalny

*strings.8395:Wiêkszy

*strings.8396:Mniejszy

*strings.8397:Wys³ane

*strings.8398:Wiadomo¶æ nie zosta³a wys³ana. Czy chcesz j±\n\
zachowaæ w folderze Szkice?

*strings.8399:Niew³a¶ciwa warto¶æ daty. Nie podjêto poszukiwania.

*strings.8400:Niew³a¶ciwa warto¶æ pola MIESI¡C.\n\
Podaj miesi±c w 2 cyfrach (1-12).\n\
Spróbuj ponownie!

*strings.8401:Niew³a¶ciwa warto¶æ pola DZIEÑ miesi±ca.\n\
Podaj dzieñ w 2 cyfrach (1-31).\n\
Spróbuj ponownie!

*strings.8402:Niew³a¶ciwa warto¶æ pola ROK.\n\
Podaj czterocyfrowy rok (np. 1997).\n\
Rok musi byæ 1900 lub pó¼niejszy.\n\
Spróbuj ponownie!

*strings.8403:To:

*strings.8404:Cc:

*strings.8405:Bcc:

*strings.8406:Newsgroup:

*strings.8407:Reply-To:

*strings.8408:Followup-To:

*strings.8414:Adres

*strings.8415:Za³±cznik

*strings.8416:Opcja

*strings.8417:OK

*strings.8418:Wyczy¶æ

*strings.8419:Anuluj

*strings.8420:Pilna

*strings.8421:Wa¿na

*strings.8422:Zwyk³a

*strings.8423:FYI

*strings.8424:Junk

*strings.8425:Priorytet

*strings.8426:%sEtykieta

*strings.8427:Adresowanie

*strings.8428:Za³±cznik

*strings.8429:Twórz

*strings.8430:Wszystkkie foldery poczty

*strings.8431:Wszystkkie grupy

*strings.8432:Katalog LDAP

*strings.8433:Lokalizacja

*strings.8434:Temat

*strings.8435:Nadawca

*strings.8436:Data

*strings.8437:Przygotowywujê plik do publikacji:\n\
%.900s

*strings.8438:Nazwa

*strings.8439:Lokalizacja

*strings.8440:Ostatnio odwiedzany

*strings.8441:Ostatnio modyfikowany

*strings.8442:Nazwa

*strings.8443:£±cznie

*strings.8444:Nie przeczytanych

*strings.8445:Kategoria

*strings.8446:Nazwa grupy dyskusyjnej

*strings.8447:Wiadomo¶ci

*strings.8448:Temat

*strings.8449:Data

*strings.8450:Priorytet

*strings.8451:Status

*strings.8452:Nadawca

*strings.8453:Odbiorca

*strings.8454:Wype³nij tutaj

*strings.8455:Rejestrowanie konwerterów

*strings.8456:Inicjalizujê bibliotekê zabezpieczeñ

*strings.8457:Inicjalizujê bibliotekê sieciow±

*strings.8458:Inicjalizujê bibliotekê wiadomo¶ci

*strings.8459:Inicjalizujê bibliotekê obrazków

*strings.8460:Inicjalizujê Javascript

*strings.8461:Inicjalizujê wtyczki

*strings.8462:%s: installColormap: %s musi byæ "yes", "no", lub "guess".\n

*strings.8463:Zak³adki Komunikatora dla %s

*strings.8464:Bez tytu³u

*strings.8465:Odznaczenie tej opcji oznacza, ¿e na tê grupê\n\
i wszystkie grupy dyskusyjne powy¿ej niej\n\
nie bêd± wysy³ane wiadomo¶ci w HTML

*strings.8466:Szyfrowane

*strings.8467:Brak

*strings.8468:Poka¿ kolumnê

*strings.8469:Ukryj kolumnê

*strings.8470:Ta opcja zosta³a wy³±czona

*strings.8471:plik: Bez tytu³u

*strings.8472:%s nie jest ustawione.\n

*strings.8473:Katalog grup dyskusyjnych

*strings.8474:Katalog poczty lokalnej

*strings.8475:%s "%.255s" nie istnieje.\n

*strings.8476:Nie znaleziono pasuj±cych

*strings.8477:Podaj poprawny adres e-mail (np. uzytkownik@internet.com.pl).\n

*strings.8478:Historia Komunikatora dla %s

*strings.8479:Tytu³

*strings.8480:Lokalizacja

*strings.8481:Pierwsze odwiedziny

*strings.8482:Ostatnio odwiedzany

*strings.8483:Wa¿ny do

*strings.8484:Liczba odwiedzin

*strings.8485:Po³±cz siê korzystaj±c Konferencji Netscape

*strings.8486:Wy¶lij wiadomo¶æ do 

*strings.8487:Domy¶lny folder Inbox nie istnieje.\n\
Nie bêdziesz móg³(mog³a) otrzymywaæ nowych wiadomo¶ci!

!*strings.8488:telnet

*strings.8489:aplikacja TN3270

!*strings.8490:rlogin

*strings.8491:rlogin z u¿ytkownikiem

*strings.8492:Nie mo¿esz usun±æ tej aplikacji z ustawieñ.

*strings.8493:Pole aplikacji nie jest wype³nione.

*strings.8494:[Aplikacja JavaScript]

*strings.8495:Twoje ustawienia z wersji %s s± niezgodne z obecn± wersj±, %s.\n\
Czy chcesz teraz zachowaæ ustawienia?

*strings.8496:B±d¼ ¶wiadomy(a), ¿e posiadane przez Ciebie ustawienia\n\
z wersji %s s± niezgodne z obecn± wersj±, %s.

*strings.8497:%s:   program jest w wersji %s, ale zasoby z wersji %s.\n\
\n\
       Oznacza to, ¿e nie ma zainstalowanego odpowiedniego pliku\n\
       z w³a¶ciw± wersj± zasobów w katalogu app-defaults.\n\
       Sprawd¼ na jakie pliki i katalogi wskazuj± poni¿sze zmienne\n\
       systemowe:  \n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
       Sprawd¼ równie¿ czy nie masz tego pliku w swoim katalogu domowym
       lub w katalogu o nazwie 'app-defaults' gdzie¶ w /usr/lib/.\n\

*strings.8498:%s: nie mo¿na zlokalizowaæ zasobów?\n\
\n\
       Mo¿e to oznaczaæ to, ¿e nie jest zainstalowany odpowiedni\n\
       plik `%s' w katalogu app-defaults.\n\
       Sprawd¼ na jakie pliki i katalogi wskazuj± poni¿sze zmienne\n\
       systemowe:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
       Sprawd¼ równie¿ czy nie masz tego pliku w swoim katalogu domowym\n\
       lub w katalogu o nazwie `app-defaults' gdzie¶ w /usr/lib/.

*strings.8499:%s: lokale `%s' nie jest wspomagane przez Xlib; próbujê `C'.\n

*strings.8500:%s: lokale `C' nie jest wspomagane.\n

*strings.8501:%s: lokale `C' nie jest równie¿ wspomagane.\n

*strings.8502:\n\
        Je¶li w katalogu $XNLSPATH brak w³a¶ciwych plików konfiguracyjnych,\n\
        %s przerwie pracê, gdy po raz pierwszy spróbujesz co¶ wkleiæ do pola\n\
        tekstowego. (Jest to b³±d w bibliotekach X11R5, z którymi ten program\n\
        jest skonsolidowany.)\n\
\n\
        Jako ¿e ani X11R4 ani X11R6 nie s± rozprowadzane z tymi plikami\n\
        konfiguracyjnymi, zosta³y one do³±czone do dystrybucji %s. Typowym\n\
        miejscem tych plików jest %s.\n\
    Je¶li nie mo¿na utworzyæ powy¿szego katalogu,\n\
        nale¿y ustawiæ zmienn± ¶rodowiska $XNLSPATH tak, aby wskazywa³a na\n\
        miejsce, gdzie zainstalowano pliki.\n\
\n

*strings.8503:Zapewne zmienna ¶rodowiska $XNLSPATH nie jest prawid³owo ustawiona?\n

*strings.8504:uname nie powiod³o siê

*strings.8505:%s: uname() nie powiod³o siê; nie mogê okre¶liæ na jakim systemie pracujemy\n

*strings.8506:%s: to jest program dla SunOS 4.1.3, a uruchamiasz go na SunOS %s\n\
        (Solarisie). Lepszym pomys³em by³oby uruchomienie zamiast niego\n\
        programu w³a¶ciwego dla Solarisa. Mog± siê dziaæ Z³e Rzeczy.\n\
\n

*strings.8507:%s: nie uda³o siê zainicjalizowaæ mozilla_event_queue!\n

*strings.8508:%s: niew³a¶ciwa opcja `-remote' "%s"\n

*strings.8509:%s: opcja `-id' musi poprzedzaæ wszystkie opcje `-remote'.\n

*strings.8510:%s: mo¿na u¿yæ tylko jednej opcji `-id'.\n

*strings.8511:%s: niew³a¶ciwa opcja `-id' "%s"\n

*strings.8512:%s: opcji `-id' mo¿na u¿yæ tylko z `-remote'.\n

*strings.8513:%s: uwaga: $XKEYSYMDB jest %s,\n\
	ale ten plik nie istnieje.\n

*strings.8514:%s: ostrze¿enie: brak pliku XKeysymDB zarówno\n\
	w %s, %s, jak i %s\n\
	Ustaw $XKEYSYMDB na w³a¶ciwy plik XKeysymDB.\n

*strings.8515:%s: nie znaleziony w ¶cie¿ce PATH!\n

*strings.8516:zmieniam nazwê z %s na %s:

*strings.8517:%s: u¿ycie: OpenURL(url [ , nowe-okno|nazwa-okna ] )\n

*strings.8518:%s: u¿ycie: OpenFile(plik)\n

*strings.8519:%s: u¿ycie: print([nazwa-pliku])\n

*strings.8520:%s: u¿ycie: SaveAS(plik, typ-danych-wyjsciowych)\n

*strings.8521:%s: u¿ycie: SaveAS(plik, [typ-danych-wyjsciowych])\n

*strings.8522:%s: u¿ycie: mailto(adres ...)\n

*strings.8523:%s: u¿ycie: find(lancuch)\n

*strings.8524:%s: u¿ycie: addBookmark(url, tytul)\n

*strings.8525:%s: u¿ycie: htmlHelp(plik-mapy, id, szukany-tekst)\n

*strings.8526:%s: nierozbieralna gramatycznie specyfikacja kodowania filtra: %s\n

*strings.8527:Prze¶lij plik

*strings.8528:wyst±pi³ b³±d przy zachowywaniu opcji

!*strings.8529:# Netscape User History File\n\
!# Version: %s\n\
!# This is a generated file!  Do not edit.\n\
!\n

*strings.8530:%s: za du¿o argumentów (%d) dla ActivateLinkAction()\n

*strings.8531:%s: nieznany parametr (%s) dla ActivateLinkAction()\n

*strings.8532:file:///BezTytulu

*strings.8533:drukowanie

*strings.8534:\n\
To jest standardowa widoczno¶æ i mapa kolorów.

*strings.8535:\n\
To jest standardowa widoczno¶æ i w³asna mapa kolorów.

*strings.8536:\n\
To jest niestandardowa widoczno¶æ.

*strings.8537:z sieci

*strings.8538:z cache na dysku

*strings.8539:z buforów w pamiêci

*strings.8540:domy¶lne

*strings.8541:%s: za ma³o argumentów (%d) dla HistoryItem()\n

*strings.8542:%s: za du¿o argumentów (%d) dla HistoryItem()\n

*strings.8543:%s: nieznany parametr (%s) dla HistoryItem()\n

*strings.8544:%s: nie uda³o siê odczytaæ w³a¶ciwo¶ci %s\n

*strings.8545:%s: niew³a¶ciwe dane w %s okienka 0x%x.\n

*strings.8546:509 b³±d wewnêtrzny: nie uda³o siê przet³umaczyæ okienka 0x%x na kontrolkê

*strings.8547:500 polecenie gramatycznie nierozbieralne: %s

*strings.8548:501 nierozpoznane polecenie: %s

*strings.8549:502 brak w³a¶ciwego okna dla %s

*strings.8550:200 wykonane polecenie: %s(

*strings.8551:200 wykonane polecenie: %s(

*strings.8552:%s: windowGravityWorks: %s musi byæ "yes", "no", lub "guess".\n

*strings.8553:nie uda³o siê dup() stderr:

*strings.8554:nie uda³o siê fdopen() nowego stderr:

*strings.8555:nie uda³o siê dup() nowego stderr:

*strings.8556:nie uda³o siê dup() stdout:

*strings.8557:nie uda³o siê fdopen() nowego stdout:

*strings.8558:nie uda³o siê dup() nowego stdout:

*strings.8559:\n\
%s:\n\
\n\
Ten program Komunikatora Netscape nie dzia³a na %s %s.\n\
\n\
Odwied¼ http://home.netscape.com/ po wersjê Komunikatora, która\n\
dzia³a na Twoim systemie.\n\
\n

*strings.8560:Data utworzenia

*strings.8563:Potwierdzenie zakoñczenia Netscape\n

*strings.8564:Czy zamkn±æ wszystkie okna i zakoñczyæ Netscape?\n

*strings.8565:Poczta Netscape\n

*strings.8566:Folder Outbox zawiera niewys³ane wiadomo¶ci.\n\
Czy wys³aæ je teraz?

*strings.8567:Twoja nazwa u¿ytkownika POP jest po prostu nazw± u¿ytkownika,\n\
a nie pe³nym adresem POP (np. uzytkownik@internet.com.pl).

*strings.8568:Podaj poprawne informacje.

*strings.8569:Edycja filtrów komunikatów JavaScript nie jest dostêpna\n\
w tej wersji Komunikatora.

*strings.8570:Telefon

*strings.8571:Czyszczenie wiadomo¶ci news...

*strings.8572:Ustawienia czcionek bêd± obowi±zywaæ po restarcie Komunikatora.

*strings.8573:Jedna lub wiêcej wybranych pozycji, które przeci±gasz nie zawiera adresu e-mail\n\
i nie zosta³a dodana do listy. Upewnij siê, czy ka¿da z zaznaczonych pozycji\n\
zawiera adres e-mail.

*strings.8574:Nowa nazwa folderu:

*strings.8575:-component-bar            poka¿e tylko Pasek Sk³adników.\n\
\n\
       -composer                 otworzy adresy URL linii poleceñ\n\
                                 w Edytorze.\n\
       -edit                     to samo co -composer.\n\
\n\
       -messenger                poka¿e skrzynkê pocztow± Messengera (INBOX).\n\
       -mail                     to samo co -messenger.\n\
\n\
       -discussions              poka¿e listy dyskusyjne w Collabrze.\n\
       -news                     to samo co -discussions.\n\
\n       

*strings.8576:Argumenty nie bêd±ce prze³±cznikami s± interpretowane jako nazwy plików\n\
       lub adresy URL do za³adowania.\n\
\n

*strings.8577:Szukanie:

*strings.8578:Wyniki poszukiwania

*strings.8579:Wyniki poszukiwania dla:  

*strings.8580:Nazwa

*strings.8581:E-mail

*strings.8582:Organizacja/Firma

*strings.8583:Dzia³

*strings.8584:Wyniki poszukiwania pojawi± siê w okienku ksi±¿ki adresowej

*strings.8585:Podstawowe przeszukiwanie

*strings.8586:Zaawansowane przeszukiwanie

*strings.8587:Wiêcej

*strings.8588:Mniej

*strings.8589:Znajd¼ elementy, które

*strings.8590:Spe³niaj± wszystkie z poni¿szych (i)

*strings.8591:Spe³niaj± jeden lub wiêcej z poni¿szych (lub)

*strings.8592:gdzie

!*strings.8593:

*strings.8594:i

*strings.8595:lub

*strings.8596:Opis:

*strings.8597:Serwer LDAP:  

*strings.8598:Server Root:

*strings.8599:Numer portu:  

*strings.8600:Maksymalna ilo¶æ wyników:

*strings.8601:Bezpieczny

*strings.8602:Zapamiêtaæ has³o

*strings.8603:Informacje o katalogu

*strings.8604:Katalogi

*strings.8605:Szukaj...

*strings.8606:Dodatkowy nag³ówek:

*strings.8607:Nazwa wy¶wietlana:

*strings.8608:Pager:

*strings.8609:Tel. komórkowy:

*strings.8610:Nie mo¿na umie¶ciæ w podanym folderze docelowym.

*strings.8611:Logowanie z podaniem u¿ytkownika i has³a

*strings.8612:Nie znaleziono biblioteki sprawdzania pisowni

*strings.8613:Wybierz, gdzie chcia³by¶ przechowywaæ swoje wiadomo¶ci '%s':

*strings.8614:Umie¶æ kopiê w folderze: '%s' w '%s'

*strings.8615:Folder '%s' w

*strings.8616:Trzymaj wzorce w: '%s' w '%s'

*strings.8617:Trzymaj szkice w: '%s' w '%s'

*strings.8618:Wy¶lij BCC: %s

*strings.8619:Ogólne

*strings.8620:Zaawansowane

*strings.8621:IMAP

*strings.8622:Wspólne

*strings.8623:Ten serwer nie obs³uguje wspólnych folderów

*strings.8624:Masz nastêpuj±ce uprawnienia:

*strings.8625:Udostêpniæ ten i inne foldery dla u¿ytkowników \n\
        sieci oraz pokazaæ i ustawiæ prawa dostêpu.

*strings.8626:Rodzaj folderu:

!*strings.8627:POP

*strings.8628:rozpoczynaæ odpowied¼ ponad cytowanym tekstem

*strings.8629:rozpoczynaæ odpowied¼ pod cytowanym tekstem

*strings.8630:wybierz cytowany tekst

*strings.8631:(domy¶lny)

*strings.8632:W³±czone w tekst

*strings.8633:Wciête

*strings.8634:Jako za³±cznik 

*strings.8635:Automatycznie zaprenumeruj wszystkie moje foldery na "%s"

*strings.8636:MoveMail

*strings.8637:(U¿ywaj±c programu Movemail)

*strings.8638:Automatycznie

*strings.8639:Zapytaj mnie

*strings.8640:Nigdy nie wysy³aj 

*strings.8641:Odpowiedz do:

*strings.8642:znaleziono kilka

*strings.8643:%m/%d/%Y

*strings.8644:Skrócono filtr poczty o nazwie '%s', gdy¿ zawiera on wiêcej ni¿ %d regu³.

*strings.8645:Nieprawid³owa data.

*strings.8646:Dzia³:

*strings.8647:Musisz wskazaæ ju¿ istniej±cy plik.

*strings.8648:Nie mo¿esz wybraæ katalogu.

*strings.8649:Szukaj spe³aniaj±cych wszystkie poni¿sze warunki:

*strings.8650:Pobierz nag³ówki dla: %s

*strings.8651:Nie mogê dostaæ siê do katalogu:\n\
%s\n

*strings.8652:Zapytaj mnie

*strings.8653:Tekst

*strings.8654:HTML

*strings.8655:Tekst i HTML

*strings.8656:Przykro mi, brak pomocy na ten temat.

*strings.8657:(Nic nie jest dostêpne)

*strings.8658:Kompresuj foldery

*strings.8659:Kompresuj ten folder

*strings.8660:Opró¿nij Kosz w %s

*strings.8661:Pusty folder na ¶mieci (Kosz)

*strings.8662:Gdy wiadomo¶æ pochodzi spoza domeny %s:

*strings.8663:(brak domeny)

*strings.8664:Adresy pasuj±ce do "%s"

*strings.8665:Wybierz adresy

*strings.8666:Lista wysy³kowa

*strings.8667:Nazwa folderu

*strings.8668:Usuñ serwer pocztowy

*strings.8669:Kasuj foldery

*strings.8670:Informacje z ksi±¿ki adresowej

*strings.8671:Nazwa:

*strings.8672:Przeszukiwanie podstawowe

*strings.8673:Przeszukiwanie zaawansowane

*strings.8674:URL:

*strings.8675:Id¼

*strings.8676:W³a¶ciwo¶ci

*strings.8677:Pobierz informacje

! w 4.6  (-2) Location: %s
*strings.8678:Adres: %s

*strings.8679:Nie znaleziono

!*strings.8680:
!*strings.8681:
!*strings.8682:
!*strings.8683:
!*strings.8684:

*strings.8685:Wprowad¼ poszukiwany przez Ciebie tekst i spróbuj ponownie.

*strings.8686:Wprowad¼ poprawn± datê dla poszukiwania i spróbuj ponownie.

*strings.21001: (nie rozpoznany)

*strings.21002: (automatycznie)

*strings.21003: (domy¶lnie)

*strings.21004: (nie znaleziono)

*strings.21010:Obrazek %s %dx%d pikseli

*strings.21011:Obrazki s± %d-bitowj g³êbi o przydzielonych %d komórkach.

*strings.21012:Obrazki s± jednobarwne.

*strings.21013:Obrazki s± w %d-bitowej skali szaro¶ci.

*strings.21014:Obrazki s± w %d-bitowym pe³nym kolorze.

*strings.21020:To jest indeks przeszukiwalny. Podaj poszukiwane s³owa kluczowe: 

*strings.21031:G³ówna Hotlist

!*strings.21032:<!-- This is an automatically generated file.\n\
!    It will be read and overwritten.\n\
!    Do Not Edit! -->\n
!*strings.21033:---End of History List---\n

*strings.21034:Zachowaj listê historii

*strings.21040:Poszukiwanie serwera: %.256s...

*strings.21041:£±czenie z serwerem: %.256s...

*strings.21042:B³±d: Nie mo¿na utworzyæ nieblokuj±cego po³±czenia.

*strings.21043:Nie mo¿na zlokalizowaæ serwera %.256s.

*strings.21044:Nie mo¿na zlokalizowaæ serwera %.256s.

*strings.21045:Czytanie pliku...

*strings.21046:Wczytywanie pliku... Plik ma zerow± d³ugo¶æ

*strings.21047:Czytanie katalogu...

*strings.21048:Wczytywanie plik... Za³adowano

*strings.21049:Czytanie katalogu... Wykonano

*strings.21050:Otrzymywanie pliku FTP

*strings.21051:Otrzymywanie katalogu FTP

*strings.21052:Otrzymywanie danych.

*strings.21053:Pobieranie danych z serwera %.256s

*strings.21054:Po³±czenie z %.256s nawi±zane. Czekam na odpowied¼...

*strings.21055:Po³±czenie: Próbujê ponownie (HTTP 0.9)...

*strings.21056:Po³±czenie z serwerem nawi±zane. Czekam na odpowied¼ (Gopher)

*strings.21057:Poczta wys³ana pomy¶lnie

*strings.21058:Pobieranie grup...

*strings.21059:Pobieranie grup...

*strings.21060:Pobieranie artyku³ów...

*strings.21061:Pobieranie artyku³ów...

*strings.21062:Odczytywanie listy grup dyskusyjnych

*strings.21063:Odczytywanie informacji przegl±dowych o grupie

*strings.21064:Porz±dkowanie artyku³ów...

*strings.21065:Uruchamianie Javy...

*strings.21066:Uruchamianie Javy...wykonano

*strings.21101:Nie mo¿na wywo³aæ zewnêtrznego programu do podgl±du

*strings.21102:Serwer proxy wymaga nieobs³ugiwanej procedury autoryzacji.

*strings.21103:B³±d braku pamiêci w procedurze ³adowania HTTP!

*strings.21104:Nieznana odpowied¼ o stanie z serwera: %d!

*strings.21105:Ostrze¿enie! Niekrytyczny b³±d aplikacji: NET_TotalNumberOfProcessingURLs < 0

*strings.21106:Ostrze¿enie! Niekrytyczny b³±d aplikacji: NET_TotalNumberOfOpenConnections < 0

*strings.21107:Adresy URN nie s± wewn±trznie obs³ugiwane, skorzystaj z serwera proxy HTTP:

*strings.21108:wielowej¶ciowe wywo³anie okienka przerwania

*strings.21109:Niew³a¶ciwy numer wiadomo¶ci

*strings.21110:Numer artyku³u spoza zakresu

*strings.21111:Nie mo¿na za³adowaæ skrzynki pocztowej

*strings.21113:B³±d SMTP przy wysy³aniu poczty. Odpowied¼ serwera: %.256s

*strings.21114:Ostrze¿enie: nierozpoznany zestaw znaków: `

*strings.21115:Alarm! Nie znaleziono konwertera lub dekodera

*strings.21116:Nie mo¿na dodaæ wyniku przed³o¿enia formularza do hotlisty ????

*strings.21117:Uwaga: podano nazwê serwera proxy dla HTTP\n\
(%.2048s) lecz nazwa ta jest nieznana.\n\
\n\
Oznacza to, ¿e zewnêtrzne adresy bêd± nieosi±galne.\n\
Byæ mo¿e masz problem z serwerem DNS?\n\
Skontaktuj siê z administratorem Twojego systemu.

*strings.21118:Uwaga: podano nazwê serwera SOCKS (%.2048s)\n\
lecz nazwa ta jest nieznana.\n\
\n\
Oznacza to, ¿e zewnêtrzne adresy bêd± nieosi±galne.\n\
\n\
Byæ mo¿e masz problem z serwerem DNS?\n\

*strings.21119:Je¶li Twoja stacja musi korzystaæ z innego serwera DNS\n\
ni¿ g³ówny, bêdziesz musia³ ustawiæ zmienn± ¶rodowiska\n\
$SOCKS_NS tak, aby wskazywa³a na w³a¶ciwy serwer DNS.\n\
Ustawienie tej zmiennej, lub wybranego serwera SOCKS,\n\
mo¿e (ale nie musi) byæ konieczne raczej w postaci\n\
adresu IP ¿±danego serwera ni¿ jako jego nazwê.\n\
\n

*strings.21120:Skontaktuj siê z administratorem Twojego systemu.

*strings.21121:Uwaga: poni¿sze serwery s± nieznane:  \n\
\n

*strings.21122:Uwaga: Serwer %.256s jest nieznany.\n

*strings.21123:\n\
Oznacza to, ¿e niektóre lub wszystkie z tych adresów\n\
s± nieosi±galne.\n\
\n\
Byæ mo¿e masz problem z serwerem DNS?\n

*strings.21124:W systemach SunOS 4 istniej± dwa programy %s,\n\
jeden dla systemów korzystaj±cych z DNS, a drugi dla\n\
korzystaj±cych z YP/NIS. Do jest program dla DNS.\n\
Zapewne chcesz skorzystaæ z tego drugiego?\n\
\n

*strings.21125:W systemach SunOS 4 istniej± dwa programy %s,\n\
jeden dla systemów korzystaj±cych z DNS, a drugi dla\n\
korzystaj±cych z YP/NIS. Do jest program dla YP/NIS.\n\
Zapewne chcesz skorzystaæ z tego drugiego?\n\
\n

*strings.21130:Ostrze¿enie: to jest uruchamialny skrypt %.1024s'!\n\
\n\
Masz w³a¶nie uruchomiæ dowolne polecenia systemowe\n\
na lokalnej maszynie. Jest to potencjalnie niebezpieczne.\n\
Zaleca siê, aby¶ go nie uruchamia³, chyba ¿e dok³adnie\n\
rozumiesz ten skrypt. 
\n\
Czy uruchomiæ skrypt?

*strings.21131:Ostrze¿enie: to jest uruchamialny skrypt `%.1024s'!\n\
\n\
Mo¿esz w³a¶nie uruchamiaæ dowolne polecenia systemowe\n\
na lokalnej maszynie. Jest to potencjalnie niebezpieczne.\n\
Zaleca siê, aby¶ go nie uruchamia³, chyba ¿e dok³adnie\n\
rozumiesz ten skrypt.
\n\
Czy uruchomiæ skrypt?

*strings.21133:Autoryzacja nie powiod³a siê. Powtórzyæ?

*strings.21134:Autoryzacja Proxy nie powiod³a siê. Powtórzyæ?

*strings.21135:Czy u¿yæ tych samych danych?

*strings.21136:Przed obejrzeniem wszystkich grup dyskusyjnych,\n\
Netscape zachowa kopiê listy grup.\n\
\n\
Mo¿e to zaj±æ kilka minut w przypadku po³±czenia\n\
modemowego lub innego wolnego. Mo¿esz jednak wybraæ\n\
Nowe okno z menu Plik aby kontynuowaæ przegl±danie.\n\
Kontynuowaæ?

*strings.21137:Ten formularz jest dostarczany za po¶rednictwem\n\
e-mail. Dostarczenie formularza w ten sposób\n\
ujawni odbiorcy Twój adres e-mail oraz spowoduje\n\
wys³anie danych z formularza niezaszyfrowanych.\n

*strings.21139:dla poufno¶ci. Mo¿esz nie chcieæ dostarczaæ\n\
wra¿liwych lub poufnuch informacji za pomoc±\n\
tego formularza. Mo¿esz kontynuowaæ lub\n\
anulowaæ dostarczenia go.

*strings.21151:wiadomo¶æ: niew³a¶ciwy specyfikator `%c'\n

*strings.21152:Wype³nij wiêcej nazw tymczasowych

*strings.21153:Wype³nij wiêcej statystyk XPS

*strings.21160:Podaj nazwê u¿ytkownika dla dostêpu do serwera news

*strings.21161:Podaj has³o dla u¿ytkownika %s:

*strings.21204:<TITLE>B³±d!</TITLE>\n\
<H1>Error!</H1> serwer grup dyskusyjnych odpowiedzia³: <b>%.256s</b><p>\n

*strings.21205:<b><p>Prawdopodobnie artyku³ siê przeterminowa³</b><p>\n

*strings.21218:<TITLE>B³±d FTP</TITLE>\n\
<H1>B³±d FTP</H1>\n\
<h2>Nie mo¿na zalogowaæ siê do serwera FTP</h2>\n\
<PRE>

*strings.21219:<TITLE>B³±d FTP </TITLE>\n\
<H1>B³±d FTP</H1>\n\
<h2>Transfer FTP nie powiód³ siê:</h2>\n\
<PRE>

*strings.21220:<TITLE>Indeks gophera %.256s</TITLE><H1>%.256s <BR>Szukanie w gopherze</H1>\n\
To jest przeszukiwalny indeks gophera.\n\
Za pomoc± funkcji szukania w Twojej przegl±darce podaj szukane terminy.\n\
<ISINDEX>

*strings.21221:<TITLE>CSO Search of %.256s</TITLE><H1>%.256s CSO Search</H1>\n\
Baza danuch CSO zazwyczaj zawiera ksiê¿kê telefoniczn± lub katalog.\n\
Za pomoc± funkcji szukania w Twojej przegl±darce podaj szukane terminy.\n\
<ISINDEX>

*strings.21222:<TITLE>Brak danych w odpowiedzi na wysy³kê</TITLE>\n\
<H1>Brak danych</H1>\n\
Ten dokument, bêd±cy wynikiem operacji wys³ania danych (POST) znikn±³\n\
z cache wskutek przeterminowania. Je¶li chcesz, mo¿esz wys³aæ jeszcze\n\
raz dane formularza aby ponownie utworzyæ dokument naciskaj±c przycisk\n\
<b>Prze³aduj</b>.\n

*strings.21250:Szyfrowanie kluczem publicznym RSA

*strings.21251:Miêdzynarodowa

*strings.21252:To jest nie zabezpieczony dokument, który nie jest zaszyfrowany i nie zapewnia\n\
¿adnej ochrony tre¶ci.

*strings.21253:<h3>Brak nowych grup dyskusyjnych</h3>

*strings.21256:Podaj u¿ytkownika dla %.200s na serwerze %.200s:  

*strings.21257:Podaj grupê dyskusyjn± do dodania do listy:

*strings.21260:To jest zabezpieczony dokument, korzystaj±cy z szyfrowania kluczem\n\
¶redniego stopnia, w³a¶ciwym dla eksportu z USA

*strings.21261:To jest zabezpieczony dokument, korzystaj±cy z szyfrowania kluczem\n\
wysokiego stopnia, u¿ywanym jedynie wewn±trz USA 

*strings.21270:Zak³adki na dysku zosta³y zmienione i s± prze³adowywane.

*strings.21271:Ksi±¿ka adresowa na dysku zosta³a zmieniona i jest prze³adowywana.

*strings.21272:Zmieniono zak³adki na dysku. Czy porzuciæ niezachowane\n\
zmiany i prze³adowaæ?

*strings.21273:Zmieniono ksi±¿kê adresow± na dysku. Czy porzuciæ niezachowane\n\
zmiany i prze³adowaæ?

*strings.21274:B³±d przy zachowywaniu pliku zak³adek!

*strings.21275:B³±d przy zachowywaniu pliku ksi±¿ki adresowej!

*strings.21276:To jest przeszukiwalny indeks. Wprowad¼ poszukiwane s³owa kluczowe: 

*strings.21277:Restartuj

*strings.21278:Prze¶lij zapytanie

*strings.21279:<H3>Brak informacji podczas ³adowania dokumentu</H3>\n

*strings.21280:<LI>Kodowanie: 

*strings.21281:<b>Od %d:</b><UL>

*strings.21282:%ld godzin temu

*strings.21283:%ld dni temu

*strings.21284:S± %ld skróty do %s

*strings.21285:Jest 1 skrót do %s 

*strings.21286:Brak skrótów do %s

*strings.21287:Pseudonimy mog± zawieraæ jedynie litery\n\
i cyfry. Nie zmieniono tego pseudonimu.

*strings.21288:Wpis o takim pseudonimie ju¿ istnieje.\n\
Pseudonimu nie mo¿na zmieniæ.

*strings.21289:Ta pozycja ma %d aliasy(ów). Te aliasy \n\
równie¿ zostan± usuniête.

*strings.21290:Niektóre z pozycji, które masz usun±æ\n\
posiadaj± jeden lub wiêcej aliasów. Aliasy\n\
zostan± równie¿ usuniête.

!*strings.21291:<!-- This is an automatically generated file.
!*strings.21292:It will be read and overwritten.
!*strings.21293:Do Not Edit! -->

*strings.21294:Nowy folder

*strings.21295:Nowa zak³adka

*strings.21296:Nie znaleziono

*strings.21297:Otwórz plik zak³adek

*strings.21298:Importuj plik zak³adek

*strings.21299:Zachowaj plik zak³adek

*strings.21300:Mniej ni¿ godzinê temu

*strings.21301:Baza danych z ogóln± histori± jest aktualnie zamkniêta

*strings.21302:Nieznany

*strings.21303:Baza danych z ogóln± histori± jest aktualnie pusta

*strings.21304:<BR>\n\
<TT>Data:</TT> %s<P>

*strings.21305:\n\
<HR>\n\
<TT>£±cznei wpisów:</TT> %ld<P>

*strings.21306:Zak³adki osobiste

*strings.21307:<!-- This is an automatically generated file.\n\
It will be read and overwritten.\n\
Do Not Edit! -->\n

*strings.21308:£adujê wtyczkê

*strings.21309:przy %ld bajtach/sek.

*strings.21310:przy %.1fK/sek.

*strings.21311:przy %.1fM/sek.

*strings.21312:zblokowany

!*strings.21313:%lu
!*strings.21314:%luK
!*strings.21315:%3.2fM

*strings.21316:%02ld:%02ld:%02ld pozosta³o

*strings.21317:%02ld:%02ld pozosta³o

*strings.21318:%ld sek. do koñca

*strings.21319:Wersja: 

*strings.21320:Numer seryjny: 

*strings.21321:Wystawi³: 

*strings.21322:Temat: 

*strings.21323:Wersja: %s%sNumer seryjny: %s%sWystawca:  %s%sTemat: %s%sWa¿ny od: %s%sWa¿ny do: %s%s

*strings.21324:Podaj swoje has³o Komunikatora:

*strings.21325:Nie znaleziono wtyczki dla typu\n\
MIME %s.

*strings.21326:Nie mo¿na za³adowaæ wtyczki '%s' dla typu MIME '%s'.\n\
\n\
  Upewnij siê, ¿e jest dostepna dostateczna ilo¶æ pamiêci oraz ¿e wtyczka jest prawid³owo zainstalowana.

*strings.21327:Nie mo¿na uruchomiæ apletu javy: Nie mogê znale¼æ '%s' w Twojej\n\
CLASSPATH. Przeczytaj uwa¿nie koñcowe notatki i zainstaluj '%s'\n\
odpowiednio zanim uruchomisz ponownie.\n\
\n\
Bie¿±ca warto¶æ CLASSPATH:\n\
%s\n

*strings.21328:Nie mo¿na uruchomiæ apletu javy: Twoje klasy maj± z³y numer\n\
wersji. Znaleziono numer wersji %d. W³a¶ciwym numerem wersji\n\
jest %d.\n

*strings.21329:Java zg³asza podczas startu poni¿sze b³êdy:\n\
\n\
%s\n

*strings.21330:Nie uda³o siê uruchomiæ programu ¶ledz±cego Javy.\n

*strings.21331:System zosta³ zablokowany, aby zapobiec dostêpowi do miejsc o ograniczonym dostêpie. Podaj has³o, je¶li bêdziesz zmieniaæ te ustawienia:

*strings.21332:Uprzednio podane has³o jest nieprawid³owe. Podaj swoje has³o, je¶li bêdziesz zmienia³ te ograniczenia podczas bie¿±cej sesji:

*strings.21335:Po³±czenie: Podaj has³o dla serwera...

*strings.21336:Proxy wymaga nieobs³ugiwanej metody autoryzacji.

*strings.21337:Zawarto¶æ proxy sprawia wra¿enie przeterminowuj±cej siê\n\
natychmiast. Jest to albo problem w implementacji autoryzacji\n\
proxy, albo ¼le podane has³o. Czy chcesz wprowadziæ swoj±\n\
nazwê u¿ytkownika i has³o ponownie?

*strings.21338:nieznany serwer proxy

*strings.21339:Autoryzacja proxy jest wymagana dla %.250s w %.250s:

*strings.21340:Po³±czenie: podaj has³o dla proxy...

*strings.21341:Niew³a¶ciwe s³owo kluczowe w automatycznej konfiguracji proxy: %s.

*strings.21342:Czy próbowaæ ³±czyæ siê z serwerem proxy ponownie?

*strings.21343:Czy próbowaæ ³±czyæ siê z serwerem SOCKS ponownie?

*strings.21344:Czy próbowaæ ³±czyæ siê z proxy / SOCKS ponownie?

*strings.21345:Serwer proxy jest niedostêpny.\n\
\n\
Czy próbowaæ ³±czyæ siê z serwerem proxy %s ponownie?

*strings.21346:¯aden z serwerów proxy nie jest dostêpny.\n\
\n\
Czy próbowaæ ³±czyæ siê z %s ponownie?

*strings.21347:Serwer SOCKS jest niedostêpny. Czy próbowaæ\n\
po³±czyæ siê z serwerem SOCKS %s ponownie?

*strings.21348:Serwery SOCKS i proxy s± niedostêpne.\n\
Czy próbowaæ ³±czyæ siê z %s ponownie?

*strings.21349:Wszystkie serwery proxy s± niedostêpne. Czy chcesz\n\
tymczasowo zast±piæ serwery proxy ³±czeniem bezpo¶rednim,\n\
dopóki serwery nie bêd± dostêpne ponownie?

*strings.21350:Serwer SOCKS jest niedostêpny. Czy chcesz tymczasowo\n\
zast±piæ serwer SOCKS ³±czeniem bezpo¶rednim, dopóki\n\
serwer nie bêdzie dostêpny ponownie?

*strings.21351:Zarówno proxy jak i serwer SOCKS s± niedostêpne. Czy chcesz\n\
tymczasowo zast±piæ je ³±czeniem bezpo¶rednim, dopóki nie\n\
bêd± one dostêpne ponownie?

*strings.21352:Wszystkie serwery proxy s± wci±¿ nieczynne.\n\
Czy kontynuowaæ przy po³±czeniu bezpo¶rednim?

*strings.21353:Serwer SOCKS jest wci±¿ nieczynny.\n\
\n\
Czy kontynuowaæ przy po³±czeniu bezpo¶rednim?

*strings.21354:Serwery SOCKS i proxy s± wci±¿ nieczynne.\n\
\n\
Czy kontynuowaæ przy po³±czeniu bezpo¶rednim?

*strings.21355:Nie otrzymano pliku automatycznej konfiguracji proxy.\n\
\n\
Nie bêdzie korzystania z proxy.

*strings.21356:Plik automatycznej konfiguracji jest pusty:\n\
\n\
    %s\n\
\n\
Czy u¿yæ konfiguracji z poprzedniej sesji?

*strings.21357:Plik automatycznej konfiguracji zawiera b³êdy:\n\
\n\
        %s\n\
\n\
Czy u¿yæ konfiguracji z poprzedniej sesji?

*strings.21358:Plik automatycznej konfiguracji proxy zawiera b³êdy:\n\
\n\
        %s\n\
\n\
Nie bêdzie korzystania z proxy.

*strings.21359:Plik automatycznej konfiguracji nie jest poprawny:\n\
\n\
        %s\n\
\n\
Spodziewano siê typu MIME application/x-javascript-config lub application/x-ns-proxy-autoconfig.\n\
\n\
Czy u¿yæ konfiguracji z poprzedniej sesji?

*strings.21360:Nie mo¿na za³adowaæ pliku automatycznej konfiguracji proxy.\n\
\n\
Sprawd¼ adres URL automatycznej konfiguracji proxy w ustawieniach.\n\
\n\
Nie bêdzie korzystania z proxy.

*strings.21361:Nie mo¿na za³adowaæ pliku automatycznej konfiguracji proxy.\n\
\n\
Czy u¿yæ konfiguracji z poprzedniej sesji?

*strings.21362:Kopia awaryjna pliku automatycznej konfiguracji proxy zawiera b³êdy.\n\
\n\
Nie bêdzie korzystania z proxy.

*strings.21363:Anulowano ³adowanie automatycznej konfiguracji proxy.\n\
\n\
Nie bêdzie korzystania z proxy.

*strings.21364:Ostrze¿enie:\n\
\n\
Serwer przes³a³ Netscape nieproszony plik\n\
automatycznej konfiguracji proxy:\n\
\n\
        %s\n\
\n\
Plik konfiguracyjny zostanie zignorowany.

*strings.21365:Otrzymywanie pliku automatycznej konfiguracji proxy...

*strings.21366:Czyszczenie cache: usuwanie %d plików...

*strings.21367:Wybrana baza danych jest prawid³owa, lecz nie\n\
mo¿e byæ zatwierdzona jako poprawna baza, gdy¿\n\
brak w niej wpisu dotycz±cego nazwy. Czy chcesz\n\
korzystaæ z tej bazy pomimo to?

*strings.21368:Wybarana baza danych ma nazwê:\n\
%.900s\n\
¯±dana baza mia³a nazwê:\n\
%.900s\n\
Czy chesz u¿yæ tej bazy danych pomimo to?

*strings.21369:Aktualnie ³adowana strona za¿±da³a zewnêtrznego\n\
cache. Korzystanie z zewnêtrznego cache tylko do odczytu\n\
mo¿e skróciæ czas pobierania plików z sieci.\n\
\n\
Je¶li nie dysponujesz ¿±danym zewnêtrznym cache,\n\
zaznacz "Anuluj" w ramce wyboru.

*strings.21370:Plik automatycznej konfiguracji Proxy jest nieprawid³owy:\n\
\n\
        %s\n\
\n\
Spodziewano siê typu MIME dla application/x-ns-proxy-autoconfig.\n\
\n\
Proxy nie zostan± u¿yte.

*strings.21371:Czytanie segmentu...zakoñczono

*strings.21372:<TITLE>Zawarto¶æ katalogu %.1024s</TITLE>\n

*strings.21373:<H1>Zawarto¶æ katalogu %.1024s</H1>\n\
<PRE>

*strings.21374:">Do katalogu wy¿szego poziomu</A><BR>

*strings.21375:Nie mo¿na zalogowaæ siê do serwera FTP

*strings.21376:B³±d: Nie mo¿na utworzyæ nieblokuj±cego po³±czenia.

*strings.21377:Wysy³anie pliku %.256s...

*strings.21378:<TITLE>Katalog %.512s</TITLE>\n\
 <H2>Bie¿±cym katalogiem jest %.512s</H2>\n\
 <PRE>

*strings.21379:%d adresów URL oczekuje na otwarte gniazdo (limit %d)\n

*strings.21380:%d adresów URL oczekuje mniejszej liczby aktywnych adresów URL\n

*strings.21381:%d otwartych po³±czeñ\n

*strings.21382:%d aktywne adresy URL\n

*strings.21383:\n\
\n\
Korzystam w zamian z wcze¶niej zbuforowanej kopii

*strings.21384:Serwer nie przes³a³ ¿adnych danych

*strings.21385:>\n\
<HR><H3>Przerwano transmisjê!</H3>\n

*strings.21386:\n\
\n\
Przerwano transmisjê!\n

*strings.21387:Poczta: Czytanie folderu %s...

*strings.21388:Poczta: Czytanie wiadomo¶ci...

*strings.21389:Poczta: Opró¿nianie Kosza...

*strings.21390:Poczta: Kompresowanie folderu %s...

*strings.21391:Poczta: Dorêcznie wiadomo¶ci z kolejki...

*strings.21392:Poczta: Czytanie wiadomo¶ci...zakoñczono

*strings.21393:Poczta: Czytanie folderu...zakoñczono

*strings.21394:Poczta: Opró¿nianie Kosza...zakoñczono

*strings.21395:Poczta: Kompresowanie folderu...zakoñczono

*strings.21396:Poczta: Dorêcznie wiadomo¶ci z kolejki...zakoñczono

*strings.21398:Po³±czenie: Skontaktowano siê z serwerem grup dyskusyjnych. Ooczekiwanie na odpowied¼...

*strings.21399:Podaj has³o dostêpu do serwera grup dyskusyjnych

*strings.21400:Wiadomo¶æ wys³ano; oczekiwanie na odpowied¼...

*strings.21401:Brak odpowiedzi

*strings.21402:Serwer pocztowy POP3 (%s) nie obs³uguje\n\
polecenia UIDL, które jest potrzebne Poczcie Netscape\n\
do realizacji ustawieñ ``Pozostaw na serwerze''\n\
i ``Maksymalny rozmiar wiadomo¶ci''.\n\
\n\
Aby pobraæ swoj± pocztê, wy³±cz te opcje w panelu\n\
Serwery poczty ustawieñ.

*strings.21403:Otrzymywanie: wiadomo¶æ %lu z %lu

*strings.21404:Serwer pocztowy POP3 (%s) nie obs³uguje\n\
polecenia TOP.\n\
\n\
Bez obs³ugi tego polecenia przez serwer nie mo¿na\n\
zrealizowaæ ustawienia ``Maksymalny rozmiar wiadomo¶ci''.\n\
Opcja ta zosta³a zablokowana i wiadomo¶ci bêd± pobierane\n\
niezale¿nie od rozmiaru.

*strings.21405:Nie mogê siê zalogowaæ do serwera poczty.\n\
Odpowied¼ serwera:\n\
\n\
  %s\n\
\n\
Wpisz nowe has³o dla u¿ytkownika %.100s@%.100s:

*strings.21406:Po³±czenie: Skontaktowano siê z serwerem, trwa logowanie...

*strings.21407:Sk³adanie wiadomo¶ci...

*strings.21408:Sk³adanie wiadomo¶ci...zakoñczono

*strings.21409:Pobieranie za³±cznika...

*strings.21410:Pobieranie za³±czników...

*strings.21411:Dorêczanie poczty...

*strings.21412:Dorêczanie poczty...

*strings.21413:Dorêczanie poczty...zakoñczono

*strings.21414:Delivering news...

*strings.21415:Delivering news...Done

*strings.21416:Umieszczam w kolejce, aby dorêczyæ pó¼niej...

*strings.21417:Zapisujê do pliku poczty wys³anej...

*strings.21418:Do kolejki, aby dorêczyæ pó¼niej.

*strings.21419:Tworzenie wiadomo¶ci

*strings.21421:£adowanie pliku podsumowania...

*strings.21422:za³adowano %ld z %ld wiadomo¶ci

*strings.21423:Dodaj folder

*strings.21424:Dodaj folder...

*strings.21425:Podaj now± nazwê Twojego folderu:

*strings.21426:Zachowaj wiadomo¶æ jako

*strings.21427:Zachowaj wiadomo¶ci jako

*strings.21428:Pobierz nowe wiadomo¶ci

*strings.21429:Wy¶lij niewys³ane jeszcze wiadomo¶ci

*strings.21430:Nowy folder...

*strings.21431:Kompresuj ten folder

*strings.21432:Kompresuj wszystkie foldery

*strings.21433:Otwórz serwer grup dyskusyjnych...

*strings.21434:Pusty folder na ¶mieci (Kosz)

*strings.21435:Drukuj...

*strings.21436:Cofnij

*strings.21437:Przywróæ

*strings.21438:Kasuj zaznaczone wiadomo¶ci

*strings.21439:Kasuj wiadomo¶æ

*strings.21440:Kasuj folder

*strings.21441:Anuluj wiadomo¶æ

*strings.21442:Usuñ serwer grup dyskusyjnych

*strings.21443:Prenumeruj

*strings.21444:Anuluj prenumeratê

*strings.21445:Wybierz w±tek

*strings.21446:Wybierz oflagowane wiadomo¶ci

*strings.21447:Wybierz wszystkie wiadomo¶ci

*strings.21448:Porzuæ wszystkie wiadomo¶ci

*strings.21449:Oflaguj wiadomo¶æ

*strings.21450:Zdejmij flagê z wiadomo¶ci

*strings.21451:Ponownie

*strings.21452:wg w±tku

*strings.21453:wg daty

*strings.21454:wg nadawcy

*strings.21455:wg tematu

*strings.21456:wg kolejno¶ci otrzymania

*strings.21457:Rozkoduj (ROT13)

*strings.21458:Dodaj pocz±wszy od najnowszych wiadomo¶ci

*strings.21459:Dodaj pocz±wszy od ostatnich wiadomo¶ci

*strings.21460:Pobierz wiêcej wiadomo¶ci

*strings.21461:Pobierz wszystkie wiadomo¶ci

*strings.21462:Ksi±¿ka adresowa

*strings.21463:Poka¿ wpis w ksi±¿ce adresowej

*strings.21464:Dodaj do ksi±¿ki adresowej

*strings.21465:Nowa wiadomo¶æ na grupie dyskusyjnej

*strings.21466:na grupê

*strings.21467:nadawcy i na grupê

*strings.21468:Nowa wiadomo¶æ

*strings.21469:Odpowied¼

*strings.21470:nadawcy i wszystkim zainteresowanym

*strings.21471:Prze¶lij dalej wybrane wiadomo¶ci

*strings.21472:Prze¶lij dalej jako za³±cznik

*strings.21473:Zaznacz wybrane jako przeczytane

*strings.21474:Zaznacz jako przeczytane

*strings.21475:Zaznacz wybrane jako nieczytane

*strings.21476:Zaznacz jako nieczytane

*strings.21477:Zdejmij flagi ze wszystkich wiadomo¶ci

*strings.21478:Kopiuj wybrane wiadomo¶ci

*strings.21479:Kopiuj

*strings.21480:Przenie¶ wybrane wiadomo¶ci

*strings.21481:Przenie¶

*strings.21482:Zachowaj wybrane wiadomo¶ci jako...

*strings.21483:Zachowaj jako...

*strings.21484:Przenie¶ wybrane wiadomo¶ci do...

*strings.21485:Przenie¶ tê wiadomo¶æ do...

*strings.21486:Pierwsza wiadomo¶æ

*strings.21487:Wiadomo¶æ

*strings.21488:Wiadomo¶æ

*strings.21489:Ostatnia wiadomo¶æ

*strings.21490:Pierwsza nieczytana wiadomo¶æ

*strings.21491:Nieczytana wiadomo¶æ

*strings.21492:Nieczytana wiadomo¶æ

*strings.21493:Ostatnia nieczytana

*strings.21494:Pierwsza oflagowana wiadomo¶æ

*strings.21495:Oflagowana wiadomo¶æ

*strings.21496:Oflagowana wiadomo¶æ

*strings.21497:Ostatnia oflagowana

*strings.21498:Cofnij

*strings.21499:Nastêpna

*strings.21500:Zaznacz w±tek jako przeczytany

*strings.21501:Zaznacz wszystkie jako przeczytane

*strings.21502:Zaznacz wybrane w±tki jako przeczytane

*strings.21505:Poka¿ wszystkie wiadomo¶ci

*strings.21506:Poka¿ tylko nieczytane wiadomo¶ci

*strings.21507:Wszystkie

*strings.21508:W³±cz pierwotny tekst

*strings.21509:Nadawca

*strings.21510:Odpowied¼ do

*strings.21511:Wy¶lij do (To)

*strings.21512:Kopia do (CC)

*strings.21513:Ukryta kopia do (BCC)

*strings.21514:CC do pliku

*strings.21515:Grupy dyskusyjne

*strings.21516:Followups To

*strings.21517:Temat

*strings.21518:Za³±cznik

*strings.21519:Wysy³aæ sformatowany text

*strings.21520:Do kolejki, aby dorêczyæ pó¼niej

*strings.21521:Do³±cz jako text

*strings.21522:Oflaguj wiadomo¶ci

*strings.21523:Zdejmij flagê z wiadomo¶ci

*strings.21524:Rosn±co

*strings.21525:<P><CENTER>\n\
<TABLE BORDER CELLSPACING=5 CELLPADDING=10 WIDTH="80%%">\n\
<TR><TD ALIGN=CENTER><FONT SIZE="+1">Obciêta!</FONT><HR>\n

*strings.21526:<B>Rozmiar tej wiadomo¶ci przekracza Maksymalny rozmiar wiadomo¶ci podany\n\
w ustawieniach, wiêc pobrano z serwera pocztowego jedynie pocz±tkowe linie.<P>Kliknij <A HREF="

*strings.21527:">tutaj</A>, aby pobraæ pozosta³± czê¶æ tej wiadomo¶ci.</B></TD></TR></TABLE></CENTER>\n

*strings.21528:(brak nag³ówków)

*strings.21529:(nie podano)

*strings.21530:Plik Macintosha

*strings.21531:Katalog %s nie istnieje. Poczta nie bêdzie\n\
dzia³aæ bez niego.\n\
\n\
Czy utworzyæ go terez?

*strings.21532:Zachowaæ rozkodowany plik jako:

*strings.21533:Plik %s zosta³ zmieniony przez jaki¶ inny program!\n\
Nadpisaæ go?

*strings.21534:Po³±cz siê z serwerem grup dyskusyjnych

!*strings.21535:news.announce.newusers
!*strings.21536:news.newusers.questions
!*strings.21537:news.answers

*strings.21538:Poczta: Kompresja folderu %s...

*strings.21539:Poczta: Kompresja folderu %s... zakoñczona

*strings.21540:Nie mo¿na otworzyæ %s. Byæ mo¿e nie masz praw zapisu do tego\n\
pliku. Sprawd¼ uprawnienia i spróbuj ponownie.

*strings.21541:Zachowaj za³±cznik jako:

!*strings.21542:%lu KB%s
!*strings.21543:
!*strings.21544:s

*strings.21545:%s z %s (%s, %s)

*strings.21546:%s z %s (%s)

*strings.21547:%s z %s

*strings.21548:%s przeczytano (%s)

*strings.21549:%s przeczytano

*strings.21550:Poczta: Wiadomo¶æ wys³ana; oczekiwanie na odpowied¼...

*strings.21551:<TITLE>Informacje o ogólnej historii pracy Netscape</TITLE>\n\
<h2>Wej¶cia ogólnej historii</h2>\n\
<HR>

!*strings.21552:%d%%

*strings.21553:Obrazek %s, %dx%d pikseli

*strings.21554:Nie mo¿na zlokalizowaæ grafiki z poprawnego adresu URL, rozmiaru, t³a, itp.\n\
w cache:  \n\
%s\n

*strings.21555:%d-bitowy pseudokolor

*strings.21556:1-bitowy czarno-bia³y

*strings.21557:%d-bitowa skala szaro¶ci

*strings.21558:%d-bitowy rzeczywisty kolor RGB.

*strings.21559:Rozmiar&nbsp;po&nbsp;zdekodowaniu&nbsp;(bajtów):

!*strings.21560:%u&nbsp;x&nbsp;%u

*strings.21561:(przeskalowany z %u&nbsp;x&nbsp;%u)

*strings.21562:Obrazek&nbsp;o&nbsp;rozmiarach:

*strings.21563:Kolor:

*strings.21564:%d kolorów

*strings.21565:(brak)

*strings.21566:Mapa kolorów:

*strings.21567:tak, t³o widoczne dziêki przezroczysto¶ci

*strings.21568:tak, t³o jednolitego koloru <tt>#%02x%02x%02x</tt>

*strings.21569:nie

*strings.21570:Przezroczysto¶æ:

*strings.21571:Uwagi:

*strings.21572:Brak danych

*strings.21573:Kompresujê cache grafiki:\n\
usuwam %s\n

*strings.21574:Dodaj grupê dyskusyjn±...

*strings.21575:Przeszukaj ponownie

*strings.21576:Wy¶lij

*strings.21577:Wy¶lij pó¼niej

*strings.21578:Do³±cz...

*strings.21579:Za³±czniki w tek¶cie

*strings.21580:Za³±czniki jako po³±czenia

*strings.21581:Prze¶lij dalej cytuj±c

*strings.21582:Czy na pewno chcesz usun±æ serwer grup dyskusyjnych\n\
%s i wszyskie grupy z niego?

*strings.21583:Wszystkie pola

*strings.21584:Folder `Niewys³ane' zawiera wiadomo¶æ, która nie\n\
jest przeznaczona do dorêczenia!

*strings.21585:Folder `Niewys³ane' zawiera %d wiadomo¶ci, które nie\n\
s± przeznaczone do dorêczenia!

*strings.21586:\n\
\n\
Oznacza to, ¿e prawdopodobnie zosta³a ona umieszczona\n\
w tym folderze przez inny program ni¿ Netscape.\n

*strings.21587:Folder `Niewys³ane' ma specyficzn± rolê; jest on przeznaczony jedynie\n\
do przechowywania wiadomo¶ci, które maj± byæ wys³ane pó¼niej.

*strings.21588:\n\
Wobec czego nie mo¿esz go u¿ywaæ jako folderu `Wys³ane'.\n\
\n\
Sprawd¼, czy miejsce umieszczania wysy³anych wiadomo¶ci w ustawieniach\n\
Poczty i grup dyskusyjnych jest prawid³owe.

*strings.21589:Wyst±pi³ b³±d podczas dorêczania niewys³anych wiadomo¶ci.\n\
\n\
%s\n\
Czykontynuowaæ dorêczanie pozosta³ych niewys³anych wiadomo¶ci?

*strings.21590:Has³o dla u¿ytkownika poczty %.100s@%.100s:

*strings.21591:%sZak³adki dla %s%s

*strings.21592:%sZak³adki osobiste%s

*strings.21593:%sKsi±¿ka adresowa dla %s%s

*strings.21594:%sOsobista ksi±¿ka adresowa%s

*strings.21595:sock: %d   con_sock: %d   protokó³: %d\n

*strings.21596:Adres URL nie zosta³ znaleziony w cache:

*strings.21597:Czê¶æ znaleziono w cache, pobieram resztê z serwera:\n

*strings.21598:Sprawdzam serwer by zweryfikowaæ zawarto¶æ cache,\n\
poniewa¿ jest ustawiona opcja "force_reload":\n

*strings.21599:Obiekt utraci³ wa¿no¶æ, prze³adowywujê:\n

*strings.21600:Sprawdzam serwer by zweryfikowaæ zawarto¶æ cache:\n\

*strings.21601:Sprawdzam serwer by zweryfikowaæ zawarto¶æ cache,\n\
poniewa¿ brakuje opcji "last_modified":\n

*strings.21602:Witryna:

*strings.21603:Lokalizacja:

*strings.21604:Typ&nbsp;MIME&nbsp;pliku:

*strings.21605:Obecnie nieznany

*strings.21606:¬ród³o:

*strings.21607:Obecnie w cache na dysku

*strings.21608:Obecnie buforowany w pamiêci

*strings.21609:nie cache'owany

*strings.21610:<H1>Okno jest teraz nieaktywne</H1>

*strings.21611:Lokalny plik cache:

*strings.21612:brak

*strings.21613:%A, %d-%b-%y %H:%M:%S Czasu lokalnego

*strings.21614:Modyfikowany ostatnio:

*strings.21615:%A, %d-%b-%y %H:%M:%S Czasu GMT

*strings.21616:Rozmiar:

*strings.21617:Data nie podana

*strings.21618:Wa¿no¶æ up³ywa:

*strings.21619:Mac Type:

*strings.21620:Mac Creator:

*strings.21621:Zestaw znaków:

*strings.21622:Stan nieznany

*strings.21623:Zabezpieczenia:

*strings.21624:Certifikat:

*strings.21625:Dokument bez tytu³u

*strings.21626:</b></FONT> ma strukturê:<p><ul><li>

*strings.21627:Informacja o stronie

!*strings.21628:about:editfilenew
*strings.21629:file:///BezTytulu

*strings.21630:Skrócony

*strings.21631:Normalny

*strings.21632:Skasowanie '%s' usunie wszystkie wiadomo¶ci, które on zawiera.\n\
Czy na pewno nadal chcesz skasowaæ ten folder?

*strings.21633:Nie mo¿na za³adowaæ pliku automatycznej konfiguracji proxy.\n\
\n\
Nie mo¿na awaryjnie ustawiæ niekorzystania z proxy, gdy¿ Twój\n\
adres URL automatycznej konfiguracji jest zablokowany.\n\
Po pomoc zwróæ siê do administratora lokalnego systemu.

*strings.21634:Nie otrzymano pliku automatycznej konfiguracji proxy.\n\
\n\
Nie mo¿na awaryjnie ustawiæ niekorzystania z proxy, gdy¿ Twój\n\
adres URL automatycznej konfiguracji jest zablokowany.\n\
Po pomoc zwróæ siê do administratora lokalnego systemu.

*strings.21635:Wyst±pi³ problem podczas otrzymywania informacji o automatycznej\n\
konfiguracji Twojego proxy. Ze wzglêdu na to, ¿e Twój adres URL\n\
automatycznej konfiguracji zosta³ zablokowany lokalnie, mo¿na\n\
jedynie awaryjnie nie korzystaæ z proxy.\n\
\n\
Po pomoc zwróæ siê do administratora lokalnego systemu.

*strings.21636:Import pliku ksi±¿ki adresowej...

*strings.21637:Eksport pliku ksi±¿ki adresowej...

*strings.21638:tej zak³adki

*strings.21639:tej pozycji

*strings.21640:%ld sekund

*strings.21641:%ld minut

*strings.21642:%ld godzin %ld minut

*strings.21643:G³ówna zak³adka

*strings.21644:Ksi±¿ka adresowa

*strings.21645:Zawijanie d³ugich linii

*strings.21646:Automatyczne zachowywanie %s

*strings.21647:Nie mo¿na edytowaæ dokumentów nie-HTML!

*strings.21648:temat

*strings.21649:nadawca

*strings.21650:tre¶æ

*strings.21651:data

*strings.21652:priorytet

*strings.21653:status

*strings.21654:To

*strings.21655:CC

*strings.21656:To lub CC

*strings.21657:nazwa

*strings.21658:adres e-mail

*strings.21659:numer telefonu

*strings.21660:organizacja/firma

*strings.21661:czê¶æ organizacyjna

*strings.21662:miasto

*strings.21663:ulica

*strings.21664:rozmiar

*strings.21665:jakikolwiek tekst

*strings.21666:s³owo kluczowe

*strings.21667:zawiera

*strings.21668:nie zawiera

*strings.21669:jest

*strings.21670:ró¿ny od

*strings.21671:jest pusty

*strings.21672:jest przed

*strings.21673:jest za

*strings.21674:jest wy¿szy ni¿

*strings.21675:jest ni¿szy ni¿

*strings.21676:rozpoczyna siê

*strings.21677:koñczy siê

*strings.21678:wygl±da jak

*strings.21679:zarezerwowane

!*strings.21680:forward.msg

*strings.21681:Twój serwer SMTP nie obs³uguje funkcji zwrotnego potwierdzania, wiêc\n\
Twoje wiadomo¶ci bêd± wysy³ane bez pro¶by o zwrotne potwierdzenie.

*strings.21682:wiek w dniach

*strings.21683:jest wiêkszy ni¿

*strings.21684:jest mniejszy ni¿

*strings.21685:Ta wiadomo¶æ nie mo¿e byæ wys³ana, gdy¿ nie mo¿na\n\
okre¶liæ Twojej nazwy u¿ytkownika.\n\
\n\
Sprawd¼ swoj± konfiguracje NIS lub YP (je¶li korzystasz)\n\
oraz zmienne ¶rodowiska USER i LOGNAME.

*strings.21686:przeczytano

*strings.21687:odpowiedziano

*strings.21688:Zmiñ nazwê zaznaczonego folderu

*strings.21689:Szkice

*strings.21690:Przenie¶ do folderu

*strings.21691:Zmieñ priorytet

*strings.21692:Usuñ

*strings.21693:Zaznacz jako przeczytan±

*strings.21694:Ignoruj w±tek

*strings.21695:Obserwuj w±tek

*strings.21696:przes³ano

*strings.21697:odpowiedziano i przes³ano

*strings.21698:Znaleziono zbyt wiele pozycji. Podaj dodatkowe kryteria poszukiwania.

*strings.21700:Czytaj wiêcej

*strings.21701:Nieczytany w±tek

*strings.21702:Nastêpna nieczytana kategoria

*strings.21703:Nieczytana grupa

*strings.21704:wg priorytetu

*strings.21705:Wywo³anie

*strings.21706:Typ

*strings.21707:wg nazwy

*strings.21708:wg pseudonimu

*strings.21709:wg adresu e-mail

*strings.21710:wg firmy

*strings.21711:wg miasta

*strings.21712:malej±co

*strings.21713:Nowa karta...

*strings.21714:Nowa lista...

*strings.21715:W³asno¶ci karty...

*strings.21716:Szukanie %s...

*strings.21717:Musisz podaæ nazwê listy.

*strings.21718:Musisz podaæ imiê.

*strings.21719:Budowanie pliku podsumowañ dla %s...

*strings.21720:Wszystkie

*strings.21721:Pominiête w±tki

*strings.21722:Obserwowany w±tek z nieczytanymi

*strings.21723:W±tki z nieczytanymi

*strings.21724:Wpis w katalogu LDAP

*strings.21725:Nie uda³o siê otworzyæ rekordu dla %s z powodu b³êdu\n\
LDAP '%s' (0x%02X)

*strings.21726:Nie uda³o siê otworzyæ po³±czenia do '%s' z powodu\n\
b³êdu LDAP '%s' (0x%02X)

*strings.21727:Nie uda³o siê po³±czyæ z '%s' z powodu b³êdu LDAP\n\
'%s' (0x%02X)

*strings.21728:Nie uda³o siê przeszukaæ '%s' z powodu b³êdu LDAP\n\
'%s' (0x%02X)

*strings.21729:Nie uda³o siê zmodyfikowaæ rekordu dla '%s' z powodu\n\
b³êdu LDAP '%s' (0x%02X)

*strings.21730:Znaleziono %d pozycjii

*strings.21731:Czy na pewno chcesz anulowaæ prenumeratê %s?

*strings.21732:Otrzymano %ld z %ld nag³ówków

*strings.21733:Brak nowych wiadomo¶ci w grupie dyskusyjnej

*strings.21734:Otrzymano %ld z %ld wiadomo¶ci

*strings.21735:Poczta: Przeszukiwanie folderów pocztowych...

*strings.21736:Pomiñ w±tek

*strings.21737:Pomiñ w±tki

*strings.21738:Obserwuj w±tek

*strings.21739:Obserwuj w±tki

*strings.21740:Nazwa

*strings.21741:Fax

*strings.21742:Imiê

*strings.21743:Miasto

*strings.21744:Zdjêcie

*strings.21745:E-mail

*strings.21746:Manager

*strings.21747:Organizacja/Firma

*strings.21748:Klasa obiektu

*strings.21749:Dzia³ 

*strings.21750:Adres pocztowy

*strings.21751:Asystent administracyjny

*strings.21752:Nazwisko

*strings.21753:Ulica

*strings.21754:Numer telefonu

*strings.21755:Tytu³

*strings.21756:Rejestracja samochodu

*strings.21757:Business Category

*strings.21758:Uwagi

*strings.21759:Numer dzia³u

*strings.21760:Typ pracownika

*strings.21761:Kod pocztowy

*strings.21762:(bezpieczny) 

*strings.21763:Brak adresu konferencyjnego dla tej osoby.\n\
Zmieñ dane i spróbuj wywo³aæ ponownie. 

*strings.21764:Nie mo¿na skasowaæ lokalnej bazy danych dla %s.\n\
Prawdopodobnie czytasz grupê dyskusyjn± w okienku listy wiadomo¶ci.\n\
Czy anulowaæ subskrybcjê pomimo to? 

*strings.21765:Podaj adres konferencyjny dla tej osoby i spróbuj wywo³aæ ponownie.

*strings.21766:Podaj adres e-mail dla tej osoby i spróbuj wywo³aæ ponownie.

*strings.21767:Nie mogê znale¼æ ¿adnego oprogramowania konferencyjnego\n\
Zainstaluj zgodny produkt do obs³ugi konferencji\n\
i spróbuj ponownie.

*strings.21768:Oprogramowanie konferencyjne potrafi wywo³aæ tylko jedn± osobê. Wybierz\n\
wpis dla pojedyñczej osoby i spróbuj ponownie. 

*strings.21769:Wpis dla %s ju¿ istnieje. Czy chcesz go zast±piæ?

*strings.21770:Nazwa tego pliku zawiera niedozwolone znaki. U¿yj innej nazwy.

*strings.21771:%s jest wirtualn± grup± dyskusyjn±.\n\
Je¶li j± usuniesz, serwer przestanie umieszczaæ na niej\n\
wiadomo¶ci chyba, ¿e zachowasz ponownie swoje kryteria\n\
wyszukiwania.\n\n

*strings.21772:Znaleziono %ld artyku³ów do pobrania

*strings.21773:Otrzymujê %1$ld z %2$ld artyku³ów\n\
  z grupy dyskusyjnej %3$s

*strings.21774:Otrzymujê artyku³ %ld

*strings.21775:Szeroko¶æ = %ld

*strings.21776:Wysoko¶æ = %ld

*strings.21777:(%ld%% z oryginalnych %s)

*strings.21778:(%ld%% z poprzedniego %s)

*strings.21779:szeroko¶æ

*strings.21780:wysoko¶æ

*strings.21781:i 

*strings.21782:pikseli

*strings.21783:% okna

*strings.21784:Stan

*strings.21785:Krajowa

*strings.21786:Miêdzynarodowa

*strings.21787:Postal

*strings.21788:Parcel

*strings.21789:Praca

*strings.21790:Dom

*strings.21791:Preferred

*strings.21792:Voice

*strings.21793:Fax

*strings.21794:Wiadomo¶æ

*strings.21795:Tel. komórkowy

*strings.21796:Pager

*strings.21797:BBS

*strings.21798:Modem

*strings.21799:Samochód

*strings.21800:ISDN

*strings.21801:Video

*strings.21802:AOL

*strings.21803:Applelink

*strings.21804:Poczta AT&T

*strings.21805:Compuserve

*strings.21806:eWorld

*strings.21807:Internet

*strings.21808:Poczta IBM

*strings.21809:Poczta MCI

*strings.21810:Powershare

*strings.21811:Prodigy

*strings.21812:Teleks

*strings.21813:Dodatkowa nazwa

*strings.21814:Prefiks

*strings.21815:Sufiks

*strings.21816:Strefa czasowa

*strings.21817:Po³o¿enie geograficzne

*strings.21818:D¼wiêk

*strings.21819:Revision

*strings.21820:Wersja

*strings.21821:Klucz publiczny

*strings.21822:Logo

*strings.21823:Pseudonim

*strings.21824:Telefon domowy

*strings.21825:Urodziny

*strings.21826:X400

*strings.21827:Adres

*strings.21828:Label

*strings.21829:Czytnik poczty

*strings.21830:Rola

*strings.21831:Aktualizacja z

*strings.21832:Adres opragramowania konferencyjnego

*strings.21833:Poczta HTML

*strings.21834:Dodaj do Osobistej ksi±¿ki adresowej

*strings.21835:Zmiennej szeroko¶ci

*strings.21836:Sta³ej szeroko¶ci

!*strings.21837:Helvetica
!*strings.21838:Arial,Helvetica
!*strings.21839:Times
!*strings.21840:Times New Roman,Times
!*strings.21841:Courier
!*strings.21842:Courier New,Courier

*strings.21843:Ten dokument zawiera %ld znaków. Sprawdzanie pisowni nie mo¿e przetworzyæ wiêcej ni¿ %ld znaków.

*strings.21844:Nie mo¿esz wkleic tak du¿o tekstu na raz. Spróbuj\n\
wkleiæ ten tekst w kilku mniejszych wycinkach.

*strings.21845:Kasuj z wszystkich list

*strings.21846:Dodawanie kart do ksi±¿ki adresowej Netscape: %s

*strings.21847:Aktualizacja list wysy³kowych w %s

*strings.21848:Import

*strings.21849:Kopiowanie kart z ksi±¿ki adresowej Netscape: %s

*strings.21850:Eksport

*strings.21851:Usuwanie wpisów z %s

*strings.21852:Kopiowanie wpisów do %s

*strings.21853:Przenoszenie wpisów do %s

*strings.21854:Skasowanie '%s' usunie jej listy wysy³kowe i karty.\n\
Czy na pewno nadal chcesz skasowaæ tê ksi±¿kê adresow±? 

*strings.21855:Skasowanie '%s' usunie ten katalog.\n\
Czy na pewno nadal chcesz skasowaæ ten katalog?

*strings.21856:Plik Ksi±¿ki adresowej w Twoich ustawieniach ma format ewoluuj±cej bazy\n\
danych. Tymczasem format siê zmieni³ a import binarny z tego formatu nie\n\
jest obs³ugiwany.\n\
Ustawienia zostan± zmienione tak, by korzystaæ z nowego pliku.

*strings.21857:Katalog

*strings.21858:wg %s

*strings.21859:Musisz mieæ co najmniej jedn± ksi±¿kê adresow±.

*strings.21860:Zmieñ tê operacjê na kopiowanie przyciskaj±c klucz ctrl

*strings.21861:Zmieñ tê operacjê na przenoszenie przyciskaj±c klucz shift

!*strings.21862:   

*strings.21863:Usuñ z ksi±¿ki adresowej

*strings.21864:Ju¿ posiadasz ksi±¿kê adresow± lub katalog o takiej nazwie.\n\
Podaj inn± nazwê.

*strings.21865:Znaleziono wiele pasuj±cych

*strings.21866:Nic nie pasuje

*strings.21867:Wszystkie adresy pasuj±

*strings.21868:Wszystkie adresy pasuj± wielokrotnie

*strings.21869:Nic nie pasuje

*strings.21870:%d wielokrotnych dopasowañ

*strings.21871:%s wielokrotnie pasuje

*strings.21872:%s pasuje

*strings.21873:znaleziono %d dopasowañ

*strings.21874:%s nie pasuje

*strings.21875:%d nie pasuj±cych

*strings.21876:Tel. komórkowy

*strings.21877:Pager

*strings.21880:Musisz przed edycj± zachowaæ\n\
%s\n\
dane w pliku lokalnym.\n\
Czy zapisaæ do pliku teraz?

*strings.21881:Czy chcesz dodaæ %s do swoich ustawieñ LDAP?

*strings.21882:Karta dla %s

*strings.21883:Temat

*strings.21884:Resent-Comments

*strings.21885:Resent-Date

*strings.21886:Resent-Sender

*strings.21887:Resent-From

*strings.21888:Resent-To

*strings.21889:Resent-CC

*strings.21890:Data

*strings.21891:Wysy³aj±cy

*strings.21892:Nadawca

*strings.21893:Reply-To

*strings.21894:Organizacja/Firma

*strings.21895:To

*strings.21896:CC

*strings.21897:Grupy dyskusyjne

*strings.21898:Followup-To

*strings.21899:Odno¶niki

*strings.21900:Nazwa

*strings.21901:Typ

*strings.21902:Kodowanie

*strings.21903:Opis

*strings.21904:Nie uda³o siê zainicjalizowaæ serwerów grup dyskusyjnych. Prawdopodobnie\n\
ustawienie katalogu grup dyskusyjnych jest niepoprawne. Bêdziesz w stanie\n\
wysy³aæ artyku³y do grup, ale nie czytaæ je.

*strings.21905:Nadawcy

*strings.21906:Wszystkich

*strings.21907:Wiadomo¶ci na %s

*strings.21908:Nie mo¿na przesun±æ folderu do folderu, który on zawiera

*strings.21909:Utworzono %ld nowych grup dyskusyjnych na serwerze %s. Aby zobaczyæ\n\
liste nowych grup dyskusyjnych, wybierz "Join Newsgroup" i kliknij na\n\
zak³adce "Now Newsgroups".

*strings.21910:Przeszukiwanie nazw grup dyskusyjnych...

*strings.21911:Wys³aæ zaszyfrowan±

*strings.21912:Wys³aæ podpisan± kryptograficznie

*strings.21913:Zabezpieczenie

*strings.21925:Link to Document

*strings.21926:<B>Informacje o dokumencie:  </B>

*strings.21927:W wiadomo¶ci %s %s napisa³(a):<P>

*strings.21928:%s napisa³(a):  <P>

*strings.21929:nieokre¶lony typ

*strings.21930:To jest kryptograficznie podpisana wiadomo¶æ w formacie MIME.

*strings.21931:Zaznaczanie %ld wiadomo¶ci jako przeczytane

*strings.21932:Zaznaczanie %ld wiadomo¶ci jako przeczytane...zakoñczone

*strings.21933:Message-ID

*strings.21934:Resent-Message-ID

*strings.21935:BCC

*strings.21936:Nie mo¿na skasowaæ zarezerwowanego folderu '%s'.

*strings.21937:Nie mo¿na przeszukaæ folderu '%s', gdy¿ nie posiada on pliku podsumowania.

*strings.21938:Nowy

*strings.21939:Osobista ksi±¿ka adresowa

*strings.21940:wg stanu

*strings.21941:Nowy

*strings.21942:Pytanie o pocztê w HTML

*strings.21943:Niektórzy adresaci nie s± wymienieni jako potrafi±cy odbieraæ pocztê\n\
w HTML. Czy chcesz przetworzyæ wiadomo¶æ na zwyk³y tekst, czy wys³aæ\n\
j± w HTML pomimo to?\n\
<p>\n\
<table>\n\
<tr><td valign=top>\n\
%-cont-%

*strings.21944:<input type=radio name=mail value=1 checked>\n\
</td><td valign=top>\n\
Wy¶lij jako zwyk³y tekst oraz w formacie HTML\n\
</td></tr><tr><td valign=top>\n\
<input type=radio name=mail value=2>\n\
</td><td valign=top>\n\
%-cont-%

*strings.21945:Wy¶lij tylko jako zwyk³y tekst\n\
</td></tr><tr><td valign=top>\n\
<input type=radio name=mail value=3>\n\
</td><td valign=top>\n\
Wy¶lij tylko w formacie HTML\n\
</td></tr>\n\
</table>\n\
<center>\n\
<script>\n\
%-cont-%

!*strings.21946:function Doit(value) {\n\
!    document.theform.cmd.value = value;\n\
!    document.theform.submit();\n\
!}\n\
!</script>\n\
!<input type=hidden name=cmd value=-1>\n\
!%-cont-%

*strings.21947:<input type=button value="Wy¶lij" onclick="Doit(0);">\n\
<input type=button value="Nie wysy³aj" onclick="Doit(1);">\n\
<input type=button value="Adresaci..." onclick="Doit(2);">\n\
%-cont-%

*strings.21948:<input type=button value="Pomoc" onclick="Doit(3);">\n\
<input type=hidden name=button value=0>\n\
</center>\n

!*strings.21949:
!*strings.21950:
!*strings.21951:
!*strings.21952:
!*strings.21953:

*strings.21954:<wszyscy>

*strings.21955:Odbiorcy formatu HTML

*strings.21956:Poni¿si adresaci i domeny nie s± wymienieni jako potrafi±cy czytaæ\n\
wiadomo¶ci w HTML. Je¶li lista jest niepoprawna, mo¿esz j± zmieniæ.\n\
%-cont-%

*strings.21957:<p>\n\
<table>\n\
<tr>\n\
<td>Woli bez HTML</td>\n\
<td></td>\n\
<td>Woli HTML</td>\n\
</tr>\n\
<tr>\n\
<td>\n\
<select name=nohtml size=7 multiple\n\
%-cont-%

*strings.21958:onChange="SelectAllIn(document.theform.html, false);">\n\
%1%\n\
</select>\n\
</td>\n\
<td>\n\
<center>\n\
<input type=button name=add\n\
value="Dodaj &gt; &gt;" onclick="DoAdd();">\n\
%-cont-%

*strings.21959:<p>\n\
<input type=button name=remove\n\
value="&lt; &lt; Usuñ" onclick="DoRemove();">\n\
</center>\n\
</td>\n\
<td>\n\
<select name=html size=7 multiple\n\
%-cont-%

!*strings.21960:onChange="SelectAllIn(document.theform.nohtml, false);">\n\
!%2%\n\
!</select>\n\
!</td>\n\
!</tr>\n\
!</table>\n\
!<p>\n\
!<center>\n\
!%-cont-%

*strings.21961:<input type=button value=OK onclick="SelectAll(); Doit(0);">\n\
<input type=button value=Anuluj onclick="Doit(1);">\n\
<input type=button value=Pomoc onclick="Doit(2);">\n\
%-cont-%

!*strings.21962:<input type=hidden name=cmd value=-1>\n\
!<input type=hidden name=button value=0>\n\
!</center>\n\
!<script>\n\
!%0%\n\
!</script>\n
!*strings.21963:
!*strings.21964:
!*strings.21965:
!*strings.21966:
!*strings.21967:

*strings.21968:Wpis w ksi±¿ce adresowej o takiej nazwie i adresie e-mail ju¿ istnieje.

*strings.21969:Ten wpis z ksi±¿ki adresowej ju¿ jest na li¶cie.

*strings.21970:Wybrany 1

*strings.21971:Wybrany 2

*strings.21972:Wybrany 3

*strings.21973:Wybrany 4

*strings.21974:Wybrany 5

*strings.21975:Listy wysy³kowe mog± zawieraæ jedynie wpisy z Osobistej ksi±¿ki adresowej.\n\
Czy chcesz dodaæ %s do ksi±¿ki adresowej?

*strings.21976:Lista wysy³kowa nie mo¿e byæ swoim cz³onkiem

*strings.21977:Nowa\nkarta

*strings.21978:Nowa karta osobista

*strings.21979:Karta osobista dla %s

*strings.21980:CC: %s

*strings.21981:Bcc: %s

*strings.21982:To: %s

*strings.21983:Nie mo¿na zachowaæ %s. Albo dysk jest pe³en,\n\
albo plik jest zablokowany.\n\
\n\
Spróbuj zachowaæ na innym dysku lub spróbuj\n\
zachowaæ %s pod inn± nazw±,\n\

*strings.21984:Wywo³anie HEAD na serwerze nie powiod³o siê.\n\
Umieszczanie anulowano.

*strings.21985:Nie uda³o siê otworzyæ pliku bazy danych ksi±¿ki adresowej.

*strings.21986:Lista wysy³kowa o takiej nazwie ju¿ istnieje.

*strings.21987:komunikator nie mo¿e zaimportowaæ tego pliku do ksi±¿ki adresowej.

*strings.21988:Czyszczenie grupy %s...

*strings.21989:Czyszczenie grupy %s...nag³ówek %ld

*strings.21990:Czyszczenie grupy %s...artyku³ %ld

*strings.21991:Czyszczenie grupy %s...zakoñczone

*strings.21992:Upwenij siê, ¿e podajesz kompletny docelowy adres URL.\n\
np: http://komputer/katalog/plik.html\n\
\n\
Próbowaæ publikowaæ pod tym adresem URL?

*strings.21993:Docelowy adres publikacji jest niepoprawny.

*strings.21994:Docelowy adres publikacji zawiera co najmniej jeden niedozwolony znak.

*strings.21995:Docelowy adres publikacji musi siê zaczynaæ od ftp:// lub http://

*strings.21996:Docelowy adres publikacji koñczy siê /.

*strings.21997:Docelowy adres publikacji nie zawiera rozszerzenia pliku.

*strings.21998:¬ród³o:

*strings.21999:Serwer 

*strings.22000:\n\
chce ustawiæ ciasteczko, które zostanie wys³ane

*strings.22001:\n\
do dowolnego serwera w domenie

*strings.22002:tylko z powrotem do siebie

*strings.22003:\n\
Nazwa i warto¶æ ciasteczka to:\n

*strings.22004:\n\
To ciasteczko bêdzie trwaæ do

*strings.22005:\n\
Czy chcesz pozwoliæ na ustawienie tego ciasteczka?

*strings.22006:Rozmiar:  

*strings.22007:Rzeczywista d³ugo¶æ zawarto¶ci:

*strings.22008:Rodzaj zawarto¶ci:

*strings.22009:Plik lokalny:

*strings.22010:Modyfikowany ostatnio:

*strings.22011:Wa¿no¶æ up³ywa:

*strings.22012:Ostatni dostêp:

*strings.22013:Zestaw znaków:

*strings.22014:Bezpieczny:

*strings.22015:U¿ywa wzglêdnej ¶cie¿ki:

*strings.22016:Z serwera witryny:

*strings.22017:Zmiana zestawu znaków mo¿e zmieniæ niektóre\n\
ze znaków w Twoim dokumencie.\n\
Ta zmiana jest nieodwracalna.\n\
Czy na pewno chcesz kontynuuowaæ?

*strings.22018:The following links could become invalid because\n\
they refer to files on your local hard disk(s).\n\
\n\
%s\n\
If you're sure you set up the links properly, click\n\
OK to continue publishing.

*strings.22019:Nie mo¿na zachowaæ %s, gdy¿ dysk jest pe³en lub\n\
plik jest zablokowany. Spróbuj zachowaæ na innym dysku lub zachowaæ\n\
%s pod inn± nazw±.

*strings.22020:\n\
\n\
Je¶li bêdziesz kontynuowaæ zachowywanie, %s nie\n\
zostanie zachowany wraz z t± stron±.

*strings.22021:Pliku %s stowarzyszonego z t± stron± nie mo¿na\n\
zachowaæ. Upewnij siê, ¿e plik jest we w³a¶ciwym miejscu.

*strings.22022:Pliku %s stowarzyszonego z t± stron± nie mo¿na\n\
zachowaæ, gdy¿ jest problem z plikiem.

*strings.22023:Wyst±pi³ problem z przygotowaniem %s do\n\
publikacji. Netscape nie móg³ utworzyæ pliku tymczasowego.

*strings.22024:\n\
\n\
Sprawd¼, czy Twój dysk twardy nie jest pe³en.

*strings.22025:Wyst±pi³ problem z przygotowaniem %s do\n\
publikacji. Netscape nie móg³ utworzyæ pliku tymczasowego.

*strings.22026:\n\
\n\
Je¶li bêdziesz kontynuowaæ, %s nie zostanie\n\
opublikowany wraz z t± stron±.

*strings.22027:Netscape nie móg³ przygotowaæ pliku %s do\n\
publikacji. Upewnij siê, ¿e plik jest we w³a¶ciwym miejscu.

*strings.22028:Pliku %s stowarzyszonego z t± stron± nie mo¿na\n\
opublikowaæ, gdy¿ jest problem z plikiem.

*strings.22029:Wyst±pi³ problem z przygotowaniem wiadomo¶ci do wys³ania.\n\
Netscape nie móg³ utworzyæ pliku tymczasowego.

*strings.22030:Wyst±pi³ problem z przygotowaniem %s do wys³ania.\n\
Netscape nie móg³ utworzyæ pliku tymczasowego.

*strings.22031:Netscape nie móg³ przygotowaæ pliku %s do\n\
wys³ania. Upewnij siê, ¿e plik jest we w³a¶ciwym miejscu.

*strings.22032:Pliku %s stowarzyszonego z t± stron± nie mo¿na\n\
wys³aæ, gdy¿ jest problem z plikiem.

*strings.22033:\n\
\n\
Je¶li bêdziesz kontynuowaæ, %s nie zostanie\n\
wys³any wraz z t± stron±.

*strings.22034:Ca³kowity podgl±d karty

*strings.22035:Podgl±d skrócony karty

*strings.22036:wg flagi

*strings.22037:wg nieczytanych

*strings.22038:wg wielko¶ci

*strings.22039:Netscape nie móg³ po³±czyæ siê z sieci±, poniewa¿ pracujesz\n\
w trybie "offline". Aby po³±czyæ siê ponownie wybierz\n\
Offline z menu Plik i zaznacz pracê "online".

!*strings.22040: 
!*strings.22041:, 

*strings.22042:Tej pozycji nie mo¿na przenie¶æ do ¿±danej lokalizacji.

*strings.22043:Podaj has³o, aby chroniæ eksportowane dane:

*strings.22044:w %s

*strings.22045:w wybranych pozycjach

*strings.22046:w folderach poczty offline

*strings.22047:w folderach poczty online

*strings.22048:w prenumerowanych grupach

*strings.22049:w przeszukiwalnych grupach

*strings.22050:Default Directory Server

*strings.22051:Specific Directory Server

!!*strings.22052:Nazwê serwera lub adres IP 

*strings.22053:Adres opragramowania konferencyjnego

*strings.22054:Dodatkowe informacje:

*strings.22055:Domeny HTML

!*strings.22056:<script>\n\
!function DeleteSelected() {\n\
!  selname = document.theform.selname;\n\
!  gone = document.theform.gone;\n\
!  var p;\n\
!  var i;\n\
!  for (i=selname.options.length-1 ; i>=0 ; i--) {\n\
!%-cont-%
!*strings.22057:    if (selname.options[i].selected) {\n\
!      selname.options[i].selected = 0;\n\
!      gone.value = gone.value + "," + selname.options[i].text;\n\
!      for (j=i ; j<selname.options.length ; j++) {\n\
!%-cont-%
!*strings.22058:        selname.options[j] = selname.options[j+1];\n\
!      }\n\
!    }\n\
!  }\n\
!}\n\
!%-cont-%
!*strings.22059:function AddNewDomain() {\n\
!  selname = document.theform.selname;\n\
!  if (document.theform.newDomain.value == "")\n\
!    return;\n\
!  var i;\n\
!%-cont-%
!*strings.22060:  for (i=0; i<selname.options.length; i++) {\n\
!    if (selname.options[i].text == document.theform.newDomain.value)\n\
!      return;\n\
!  }\n\
!  newName = new Option(\n\
!   document.theform.newDomain.value, document.theform.newDomain.value);\n\
!%-cont-%
!*strings.22061:   selname.options[selname.options.length] = newName;\n\
!   newlist = document.theform.newdom;\n\
!   newlist.value = newlist.value + "," + newName.value;\n\
!}\n\
!%-cont-%

*strings.22062:</script>\n\
To jest lista domen, które przyjmuj± pocztê HTML. Ka¿dy, czyj adres\n\
e-mail koñczy siê na jednej z tych domen jest uwa¿any za korzystaj±cego\n\
z czytnika poczty rozumiej±cego HTML, takiego jak Netscape.<p>\n\ 
%-cont-%

*strings.22063:Mo¿esz usun±æ domenê z tej listy klikaj±c na niej i wybieraj±c\n\
Usuñ. Dodaje siê domeny wpisuj±c nazwê domeny i klikaj±c\n\
Dodaj now± domenê\n\.<p>\n\ 
<select name=selname multiple size=10>\n\
%0%\n\
%-cont-%

!*strings.22064:</select>\n\
!<input type=button value=Delete onclick="DeleteSelected();">\n\
!<BR><input type="text" name="newDomain"\n\
! SIZE=16 VALUE="" onFocus="this.select()">\n\
!%-cont-%

*strings.22065:<input type=button value="Dodaj now± domenê" onclick="AddNewDomain()">\n\
<input type=hidden name=gone value="">\n\
<input type=hidden name=newdom value="">\n

*strings.22066:Grupa dyskusyjna %s przyjmowa³a HTML, gdy¿ wszystkie grupy, których nazwy\n\
zaczyna³y sie od "%s" zaznaczono jako przyjmuj±ce HTML. Niniejsza\n\
operacja odwróci to; grupy dyskusyjne, których nazwy zaczynaj± siê od\n\
"%s" nie bêd± ju¿ przyjmowaæ HTML.

*strings.22067:Folder

*strings.22068:Grupa dyskusyjna %s nie istnieje na serwerze %s.\n\
Czy chcesz anulowaæ jej prenumeratê?

*strings.22079:Poka¿ informacje o bezpieczeñstwie

*strings.22080:Zaszyfrowane<BR><NOBR>i podpisane</NOBR>

*strings.22081:Podpisane

*strings.22082:Zaszyfrowane

*strings.22083:Certyfikaty

*strings.22084:Niewa¿ny podpis

*strings.22085:Niewa¿ny podpis

*strings.22086:Niewa¿ne szyfrowanie

*strings.22087:Niewa¿ne certyfikaty

*strings.22088:Nowa grupa dyskusyjna

*strings.22089:Tworzy now± kategoriê w tej grupie dyskusyjnej

*strings.22090:Brak adresu e-mail dla %s.

*strings.22091:Przeterminowanych %ld wiadomo¶ci

*strings.22092:Przeterminowanych %ld wiadomo¶ci...zakoñczono

*strings.22093:Kosz

*strings.22094:Inbox

*strings.22095:Niewys³ane

*strings.22096:Szkice

*strings.22097:Wys³ane

*strings.22098:Nowy folder

*strings.22099:Zmieñ nazwê folderu

*strings.22100:Konfiguruj konto pocztowe

*strings.22101:Netscape nie mo¿e zarz±dzæ Twoim kontem pocztowym.\n\
Skontaktuj siê z administratorem konta pocztowego\n\
lub spróbuj ponownie pó¼niej.

*strings.22102:Administruj grupami dyskusyjnymi

*strings.22103:Netscape nie mo¿e zlokalizowaæ serwera socks:\n

*strings.22104:Obiekt o takim pseudonimie ju¿ istnieje. Podaj inny pseudonim.

*strings.22105:Pobierz nowe artyku³y z grup dyskusyjnych

*strings.22106:Poczta lokalna 

*strings.22107:%s grup dyskusyjnych

*strings.22108:%s Pobieranie: nag³owki %lu spo¶ród %lu wiadomo¶ci

*strings.22109:%s Pobieranie: flagi %lu spo¶ród %lu wiadomo¶ci

*strings.22110:Kasowanie wiadomo¶ci...

*strings.22111:Kasowanie wiadomo¶ci...

*strings.22112:Przenoszenie wiadomo¶ci do %s...

*strings.22113:Przenoszenie wiadomo¶ci do %s...

*strings.22114:Kopiowanie wiadomo¶ci %s...

*strings.22115:Kopiowanie wiadomo¶ci %s...

*strings.22116:Otwieranie folderu %s...

*strings.22117:Czy jeste¶ pewien(na), ¿e chcesz usun±æ %s z domy¶lnej\n\
lokalizacji? Przy nastêpnym uruchomieniu Komunikatora folder\n\
%s zostanie utworzony ponownie w domy¶lnym miejscu.

*strings.22118:Aktualizuj ilo¶æ wiadomo¶ci

*strings.22119:Kasujê %lu z %lu wiadomo¶ci

*strings.22120:Kopiujê %lu z %lu wiadomo¶ci do %s

*strings.22121:Przenoszê %lu z %lu wiadomo¶ci do %s

*strings.22122:Twój plik zosta³ umieszczony pomy¶lnie.

*strings.22123:%d plików zosta³o umieszczonych pomy¶lnie.

*strings.22124:Poczta: dorêczanie wiadomo¶ci %ld do %s...

*strings.22125:Poczta: dorêczanie wiadomo¶ci %ld...

*strings.22126:Przesy³asz dalej jako niezaszyfrowan± wiadomowiadomo¶æ, któr±\n\
otrzyma³e¶ zaszyfrowan±. Wys³anie jej niezaszyfrowanej zmniejszy\n\
poziom poufno¶ci tej wiadomo¶ci.\n\
\n\
Czy wys³aæ j± niezaszyfrowan± pomimo to?

*strings.22127:\n\
\n\
Czy przegl±daæ teraz Twoj± domy¶ln± lokalizacjê dla publikacji?

*strings.22128:Nie mo¿esz kopiowaæ i wklejaæ pomiêdzy ró¿nymi\n\
wersjami Edytora Netscape lub Netscape Gold.

*strings.22129:Nie mo¿esz kopiowaæ i wklejaæ pomiêdzy okienkami\n\
o ró¿nym kodowaniu zestawu znaków.

*strings.22130:Adresy URL NFS-u nie s± wewnêtrznie obs³ugiwane, skorzystaj z serwera proxy HTTP: 

*strings.22132:Czy zmieniæ regu³ê, aby odzwierciedlic nowe po³o¿enie folderu?

*strings.22133:Czy wy³±czyæ regu³ê filtrowania dla tego folderu?

*strings.22134:Czcionki dynamiczne

*strings.22135:<H2>Zainstalowane wy¶wietlacze czcionek<HR WIDTH=100%></H2>\n\
<FONT SIZE=+0>\n\
Poni¿ej wymieniono zainstalowane wy¶wietlacze czcionek oraz\n\
formaty czcionek obs³ugiwane przez ka¿dy z nich.

*strings.22136:Use the radioboxes to enable or disable a particular format for a\n\
 particular displayer.<P>

*strings.22137:By uzyskaæ wiêcej informacji o Dynamicznych czcionkach kliknij <a href=http://home.netscape.com/comprod/products/communicator/version_4.0/dynfonts target=aboutDynamicFonts>tutaj</a><hr>

!*strings.22138:</FONT>

*strings.22139:<TABLE BORDER WIDTH=99%%><TR>\n\
 <TD COLSPAN=3><B>%s</B><BR>%s<BR>Located at: %s<BR><BR></TD>\n\
 </TR>

!*strings.22140:<TABLE BORDER WIDTH=99%%><TR>\n\
! <TD COLSPAN=3><B>%s</B><BR>%s<BR><BR></TD>\n\
! </TR>
!*strings.22141:<TR>\n\
! <TD WIDTH=33%%><INPUT NAME="%s" TYPE=Radio VALUE="%s" %s><B>%s</B></TD>\n\
! <TD WIDTH=50%%>%s</TD>\n\
! <TD>%s</TD>\n\
! </TR>
!*strings.22142:</TABLE>\n\
! <BR>\n\
! <BR>

*strings.22143:<B>Nie zainstalowano wy¶wietlaczy</B>

*strings.22144:Domy¶lny wy¶wietlacz czcionek Netscape

*strings.22145:Ten wy¶wietlacz czcionek obs³uguje fonty zainstalowane w systemie.

*strings.22146:Outbox

*strings.22147:Folder `Outbox' zawiera wiadomo¶æ, która nie\n\
jest przeznaczona do dorêczenia!

*strings.22148:Folder `Outbox' zawiera %d wiadomo¶ci, które nie\n\
s± przeznaczone do dorêczenia!

*strings.22149:\n\
\n\
Oznacza to, ¿e prawdopodobnie zosta³a ona umieszczona\n\
w tym folderze przez inny program ni¿ Netscape.\n

*strings.22150:Folder `Outbox' ma specyficzn± rolê; jest on przeznaczony jedynie\n\
do przechowywania wiadomo¶ci, które maj± byæ wys³ane pó¼niej.

*strings.22151:Lokalny plik konfiguracyjny okre¶la adres URL konfiguracji, ale nie mo¿na za³adowaæ sk³adnika\n\
AutoAdmin. Jest on niezbêdny aby obs³u¿yæ adresy URL zdalnej konfiguracji. Nie bêdzie mo¿na\n\
za³adowaæ ¿adnego zdalnego dokumentu.

*strings.22152:Dodajê do %s: %ld z %ld

!*strings.22153:<B><FONT COLOR="#808080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Internal</FONT></B>

*strings.22154:Nazwa pliku do zaimportowania

*strings.22155:Nazwa pliku do wyeksportowania

*strings.22156:Ten dokument ma d³ugo¶æ %ld bajtów. To jest wiêcej ni¿ wtyczka Edytora mo¿e przeczytaæ. Maksymalny doszwolony rozmiar wynosi %ld bajtów.

*strings.22157:Wtyczka Edytora próbowa³a utworzyæ dokument o d³ugo¶ci %ld bajtów. Maksymalny doszwolony rozmiar wynosi %ld bajtów.

*strings.22158:Zaszywrowana wiadomo¶æ S/MIME

*strings.22159:Podpis kryptograficzny S/MIME

*strings.22160:Netscape nie móg³ uruchomiæ Netcastera.\n\
Upewnij siê, ¿e jest on prawid³owo zainstalowany.

*strings.22161:Edytor nie mo¿e otworzyæ URL-a '%s'.\n\
\n\
Musisz podaæ kompletny adres URL z pe³n± ¶cie¿k±.\n\
np; 'http://serwer.com.pl/plik.html'

*strings.22162:%d-bitów %s

*strings.22163:W danej chwili mo¿na wykonywaæ tylko jedn± operacjê na folderze.\n\
Poczekaj na zakoñczenie innej operacji i spróbuj ponownie.

*strings.22164:Czy na pewno chcesz przenie¶æ wybrane foldery do Kosza?

*strings.22165:Netscape nie mo¿e uruchomiæ Netcastera, poniewa¿ nie w³±czona Javy lub JavaScript.\n\
Sprawd¼, czy Twoje ustawienia Zaawansowane s± prawid³owe i spróbuj ponownie.

*strings.22170:0,0,0,Domy¶lny kolor

!*strings.22171:255,255,255,#FFFFFF
!*strings.22172:204,204,204,#CCCCCC
!*strings.22173:153,153,153,#999999
!*strings.22174:102,102,102,#666666
!*strings.22175:51,51,51,#333333
!*strings.22176:0,0,0,#000000
!*strings.22177:255,204,204,#FFCCCC
!*strings.22178:255,102,102,#FF6666
!*strings.22179:255,0,0,#FF0000
!*strings.22180:204,0,0,#CC0000
!*strings.22181:153,0,0,#990000
!*strings.22182:102,0,0,#660000
!*strings.22183:51,0,0,#330000
!*strings.22184:255,204,153,#FFCC99
!*strings.22185:255,204,51,#FFCC33
!*strings.22186:255,153,0,#FF9900
!*strings.22187:255,102,0,#FF6600
!*strings.22188:204,102,0,#CC6600
!*strings.22189:153,51,0,#993300
!*strings.22190:102,51,0,#663300
!*strings.22191:255,255,204,#FFFFCC
!*strings.22192:255,255,153,#FFFF99
!*strings.22193:255,255,0,#FFFF00
!*strings.22194:255,204,0,#FFCC00
!*strings.22195:153,153,0,#999900
!*strings.22196:102,102,0,#666600
!*strings.22197:51,51,0,#333300
!*strings.22198:153,255,153,#99FF99
!*strings.22199:102,255,153,#66FF99
!*strings.22200:51,255,51,#33FF33
!*strings.22201:0,204,0,#00CC00
!*strings.22202:0,153,0,#006600
!*strings.22203:0,102,0,#006600
!*strings.22204:0,51,0,#003300
!*strings.22205:204,255,255,#CCFFFF
!*strings.22206:102,255,255,#66FFFF
!*strings.22207:51,204,255,#33CCFF
!*strings.22208:51,102,255,#3366FF
!*strings.22209:51,51,255,#3333FF
!*strings.22210:0,0,153,#000099
!*strings.22211:0,0,102,#000066
!*strings.22212:255,204,255,#FFCCFF
!*strings.22213:255,153,255,#FF99FF
!*strings.22214:204,102,204,#CC66CC
!*strings.22215:204,51,204,#CC33CC
!*strings.22216:153,51,102,#993366
!*strings.22217:102,51,102,#663366
!*strings.22218:51,0,51,#330033
!*strings.22219:
!*strings.22261:

*strings.22262:Niepowodzenie SmartUpdate: Za³adowane archiwum nie jest plikiem JAR.

*strings.22263:Niepowodzenie SmartUpdate: Archiwum JAR nie przesz³o przez kontrolê bezpieczeñstwa. %s.

*strings.22264:Niepowodzenie SmartUpdate: Archiwum JAR nie zawiera informacji o pliku instalatora.

*strings.22265:Niepowodzenie SmartUpdate: W archiwum JAR brak pliku instalatora %s.

*strings.22266:Nie otrzymano pliku automatycznej konfiguracji.\n\
\n\
Nie bêdziesz w stanie pobieraæ dokumentów z sieci.\n\
Zwróæ siê o pomoc do administratora lokalnego systemu.

*strings.22267:Plik automatycznej konfiguracji nie jest poprawny:\n\
\n\
        %s\n\
\n\
Spodziewano siê typu MIME application/x-javascript-config.

*strings.22268:Nie mo¿na za³adowaæ pliku automatycznej konfiguracji.\n\
\n\
Nie bêdziesz w stanie pobieraæ dokumentów z sieci.\n\
Zwróæ siê o pomoc do administratora lokalnego systemu.

*strings.22269:Nie otrzymano pliku automatycznej konfiguracji.\n\
\n\
Nast±pi powrót do ustawieñ opartych na ostatniej konfiguracji.

*strings.22270:Kopia bezpieczeñstwa pliku automatycznej konfiguracji zawiera b³êdy:\n\
\n\
Nast±pi powrót do standardowej konfiguracji.

*strings.22271:Plik automatycznej konfiguracji zawiera b³êdy:\n\
\n\
        %s\n\
\n\
Nast±pi powrót do standardowej konfiguracji.

*strings.22272:Wczytywanie automatycznej konfiguracji zosta³o anulowane.\n\
\n\
Nast±pi powrót do standardowej konfiguracji.

*strings.22273:Pomy¶lnie wyeksportowano Twoje certyfikaty.

*strings.22274:Pomy¶lnie zaimportowano Twoje certyfikaty.

*strings.22275:Podaj has³o chroni±ce dane do zaimportowania:

*strings.22276:Czy chcia³by¶ dodaæ pozosta³e adresy do osobistej ksi±¿ki adresowej?

*strings.22277:Certyfikat u¿ytkownika

*strings.22278:Certyfikat pocztowy u¿ytkownika

*strings.22279:W Koszu znajduje siê ju¿ folder o nazwie '%s'.\n\
Opró¿nij Kosz albo zmieñ nazwê tego folderu.

*strings.22280:W Koszu znajdowa³ siê ju¿ folder o nazwie '%s'.\n\
Folder, który w³a¶nie skasowa³e¶ znajduje siê w Koszu pod now±\n\
nazw± '%s'.

*strings.22281:Bie¿±ce polecenie nie powiod³o siê. Serwer poczty odpowiedzia³:\n\
%s

*strings.22282:Gdzie chcesz zainstalowaæ %s?

*strings.22283:Podgl±d ¼ród³a dokumentu

*strings.22284:<H3>Brak informacji podczas ³adowania dokumentu</H3>\n

*strings.22285:<LI>Ramka: 

*strings.22286:Obrazek:

*strings.22287:Wstawka:

*strings.22288:Aplet:

*strings.22289:Grafika t³a:   

*strings.22290:<LI>Adres URL akcji:   

*strings.22291:<LI>Kodowanie: 

*strings.22292:<LI>Metoda: 

*strings.22293:<LI>Warstwa: 

*strings.22294:Kilka z za³±czników zawiera informacje specyficzne dla Macintosh'a. U¿ycie UUENCODE spowoduje ich utratê. Kontynuowaæ wysy³anie?

*strings.22295:By potwierdziæ has³o wprowad¼ je ponownie:

*strings.22296:Wpisane has³a ró¿ni± siê. Podaj has³o\n\
zabezpieczaj±ce eksportowane dane:

*strings.22297:Tworzê folder...

*strings.22298:Otwieram folder...

*strings.22299:Kasujê folder %s...

*strings.22300:Zmieniam nazwê folderu %s...

*strings.22301:Szukam folderów...

*strings.22302:Prenumerujê folder %s...

*strings.22303:Anulujê prenumeratê folderu %s...

*strings.22304:Przeszukujê folder...

*strings.22305:Pobieram informacje o wiadomo¶ci...

*strings.22306:Zamykam folder....

*strings.22307:Kompresujê folder...

*strings.22308:Wylogowywujê siê...

*strings.22309:Sprawdzam mo¿liwo¶ci serwera poczty...

*strings.22310:Wysy³am informacje logowania...

*strings.22311:Wysy³am prawdziw± informacjê logowania...

*strings.22312:SmartUpdate nie bêdzie kompletne zanim nie prze³adujesz Windows

*strings.22313:tylko nadawcy

*strings.22314:bez tytu³u

*strings.22315:Przej¶æ do nastêpnej nieczytanej wiadomo¶ci w %s?

*strings.22316:Przepraszam, ale dostêp do tego portu\n\
zosta³ zablokowany z powodu bezpieczeñstwa

*strings.22317:Najniszy

*strings.22318:Niski

*strings.22319:Zwyk³y

*strings.22320:Wysoki

*strings.22321:Najwy¿szy

*strings.22322:BRAK

*strings.22323:Pobieranie: razem wiadomo¶ci: %lu z %lu

*strings.22324:Podaj swój %s i has³o by otrzymaæ dostêp do %s

*strings.22325:%s - Pobieranie: wiadomo¶æ %lu z %lu

*strings.22326:Przykro mi, ale Collabra zosta³a wy³±czona; grupy dyskusyjne nie s± dostêpne.

*strings.22327:Pobieram wiadomo¶æ...

*strings.22328:Utworzenie folderu powiod³o siê, ale Netscape nie móg³ zaprenumerowaæ nowego folderu.

*strings.22329:Skasowanie folderu powiod³o siê, ale Netscape nie móg³ anulowaæ jego prenumeraty.

*strings.22330:Przeniesienie folderu powiod³o siê, ale Netscape nie móg³ zaprenumerowaæ folderu o nowej nazwie.

*strings.22331:Przeniesienie folderu powiod³o siê, ale Netscape nie móg³ anulowaæ prenumeraty folderu o starej nazwie.

*strings.22332:Zamkn±æ okno?

*strings.22333:Zamkn±æ okno %s?

*strings.22334:Twoje Ciasteczka

*strings.22335:Max. dozwolona ilo¶æ Ciasteczek

*strings.22336:Ilo¶æ Ciasteczek które posiadasz:

*strings.22337:Max. ilo¶æ Ciasteczek na serwer:

*strings.22338:Max. rozmiar ka¿dego Ciasteczka:

*strings.22339:Nie masz ¿adnych Ciasteczek

*strings.22340:Nazwa:

*strings.22341:Warto¶æ:

*strings.22342:Host:

*strings.22343:Wy¶lij do serwera:  

*strings.22344:dowolnego hosta w domenie powy¿szego hosta

*strings.22345:tylko do powy¿szego w pe³ni kwalifikowanego hosta

*strings.22346:Wy¶lij na ¶cie¿kê:

*strings.22347:(i poni¿ej)

*strings.22348:Bezpiecznie:

*strings.22349:Przeterminowanie:

*strings.22350:przy zakoñczeniu sesji

*strings.22351:Wyniki poszukiwania LDAP

*strings.22352:Komunikat filtru Ciasteczek Javascript:\n

*strings.22353:Edytuj filtr komunikatów JavaScript

*strings.22354:Nowy filtr komunikatów JavaScript

*strings.22355:<form name=jsfilterdlg_form action=internal-panel-handler method=post> <table width="100%%"> <tr><td colspan=2 bgcolor="#000000"> <font color="#ffffff">Filtr komunikatów JavaScript</font> %-cont-%

*strings.22356:<tr><td align=right>Nazwa filtra: \n\
     <td><input name="filter_name" type=text size=30 value="%0%"> %-cont-%

*strings.22357:<tr><td align=right>Funkcja JavaScript:   \n\
     <td><input name="filter_script" type=text size=30 value="%1%"> %-cont-%

*strings.22358:<tr><td align=right>Opis: \n\
     <td><input name="filter_desc" type=text size=30 value="%2%"> %-cont-%

*strings.22359:<tr><td align=right>Filtrem jest \n\
     <td><input type=radio name=enabled value=on %3%>on<input type=radio name=enabled value=off %4%>off </table></form>

!*strings.22360:
!*strings.22361:
!*strings.22362:
!*strings.22363:
!*strings.22364:

*strings.22365:Wyszukaj zaznaczone wiadomo¶ci

*strings.22366:Wyszukaj oflagowane wiadomo¶ciwiadomo¶ci

*strings.22367:Sprawdzanie przestrzeni nazw IMAP...

*strings.22368:Komunikator nie mo¿e powieliæ katalogu, gdy¿ informacje o historii zmian na serwerze s± niepe³ne.\n\
Informacje o historii zmian mog± byæ nieprawid³owe lub niezgodne z Komunikatorem.

*strings.22369:Komunikator nie mo¿e powieliæ katalogu, gdy¿ informacje o replikacji na serwerze s± niepe³ne.\n\
Serwer mo¿e nie obs³ugiwaæ lub mieæ nie skonfigurowane powielanie.

*strings.22370:Nie mo¿na powieliæ w tej chwili. Netscape mo¿e byæ zajêty lub zabrak³o mu pamiêci.

*strings.22371:Nowa ksi±¿ka adresowa...

*strings.22372:Nowy katalog...

*strings.22373:Wzorce

*strings.22374:Zachowujê jako szkic ...

*strings.22375:Zachowujê jako wzorzec ...

*strings.22376:Dodaj %s do swojej ksi±¿ki adresowej

*strings.22377:Podaj nazwê nowego wzorca wiadomo¶ci.

*strings.22378:Uwaga: to zwrotne potwierdzenie odbioru stwierdza jedynie, ¿e wiadomo¶æ ukaza³a siê na ekranie odbiorcy. Nie ma gwarancji, ¿e zawarto¶æ zosta³a przeczytana i zrozumiana.

*strings.22379:Wiadomo¶æ zosta³a gdzie¶ przekazana (np. wydrukowana, przefaksowana, przes³±na dalej) bez pokazania jej osobie, do której zosta³a wys³ana. Mo¿e ona, ale nie musi zobaczyæ j± po¼niej.

*strings.22380:Wiadomo¶æ zosta³a w pewien sposób przetworzona (np. przez jakie¶ regu³y serwera) bez pokazania jej osobie, do której zosta³a wys³ana. Mo¿e ona, ale nie musi zobaczyæ j± po¼niej. Byæ mo¿e nawet u¿ytkownik tej skrzynki pocztowej nie jest cz³owiekiem. 

*strings.22381:Wiadomo¶æ zosta³a skasowana. Osoba, do której zosta³a wys³ana mo¿e jej nie zobaczyæ. Mo¿na j± odzyskaæ w pó¼nejszym czasie i potem przeczytaæ.

*strings.22382:Odbiorca tej wiadomo¶ci nie chce wys³aæ Ci zwrotnego potwierdzenia odbioru.

*strings.22383:Wyst±pi³ b³±d. Prawid³owe potwierdzenie odbioru nie mo¿e zostaæ wystawione lub wys³ane.

*strings.22384:Nadawca tej wiadomo¶ci za¿±da³ zwrotnego potwierdzenie odbioru.\n\
Czy chcesz je wys³aæ?

*strings.22385:Dostarczam wiadomo¶æ...

*strings.22386:Dostarczam wiadomo¶æ... wykonano

*strings.22387:Znaleziono folder: %s

*strings.22388:Prze¶lij w tre¶ci

*strings.22389:Wzorzec

*strings.22390:Inbox

*strings.22391:Serwer pocztowy twierdzi, ¿e mo¿esz nie posiadaæ ¿adnych osobistych folderów\n\
pocztowych. Sprawd¼ swoj± subskrypcjê.

*strings.22392:Próbuj±c zaprenumerowaæ automatycznie Netscape znalaz³ wiele folderów pocztowych.\n\
Wybierz, które foldery chcia³by¶ prenumerowaæ.

*strings.22393:Netscape wykry³, ¿e wykona³e¶ upgrade poprzedniej wersji Komunikatora.\n\
Musisz wybraæ, które foldery pocztowe chcesz prenumerowaæ.

*strings.22394:¯adne niezaprenumerowane foldery nie poka¿± sie na li¶cie Twoich folderów,\n\
ale mo¿na je zaprenumerowane pó¼niej wybieraj±c Plik / Prenumeruj.

*strings.22395:Czy chcesz, ¿eby Netscape spróbowa³ automatycznie zaprenumerowaæ wszystkie Twoje foldery?

*strings.22396:Wybierz w okienku prenumeraty, które foldery chcesz prenumerowaæ...

*strings.22397:Poczekaj a¿ Netscape poprawi Ciê, aby korzystaæ z prenumeraty folderów pocztowych IMAP...

*strings.22398:Aktualizacja zosta³a przeprowadzona pomy¶lnie.

*strings.22399:Mo¿esz mieæ wiele serwerów pocztowych, je¶li s± to serwery IMAP. \n\
Obecnie korzystasz z serwera POP.

*strings.22400:Czy na pewno chcesz usun±æ ten serwer?

*strings.22401:Pobieram ACL dla folderu...

*strings.22402:Kliknij tutaj aby usun±æ wszystkie przeterminowane artyku³y

*strings.22403:Potwierdzenie zwrotne (pokazano)

*strings.22404:Potwierdzenie zwrotne (wys³ano)

*strings.22405:Potwierdzenie zwrotne (wykonano)

*strings.22406:Potwierdzenie zwrotne (skasowane)

*strings.22407:Potwierdzenie zwrotne (zabronione)

*strings.22408:Potwierdzenie zwrotne (niepowodzenie)

*strings.22409:Otrzymujê informacje o konfiguracji serwera...

*strings.22410:Otrzymujê informacje o konfiguracji skrzynki pocztowej...

*strings.22411:Ta czê¶æ tre¶ci zostanie pobrana na ¿yczenie.

*strings.22412:B³±d IMAP: B³±d uniemo¿liwi³ zachowanie wiadomo¶ci.

*strings.22413:B³±d IMAP: Nie mo¿na odtworzyæ informacji o folderze na bie¿±co.

*strings.22414:Logowanie nie powiod³o siê.

*strings.22415:Podaj jaki¶ tekst do wyszukania i spróbuj ponownie.

*strings.22416:Niezweryfikowana sygnatura

*strings.22417:Pe³na kontrola

*strings.22418:Przeszukaj

*strings.22419:Czytaj

*strings.22420:Ustaw stan przeczytany/nieczytany

*strings.22421:Zapisz

*strings.22422:Wstaw (kopiuj do)

*strings.22423:Wy¶lij

*strings.22424:Utwórz podfolder

*strings.22425:Kasuj wiadomo¶ci

*strings.22426:Folder administracyjny

*strings.22427:Folder osobisty

*strings.22428:Folder osobisty

*strings.22429:Folder publiczny

*strings.22430:Folder innych u¿ytkowników

*strings.22431:To jest osobisty folder poczty. Nie jest udostêpniony innym.

*strings.22432:Jest to osobisty folder poczty. Zosta³ udostêpniony innym.

*strings.22433:To jest folder publiczny.

*strings.22434:Ten folder poczty jest udostêpniony przez u¿ytkownika '%s'.

*strings.22435:Nieznany

*strings.22436:Podane has³o nie zgadza siê z has³em ostatnio u¿ywanym na tym serwerze.

*strings.22437:Nie podano has³a lub przekroczono maksymaln± ilo¶æ prób podania has³a.

*strings.22438:Czy jeste¶ pewien(na), ¿e chcesz usun±æ serwer poczty %s?

*strings.22439:Weryfikuj podpis

*strings.22440:Poka¿/ukryj panel za³±cznika

*strings.22441:Status pobierania

*strings.22442:Nie pobrano z wiadomo¶ci±

*strings.22443:Poka¿ wszystkich odbiorców

*strings.22444:Nag³ówek Newsgroups jest nieprawid³owy

*strings.22445:By wybraæ, które foldery poczty s± domy¶lnie wy¶wietlane na li¶cie folderów, wybierz Plik / Prenumeruj.\n\
Foldery nie zaprenumerowane mog± zostaæ zaprenumerowane pó¼niej.

*strings.22446:Poka¿ skrócon± listê odbiorców

*strings.22447:.* (%ld grup)

*strings.22448:(%ld podfolder)

*strings.22449:(%ld podfoldery)

*strings.22452:Czekam na po³±czenie z folderem %s

*strings.22453:Has³o IMAP dla u¿ytkownika %.100s na %.100s:

*strings.22454:W przysz³o¶ci, mo¿esz wybraæ, które wiadomo¶ci lub foldery bêdziesz czytaæ offline.\n\
By to zrobiæ, wybierz Offline z menu Plik i potwierd¼ Synchronizuj. Mo¿esz te¿\n\
zdefiniowaæ przestrzeñ dyskow±, by nie ¶ciagaæ zbyt du¿ych wiadomo¶ci.

*strings.22455:Komunikator mo¿e w danej chwili wys³aæ wiadomo¶æ tylko do jednego serwera.

*strings.22456:Poczekaj a¿ Kurier zaktualizuje informacje \n\
           o folderach pocztowych i grupach dyskusyjnych.

*strings.22457:Nag³ówek Followup-To jest nieprawid³owy

*strings.22460:O pozycjach powi±zanych ze sob±

*strings.22461:Szczegó³owa lista...

*strings.22462:Otrzymujê dane

*strings.22463:Nic nie jest dostêpne

*strings.22464:Wy³±czone dla tej witryny

*strings.22465:Powielam katalog

*strings.22466:£±czê siê z serwerem us³ug katalogowych...

*strings.22467:Powielam zmianê wpisu katalogu %d

*strings.22468:Powielam wpis katalogu %d

*strings.22469:Identyfikator poczty jest nieprawid³owy. Nie mogê pod³±czyæ siê do wpisu autoryzacji katalogu.

*strings.22470:SmartUpdate\n\
Konfiguracja instalacji oprogramowania

*strings.22471:Rozinstaluj 

*strings.22472:Czy jeste¶ pewien(na), ¿e chcesz rozinstalowaæ %s?

*strings.22473:B³±d w procesie rozinstalowania

*strings.22474:SmartUpdate: Pobieram instalacjê

*strings.22475:Adres: %s

*strings.22476:Komunikator nie mo¿e zaktualizowaæ kopii %s.\n\
Dane s± albo za stare lub uszkodzone. Czy chcesz odtworzyæ kopiê?

*strings.22477:Aktualizujê rejestr klienta Netscape

*strings.22478:Komunikator aktualizuje Twój rejestr

*strings.22479:%d bajtów z %d bajtów

*strings.22480:SmartUpdate: %s

*strings.22481:Rozpakowywujê pliki do instalacji

*strings.22482:Instalujê...

*strings.22483:To jest potwierdzenie otrzymania poczty wys³anej przez Ciebie do %s.

*strings.22484:Podaj swoje has³o by otrzymaæ dostêp do %s

*strings.22485:Niepowodzenie SmartUpdate: Brak miejsca na dysku potrzebnego do zakoñczenia tej operacji.

*strings.22486:Je¶li ten katalog obs³uguje powielania, kliknij przycisk Update Now, aby natychmiast rozpocz±æ operacjê. Ewentualnie, wybierz katalog katalog do pobierania je¶li synchronizacja dzia³a w trybie "offline".

*strings.22487:Grupa

*strings.22488:Folder Nieczytane

*strings.22489:Nieczytana grupa

*strings.22490:Ostrze¿enie SmartUpdate:\n\
\n\
Zaczyna brakowaæ ci wolnego miejsca na dysku. Instalacja mo¿e zakoñczyæ siê niepowodzeniem. Czy chcesz kontynuowaæ?

*strings.22491:Otrzymujê %1$ld z %2$ld wiadomo¶ci\n\
  w folderze %3$s

*strings.22492:Zosta³ wykryty b³±d podczas otrzymywania pliku konfiguracji JavaScript.\n\
Jako wynik tego, nie bêdziesz móg³(mog³a) po³±czyæ siê z sieci±.\n\
\n\
Skontaktuj siê z administratorem Twojego systemu.

*strings.22493:Plik konfiguracji JavaScript zawiera b³êdy:\n\
\n\
        %s\n\
\n\
Czy u¿yæ konfiguracji z poprzedniej sesji?

*strings.22494:Brak kopii pliku konfiguracji JavaScript lub plik ten jest uszkodzony.\n\
\n\
Wracamy do standardowej konfiguracji.

!*strings.22495:http://home.netscape.com/bookmark/4_75/tshop.html
!*strings.22496:http://home.netscape.com/bookmark/4_75/tradio.html

!*strings.22497:Folder narzêdzi osobistych ??????

*strings.22498:Podaj adres w sieci lub s³owo kluczowe i naci¶nij Enter

!*strings.22499:Podaj adres w sieci lub s³owo kluczowe i naci¶nij Enter
!*strings.22500:Podaj adres w sieci lub s³owo kluczowe i naci¶nij Enter

*strings.22501:Zatrzymaj plik z serwera

*strings.22502:Zatrzymaj plik lokalny

*strings.22503:Kasuj plik z serwera

*strings.22504:Kasuj plik lokalny

*strings.22505:Konflikt pobierania danych

*strings.22506:Konflikt umieszczania danych

*strings.22507:Wyst±pi³ konflikt pomiêdzy kopiami lokalnymi %s i na serwerze.\n\
\n\
\n\
          Ostatnia modyfikacja pliku lokalnego : %s\n\
\n\
          Ostatnia modyfikacja pliku na serwerze : %s      

*strings.22508:%s zosta³ skasowany lokalnie.

*strings.22509:%s zosta³ skasowany na serwerze.

*strings.22510:Plik skasowany

*strings.22511:Nowe ustawienia podane w Roaming Access\n\
zostan± wziete pod uwagê dopiero\n\
gdy uruchomisz Komunikatora nastêpnym razem.

*strings.22512:Wyst±pi³ b³±d autoryzacji,\n\
Wpisz ponownie nazwê u¿ytkownika i has³o.

*strings.22513:Podana nazwa serwera Roaming Access nie istnieje,\n\
sprawd¼ pisowniê i spróbowaæ ponownie.

*strings.22514:Pojawi³ siê nieoczekiwany b³±d sieciowy.\n\
Nie mogê po³±czyæ siê s serwerem Roaming Access.

*strings.22518:Wêdrowny dostêp

*strings.22519:Ustawienia u¿ytkownika

*strings.22520:Filtry poczty

*strings.22521:Historia

*strings.22522:Plik zak³adek

*strings.22523:Plik Ciasteczek

*strings.22524:Certyfikaty i klucze prywatne (baza danych o certyfikatach)

*strings.22525:Certyfikaty i klucze prywatne (osobista baza danych kluczy)

*strings.22526:Certyfikaty i klucze prywatne (modu³ bezpieczeñstwa)

*strings.22527:Java Security (Signed Applet DB)

*strings.22528:Java Security (Signed Applet DB 0)

*strings.22529:Ksi±¿ka adresowa

*strings.22530:Synchronizujê pozycjê %d z %d.

*strings.22531:Aby miec mo¿liwo¶æ synchronizacji informacji w Twoim\n\
profilu wêdrownego dostêpu, pamiêtaj, aby powróciæ\n\
do trybu "online" przed zamkniêciem Komunikatora.

*strings.22532:Aby miec mo¿liwo¶æ synchronizacji informacji w Twoim\n\
profilu wêdrownego dostêpu, pamiêtaj, aby powróciæ\n\
do trybu "online" przed zamkniêciem Komunikatora.

*strings.22533:Wyst±pi³ b³±d autoryzacji,\n\
wpisz ponownie swoje has³o.

*strings.22534:Nawi±zujê ³±czno¶æ z serwerem....

*strings.22535:Trwa pobieranie z serwera 

*strings.22536:Weryfikacja logowania

*strings.22537:Musisz okre¶liæ nazwê u¿ytkownika, aby siê pomy¶lnie\n\
zalogowaæ do serwera wêdrownego dostêpu.\n\
Otwórz ramkê Wêdruj±cy u¿ytkownik, aby w³±czyæ\n\
wêdrowny dostêp oraz podaæ Twoj± nazwê u¿ytkownika.

*strings.22538:Musisz podaæ wa¿ny adres URL, aby siê pomy¶lnie\n\
zalogowaæ do serwera wêdrownego dostêpu.\n\
Otwórz ramkê Wêdruj±cy u¿ytkownik - Informacje o serwerze,\n\
aby w³±czyæ wêdrowny dostêp i podaæ adres URL serwera.

*strings.22539:Musisz podaæ nazwê u¿ytkownika, aby siê pomy¶lnie zalogowaæ\n\
do serwera wêdrownego dostêpu.\n\
Pliki nie zostan± przeniesione na serwer podczs tej sesji.\n\
Otwórz ramkê Wêdruj±cy u¿ytkownik, aby podaæ nazwê u¿ytkownika.

*strings.22540:Musisz podaæ wa¿ny adres URL serwera, aby siê pomy¶lnie\n\
zalogowaæ do serwera wêdrownego dostêpu.

*strings.22541:Umieszczanie na serwerze w toku.

*strings.22542:Umieszczam wszystkie pozycje

*strings.22543:Umieszczam folder

*strings.22544:Usuwam plik ze zdalnego systemu

*strings.22545:Pobieram folder

*strings.22546:Usuwam plik lokalny

*strings.22547:%s z %s

*strings.22551:B³±d

*strings.22552:Published Event

*strings.22553:Published Free/Busy

*strings.22554:Reply Free/Busy

*strings.22555:Event Request

*strings.22556:Free/Busy Time Request

*strings.22557:Event Reply

*strings.22558:Event Cancellation

*strings.22559:Event Refresh Request

*strings.22560:Event Counter Proposal

*strings.22561:Decline Counter Proposal

*strings.22562:Co:

*strings.22563:Kiedy:

*strings.22564:Lokalizacja:

*strings.22565:Organizator:

*strings.22566:Stan:

*strings.22567:Priorytety:

*strings.22568:Kategorie:

*strings.22569:Zasoby:

*strings.22570:Za³±czniki:

*strings.22571:Ostrze¿enia:

*strings.22572:Utworzony:

*strings.22573:Modyfikowany ostatnio:

*strings.22574:Wys³any:

*strings.22575:UID

*strings.22577:Legenda:

*strings.22578:wolny

*strings.22579:zajêty

*strings.22580:nieznany

*strings.22581:nieokre¶lony

*strings.22582:AM

*strings.22583:PM

*strings.22584:Wiêcej szczegó³ów...

*strings.22585:Dodaj do terminarza

*strings.22586:Zamknij

*strings.22587:Akceptuj

*strings.22588:Akceptuj wszystko

*strings.22589:Terminarz aktualizacji

*strings.22590:Decline

*strings.22591:Tentative

*strings.22592:Wy¶lij informacje o czasie wolnym/zajêtym

*strings.22593:Send Refresh

*strings.22594:Oddeleguj do

*strings.22595:To zdarzenie ju¿ znajduje sie w Twoim terminarzu\n

*strings.22596:Tego zdarzenia jeszcze nie ma w Twoim terminarzu\n

*strings.22597:Conflicts:

*strings.22598:Uwaga:

*strings.22599:<FONT COLOR=#FF0000>B³±d:</FONT>

*strings.22600:do

*strings.22601:(Wydarzenie dnia) 

*strings.22602:Zaczyna siê w

*strings.22603:Was

*strings.22614:Publikowane zdarzenia kalendarzowe

*strings.22615:Publikowane zdarzenia kalendarzowe typu Wolne/Zajête

*strings.22616:Ta wiadomo¶æ zawiera %d zdarzeñ.

*strings.22617:Kiedy

*strings.22618:Co

*strings.22619:: 

*strings.22620:S± równie¿ %d inne b³êdy

*strings.22621:Podgl±d ograniczony do pierwszych %d zdarzeñ.

*strings.22622:Nieznane

*strings.22623:DTEnd przed DTStart. Ustawiam DTEnd jako równe DTStart

*strings.22624:Podana warto¶æ musi byæ ON lub OFF

*strings.22625:Nie mogê przetworzyæ ci±gu znakowego dla czasu/daty

*strings.22626:Zasady rekurencji s± zbyt skomplikowane. Tylko pierwsza instancja zosta³a umówiona

*strings.22627:Niepoprawna warto¶æ w³asno¶ci

*strings.22628:Niepoprawna nazwa w³asno¶ci

*strings.22629:Niepoprawna nazwa parametru

*strings.22700:Nie mo¿na znale¼æ wymaganego pliku konfiguracyjnego %s. Przeinstaluj oprogramowanie lub skontaktuj siê ze swoim administratorem.

*strings.22701:Wymagany plik konfiguracyjny %s jest niewa¿ny. Przeinstaluj oprogramowanie lub skontaktuj siê ze swoim administratorem.

*strings.22702:Podczas odczytu pliku ustawieñ %s wyst±pi³ b³±d. Zostan± wykorzystane ustawienia domy¶lne.

*strings.22703:Komunikator nie móg³ odtworzyæ ustawieñ z serwera us³ug katalogowych %s, gdy¿ wyst±pi³ b³±d autoryzacji. Spróbuj wpisaæ ponownie swoje has³o lub skontaktuj siê z administratorem Twojego systemu po dodatkowe informacje.

*strings.22704:Komunikator nie móg³ po³±czyæ siê z serwerem us³ug katalogowych %s aby odtworzyæ informacje o ustawieniach. Serwer mo¿e byæ wy³±czony lub zajêty. Niektóre ustawienia zosta³y odtworzone na podstawie wcze¶niej zbuforowanych informacji.\n\
\n\
Je¶li ten b³±d bêdzie z uporem wystêpowa³, skontaktuj siê z administratorem swojego systemu.

*strings.22705:Komunikator nie móg³ odtworzyæ ustawieñ z serwera us³ug katalogowych %s, gdy¿ nie znaleziono mapy ustawieñ. Niektóre ustawienia zosta³y odtworzone na podstawie wcze¶niej zbuforowanych informacji.\n\
\n\
Je¶li ten b³±d bêdzie z uporem wystêpowa³, skontaktuj siê z administratorem swojego systemu.

*strings.22706:Komunikator nie móg³ odtworzyæ ustawieñ z serwera us³ug katalogowych %s, gdy¿ nie znaleziono twojego katalogu. Niektóre ustawienia zosta³y odtworzone na podstawie wcze¶niej zbuforowanych informacji.\n\
\n\
Je¶li ten b³±d bêdzie z uporem wystêpowa³, skontaktuj siê z administratorem swojego systemu.

*strings.22707:Twije nowe has³a sie ró¿ni±. Wpisz ponownie swoje nowe has³o w obu polach. Je¶li nie chcesz chroniæ has³em swojego profilu, pozostaw oba pola puste.

*strings.22709:Komunikator nie móg³ spe³nic Twojego ¿yczenia, poniewa¿ wyst±pi³ nieoczekiwany b³±d w zarz±dcy profili.

*strings.22710:Profil '%s' wymaga has³a. Wprowad¼ swoje has³o, aby zalogowaæ siê do serwera wêdrownego dostêpu i odtworzyæ informacje o Twoim profilu.

*strings.22711:Podaj swoje has³o aby odtworzyæ ustawienia z serwera us³ug katalogowych %s.

*strings.22712:Profil '%s' wymaga has³a. Podaj has³o dla Twojego lokalnego profilu aby kontynuowaæ.

*strings.22713:Profil o takiej nazwie ju¿ istnieje. Wybierz inn± nazwê profilu.

*strings.22714:Musisz podaæ nowe has³o dla Twojego profilu aby kontynuowaæ.

*strings.22715:Go¶æ

!*strings.23000:<head>%-styleinfo-%</head><body bgcolor="#bbbbbb"><div><form name=theform action=internal-dialog-handler method=post><input type="hidden" %-cont-%
!*strings.23001:name="handle" value="%0%"><input type="hidden" name="xxxbuttonxxx"><font size=2>
!*strings.23002:</font></form></div></body>%0%
!*strings.23008:<HTML><HEAD>%-styleinfo-%<TITLE>%0%</TITLE><SCRIPT LANGUAGE="JavaScript">\n\
!var dlgstring ='
!*strings.23009:';\n\
!var butstring ='
!*strings.23010:';\n\
!function drawdlg(win){\n\
!captureEvents(Event.MOUSEDOWN);\n\
!with(win.frames[0]) {\n\
!document.write(parent.dlgstring);document.close();\n\
!}\n\
!with(win.frames[1]) {\n\
!butstring='<html><body bgcolor="#bbbbbb"><form>'%-cont-%
!*strings.23011:+butstring+'</form></body></html>';document.write(parent.butstring);document.close();\n\
!}\n\
!return false;\n\
!}\n\
!function clicker(but,win)\n\
!{\n\
!with(win.frames[0].document.forms[0]) {\n\
!xxxbuttonxxx.value=but.value;\n\
!xxxbuttonxxx.name='button';\n\
!%-cont-%
!*strings.23012:submit();\n\
!}\n\
!}\n\
!function onMouseDown(e)\n\
!{\n\
!if ( e.which == 3 )\n\
!return false;\n\
!return true;\n\
!}\n\
!</SCRIPT></HEAD><FRAMESET ROWS="*,50"ONLOAD="drawdlg(window)" BORDER=0>\n\
!%-cont-%
!*strings.23013:<FRAME SRC="about:blank" MARGINWIDTH=5 MARGINHEIGHT=3 NORESIZE BORDER=NO>\n\
!<FRAME SRC="about:blank" MARGINWIDTH=5 MARGINHEIGHT=0 NORESIZE SCROLLING=NO BORDER=NO>\n\
!</FRAMESET></HTML>\n
!*strings.23014:<div align=right><input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>
!*strings.23015:<div align=right><input type="button" name="button" value="%ok%" onclick="parent.clicker(this,window.parent)" width=80></div>
!*strings.23016:<div align=right><input type="button" name="button" value="%continue%" onclick="parent.clicker(this,window.parent)" width=80></div>
!*strings.23017:<div align=right><input type="button" value="%ok%" width=80 onclick="parent.clicker(this,window.parent)">&nbsp;&nbsp;<input type="button" value="%cancel%" width=80 onclick="parent.clicker(this,window.parent)"></div>
!*strings.23018:<div align=right><input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%continue%" onclick="parent.clicker(this,window.parent)" width=80></div>
!*strings.23019:<head>%-styleinfo-%</head><body bgcolor="#bbbbbb"><form name=theform action=internal-panel-handler method=post><input type="hidden" %-cont-%
!*strings.23020:name="handle" value="%0%"><input type="hidden" name="xxxbuttonxxx"><font size=2>
!*strings.23026:<div align=right><input type="button" name="button" value="%next%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input %-cont-%
!*strings.23027:type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%
!*strings.23028:<div align=right><input type="button" name="button" value="%back%" onclick="parent.clicker(this,window.parent)" width=80><input type="button" name="button" value="%next%" %-cont-%
!*strings.23029:onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%
!*strings.23030:<dig align=right><input type="button" name="button" value="%back%" onclick="parent.clicker(this,window.parent)" width=80>%-cont-%
!*strings.23031:<input type="button" name="button" value="%finished%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%
!*strings.23032:%0%
!*strings.23033:<title>%0%</title><b>%1%</b><hr>%2%<hr>%3%
!*strings.23034:%0%%1%%2%

*strings.23035:%sec-banner-begin%%0%%sec-banner-end%<b><div><font size=4>%1% jest witryn±, która korzysta z szyfrowania dla ochrony przesy³anych informacji. %-cont-%

*strings.23036:Jednak¿e, Netscape nie rozpozna³ o¶rodka autoryzuj±cego tamtejszy certyfikat.</font></b></div><p><div>Chocia¿ Netscape nie rozpozna³ %-cont-%

*strings.23037:podpisuj±cego ten certyfikat, mo¿esz zadecydowaæ o zaakceptowaniu go pomimo to. Wówczas bêdziesz móg³(mog³a) siê po³±czyæ i wymieniaæ informacje z t± witryn±.<p>Ten %-cont-%

*strings.23038:asystent pomo¿e ci podj±æ decyzjê o zaakceptowaniu lub odrzuceniu certyfikatu i na jakim poziomie.%2%</div>

*strings.23044:%sec-banner-begin%%0%%sec-banner-end%<div>Oto prezentowany certyfikat:</div><hr><table><tr><td valign=top><font %-cont-%

*strings.23045:size=2>Certifikat dla: <br>Podpisany przez: <br>Szyfrowanie: </font></td><td valign=top><font size=2>%1%<br>%2%<br>%3% klasy (%4% z %5%-bitowym tajnym kluczem %-cont-%

*strings.23046:kluczem)</font></td><td valign=bottom><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr><div>Autoryzuj±cy ten %-cont-%

*strings.23047:certyfikat za¶wiadcza, ¿e okaziciel certyfikatu jest tym, za kogo siê podaje. Poziom szyfrowania jest wska¼nikiem trudno¶ci %-cont-%

*strings.23048:w pods³uchaniu przez kogo¶ informacji wymienianych pomiêdzy Tob± i t± witryn±.%6%</div>

*strings.23049:%sec-banner-begin%%0%%sec-banner-end%<div>Czy chcesz zaakceptowaæ ten certyfikat w celu otrzymywania zaszyfrowanych %-cont-%

*strings.23050:informacji od tej witryny?<p>Oznacza to, ¿e bêdziesz móg³(mog³a) przegl±daæ te witrynê i otrzymywaæ od niej dokumenty a wszystkie %-cont-%

*strings.23051:te dokumenty bêd± zabezpieczone przed podejrzeniem przez osoby trzecie za pomoc± szyfrowania.<p><input type=radio name=accept value=session%1%>Zaakceptuj ten %-cont-%

*strings.23052:certyfikat na czas tej sesji<br><input type=radio name=accept value=cancel%2%>Nie akceptuj tego certyfikatu i nie ³±cz<br><input type=radio name=accept %-cont-%

*strings.23053:value=forever%3%>Zaakceptuj ten certyfikat na zawsze (na czas wa¿no¶ci)</div><br>%4%

*strings.23064:%sec-banner-begin%%0%%sec-banner-end%<div>Akceptuj±c ten certyfikat zapewniasz, ¿e wszystkie informacje wymieniane z t± witryn± %-cont-%

*strings.23065:bêd± szyfrowane. Jednak¿e, szyfrowanie nie chroni Ciê przed oszustwem.<p>Aby chroniæ siê przed oszustwem, nie wysy³aj do tej witryny informacji %-cont-%

*strings.23066:(szczególnie informacji osobistych, numerów kart kredytowych, lub hase³) je¶li masz jakiekolwiek w±tpliwo¶ci uczciwo¶ci tej witryny.<p>Dla Twojej %-cont-%

*strings.23067:w³asnej ochrony, Netscape mo¿e ci o tym przypomnieæ we w³a¶ciwym czasie.<p><center><input type=checkbox name=postwarn value=yes %1%>Ostrze¿ mnie %-cont-%

*strings.23068:przed wys³aniem informacji do tej witryny</center><p></div>%2%

*strings.23069:%sec-banner-begin%%0%%sec-banner-end%<b><div>Zakoñczy³e¶(a¶) sprawdzanie certyfikatu prezentowanego przez: <br>%1%</b><p>Zadecydowa³e¶(a¶) %-cont-%

*strings.23070:odrzuciæ ten ID. Je¶li w przysz³o¶ci zmienisz swoje zdanie o tej decyzji, po prostu odwied¼ tê witrynê ponownie a asystent %-cont-%

*strings.23071:te¿ siê pojawi.<p>Kliknij przycisk Zakoñcz, aby wrócic do dokumentu, który ogl±da³e¶ przed prób± po³±czenia z t± witryn±.</div>%2%

*strings.23072:%sec-banner-begin%%0%%sec-banner-end%<b><div>Zakoñczy³e¶(a¶) sprawdzanie certyfikatu prezentowanego przez:<br>%1%</b></div><p><div>Zadecydowa³e¶(a¶) %-cont-%

*strings.23073:zaakceptowaæ ten certyfikat i poprosiæ, ¿eby Komunikator Netscape ostrzega³ Ciê przed wys³aniem przez Ciebie informacji do tej witryny.<p>Je¶li %-cont-%

*strings.23074:zmienisz zdanie, otwórz Informacje o bezpieczeñstwie z menu Komunikatora i&nbsp;edytuj certyfikaty witryn.<p>Kliknij przycisk Zakoñcz aby rozpocz±æ pobieranie dokumentów.%2%

*strings.23080:%sec-banner-begin%%0%%sec-banner-end%<b><div>Zakoñczy³e¶(a¶) sprawdzanie certyfikatu prezentowanego przez:<br>%1%</div></b><p><div>Zadecydowa³e¶(a¶) %-cont-%

*strings.23081:zaakceptowaæ ten certyfikat i nie zmuszaæ Komunikatora Netscape, aby Ciê ostrzega³ przed wys³aniem przez Ciebie informacji do tej witryny.</div><p><div>Je¶li %-cont-%

*strings.23082:zmienisz zdanie, otwórz Informacje o bezpieczeñstwie z menu Komunikatora i&nbsp;edytuj certyfikaty witryn.<p>Kliknij przycisk Zakoñcz aby rozpocz±æ %-cont-%

*strings.23083:pobieranie dokumentów.</div>%2%

*strings.23084:%sec-banner-begin%%0%%sec-banner-end%<div>Certyfikat przedstawiony przez witrynê '%1%' nie zawiera w³a¶ciwej nazwy %-cont-%

*strings.23085:witryny. Mo¿liwe, lecz ma³o prawdopodobne, ¿e kto¶ próbuje pods³uchaæ Twoje po³±czenie z t± witryn±. Je¶li podejrzewasz, ¿e %-cont-%

*strings.23086:certyfikat przedstawiony poni¿ej nie nale¿y do witryny, z któr± siê ³±czysz, przerwij po³±czenie i powiadom administratora serwera. <p>%-cont-%

*strings.23087:Oto prezentowany certyfikat:</div><hr><table><tr><td valign=top><font size=2>Certyfikat dla: <br>Podpisany przez: <br>Szyfrowanie: %-cont-%

*strings.23088:</font></td><td valign=top><font size=2>%2%<br>%3%<br>%4% Stopieñ (%5% z %6%-bitowym tajnym kluczem)</font></td><td valign=bottom><input %-cont-%

!*strings.23089:type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>%7%

*strings.23100:%sec-banner-begin%%0%%sec-banner-end%Podaj swoje nowe has³o. Najpewniejsze s± has³a bêd±ce kombinacj± liter %-cont-%

*strings.23101:i cyfr, o d³ugo¶ci co najmniej 8 znaków i nie zawieraj±ce s³ów ze s³ownika.<p>Has³o: <input type=password name=password1><p>Wpisz %-cont-%

*strings.23102:swoje has³o ponownie aby potwierdziæ:<p>Wpisz ponownie has³o: <input type=password name=password2><p><b>Tylko nie zapomnij tego has³a! Twojego %-cont-%

*strings.23103:has³a nie da siê odtworzyæ. Je¶li go zapomnisz, bêdziesz musia³ otrzymaæ nowe certyfikaty.</b>

*strings.23109:%sec-banner-begin%%0%%sec-banner-end%Nie poda³e¶(a¶) poprawnego swojego has³a. Spróbuj ponownie:<p>Has³o: <input %-cont-%

*strings.23110:type=password name=password1><p>Wpisz swoje has³o ponownie aby potwierdziæ: <p>Wpisz has³o: <input type=password name=password2><p>%-cont-%

*strings.23111:<b>Nie zapomnij tego has³a! Twojego has³a nie da siê odtworzyæ. Je¶li go zapomnisz, bêdziesz musia³ otrzymaæ nowe certyfikaty.</b> 

*strings.23112:%sec-banner-begin%%0%%sec-banner-end%Jest wysoce zalecane aby¶ zabezpieczy³(a) swój klucz prywatny za pomoc± %-cont-%

*strings.23113:has³a Komunikatora. Je¿eli nie chcesz has³a, pozostaw pole na nie puste.<P>Bezpieczne has³o powinno mieæ d³ugo¶æ co najmniej 8 znaków, zawieraæ %-cont-%

*strings.23114:jednocze¶nie litery i cyfry, a nie zawieraæ s³ów ze s³ownika.<P><table><tr><td>Has³o:</td><td><input type=password name=password1></td>%-cont-%

*strings.23115:</td></tr><tr><td>Wpisz ponownie by potwierdziæ:</td><td><input type=password name=password2></td><td valign=bottom></td></tr></table><B>Wa¿ne: %-cont-%

*strings.23116:Twojego has³a nie da siê odtworzyæ.  Jesli je zapomnisz, stracisz wszystkie swoje certyfikaty.</B><P>Je¶li chcesz zmieniæ has³o lub inne ustawienia %-cont-%

*strings.23117:bezpieczeñstwa, wybierz Informacje o bezpieczeñstwie z menu Komunikatora.

*strings.23128:%sec-banner-begin%%0%%sec-banner-end%Wybra³e¶(a¶) pracê bez has³a.<p>Je¶li zdecydujesz, ¿e %-cont-%

*strings.23129:chcesz mieæ has³o aby chroniæ swoje klucze prywatne i certyfikaty, mo¿esz ustawiæ has³o w ustawieniach bezpieczeñstwa.

*strings.23130:%sec-banner-begin%%0%%sec-banner-end%Zmiana has³a dla  %1%.<p>Podaj stare has³o: <input %-cont-%

*strings.23131:type=password name=password value=%2%><P><P>Podaj swoje nowe has³o. Pozostaw pola na has³o puste je¶li nie chcesz has³a.<p><table><tr><td>%-cont-%

*strings.23132:Nowe has³o:</td><td><input type=password name=password1></td></tr><tr><td>Wpisz ponownie by potwierdziæ:</td><td><input type=password name=password2>%-cont-%

*strings.23133:</td></tr></table><p><B>Wa¿ne: Twojego has³a nie da siê odtworzyæ. Jesli je zapomnisz, stracisz wszystkie swoje certyfikaty.</B>

*strings.23140:%sec-banner-begin%%0%%sec-banner-end%Twoja próba zmiany has³a siê nie powiod³a.<p>Powodem mo¿e byæ %-cont-%

*strings.23141:niedostêpno¶æ Twojej bazy danych z kluczami (mo¿e siê to zdarzyæ je¶li jaki¶ Twoj komunikator by³ ju¿ uruchomiony w chwili, gdy uruchomi³e¶ tê kopiê) lub jaki¶ inny %-cont-%

*strings.23142:b³±d.<p>Mo¿e to wskazywaæ, ¿e Twój plik bazy danych z kluczami zosta³ uszkodzony. W takim przypadku nale¿y go odtworzyæ z kopii zapasowej, o ile to mo¿liwe. %-cont-%

*strings.23143:Ostatni± desk± ratunku mo¿e byæ skasowanie Twojej bazy danych z kluczami, po czym bêdziesz musia³(a) otrzymaæ nowe certyfikaty osobiste.

!*strings.23194:<table border=0 cellpadding=0 cellspacing=0 width="100%%"><td><input type="button" value="%moreinfo%" width=80 onclick="parent.clicker(this,window.parent)"></td>%-cont-%
!*strings.23195:<td align="right" nowrap><input type="button" value="%ok%" width=80 onclick="parent.clicker(this,window.parent)">&nbsp;&nbsp;%-cont-%
!*strings.23196:<input type="button" value="%cancel%" width=80 onclick="parent.clicker(this,window.parent)"></td></table>
!*strings.23199:<div align=right><input type="button" name="button" value="%finished%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;%-cont-%
!*strings.23200:<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%

*strings.23211:%sec-banner-begin%%0%%sec-banner-end%Ta funkcja nie jest jeszcze zaimplementowana:<br>%1%<br>Nazwa certyfikatu:<br>%2%

!*strings.23212:%0%%1%

*strings.23213:<b><FONT SIZE=4>OSTRZE¯ENIE: Je¶li skasujesz ten certyfikat nie bêdziesz móg³(mog³a) przeczytaæ ¿ednej poczty zaszyfrowanej za jego pomoc±.</FONT></b><p>Czy na pewno chcesz skasowaæ ten certyfikat osobisty?<p>%0%

*strings.23214:Czy na pewno chcesz skasowaæ ten certyfikat miejsca?<p>%0%

*strings.23215:Czy na pewno chcesz usun±æ to centrum autoryzuj±ce?<p>%0%

*strings.23216:%0%<hr>Ten certyfikat nale¿y do serwera SSL witryny.<br><input type=radio name=allow value=yes %1%>Pozwalaæ na po³±czenia z t± witryn±<br>%-cont-%

*strings.23217:<input type=radio name=allow value=no %2%>Nie pozwalaæ na po³±czenia z t± witryn±<hr><input type=checkbox name=postwarn value=yes %3%>Ostrzegaæ %-cont-%

*strings.23218:przed wys³aniem danych do tej witryny

*strings.23224:%0%<hr><div>Ten certyfikat nale¿y do centrum autoryzuj±cego<br> %-cont-%

!*strings.23225:%1%<br>%2%<br>%3%<hr><input %-cont-%

*strings.23226:type=checkbox name=postwarn value=yes %4%>Ostrzgaæ przed wys³aniem danych do miejsc uwierzytelnionych przez to centrum</div>

*strings.23232:%sec-banner-begin%%0%%sec-banner-end%<b>Ostrze¿enie: %-cont-%

*strings.23233:Bêdziesz wysy³aæ zaszyfrowane informacje do %1%.</b><p>Bezpieczniej jest nie wysy³aæ informacji (szczególnie danych osobistych, numerów %-cont-%

*strings.23234:kart kredytowych, czy hase³) w to miejsce je¶li nie ufasz jego certyfikatowi or uczciwo¶ci.<br>Oto jest certyfikat tego miejsca:<hr>%-cont-%

*strings.23235:<table><tr><td valign=top><font size=2>Certyfikat dla: <br>Podpisany przez: <br>Szyfrowanie: </font></td><td valign=top><font size=2>%2%<br>%3%<br>%-cont-%

*strings.23236:%4% Ranga (%5% z %6%-bitowym poufnym kluczem)</font></td><td valign=bottom><font size=2><input type="submit" name="button" value="%moreinfo%%-cont-%

*strings.23237:"></font></td></tr></table><hr><input type=radio name=action value=sendandwarn checked>Wy¶lij te informacje i ostrze¿ ponownie nastêpnym %-cont-%

*strings.23238:razem<br><input type=radio name=action value=send>Wy¶lij te informacje i nie ostrzegaj ponownie<br><input type=radio name=action value=dontsend>Nie wysy³aj informacji<br>%7%

*strings.23239:%sec-banner-begin%%0%%sec-banner-end%<div>Masz w³a¶nie przej¶æ %-cont-% %-cont-%

*strings.23240:prez proces akceptacji centrum autoryzuj±cego. Ma on powa¿ne implikacje dla przysz³ego bezpiecznego korzystania z szyfrowania w %-cont-%

*strings.23241:Netscape. Ten asystent pomo¿e Ci podj±æ decyzjê dotycz±c± akceptacji lub odrzucenia tego centrum autoryzuj±cego.</div>

*strings.23252:%sec-banner-begin%%0%%sec-banner-end%<div>Centrum %-cont-%

*strings.23253:autoryzuj±ce potwierdza to¿samo¶æ witryn w Internecie. Akceptuj±c to centrum autoryzuj±ce, pozwolisz Komunikatorowi Netscape na ³±czenie siê %-cont-%

*strings.23254:z dowoln± witryn± autoryzowan± przez to centrum i otrzymywanie od niej informacji bez potwierdzenia lub ostrze¿enia.</div><p><div>Je¶li zdecydujesz odmrzuciæ to %-cont-%

*strings.23255:centrum autoryzuj±ce, bêdziesz proszony o potwierdzenie przed po³±czeniem z dowoln± witryn± autoryzowan± przez to centrum lub otrzymaniem od niej informacji.</div> 

*strings.23261:%sec-banner-begin%%0%%sec-banner-end%<div>Oto certyfikat tego centrum autoryzuj±cego. Przeanalizuj go z uwag±. %-cont-%

*strings.23262:Za pomoc± "odcisku palca" certyfikatu mo¿na stwierdziæ czy to centrum autoryzuj±ce jest tym, za kogo siê podaje. Aby to uczyniæ, nale¿y porównaæ "odcisk palca" z %-cont-%

*strings.23263:"odciskiem palca" og³aszanym przez to centrum w innych miejscach.</div><hr><table><tr><td valign=top><font size=2>Certyfikat dla: <br>Podpisany przez: </font></td>%-cont-%

!*strings.23264:<td valign=top><font size=2>%1%<br>%2%</font></td><td valign=bottom><font size=2><input type="submit" name="button" value="%moreinfo%%-cont-%
!*strings.23265:"></font></td></tr></table><hr>

*strings.23266:%sec-banner-begin%%0%%sec-banner-end%<div>Czy chcesz zaakceptowaæ to centrum autoryzuj±ce w celu autoryzacji %-cont-%

*strings.23267:innych witryn internetowych, u¿ytkowników poczty lub wytwórców oprogramowania?<p> %1%%2%%3%</div>

*strings.23275:%sec-banner-begin%%0%%sec-banner-end%<div>Akceptuj±c ten certyfikat, polecasz Komunikatorowi Netscape ³±czenie siê z %-cont-%

*strings.23276:dowoln± witryn± autoryzowan± przez to centrum oraz otrzymywanie od niej informacji  bez ostrze¿enia lub potwierdzenia.<p>Jednak¿e, Komunikator Netscape mo¿e Ciê ostrzegaæ przed %-cont-%

*strings.23277:wys³aniem przez Ciebie informacji do takiej witryny.</div><p><div><input type=checkbox name=postwarn value=yes %1%>Ostrze¿ mnie przed wys³±niem informacji do witryn %-cont-%

*strings.23278:autoryzowanych przez to centrum autoryzuj±ce</div>

*strings.23279:%sec-banner-begin%%0%%sec-banner-end%<div>Zaakceptowa³e¶ to centrum autoryzuj±ce. Podaj krótk± nazwê dla identyfikacji tego %-cont-%

*strings.23280:centrum autoryzuj±ce, na przyk³ad <b>CA Korporacji Netscape</b>. <p>Nazwa: <font size=4><input type=text %-cont-%

!*strings.23281:name=nickname></font></div>

*strings.23282:%sec-banner-begin%%0%%sec-banner-end%Odrzucaj±c to centrum autoryzuj±ce, poleci³e¶ Komunikatorowi Netscape nie ³±czyæ siê %-cont-%

*strings.23283:z ¿adn± witryn±, któr± ono autoryzuje ani nie przyjmowaæ od takich witryn informacji bez Twojego potwierdzenia.

!*strings.23294:%0%

*strings.23295:%sec-banner-begin%%0%%sec-banner-end%Witryna '%1%' poprosi³a o autoryzacjê klienta.<p>Oto jest %-cont-%

*strings.23296:certyfikat serwera:<hr><table><tr><td valign=top><font size=2>Certyfikat dla: <br>Podpisany przez: <br>Szyfrowanie: </font></td><td valign=top><font %-cont-%

*strings.23297:size=2>%2%<br>%3%<br>%4% Stopieñ (%5% z %6%-bitowym tajnym kluczem)</font></td><td valign=bottom><input type="submit" name="button" value="%moreinfo%%-cont-%

*strings.23298:"></td></tr></table><hr>Wybierz swój certyfikat:<select name=cert>%7%</select>%8%

*strings.23304:%sec-banner-begin%%0%%sec-banner-end%Witryna '%1%' poprosi³a o autoryzacjê klienta, jednak¿e Ty nie posiadasz certyfikatu %-cont-%

*strings.23305:osobistego aby siê autoryzowaæ. Witryna mo¿e odmówiæ Ci dostêpu bez certyfikatu.%2%

*strings.23306:%sec-banner-begin%%0%%sec-banner-end%<B>Wszystkie pliki, których za¿±da³e¶ s± zaszyfrowane.</B><p> Oznacza to, ¿e %-cont-%

*strings.23307:pliki tworz±ce dokument s± dla poufno¶ci wysy³ane do Ciebie w postaci zaszyfrowanej.<p>  Po dodatkowe informacje na temat szyfrowania tego %-cont-%

*strings.23308:dokumentu, otwórz Informacje o dokumencie.<p> <center><input type="submit" name="button" value="%ok%"><input type="submit" name="button" %-cont-%

!*strings.23309:value="%showdocinfo%"></center>%1%

*strings.23315:<img src=about:security?banner-mixed>%0%<br clear=all><p><B>Niektóre z plików, których sobie za¿yczy³e¶(a¶) by³y zaszyfrowane.</B><p> Niektóre z tych plików %-cont-%

*strings.23316:s± przesy³ane do Ciebie zaszyfrowane dla zachowania poufno¶ci podczas transmisji. Inne nie s± zaszyfrowane i mog± byæ podgl±dane przez osoby trzecie podczas transmisji.<p>Aby %-cont-%

*strings.23317:okre¶liæ dok³adnie, które pliki s± zaszyfrowane, a które nie, otwórz Informacje o dokumencie.<p> <center><input type="submit" name="button" %-cont-%

!*strings.23318:value="%ok%"><input type="submit" name="button" value="%showdocinfo%"></center>%1%

*strings.23319:<img src=about:security?banner-insecure>%0%<br clear=all><p><B>¯aden z plików, które sobie za¿yczy³e¶(a¶) nie jest szyfrowany.</B><p>Niezaszyfrowane pliki %-cont-%

*strings.23320:mog± byæ podgl±dane przez osoby trzecie podczas transmisji.<p> <center><input type="submit" name="button" value="%ok%"></center>%1%

*strings.23336:Szyfrowanie RC2 w trybie CBC z 40-bitowym kluczem

*strings.23337:Szyfrowanie RC2 w trybie CBC z 64-bitowym kluczem

*strings.23338:Szyfrowanie RC2 w trybie CBC ze 128-bitowym kluczem

*strings.23339:Szyfrowanie DES w trybie CBC z 56-bitowym kluczem

*strings.23340:Szyfrowanie DES EDE3 w trybie CBC z 168-bitowym kluczem

*strings.23341:Szyfrowanie RC5 w trybie CBC z 40-bitowym kluczem

*strings.23342:Szyfrowanie RC5 w trybie CBC z 64-bitowym kluczem

*strings.23343:Szyfrowanie RC5 w trybie CBC ze 128-bitowym kluczem

*strings.23351:Nie znaleziono pliku strategii szyfrowania wa¿nego dla tej Polskiej wersji jêzykowej \n\
Komunikatora. Wszelkie szyfrowanie i rozszyfrowywanie zostanie wy³±czone.

*strings.23352:(¯adne szyfrowanie nie jest dozwolone)

*strings.23353:(Gdy dozwolone)

*strings.23354:%sec-banner-begin%%0%%sec-banner-end%<h3>Wybierz szyfry dla po³±czeñ S/MIME %1%</h3><ul>%2%</ul>%3%

*strings.23355:%sec-banner-begin%%0%%sec-banner-end%<h3>Wybierz szyfry dla po³±czeñ SSL v2 %1%</h3><ul>%2%</ul>%3%

*strings.23356:%sec-banner-begin%%0%%sec-banner-end%<h3>Wybierz szyfry dla po³±czeñ SSL v3 %1%</h3><ul>%2%</ul>%3%

*strings.23392:%sec-banner-begin%%0%%sec-banner-end%Gdy klikniesz OK, Komunikator wygeneruje klucz prywatny dla Twojego %-cont-%

*strings.23393:certyfikatu. Mo¿e to potrwaæ kilka minut.<P><B>Wa¿ne: Je¶li przerwiesz tê operacjê, bêdziesz musia³ ponownie wyst±piæ o certyfikat.</B>%1% %2% %3%<P>

*strings.23394:Informacje o generowaniu klucza

*strings.23401:%sec-banner-begin%%0%%sec-banner-end%%1% jest witryn±, która korzysta z szyfrowania dla ochrony przesy³anych informacji. Jednak¿e, %-cont-%

*strings.23402:certyfikat cyfrowy, który identyfikuje tê witrynê jest przeterminowany. Mo¿liwe, ¿e ten certyfikat jest rzeczywi¶cie przeterminowany lub na Twoim %-cont-%

*strings.23403:komputerze jest ustawiona z³a data.<p>Certyfikat jest wa¿ny do %2%.<p>Data na Twoim komputerze jest ustawiona na %3%. Je¶li data na Twoim komputerze %-cont-%

*strings.23404:jest nieprawid³owa, wówczas powiniene¶ ustawiæ j± ponownie.<p>Mo¿esz kontynuowaæ lub przerwaæ to po³±czenie.%4%

*strings.23410:%sec-banner-begin%%0%%sec-banner-end%%1% jest witryn±, która korzysta z szyfrowania dla ochrony przesy³anych informacji. Jednak¿e, %-cont-%

*strings.23411:certyfikat cyfrowy, który identyfikuje tê witrynê nie jest jeszcze wa¿ny. Mo¿liwe, ¿e ten certyfikat zosta³ zbyt wcze¶nie zainstalowany przez tamtejszego %-cont-%

*strings.23412:administratora lub na Twoim komputerze jest ustawiona z³a data.<p>Certyfikat jest wa¿ny od %2%.<p>Data na Twoim komputerze jest ustawiona na %-cont-%

*strings.23413:%3%. Je¶li data na Twoim komputerze jest nieprawid³owa, wówczas powiniene¶ ustawiæ j± ponownie.<p>Mo¿esz kontynuowaæ lub przerwaæ to po³±czenie.%4%

*strings.23419:%sec-banner-begin%%0%%sec-banner-end%%1% jest witryn±, która korzysta z szyfrowania dla ochrony przesy³anych informacji. Jednak¿e, jedno z %-cont-%

*strings.23420:centrów autoryzacji, które identyfikuje tê witrynê jest przeterminowane. Mo¿liwe, ¿e ten certyfikat jest rzeczywi¶cie przeterminowany lub na Twoim %-cont-%

*strings.23421:komputerze jest ustawiona z³a data. Naci¶nij przycisk Wiêcej informacji aby zobaczyæ dane przeterminowanego certyfikatu.<hr><table cellspacing=0 cellpadding=0><tr><td %-cont-%

*strings.23422:valign=top><font size=2>Centrum autoryzuj±ce: <br>Data wa¿no¶ci: </font></td><td valign=top><font size=2>%2%<br>%3%</font></td><td %-cont-%

*strings.23423:valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>Data Twojego komputera jest ustawiona %-cont-%

*strings.23424:na %4%. Je¶li data na Twoim komputerze jest nieprawid³owa, wówczas powiniene¶ ustawiæ j± ponownie.<p>Mo¿esz kontynuowaæ lub przerwaæ to po³±czenie.

*strings.23430:%sec-banner-begin%%0%%sec-banner-end%%1% jest witryn±, która korzysta z szyfrowania dla ochrony przesy³anych informacji. Jednak¿e, jedno z %-cont-%

*strings.23431:centrów autoryzacji, które identyfikuje tê witrynê nie jest jeszcze wa¿ne. Mo¿liwe, ¿e ten certyfikat zosta³ zbyt wcze¶nie zainstalowany przez tamtejszego %-cont-%

*strings.23432:administratora lub na Twoim komputerze jest ustawiona z³a data. Naci¶nij przycisk Wiêcej informacji, aby zobaczyæ dane przeterminowanego certyfikatu.<hr><table %-cont-%

*strings.23433:cellspacing=0 cellpadding=0><tr><td valign=top><font size=2>Centrum autoryzuj±ce: <br>Certyfikat wa¿ny od: </font></td><td valign=top><font %-cont-%

!*strings.23434:size=2>%2%<br>%3%</font></td><td valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table>%-cont-%

*strings.23435:<hr>Data na Twoim komputerze jest ustawiona na %4%. Je¶li data na Twoim komputerze jest nieprawid³owa, wówczas powiniene¶ ustawiæ j± ponownie.<p>Mo¿esz kontynuowaæ lub przerwaæ %-cont-%

*strings.23436:to po³±czenie.

*strings.23492:Anuluj

*strings.23493:OK

*strings.23494:Kontynuuj

*strings.23495:Dalej&gt;

*strings.23496:&lt;Cofnij

*strings.23497:Zakoñcz

*strings.23498:Wiêcej informacji...
!*strings.23498:Wiecej informacji...

*strings.23499:Poka¿ certyfikat

*strings.23500:Poka¿ kolejno¶æ

*strings.23501:Poka¿ informacje o dokumencie

*strings.23507:Dalej>

*strings.23508:<Cofnij

*strings.23509:Zachowaj jako...

*strings.23516:Alarm

*strings.23517:Podgl±d certyfikatu

*strings.23518:Sprawdzanie nazwy certyfikatu

*strings.23519:Certyfikat jest przeterminowany

*strings.23520:Certyfikat nie jest jeszcze wa¿ny

*strings.23521:Centrum autoryzuj±ce jest przeterminowane

*strings.23522:Centrum autoryzuj±ce jeszcze nie jest wa¿ne

*strings.23523:Informacje o szyfrowaniu

*strings.23534:Obejrzyj certyfikat osobisty

*strings.23535:Usuñ certyfikat osobisty

*strings.23536:Usuñ certyfikat witryny

*strings.23537:Usuñ centrum autoryzuj±ce

*strings.23538:Edytuj certyfikat witryny

*strings.23539:Edytuj centrum autoryzuj±ce

*strings.23540:Brak certyfikatu u¿ytkownika

*strings.23541:Wybierz certyfikat

*strings.23542:Informacja o bezpiczeñstwie

*strings.23543:Generuj klucz prywatny

*strings.23544:Nowy certyfikat witryny

*strings.23545:Nowe centrum autoryzuj±ce

*strings.23552:Ustawienie Twojego has³a dla Komunikatora

*strings.23553:Zmieñ swoje has³o dla Komunikatora

*strings.23554:W³±cz swoje has³o dla Komunikatora

*strings.23555:B³±d has³a

*strings.23556:Konfiguruj szyfrowanie

*strings.23557:%sec-banner-begin%%0%%sec-banner-end%Certyfikat, który wybra³e¶ jest przeterminowany i mo¿e %-cont-%

*strings.23558:zostaæ odrzucony przez serwer. Naci¶nij Kontynuuj, aby wys³aæ go mimo to lub Anuluj, aby przerwaæ to po³±czenie.

*strings.23569:%sec-banner-begin%%0%%sec-banner-end%<table><tr><td>Certyfikat, który wybra³e¶ jest przeterminowany i mo¿e %-cont-%

*strings.23570:zostaæ odrzucony przez serwer. Naci¶nij %continue%, aby wys³aæ go mimo to lub %cancel%, aby przerwaæ to po³±czenie. Aby odnowiæ Swój %-cont-%

*strings.23571:certyfikat naci¶nij przycisk %renew%.</td><td><input type=submit name=button value=%renew%></td></tr></table>

*strings.23577:Odnów

*strings.23578:%sec-banner-begin%%0%%sec-banner-end%Certyfikat, który wybra³e¶ nie jest jeszcze wa¿ny i mo¿e zostaæ odrzucony przez serwer. Naci¶nij Kontynuuj, aby wys³aæ go mimo to lub Anuluj, aby przerwaæ to po³±czenie.

*strings.23579:Twój certyfikat jest przeterminowany

*strings.23580:Pytaæ za ka¿dym razem

*strings.23581:Pozwoliæ Komunikatorowi wybraæ automatycznie

*strings.23582:1024 (Wysoki stopieñ)

*strings.23583:768 (¦redni stopieñ)

*strings.23584:512 (Niski stopieñ)

*strings.23640:Poka¿ strategiê certyfikatu

*strings.23641:Sprawd¼ stan certyfikatu

*strings.23642:Szyfrowanie RC4 ze 128-bitowym kluczem

*strings.23643:Szyfrowanie RC2 ze 128-bitowym kluczem

*strings.23644:Potrójne szyfrowanie DES ze 168-bitowym kluczem

*strings.23645:Szyfrowanie DES z 56-bitowym kluczem

*strings.23646:Szyfrowanie RC4 z 40-bitowym kluczem

*strings.23647:Szyfrowanie RC2 z 40-bitowym kluczem

*strings.23653:Szyfrowanie RC4 ze 128-bitowym kluczem i MD5 MAC 

*strings.23654:Potrójne szyfrowanie DES ze 168-bitowym kluczem i SHA-1 MAC 

*strings.23655:Szyfrowanie DES z 56-bitowym kluczem i SHA-1 MAC

*strings.23656:Szyfrowanie RC4 z 40-bitowym kluczem i MD5 MAC

*strings.23657:Szyfrowanie RC2 z 40-bitowym kluczem i MD5 MAC

*strings.23658:Nie zaszyfrowane z MD5 MAC

*strings.23659:Szyfrowanie RC4 z 56-bitowym kluczem i SHA-1 MAC

*strings.23660:Szyfrowanie DES w trybie CBC z 56-bitowym kluczem i SHA-1 MAC

*strings.23709:<h3>Lista CRL:</h3><table><tr><td><select name=crl size=10>%0%</select></td><td valign="middle">%-cont-%

!*strings.23710:<input type="submit" name="button" value="%new%"></input><br>%-cont-%
!*strings.23711:<input type="submit" name="button" value="%reload%"></input><br>%-cont-%
!*strings.23712:<input type="submit" name="button" value="%moreinfo%"></input><br>%-cont-%
!*strings.23713:<input type="submit" name="button" value="%delete%"></input><br>%-cont-%
!*strings.23714:</td></tr></table>

*strings.23715:Nowy/Edycja ...

*strings.23716:Prze³±duj

*strings.23717:Usuñ

*strings.23718:Zgodne z FIPS 140-1 potrójne szyfrowanie DES i SHA-1 MAC 

*strings.23719:Zgodne z FIPS 140-1 szyfrowanie DES i SHA-1 MAC

*strings.23727:Zmieñ ustawienia modu³u bezpieczeñstwa

*strings.23728:Utwórz nowy modu³ bezpieczeñstwa

*strings.23734:Szyfrowanie FORTEZZA z 80-bitowym kluczem i SHA-1 MAC

*strings.23735:Autoryzacja FORTEZZA ze 128-bitowym kluczem RC4 i SHA-1 MAC

*strings.23736:Brak szyfrowania z autoryzacj± FORTEZZA i SHA-1 MAC

*strings.23742:Wprowad¼ has³o lub kod dla\n\
%s.

*strings.23743:%sec-banner-begin%%0%%sec-banner-end% %1% nie zosta³a zainicjalizowana kodem u¿ytkownika ani has³em. Aby %-cont-%

*strings.23744:zainicjalizowaæ tê kartê, musisz podaæ has³o administracyjne lub has³o zabezpieczaj±ce dla lokalizacji. Je¶li nie znasz tego has³a, naci¶nij <B>anuluj</B> i zg³o¶ tê kartê %-cont-%

*strings.23745:instytucji przypisuj±cej certyfikaty, by j± zainicjalizwaæ.<p>Podaj has³o administracyjne dla %2%:<input type=password name=ssopassword>.

*strings.23751:%sec-banner-begin%%0%%sec-banner-end%Wprowadzone przez Ciebie has³o administracyjne dla %1% jest nieprawid³owe. %-cont-%

*strings.23752:Wiele kart ulega zablokowaniu po zbyt wielu nieudanych próbach podania has³a. Je¶li nie znasz tego has³a, naci¶nij <B>anuluj</B> i przeka¿ tê kartê %-cont-%

*strings.23753:instytucji przypisuj±cej certyfikaty, by j± zainicjalizwaæ.<p>Podaj has³o administracyjne dla %2%:<input type=password name=ssopassword>.

*strings.23754:%sec-banner-begin%%0%%sec-banner-end% %1% nie mo¿e zostaæ zainicjalizowany poniewa¿ zaistnia³ b³±d: <p> %2%

*strings.23755:Edytuj ustawienia domy¶lne...

*strings.23756:Zaloguj siê

*strings.23757:Wyloguj siê

*strings.23758:%0%%1%%2%%3%%4%%5%

*strings.23759:Informacje o bezpieczeñstwie

*strings.23760:Ustaw has³o...

*strings.23761:Slot lub token nie wymaga logowania.

*strings.23762:Slot lub token ju¿ jest zalogowany.

*strings.23763:<p>Wybierz kartê lub bazê danych, w której chcesz wygenerowaæ klucz:<SELECT name="tokenName">

*strings.23764:Token %s jest zabezpieczony przed zapisem, certyfikatów i kluczy nie mo¿na usun±æ

*strings.23766:Nie uda³o siê zainicjalizowaæ slotu.

*strings.23767:U¿ytkownik wy³±czy³ ten slot rêcznie.

*strings.23768:Token nie przeszed³ testu uruchomieniowego.

*strings.23769:Brak sta³ego tokena.

*strings.23780:Bezpieczeñstwo Javy

*strings.23781:Bezpieczeñstwo Javy (Kasuj uprawnienia)

*strings.23782:Bezpieczeñstwo Javy (Edytuj uprawnienia)

*strings.23783:Czy na pewno chcesz skasowaæ uprawnienia dla wszystkich apletów i skryptów z <b>%0%</b>?

*strings.23784:Pozwalaæ apletom i skryptom z <b> %0% </b> na nastêpuj±cy dostêp %-cont-%

*strings.23785:<table><tr><td colspan=3>Zawsze:</td></tr> <tr><td><select name=target size=3> %1% </select></td> %-cont-%

!*strings.23786:<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%
!*strings.23787:<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>%-cont-%

*strings.23788:<table><tr><td colspan=3>Tylko na tê sesjê:</td></tr> <tr><td><select name=target size=3> %2% </select></td> %-cont-%

!*strings.23789:<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%
!*strings.23790:<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>%-cont-%

*strings.23791:<table><tr><td colspan=3>Nigdy:</td></tr> <tr><td><select name=target size=3> %3% </select></td> %-cont-%

!*strings.23792:<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%
!*strings.23793:<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>

*strings.23804:Czy na pewno chcesz skasowaæ uprawnienia <b>%0%</b> dla wszystkich apletów i skryptów z <b>%1%</b>?

*strings.23805:<b> %0% </b> jest <b> %1% </b> dostêp.<br> <ul>Sk³ada siê z:<br><select name=details size=6> %2% </select></ul>

*strings.23806:<table BORDER=0><tr><td VALIGN=top><font SIZE=2><b>Niebezpieczeñstwo <SPACER TYPE=horizontal SIZE=7></B><br></td> %-cont-%

*strings.23807:<td "100%%"><font SIZE=2>Aplet Javy lub skrypt w JavaScript z <b>%0%</b> prosi o nietypowy dostêp do Twojego komputera lub sieci. %-cont-%

*strings.23808:Nie powiniene¶(na¶) zapewniaæ tego dostêpu je¿eli nie ufasz temu producentowi lub sprzedawcy.</td></tr><tr><td valign=top colspan=2><center> <input type="submit" name="button" value="%3%"></input> %-cont-%

*strings.23809:</center><spacer type=vertical size=20></td></tr> <tr><td></td><td><font size=2>¯±danie dostêpu <b>%1%</b> sk³ada siê z:</td></tr> %-cont-%

!*strings.23810:<tr><td coldspan=2><center><table> <td><select multiple name=target size=4>%2%</select></td> <td><input type="submit" name="button" value="%moreinfo%"> </input></td></table></center></td></tr></table> %-cont-%

*strings.23811:<br>Czy chcesz zapewniæ ¿±dany dostêp? <br><spacer type=horizontal size=5><input type=radio name=perm value=yes> Tak, zapewnij ten dostêp dla wszystkich apletów i skryptów z <b>%0%</b> podczas tej sesji %-cont-%

*strings.23812:<br><spacer type=horizontal size=5><input type=radio name=perm value=no checked> Nie, zabroñ tego dostêpu (Mo¿e to oznaczaæ, ¿e aplet lub skrypt nie bêdzie móg³ dzia³aæ prawid³owo) %-cont-%

*strings.23813:<br><input type=checkbox name=remember> Zapamiêtaj tê decyzjê dla wszystkich apletów i skryptów z <b>%0%</b><br></td></table>

*strings.23824:<table BORDER=0><tr><td VALIGN=top><font SIZE=2><b>Niebezpieczeñstwo <SPACER TYPE=horizontal SIZE=7></B><br></td> %-cont-%

*strings.23825:<td "100%%"><font SIZE=2>Aplet Javy lub skrypt w JavaScript z serwera "<b>%0%</b>" prosi o nietypowy dostêp do Twojego komputera lub sieci. %-cont-%

*strings.23826:<b>Nie jest cyfrowo podpisany</b>. Musisz wiedzieæ, ¿e móg³ on zostaæ zmodyfikowany co mo¿e spowodowaæ awariê Twojego komputera. </td></tr> <tr><td></td><td><font size=2>¯±danie dostêpu <b>%1%</b> sk³ada siê z:</td></tr> %-cont-%

!*strings.23827:<tr><td coldspan=2><center><table> <td><select multiple name=target size=4>%2%</select></td> <td><input type="submit" name="button" value="%moreinfo%"> </input></td></table></center></td></tr></table> %-cont-%

*strings.23828:<br>Czy chcesz zapewniæ ¿±dany dostêp? <br><spacer type=horizontal size=5><input type=radio name=perm value=yes> Tak, zapewnij ten dostêp dla wszystkich apletów i skryptów z serwera "<b>%0%</b>" podczas tej sesji %-cont-%

*strings.23829:<br><spacer type=horizontal size=5><input type=radio name=perm value=no checked> Nie, zabroñ tego dostêpu (Mo¿e to oznaczaæ, ¿e aplet lub skrypt nie bêdzie móg³ dzia³aæ prawid³owo) %-cont-%

*strings.23830:<br><input type=checkbox name=remember> Zapamiêtaj tê decyzjê dla wszystkich apletów i skryptów z serwera "<b>%0%</b>" <br></td></table>

*strings.23841:<b>nazwa modu³u bezpieczeñstwa:</b> <input name="name"><br><b>Plik modu³u bezpieczeñstwa:</b> <input name="library"><br>

*strings.23842:Musisz okre¶liæ, jak± bibliotekê PKCS #11 w wersji 2.0 za³adowaæ\n

*strings.23843:<b>Opis:</b> %0%<br><b>Producent:</b> %1%<br><b>Numer wersji:</b> %2%<br><b>Wersja Firmware:</b> %3%<br>%-cont-%

*strings.23844:%4%<b>Nazwa tokena:</b> %5%<br><b>Producent tokena:</b> %6%<br><b>Model tokena:</b> %7%<br><b>Numer seryjny tokena:</b> %8%<br>%-cont-%

*strings.23845:<b>Wersja tokena:</b> %9%<br><b>Wersja firmware tokena:</b> %10%<br><b>Typ logowania:</b> %11%<br><b>Stan:</b> %12%%13%%14%

*strings.23846:Informacja o tokenie/slocie

*strings.23847:Rejestracja wymagana

*strings.23848:Publiczny (nie wymaga logowania)

*strings.23849:Gotowy

*strings.23850:<font color=red>Nie zalogowany</font>

*strings.23851:<font color=red>Nie zainicjalizowany</font>

*strings.23852:<font color=red>Brak tokena</font>

*strings.23853:<font color=red>Wy³±czony (

*strings.23854:)</font>

*strings.23860:Inicjalizuj token

*strings.23861:Zmieñ has³o

*strings.23862:Ustaw has³o

*strings.23863:Brak has³a

*strings.23864:%sec-banner-begin%%0%%sec-banner-end%£adujesz certyfikat pocztowy innego u¿ytkownika. Po zaakceptowaniu %-cont-%

*strings.23865:tego certyfikatu bêdziesz móg³ wysy³aæ zaszyfrowane wiadomo¶ci do tego u¿ytkownika. Naci¶nij przycisk Wiêcej informacji, aby zobaczyæ dane certyfikatu pocztowego. %-cont-%

*strings.23866:<hr><table cellspacing=0 cellpadding=0><tr><td valign=top><table cellspacing=0 cellpadding=0><tr><td><font size=2>Certyfikat dla:%-cont-%

*strings.23867:</font></td><td><font size=2>%1%</font></td></tr><tr><td><font size=2>Adres e-mail:</font></td><td><font size=2>%2%</font></td></tr><tr><td>%-cont-%

*strings.23868:<font size=2>Certyfikowany przez:</font></td><td><font size=2>%3%</font></td></tr></table></td><td valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>

*strings.23874:£aduj certyfikat pocztowy

*strings.23875:Zaakceptuj to centrum autoryzuj±ce dla uwierzytelniania miejsc w sieci

*strings.23876:Zaakceptuj to centrum autoryzuj±ce dla uwierzytelniania u¿ytkowników poczty

*strings.23877:Zaakceptuj to centrum autoryzuj±ce dla uwierzytelniania wytwórców oprogramowania

!*strings.23878:%0%<p>%1%

*strings.23879:Wybierz certyfikat

*strings.23880:Wybierz certyfikat do edycji:<p>

*strings.23881:Wybierz certyfikat do skasowania:<p>

*strings.23882:Wybierz certyfikat do podgl±du:<p>

*strings.23883:Wybierz certyfikat do weryfikacji:<p>

*strings.23884:Usuñ certyfikat pocztowy

*strings.23885:Czy na pewno chcesz skasowaæ ten certyfikat pocztowy?<p>%0%

!*strings.23937:Netscape Communications Corp    

*strings.23938:Wewnêtrzne szyfrowane Svc Komunikatora

*strings.23939:Ogólne szyfrowane Svc Komunikatora

*strings.23940:Baza danych certyfikatów Komunikatora

*strings.23946:Wewnêtrzne us³ugi szyfrowania Komunikatora, wersja 4.0        

*strings.23947:Us³ugi uwierzytelniania i kluczy prywatnych u¿ytkowników Komunikatora

*strings.23953:Wewnetrzne us³ugi szyfrowania FIPS-140-1 Netscape'a

*strings.23954:Us³ugi kluczy prywatnych u¿ytkowników FIPS-140-1 Netscape'a

*strings.23955:Weryfikacja wybranego certyfikatu nie powiod³a siê z nastêpuj±cych powodów:<p>%0%

*strings.23956:Weryfikuj certyfikat

*strings.23962:Certyfikat pomy¶lnie zweryfikowano.

*strings.23963:Min±³ okres wa¿no¶ci certyfikatu

*strings.23964:Brak uwierzytelnienia dla %s

*strings.23965:Certyfikat niewiarygodny

*strings.23966:Nie mo¿na znale¼æ centrum autoryzuj±cego dla certyfikatu

*strings.23967:Podpis certyfikatu jest niewa¿ny

*strings.23968:Lista uniewa¿nionych Certyfikatów jest niewa¿na

*strings.23969:Certyfikat zosta³ uniewa¿niony

*strings.23970:Nieprawid³owe centrum autoryzuj±ce

*strings.23971:B³±d wewnêtrzny

*strings.23972:Podpisywanie cyfrowe

*strings.23973:Szyfrowanie

*strings.23974:Podpisywanie certyfikatów

*strings.23975:Nieznane zastosowanie

*strings.23976:Autoryzacja e-mail

*strings.23977:Autoryzacja witryny internetowej

*strings.23978:Autoryzacja wytwórcy oprogramowania

*strings.23979:E-mail

*strings.23980:Witryna internetowa

*strings.23981:Wytwórca oprogramowania

!*strings.23987:%0%

*strings.23988:Ta operacja zast±pi modu³ wewnêtrzny Netscape'a przez modu³ szyfruj±cy FIPS-140-1 Netscape'a.\n\
\n\
Modu³ szyfruj±cy FIPS-140-1 ogranicza funkcje 

*strings.23989:zabezpieczaj±ce do tych, które zosta³y zaakceptowane\n\
przez wewnêtrzne standardy rz±du Stanów Zjednoczonych Ameryki.\n\
\n\
Czy chcesz usun±æ modu³ wewnêtrzny pomimo to?

*strings.23995:Ta operacja zast±pi modu³ szyfruj±cy FIPS-140-1 przez modu³ wewnêtrzny Netscape'a.\n\
\n\
Oznacza to, ¿e Komunikator nie bêdzie ju¿ zgodny z FIPS-140-1 (funkcje zabezpieczeñ 

*strings.23996:na zaakceptowane przez wewnêtrzne standardy Rzadu Federalnego Stanów Zjednoczonych).\n\
\n\
Czy chcesz usun±æ modu³ FIPS-140-1 pomimo to?

*strings.23997:Szukaj

*strings.23998:Szukaj certyfikatów w katalogu

!*strings.24004:<div align=right><input type="button" name="button" value="%fetch%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80>%0%

*strings.24005:Komunikator przeszuka katalogi sieciowe pod k±tem certyfikatów bezpieczeñstwa u¿ywanych do wysy³ania innym osobom zaszyfrowanych wiadomo¶ci pocztowych.<p>Podaj dok³adne adresy e-mail %-cont-%

*strings.24006:osób, których szukasz i naci¶nij Szukaj. <table border=0 cellspacing=0 cellpadding=5><tr><td><b>Katalog:</b></td><td><select name=dirmenu>%0%%-cont-%

!*strings.24007:</select></td></tr>%-cont-%

*strings.24008:<tr><td><b>Adresy e-mail:</b></td><td><input type=text name=searchfor size=50></td></tr></table>

*strings.24014:Wszystkie katalogi

*strings.24015:Wyniki poszukiwania

*strings.24016:Naci¶nij przycisk <b>%ok%</b> by zachowaæ znalezione certyfikaty, lub <b>%cancel%</b> by zaniechaæ.<p>Znaleziono cartyfikaty dla u¿ytkowników e-mail w katalogu:<br> %0%<p>%1%%2%

*strings.24017:Nie znaleziono certyfikatów dla poni¿szych u¿ytkowników e-mail w katalogu:<br>

*strings.24018:Prze¶lij swój certyfikat e-mail do katalogu

*strings.24019:Wybierz katalog, do którego wy¶lesz swój ceryfikat:<p><select name=dirmenu>%0%</select><br>%-cont-%

*strings.24020:Komunikator prze¶le Twój ceryfikat bezpieczeñstwa do katalogu sieciowego, ¿eby inni u¿ytkownicy mogli go ³atwo znale¼æ i przys³aæ ci zaszyfrowane wiadomo¶ci.

!*strings.24021:%0%%1%%2%%3%%4%

*strings.24022:Komunikator przeszuka katalog pod k±tem certyfikatów bezpieczeñstwa potrzebnych do wys³ania tej zaszyfrowanej wiadomo¶ci. %-cont-%

*strings.24023:<input type=hidden name=searchfor value="%0%"><table border=0 cellspacing=0 cellpadding=5><tr><td><b>Wybierz katalog:</b></td><td><select name=dirmenu>%1%%-cont-%

*strings.24024:</select></td></tr><tr><td valign=top><b>Szukam:</b></td><td>%2%</td></tr></table>

*strings.24075:Przesy³anie do katalogu

*strings.24076:Przeszukiwanie katalogu

*strings.24077:Podaj has³o dla katalogu

*strings.24078:Podczas komunikacji z katalogiem wyst±pi³ b³±d

*strings.24079:%sec-banner-begin%%0%%sec-banner-end%Komunikator ma w³a¶nie wygenerowaæ Ci klucz prywatny. Bêdzie on dalej wykorzystywany z posiadanym certyfikatem, o który obecnie %-cont-%

*strings.24080:wystêpujesz aby Ciê identyfikowa³ wobec witryn sieciowych i poprzez e-mail. Twój klucz prywatny nigdy nie opuszcza Twojego komputera i, je¶li sobie tego za¿yczysz, bêdzie chroniony has³em Komunikatora.<P>%-cont-%

*strings.24081:Has³a s± szczególnie wa¿ne je¶li znajdujesz siê w ¶rodowisku gdzie inne osoby maj± dostêp do Twojego komputera, zarówno fizycznie, jak te¿ poprzez sieæ. %-cont-%

*strings.24082:Nie podawaj innym swojego has³a, gdy¿ umo¿liwi³oby to im wykorzystanie Twojego Certifikatu do pozbawienia Ciê to¿samo¶ci.<P>%-cont-%

*strings.24083:Komunikator generuje Twój klucz prywatny za pomoc± skompilowanej operacji matematycznej. Operacja ta mo¿e potrwaæ kilka minut.  Je¿eli przerwiesz %-cont-%

*strings.24084:tê operacjê Kommunikatorowi, nie wygeneruje on Twojego klucza, i bêdziesz musia³ ponownie wyst±piæ o Certifikat.

*strings.24090:%sec-banner-begin%%0%%sec-banner-end%Has³a s± szczególnie wa¿ne je¶li znajdujesz siê w ¶rodowisku gdzie inne %-cont-%

*strings.24091:osoby maj± dostêp do Twojego komputera, zarówno fizycznie, jak te¿ poprzez sieæ. Nie podawaj innym swojego has³a, gdy¿ umo¿liwi³oby to im wykorzystanie Twojego %-cont-%

*strings.24092:certifikatu do pozbawienia Ciê to¿samo¶ci.<P>Bezpieczne has³o powinno mieæ d³ugo¶æ co najmniej 8 znaków, zawieraæ jednocze¶nie litery i cyfry lub symbole oraz nie zawieraæ s³ów s³ownikowych.

*strings.24098:Wybierz kartê lub bazê danych

*strings.24099:Wybierz kartê lub bazê danych, do której chcesz zaimportowaæ certyfikaty: <BR> <SELECT NAME="tokenName" SIZE=10>%0%</SELECT>

*strings.24100:Niewa¿ne centrum autoryzuj±ce FORTEZZA

zaszyfrowanye does not have a Recognized Public Key

*strings.24102:Zachowaj ten plik jako zaszyfrowany [zatwierd¼] lub niezaszyfrowany [anuluj]

*strings.24103:Kolejne nieudane logowania mog± spowodowaæ zablokowanie tej\n\
karty lub bazy danych. Has³o jest niew³a¶ciwe. Powtórzyæ?\n\
    %s\n

*strings.24104:Nie znaleziono listy uzgodnionych kluczy dla tego certyfikatu.\n\
Musisz za³adowaæ listê uzgodnionych kluczy przed kontynuacj±.

*strings.24105:Lista uzgodnionych kluczy dla tego certyfikatu jest przeterminowana.\n\
Pobierz now± listê uzgodnionych kluczy.

*strings.24106:Lista uzgodnionych kluczy dla tego certyfikatu ma niewa¿ny podpis.\n\
Pobierz now± listê uzgodnionych kluczy.

*strings.24107:Klucz certyfikatu zosta³ uniewa¿niony.

*strings.24108:Lista uzgodnionych kluczy ma niew³a¶ciwy format.

*strings.24109:Netscape noe mo¿e bezpiecznie po³±czyæ siê z t± witryn±,\n\
poniewa¿ domena, do której próbujesz siê po³±czyæ nie\n\
pokrywa siê z nazw± domeny na certyfikacie serwera. 

*strings.24160:Podpis cyfrowy

*strings.24161:Serwer '%0%' prosi o podpisanie poni¿szej wiadomo¶ci:<br><pre><dl><dd><tt>%1%</dl></tt></pre><br><b> Je¶li zgadzasz sie podpisaæ tê wiadomo¶æ naci¶nij %ok%, je¶li nie to %cancel%.</b>

*strings.24200:Serwer '%0%' prosi o podpisanie poni¿szej wiadomo¶ci:<br><pre><dl><dd><tt>%1%</dl></tt></pre><br>Wybierz certyfikat %-cont-%

*strings.24201:do u¿ytku przy podpisywaniu:<br><SELECT NAME=certname>%2%</SELECT><br><b>Je¶li zgadzasz sie podpisaæ tê wiadomo¶æ naci¶nij %ok%, je¶li nie to %cancel%.</b>

*strings.24202:Obejrzyj/zmieñ certyfikat osobisty

*strings.24203:%0%<hr><div><b>Ten certyfikat pocztowy u¿ytkownika ma niewiarygodnego wystawcê.</b> <br>Mo¿esz zadecydowaæ bezpo¶rednio o wiarygodno¶ci tego certyfikatu, aby umo¿liwiæ %-cont-%

*strings.24204:sobie wymianê podpisanych i zaszyfrowanych wiadomo¶ci z tym u¿ytkownikiem. <p>%-cont-%

*strings.24205:Dla bezpieczeñstwa, powiniene¶ sie skontaktowaæ z tym u¿ytkownikiem przed podjêciem decyzji i zweryfikowaæ czy powy¿szy "odcisk palca" certyfikatu %-cont-%

*strings.24206:jest tym samym, który on/ona posiada.<p><input type=radio name=dirtrust value=no %1%>Nie ufaj temu certyfikatowi.<br> %-cont-%

*strings.24207:<input type=radio name=dirtrust value=yes %2%>Ufaj temu certyfikatowi pomimo, ¿e posiada on niewiarygodnego wystawcê.</div>

!*strings.24213:<font face="Impress BT, Verdana, Arial, Helvetica, sans-serif" point-size=16>
!*strings.24214:<STYLE TYPE="text/css"> DIV { FONT-FAMILY: "Prima Sans BT", Verdana, Arial, Helvetica, Lucida; FONT-SIZE: 10pt;} TD { FONT-FAMILY: "PrimaSans BT", Verdana, Arial, Helvetica, Lucida; %-cont-%
!*strings.24215:FONT-SIZE: 10pt;} BODY { FONT-FAMILY: "Prima Sans BT", Verdana, Arial, Helvetica, Lucida; FONT-SIZE: 10 pt;} %-cont-%
!*strings.24216:H1, H2, H3 { font-weight: 700;} H1 { FONT-SIZE: 16PT; } H2 {FONT-SIZE: 14PT;} </STYLE>
!*strings.24500:

*strings.24501:Obejrzyj

*strings.24502:Edytuj

*strings.24503:Weryfikuj

*strings.24504:Kasuj

*strings.24505:Eksportuj

*strings.24506:Kasuj przeterminowane

*strings.24507:Usuñ

*strings.24508:Pobierz certyfikat...

*strings.24509:Pobierz certyfikaty...

*strings.24510:Importuj certyfikat...

*strings.24511:Podgl±d certyfikatu

*strings.24512:Edytuj uprawnienia

*strings.24513:Obejrzyj/Edytuj

*strings.24514:Dodaj

*strings.24515:Wyloguj wszystkie

*strings.24516:OK

*strings.24517:Anuluj

*strings.24518:Pomoc

*strings.24519:Przeszukaj katalog

*strings.24520:Prze¶lij certyfikat do katalogu

*strings.24521:Poka¿ informacje o stronie

*strings.24522:Informacje o bezpieczeñstwie

*strings.24523:Has³a

*strings.24524:Nawigator

*strings.24525:Kurier

*strings.24526:Java/JavaScript

*strings.24527:Certyfikaty

*strings.24528:Twoje

*strings.24529:Innych osób

*strings.24530:Witryn sieciowych

*strings.24531:Wytwórców oprogramowania

*strings.24532:Autoryzowane

*strings.24533:Modu³y kryptograficzne

*strings.24534:Informacje o bezpieczeñstwie

*strings.24535:Has³a

*strings.24536:Nawigator

*strings.24537:Kurier

*strings.24538:Java/JavaScript

*strings.24539:Certifikaty

*strings.24540:Twoje certyfikaty

*strings.24541:Certyfikaty innych osób

*strings.24542:Ceryfikaty witryn sieciowych

*strings.24543:Ceryfikaty wytwórców oprogramowania

*strings.24544:Ceryfikaty centrów autoryzuj±cych

*strings.24545:Modu³y kryptograficzne

*strings.24546:Rozpoczêciem po³±czenia szyfrowanego

*strings.24547:Zakoñczeniem po³±czenia szyfrowanego

*strings.24548:Obejrzeniem strony mieszanej szyfrowanej/nie szyfrowanej

*strings.24549:Wys³aniem niezaszyfrowanych informacji do serwera

*strings.24550:<B>Certyfikat, który pozwoli na Twoj± identyfikacjê dla witryny:</B>

*strings.24551:Pytaj za ka¿dym razem

*strings.24552:Wybierz automatycznie

*strings.24553:<B>Zaawansowana konfiguracja bezpieczeñstwa (SSL):</B>

*strings.24554:W³±cz SSL (Secure Sockets Layer) v2

*strings.24555:Konfiguruj SSL v2

*strings.24556:W³±cz SSL (Secure Sockets Layer) v3

*strings.24557:Konfiguruj SSL v3

*strings.24558:<B>Certyfikat dla twoich podpisanych i zaszyfrowanych wiadomo¶ci:</B>

*strings.24559:<B>(Nie posiadasz certyfikatów pocztowych.)</B>

*strings.24560:Wybierz szyfrowanie S/MIME

*strings.24561:Zmieñ has³o

*strings.24562:Ustaw has³o

*strings.24563:<B>Komunikator zapyta o to has³o:</B>

*strings.24564:Za pierwszym razem, gdy Twój certyfikat bêdzie potrzebny

*strings.24565:Za ka¿dym razem, gdy Twój certyfikat bêdzie potrzebny

*strings.24566:Po

*strings.24567:minutach nieaktywno¶ci

*strings.24568:Szyfrowanie wiadomo¶ci

*strings.24569:Podpisywanie wiadomo¶ci

*strings.24570:Zaszyfrowana wiadomo¶æ

*strings.24571:Podpisana wiadomo¶æ

*strings.24572:Tê wiadomo¶æ <B>mo¿na zaszyfrowaæ</B> podczas wysy³ania.

*strings.24573:Wysy³anie zaszyfrowanej wiadomo¶ci to jakby wysy³anie korespondencji w kopercie zamiast pocztówki; utrudnia to innym osobom przeczytanie Twojej wiadomo¶ci.

*strings.24574:Szyfruj tê wiadomo¶æ.

*strings.24575:Wysy³anie niezaszyfrowanej wiadomo¶ci to jakby wysy³anie korespondencji na pocztówce zamiast w kopercie. Inne osoby maj± mo¿liwo¶æ przeczytania Twojej wiadomo¶ci.

*strings.24576:Musisz podaæ co najmniej jednego adresata tej wiadomo¶ci.

*strings.24577:Tej wiadomo¶ci <B>nie mo¿na zaszyfrowaæ</B> podczas wysy³ania, poniewa¿ 

*strings.24578:. nie posiada certyfikatu bezpieczeñstwa.

*strings.24579:. posiada przeterminowany certyfikat bezpieczeñstwa.

*strings.24580:. posiada odwo³any certyfikat bezpieczeñstwa.

*strings.24581:. w aliasie nie posiada certyfikatu bezpieczeñstwa.

*strings.24582:. jest grup± dyskusyjn±.

*strings.24583:. posiada niewa¿ny certyfikat bezpieczeñstwa.

*strings.24584:. posiada certyfikat bezpieczeñstwa oznaczony jako niewiarygodny.

*strings.24585:. posiada certyfikat bezpieczeñstwa wydany przez niewiarygodnego wystawcê.

*strings.24586:. posiada nieznanego wystawcê certyfikatu bezpieczeñstwa.

*strings.24587:: nieznany b³±d certfikatu.

*strings.24588:Aby otrzymaæ wa¿ny certyfikat bezpieczeñstwa z katalogu, naci¶nij <I>Pobierz certyfikaty</I>. W&nbsp;przeciwnym razie adresaci musz± najpierw otrzymaæ swój certyfikat a nastêpnie 

*strings.24589:wys³aæ go Tobie w podpisanej wiadomo¶ci e-mail. Ten nowy certyfikat bezpieczeñstwa bêdzie automatycznie zapamiêtany po dorêczeniu go. <P>Nie mo¿na wysy³aæ zaszyfrowanych wiadomo¶ci na grupy dyskusyjne.

*strings.24590:Tê wiadomo¶æ <B>mo¿na podpisaæ</B> przy wysy³aniu.

*strings.24591:Tej wiadomo¶ci <B>nie mo¿na podpisaæ</B> przy wysy³aniu.

*strings.24592:Dzieje siê tak, poniewa¿ nie posiadasz wa¿nego certyfikatu bezpieczeñstwa. Gdy do³±czysz swój certyfikat bezpieczeñstwa do wiadomo¶ci, 

*strings.24593:podpisujesz równie¿ tê wiadomo¶æ. Umo¿liwia to sprawdzenie, ¿e wiadomo¶æ rzeczywi¶cie pochodzi od Ciebie.

*strings.24594:Gdy podpisujesz wiadomo¶æ cyfrowo, do³±czasz do niej równie¿ swój certyfikat bezpieczeñstwa. Umo¿liwia to sprawdzenie, ¿e wiadomo¶æ rzeczywi¶cie pochodzi od Ciebie.

*strings.24595:W niektórych miejscach ten podpis cyfrowy mo¿e byæ uwa¿any za tak samo wi±¿±cy prawnie jak Twój podpis odrêczny.

*strings.24596:Chcê do³±czyæ mój certyfikat bezpieczeñstwa do tej wiadomo¶ci i u¿yæ podpisu cyfrowego do jej podpisania

*strings.24597:Ta wiadomo¶æ <B>zosta³a zaszyfrowana</B> podczas wysy³ania. <P>Oznacza to, ¿e jest ma³o prawdopodobne aby kto¶ inny przechwyci³ Twoj± wiadomo¶æ podczas przesy³ania.

*strings.24598:Ta wiadomo¶æ <B>nie zosta³a zaszyfrowana</B> podczas wysy³ania. <P>Oznacza to, ¿e kto¶ inny móg³ j± podejrzeæ podczas przesy³ania.

*strings.24599:Nie mo¿esz przeczytaæ tej wiadomo¶ci, gdy¿ nie posiadasz certyfikatu bezpieczeñstwa niezbêdnego do jej rozszyfrowania. Byæ mo¿e dzieje siê tak dlatego, ¿e Twój 

*strings.24600:certyfikat bezpieczeñstwa znajduje siê na innym komputerze lub dlatego, ¿e wiadomo¶æ zozta³± zaszyfrowana przy pomocy certyfikatu bezpieczeñstwa kogo¶ innego.

*strings.24601:U¿yto algorytmu 

*strings.24602:Ta wiadomo¶æ <B>zosta³a podpisana cyfrowo</B> przez 

*strings.24603:Ta wiadomo¶æ zawiera certyfikat bezpieczeñstwa dla 

*strings.24604: na 

*strings.24605:, podpisany 

*strings.24606:Aby sprawdziæ certyfikat, naci¶nij przycisk ``Obejrzyj/Edytuj''. <P>Ten certyfikat zosta³ automatycznie dodany do listy Twoich 

*strings.24607:certyfikatów innych osób, aby umo¿liwiæ Ci wysy³anie bezpiecznej poczty do tej osoby.

*strings.24608:Tej wiadomo¶ci <B>nie podpisano cyfrowo</B>. <P>Nie jest mo¿liwe sprawdzenie, czy rzeczywi¶ci pochodzi ona od nadawcy.

*strings.24609:<B>Certyfikat, za pomoc± którego podpisano cyfrowo tê wiadomo¶æ jest niewa¿ny</B>. <P>Nie da siê udowodniæ, ¿e ta wiadomo¶æ rzeczywi¶cie pochodzi od nadawcy.

*strings.24610:<B>Tej wiadomo¶ci nie mo¿na rozszyfrowaæ.</B> 

*strings.24611:By³ to b³±d: 

*strings.24612:Ostrze¿enie! Wygl±da na to, ¿e wiadomo¶æ zosta³a zmieniona w okresie pomiêdzy wys³aniem jej przez nadawcê a otrzymaniem jej przez Ciebie. 

*strings.24613:Zmieniono czê¶æ lub ca³± zawarto¶æ tej wiadomo¶ci. Powiniene¶ skontaktowaæ siê z nadawc± wiadomo¶ci i/lub z administratorem Twojego systemu.

*strings.24614:Ta wiadomo¶æ wygl±da na wys³an± z adresu e-mail <TT><B>

*strings.24615:</B></TT>, jednak¿e certyfikat u¿yty do jej podpisania nale¿y do adresu e-mail <TT><B>

*strings.24616:</B></TT>. Je¿eli te dwa adresy e-mail nie nale¿± do tej samej osoby, mo¿e to byæ próba fa³szerstwa.

*strings.24617:Bezpieczeñstwo Usenet News

*strings.24618:Po³±czenie z tym serwerem grup dyskusyjnych <B>jest szyfrowene</B>. Oznacza to, ¿e wiadomo¶ci, które czytasz s± przesy³ane do Ciebie

*strings.24619:zaszyfrowane. Utrudnia to innym osobom przeczytanie tych wiadomo¶ci gdy Ty je czytasz.

*strings.24620:Po³±czenie z tym serwerem grup dyskusyjnych <B>nie jest szyfrowene</B>. <P>Oznacza to, ¿e inne osoby maj± mo¿liwo¶æ przeczytania tych wiadomo¶ci podczas gdy Ty je czytasz.

*strings.24621:Szyfrowanie

*strings.24622:Weryfikacja

*strings.24623:Ta strona <B>nie zosta³a zaszyfrowana</B>. Oznacza to, ¿e kto¶ inny móg³ j± podejrzeæ w&nbsp;czasie ³adowania. Oznacza 

*strings.24624:to równie¿, ¿e Ty nie jeste¶ w stanie zweryfikowaæ to¿samo¶ci witryny. Aby uzyskaæ pe³n± informacjê o wszystkich plikach z tej strony kliknij na <B>Poka¿ informacje o stronie</B>.

*strings.24625:Ta strona <B>zosta³a zaszyfrowana</B>. Oznacza to, ¿e jest ma³o prawdopodobne aby kto¶ inny j± podejrza³ w czasie ³adowania.<P>

*strings.24626:Mo¿esz zbadaæ swoj± kopiê certyfikatu dla tej strony i zweryfikowaæ to¿samo¶æ witryny. Aby zobaczyæ certyfikat 

*strings.24627:tej witryny, kliknij na <B>Poka¿ certyfikat</B>. Po pe³ne informacje o wszystkich plikach z tej strony kliknij na <B>Poka¿ informacje o stronie</B>.

*strings.24628:Ta strona <B>nie zosta³a zaszyfrowana</B>, ale niektóre pliki, które zawiera zosta³y zaszyfrowane. Oznacza to, ¿e jest ma³o prawdopodobne aby 

*strings.24629:kto¶ inny podejrza³ zaszyfrowane pliki w czasie ³adowania strony. Oznacza to równie¿, ¿e Ty nie jeste¶ w stanie zweryfikowaæ 

*strings.24630:to¿samo¶ci witryny, z której ona pochodzi.<P>Po pe³ne informacje o wszystkich plikach z tej strony kliknij na <B>Poka¿ informacje o stronie</B>.

*strings.24631:Ta strona <B>zosta³a zaszyfrowana</B>. Oznacza to, ¿e jest ma³o prawdopodobne aby kto¶ inny to j± podejrza³ w czasie ³adowania.<P> Mo¿esz 

*strings.24632:zbadaæ swoj± kopiê certyfikatu dla tej strony i to¿samo¶æ witryny. Aby zobaczyæ certyfikat 

*strings.24633:tej witryny, kliknij na <B>Poka¿ certyfikat</B>.<P>Jednak¿e, niektóre pliki na tej stronie <B>nie zosta³y 

*strings.24634:zaszyfrowane</B>. Oznacza to, ¿e kto¶ inny móg³ je podejrzeæ w czasie ³adowania. Po pe³ne 

*strings.24635:informacje o wszystkich plikach z tej strony i ich certyfikatach and kliknij na <B>Poka¿ informacje o stronie</B>.

*strings.24636:Zerknij na certyfikat strony.

*strings.24637:Upewnij siê, ¿e ta witryna jest t±, o której my¶lisz. Niniejsza strona pochodzi z: 

*strings.24638:W tym okienku brakuje nastêpuj±cych elementów:

*strings.24639:. Oznacza to, ¿e mog³e¶ przeoczyæ istotne informacje.

*strings.24640:pasek menu

*strings.24641:pasek narzêdzi

*strings.24642:pasek prywatny

*strings.24643:pasek adresu

*strings.24644:pasek stanu

*strings.24645:To okienko zosta³o utworzone przez aplikacjê Javy (od 

*strings.24646:). Ta aplikacja posiada pewn± kontrolê nad okienkiem i mo¿e wp³ywaæ na to, co zobaczysz.

*strings.24647:To okienko zosta³o utworzone przez aplikacjê JavaScript (od 

*strings.24648:). Ta aplikacja posiada pewn± kontrolê nad okienkiem i mo¿e wp³ywaæ na to, co zobaczysz.

*strings.24649:<B><H2>Brak informacji o bezpieczeñstwie dla tego okna.</H2></B>

*strings.24650:Informacja o bezpieczeñstwie jest dostêpna dla okien: Nawigatora, Kuriera i Czytnika news.

*strings.24651:<P>Je¶li chcesz zmieniæ ustawienia lub preferencje bezpieczeñstwa, prze³±czaj siê pomiêdzy ró¿nymi obszarami za pomoc± zak³adek po lewej.

*strings.24652:To jest obja¶nienie certyfikatów bezpieczeñstwa.<P> <B>Certyfikat:</B> Plik, który identyfikuje osobê lub organizacjê. Komunikator u¿ywa certyfikatów do 

*strings.24653:szyfrowanie informacji. Przy pomocy certyfikatu mo¿esz sprawdziæ to¿samo¶æ jego w³a¶ciciela. Powiniene¶ ufaæ certyfikatom wy³±cznie gdy ufasz osobie lub organizacji, która go wystawi³a.

*strings.24654:<P>Twoje w³asne certyfikaty pozwalaj± ci otrzymywaæ zaszyfrowane informacje. Komunikator przechowuje równie¿ ¶lady certyficatów od innych osób, witryn, apletów, i skryptów. 

*strings.24655:<P><UL><B>Twoje</B> pokazuje Twoje w³asne certyfikaty. <P><B>Innych osób</B> pokazuje certyfikaty od innych osób lub organizacji. 

*strings.24656:<P><B>Witryn sieciowych</B> pokazuje certyfikaty od witryn. <P><B>Autoryzowane</B> pokazuje certyfikaty od centrów autoryzuj±cych (``Certificate Authorities''). 

*strings.24657:<P><B>Wytwórców oprogramowania</B> pokazuje certyfikaty, które towarzysz± autoryzowanym apletom Javy i sktyptom w JavaScripcie.</UL>

*strings.24658:Mo¿esz wykorzystaæ dowolny z tych certyfikatów aby potwierdziæ swoj± to¿samo¶æ wobec innych osób i witryn sieciowych. Komunikator przy pomocy Twoich certyfikatów 

*strings.24659:odszyfrowuje wys³ane do Ciebie informacje. Twoje certyfikaty s± podpisane przez organizacjê, która je wyda³a. <P><B>Oto s± Twoje certyfikaty:</B>

*strings.24660:Powiniene¶ zrobiæ kopiê swoich certyfikatów i trzymaæ je w bezpiecznym miejscu. Je¶li kiedykolwiek stracisz swoje certyfikaty, nie bêdziesz móg³ 

*strings.24661:odczytaæ zaszyfrowanej poczty, któr± otrzyma³e¶, jak te¿ mo¿esz mieæ problem z potwierdzeniem swojej to¿samo¶ci wobec witryn sieciowych.

*strings.24662:Inne osoby u¿y³y tych certyfikatów aby potwierdzic swoj± to¿samo¶æ wobec Ciebie. Komunikator mo¿e wysy³aæ zaszyfrowane 

*strings.24663:wiadomo¶ci do ka¿dego od kogo masz certyfikat. <P><B>Oto s± certyfikaty innych osób:</B>

*strings.24664:Aby otrzymaæ certyfikaty z katalogu sieciowego naci¶nij <I>Przeszukuj katalog</I>.<p>

*strings.24665:<B>Oto s± certyfikaty, które zaakceptowa³e¶(a¶) na witrynach sieciowych:</B>

*strings.24666:<B>Te certyfikaty identyfikuj± centra autoryzacji, które akceptujesz:</B>

*strings.24667:<B>Poni¿sze ustawienia pozwalaj± Ci kontrolowaæ ustawienia bezpieczeñstwa w Nawigatorze.</B> <P>Ostrze¿enia Nawigatora zwi±zane z bezpieczeñstwem mog± Ciê uprzedziæ o tym, ¿e robisz co¶ niebezpiecznego. <P><B>Poka¿ ostrze¿enie przed:

*strings.24668:<B>Poni¿sze ustawienia pozwalaj± Ci kontrolowaæ ustawienia bezpieczeñstwa w Kurierze.</B> <P>Ostrze¿enia Kuriera zwi±zane z bezpieczeñstwem mog± Ciê uprzedziæ o tym, ¿e robisz co¶ niebezpiecznego. 

*strings.24669:<B>Wysy³am podpisan±/szyfrowan± pocztê:</B>

*strings.24670:Szyfrowaæ wiadomo¶ci pocztowe, je¶li mo¿liwe

*strings.24671:Podpisywaæ wiadomo¶ci pocztowe, je¶li mo¿liwe

*strings.24672:Podpisywaæ artyku³y news, je¶li mo¿liwe

*strings.24673:Ten certyfikat jest do³±czany do ka¿dej wiadomo¶ci e-mail, któr± <B>podpisujesz</B>. Gdy kto¶ inny otrzyma j±, bêdzie móg³ wys³aæ do Ciebie zaszyfrowan± pocztê.

*strings.24674:Inne osoby mog± równie¿ otrzymaæ Twój certyfikat z katalogu:

*strings.24675:Gdyby¶ mia³ jaki¶, ów certyfikat by³by do³±czany do ka¿dej wiadomo¶ci e-mail, któr± <B>podpiszesz</B>. Gdy kto¶ inny otrzyma j±,

*strings.24676:bêdzie móg³ wys³aæ do Ciebie zaszyfrowan± pocztê. (Aby otrzymaæ certyfikat, zerknij na zak³adkê ``Twoje'' po lewej.)

*strings.24677:<B>Zaawansowana konfiguracja S/MIME:  </B>

*strings.24678:Ustawienia szyfrowania:

*strings.24679:<B>Nastêpuj±ce ustawienia pozwalaj± ci kontrolowaæ dostêp dla apletów Javy i skryptów JavaScriptu.</B> <P>¯aden aplet ani skrypt nie ma dostêpu do Twojego komputera ani sieci bez 

*strings.24680:Twojego pozwolenia. Wyra¼nie umo¿liwi³e¶ dostêp lub go zabroni³e¶ dla wszystkich apletów i&nbsp;skryptow od nastêpuj±cych producentów, sprzedawców lub z witryn.

*strings.24681:<B>Twoje has³o Komunikatora s³u¿y do ochrony Twoich certyfikatów.</B> <P>Je¶li znajdujesz siê w ¶rodowisku gdzie inne 

*strings.24682:osoby maj± dostêp do Twojego komputera (zarówno fizycznie, jak i poprzez sieæ) powiniene¶ ustawiæ has³o dla Komunikatora. <P>

*strings.24683:<B>Modu³y kryptograficzne:</B>

*strings.24684:Obejrzyj/zmieñ CRL

*strings.24685:Aby obejrzeæ lub zmieniæ listy uniewa¿nionych certyfikatów (CRL) naci¶nij <I>Obejrzyj/zmieñ CRL</I>.<p>

*strings.24686:Aby sprawdziæ certyfikat lub zmieniæ informacje o zaufaniu do certyfikatu, naci¶nij przycisk ``Obejrzyj/zmieñ''. <P>Ten certyfikat zosta³ automatycznie dodany do twojej listy 

*strings.24687:<B>Certyfikat do u¿ycia dla autoryzacji Proxy:</B>

*strings.24688:Brak autoryzacji proxy

!*strings.24689:
!*strings.25000:
!*strings.25001:sa_view_button_label
!*strings.25002:sa_edit_button_label
!*strings.25003:sa_verify_button_label
!*strings.25004:sa_delete_button_label
!*strings.25005:sa_export_button_label
!*strings.25006:sa_expired_button_label
!*strings.25007:sa_remove_button_label
!*strings.25008:sa_get_cert_button_label
!*strings.25009:sa_get_certs_button_label
!*strings.25010:sa_import_button_label
!*strings.25011:sa_view_cert_button_label
!*strings.25012:sa_edit_privs_button_label
!*strings.25013:sa_view_edit_button_label
!*strings.25014:sa_add_button_label
!*strings.25015:sa_logout_all_button_label
!*strings.25016:sa_ok_button_label
!*strings.25017:sa_cancel_button_label
!*strings.25018:sa_help_button_label
!*strings.25019:sa_search_dir_button_label
!*strings.25020:sa_send_cert_button_label
!*strings.25021:sa_page_info_label
!*strings.25022:sa_secinfo_index_label
!*strings.25023:sa_passwords_index_label
!*strings.25024:sa_navigator_index_label
!*strings.25025:sa_messenger_index_label
!*strings.25026:sa_applets_index_label
!*strings.25027:sa_certs_intro_index_label
!*strings.25028:sa_yours_index_label
!*strings.25029:sa_people_index_label
!*strings.25030:sa_sites_index_label
!*strings.25031:sa_developers_index_label
!*strings.25032:sa_signers_index_label
!*strings.25033:sa_modules_index_label
!*strings.25034:sa_secinfo_title_label
!*strings.25035:sa_passwords_title_label
!*strings.25036:sa_navigator_title_label
!*strings.25037:sa_messenger_title_label
!*strings.25038:sa_applets_title_label
!*strings.25039:sa_certs_intro_title_label
!*strings.25040:sa_yours_title_label
!*strings.25041:sa_people_title_label
!*strings.25042:sa_sites_title_label
!*strings.25043:sa_developers_title_label
!*strings.25044:sa_signers_title_label
!*strings.25045:sa_modules_title_label
!*strings.25046:sa_enter_secure_label
!*strings.25047:sa_leave_secure_label
!*strings.25048:sa_mixed_secure_label
!*strings.25049:sa_send_clear_label
!*strings.25050:sa_ssl_cert_label
!*strings.25051:sa_ask_sa_every_time_label
!*strings.25052:sa_select_auto_label
!*strings.25053:sa_ssl_config_label
!*strings.25054:sa_ssl2_enable_label
!*strings.25055:sa_ssl2_config_label
!*strings.25056:sa_ssl3_enable_label
!*strings.25057:sa_ssl3_config_label
!*strings.25058:sa_smime_cert_label
!*strings.25059:sa_smime_no_certs_blurb
!*strings.25060:sa_smime_config_label
!*strings.25061:sa_change_password_label
!*strings.25062:sa_set_password_label
!*strings.25063:sa_ask_for_password_label
!*strings.25064:sa_once_per_session_label
!*strings.25065:sa_every_time_label
!*strings.25066:sa_after_label
!*strings.25067:sa_minutes_label
!*strings.25068:sa_compose_encrypt_subtitle
!*strings.25069:sa_compose_sign_subtitle
!*strings.25070:sa_message_encrypt_subtitle
!*strings.25071:sa_message_sign_subtitle
!*strings.25072:sa_can_encrypt
!*strings.25073:sa_send_encrypt_desc
!*strings.25074:sa_encrypt_this_checkbox_label
!*strings.25075:sa_send_clear_warn_desc
!*strings.25076:sa_no_recipients_desc
!*strings.25077:sa_cannot_encrypt_head
!*strings.25078:sa_cert_missing_tail
!*strings.25079:sa_cert_has_exp_tail
!*strings.25080:sa_cert_has_revoke_tail
!*strings.25081:sa_cert_no_alias_tail
!*strings.25082:sa_cert_newsgroup_tail
!*strings.25083:sa_cert_invalid_tail
!*strings.25084:sa_cert_untrusted_tail
!*strings.25085:sa_cert_issuer_untrusted_tail
!*strings.25086:sa_cert_issuer_unknown_tail
!*strings.25087:sa_cert_unknown_error_tail
!*strings.25088:sa_how_to_get_their_cert_1
!*strings.25089:sa_how_to_get_their_cert_2
!*strings.25090:sa_can_be_signed
!*strings.25091:sa_cannot_be_signed
!*strings.25092:sa_cannot_sign_desc_1
!*strings.25093:sa_cannot_sign_desc_2
!*strings.25094:sa_can_sign_desc
!*strings.25095:sa_sign_disclaimer
!*strings.25096:sa_sign_this_checkbox_label
!*strings.25097:sa_was_encrypted
!*strings.25098:sa_was_not_encrypted
!*strings.25099:sa_was_encrypted_for_other_1
!*strings.25100:sa_was_encrypted_for_other_2
!*strings.25101:sa_encryption_algorithm_was
!*strings.25102:sa_was_signed_head
!*strings.25103:sa_included_cert_desc_head
!*strings.25104:sa_was_signed_at
!*strings.25105:sa_included_cert_desc_signed_at
!*strings.25106:sa_was_signed_desc_tail_1
!*strings.25107:sa_was_signed_desc_tail_2
!*strings.25108:sa_was_not_signed
!*strings.25109:sa_sig_invalid
!*strings.25110:sa_encryption_invalid
!*strings.25111:sa_sign_error_intro
!*strings.25112:sa_sig_tampered_1
!*strings.25113:sa_sig_tampered_2
!*strings.25114:sa_addr_mismatch_part1
!*strings.25115:sa_addr_mismatch_part2
!*strings.25116:sa_addr_mismatch_part3
!*strings.25117:sa_news_encrypt_subtitle
!*strings.25118:sa_news_encrypted_1
!*strings.25119:sa_news_encrypted_2
!*strings.25120:sa_news_not_encrypted
!*strings.25121:sa_nav_encryption_subtitle
!*strings.25122:sa_nav_verification_subtitle
!*strings.25123:sa_nav_no_encrypt_desc_1
!*strings.25124:sa_nav_no_encrypt_desc_2
!*strings.25125:sa_nav_encrypt_desc_1
!*strings.25126:sa_nav_encrypt_desc_2
!*strings.25127:sa_nav_encrypt_desc_3
!*strings.25128:sa_nav_no_encrypt_mix_desc_1
!*strings.25129:sa_nav_no_encrypt_mix_desc_2
!*strings.25130:sa_nav_no_encrypt_mix_desc_3
!*strings.25131:sa_nav_encrypt_mix_desc_1
!*strings.25132:sa_nav_encrypt_mix_desc_2
!*strings.25133:sa_nav_encrypt_mix_desc_3
!*strings.25134:sa_nav_encrypt_mix_desc_4
!*strings.25135:sa_nav_encrypt_mix_desc_5
!*strings.25136:sa_nav_verify_cert_desc
!*strings.25137:sa_nav_verify_domain_desc
!*strings.25138:sa_nav_verify_missing_desc_1
!*strings.25139:sa_nav_verify_missing_desc_2
!*strings.25140:sa_nav_info_menubar_name
!*strings.25141:sa_nav_info_toolbar_name
!*strings.25142:sa_nav_info_personalbar_name
!*strings.25143:sa_nav_info_location_name
!*strings.25144:sa_nav_info_status_name
!*strings.25145:sa_nav_verify_java_desc_1
!*strings.25146:sa_nav_verify_java_desc_2
!*strings.25147:sa_nav_verify_js_desc_1
!*strings.25148:sa_nav_verify_js_desc_2
!*strings.25149:sa_not_me_subtitle
!*strings.25150:sa_not_me_desc_1
!*strings.25151:sa_not_me_desc_2
!*strings.25152:sa_certs_intro_string_1
!*strings.25153:sa_certs_intro_string_2
!*strings.25154:sa_certs_intro_string_3
!*strings.25155:sa_certs_intro_string_4
!*strings.25156:sa_certs_intro_string_5
!*strings.25157:sa_certs_intro_string_6
!*strings.25158:sa_your_certs_desc_1
!*strings.25159:sa_your_certs_desc_2
!*strings.25160:sa_your_certs_desc_tail_1
!*strings.25161:sa_your_certs_desc_tail_2
!*strings.25162:sa_people_certs_desc_1
!*strings.25163:sa_people_certs_desc_2
!*strings.25164:sa_get_certs_desc
!*strings.25165:sa_site_certs_desc
!*strings.25166:sa_signers_certs_desc
!*strings.25167:sa_ssl_desc
!*strings.25168:sa_smime_desc
!*strings.25169:sa_smime_pref_desc
!*strings.25170:sa_encrypt_always_checkbox_label
!*strings.25171:sa_sign_mail_always_checkbox_label
!*strings.25172:sa_sign_news_always_checkbox_label
!*strings.25173:sa_smime_cert_desc
!*strings.25174:sa_smime_send_cert_desc
!*strings.25175:sa_smime_no_cert_desc_1
!*strings.25176:sa_smime_no_cert_desc_2
!*strings.25177:sa_smime_cipher_heading
!*strings.25178:sa_smime_cipher_desc
!*strings.25179:sa_applets_desc_1
!*strings.25180:sa_applets_desc_2
!*strings.25181:sa_password_desc_1
!*strings.25182:sa_password_desc_2
!*strings.25183:sa_modules_desc
!*strings.25184:sa_view_crl_button_label
!*strings.25185:sa_signers_view_crl_desc
!*strings.25186:sa_was_signed_alt_desc_tail_1
!*strings.25187:sa_proxy_cert_label
!*strings.25188:sa_no_proxy_auth_label
!*strings.25189:

*strings.25500:Szyfrowanie FORTEZZA SKIPJACK z 80-bitowym kluczem

*strings.25511:<b>Nazwa modu³u bezpieczeñstwa:</b> %0%<input type="%1%" name="name" value=%2%><br><b>Plik modu³u bezpieczeñstwa:</b> %3%<input type="%4%"name="library" value=%5%><br>%-cont-%

*strings.25512:<b>Producent:</b> %6%<br><b>Opis:</b> %8%<br><b>Wersja PKCS #11:</b> %7%<br><b>Wersja biblioteki: </b> %9%<br><center><table><tr>%-cont-%

!*strings.25513:<td width=10></td><td align=top><select name=slots size=10 onChange="setpass(this)">%10%</select></td><td valign=top><table border=0 cellspacing=0 cellpadding=0><td width=10></td>%-cont-%
!*strings.25514:<td height=30 valign=top align=center> <input type="submit" name="button" value="%moreinfo%"width=174></input></td></tr>%-cont-%
!*strings.25515:<tr><td width=10></td><td height=30 valign=middle align=center><input type="submit" name="button" value="%config%"width=174></input></td></tr>%-cont-%
!*strings.25516:<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="%login%"width=174></input></td></tr>%-cont-%
!*strings.25517:<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="%logout%"width=174></input></td></tr>%-cont-%

*strings.25518:<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="Zmieñ has³o"width=174></input></td></tr></table>%-cont-%

!*strings.25519:</td></tr></table></center><script>var login_status = %11%function setpass(select){%-cont-%
!*strings.25520:for(var i=0;i<select.options.length;i++) {   if (select.options[i].selected) {    document.forms[0].elements[9].value = login_status[i];    return;   } }%-cont-%

*strings.25521:  document.forms[0].elements[9].value = "Nie wybrano tokena"; }\n\
function initarray() {  var numargs = initarray.arguments.length;  var a; a = new Array(numargs); %-cont-%

!*strings.25522:  for ( var i = 0; i < numargs; i++ ) {    a[i] = initarray.arguments[i];  } return a; }</script>

*strings.25531: Konfiguracja

*strings.25542: <P><B>Nazwa modu³u:</B> %0% <BR><B>Opis:</B> %1% <BR><B>Nazwa Tokena:</B> %2% <BR><B>Uwagi:</B> %3%<P><HR> %-cont-%

*strings.25543: <P> <DT><INPUT TYPE=Radio %4% NAME="enabledisable" VALUE="disable"> <B>Wy³±cz ten token.</B> %-cont-%

*strings.25544: <FORM><P> <DL> <DT><INPUT TYPE=Radio %5% NAME="enabledisable" VALUE="enable"> <B>W³±cz ten token oraz nastêpuj±ce funkcje:</B> %6% </FORM>

*strings.25555: <P><B>Nazwa modu³u:</B> %0% <BR><B>Opis:</B> %1% <BR><B>Nazwa Tokena:</B> %2% <P><HR> %-cont-%

!*strings.25556: <FORM> <P> <FONT COLOR="FF0000" SIZE=+1> %3%<BR>%4%<BR>%5% </FONT></FORM>

*strings.25557:Konfiguruj slot

*strings.25568:Nazwa modu³u:   

*strings.25569:Plik: 

*strings.25570:Szyfrowanie RSA PKCS

*strings.25571:Usuniêcie zewnêtrznego modu³u zabezpieczeñ powiod³o siê

*strings.25572:Usuniêcie wewnêtrznego modu³u zabezpieczeñ powiod³o siê

*strings.25573:Nowy modu³ zabezpieczeñ zosta³ zainstalowany

*strings.25574:Czy na pewno chcesz zainstalowaæ ten modu³ zabezpieczeñ?

*strings.25575:Czy na pewno chcesz usun±æ ten modu³ zabezpieczeñ?

*strings.25576:Podaj skrót dla certyficatu:

*strings.25587:Obejrzyj/zmieñ CRL

*strings.25588:<h3 align=center>%0%</h3><b>URL:</b>%1%<br><b>Ostatnia aktualizacja:</b>%2%<br><b>Nastêna aktualizacja:  </b>%3% %4%<br><b>Podpisany przez:</b><ul>%5%</ul><br><center><select name=bogus size=8>%6%</select></center>

*strings.25589:Podaj adres URL do za³adowania nowych CRL/CKL:

*strings.25590:<h3 align=center>%0%</h3>Podaj adres URL listy odwo³anych certyfikatów.<br><br><b>URL:</b><input name=url size=70 type=text value="%1%">

*strings.25591:Nie wybrano CRL. Wybierz CRL z listy.

*strings.25592:Wybrana CRL nie posiada wa¿nego adresu URL aby j±\n\
za³adowaæ. Ustaw URL  za pomoc± 'Nowy/Edytuj...'.

*strings.25593:<font color=red>Przeterminowany</font>

*strings.25594:Nie wpisa³e¶ adresu URL: Nie za³adowano nowej CRL.

*strings.25595:Edytuj CRL

*strings.25596:CRL

*strings.25597:<font color=red>Jeszcze nie wa¿ny</font>
