! Insert copyright and license here 1994

!
! Polish translation by Krzysztof Szatanik 'Diabl0/MAO' <diabl0@linuxpl.org>
! 27.08.2000

! aby zainstalowa� ten plik, po prostu zmie� jego nazw� na "Netscape"
! (cp Netscape.pl Netscape) i wrzu� go do katalogu
! "/usr/X11/lib/X11/app-defaults/" (cp Netscape /usr/X11/lib/X11/app-defaults/)

! zwroty i wyrazy kt�re nie wiem jak przet�umaczy� znajduj� si� za liniami
! oznaczonymi jako '![nn]' wi�c je�eli masz ochot� i umiej�tno�ci mo�esz
! spr�bowa� je przet�umaczy� i podes�a� mi wynik twojej pracy.

!
! Niestety nie znalaz�em w tym pliku kilku ciekawych i wartch przet�umaczenia
! komunikat�w takich jak np. informacja i� nie mo�na si� po��czy� z danym
! serwerem i innych (g��wnie komunikaty b��d�w)...
!
! Je�eli znalaz�e� jakie� b��dy w t�umaczeniu, pode�lij dok�adny opis gdzie
! ten b��d wyst�puje (okno takie a takie, nazwa menu, pozycja itp.), dok�adn�
! tre�� b��dnie przet�umaczonego zwrotu oraz dok�adn� tre�� zwrotu jaki
! powinien tam wyst�powa�. Niestety ten plik jest tak chaotyczny i� bez tych
! informacji ci�ko b�dzie cokolwiek tutaj znale�� do poprawy
!


! Netscape.ad --- app-defaults file for Netscape 4.79.
!
! Bugs and commentary to x_cbug@netscape.com.

! Created: Jamie Zawinski <use the bug address, please>, 23-Jun-94.
! Modified: dp Suresh <dp@netscape.com>, 01-Aug-95
! Modified: snpf <snpf@netscape.com>, 23-Sep-96
!
!	==========================================================
!	NOTE: If you're looking here for things to customize, look
!	on the Preferences dialogs under the Options menu first.
!	Most things are customizable from there.  Things which are
!	settable via the Preferences dialog boxes are stored in
!	the ~/.netscape/preferences file, and not in X resources.
!	==========================================================
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
*appDir:			/@LOC_LANG@/netscape

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
!	video/mpeg; mpeg_play %s 2>&-
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
!  <input-encoding>  : <output-encoding> : <extensions> : <filter-command>
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
! For the web browser window:	Netscape.Navigator.geometry: =500x700+100-0
! For the mail reader:		Netscape.Mail.geometry: =500x800+200-0
! For the news reader:		Netscape.News.geometry: =500x800+300-0
! For the mail editor:		Netscape.Composition.geometry: =400x600
! For the bookmarks window:	Netscape.Bookmarks.geometry: =300x900-0-0
! For the address book window:	Netscape.AddressBook.geometry: =600x900-300-0
! For the download windows:	Netscape.Download.geometry: =500x200-0-0
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


! Keybindings in the main window which correspond to menu items.
! These are installed on every widget which is a child of our Shell,
! and are not installed on popups/transients.
!
*globalTranslations:	#override		\n\
											\
Ctrl ~Shift<Key>a:		xfeDoCommand(selectAll)			\n\
Meta ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)		\n\
Alt ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)		\n\
Ctrl<Key>C:			xfeDoCommand(copy)			\n\
Meta ~Ctrl<Key>D:		undefined-key()				\n\
Alt ~Ctrl<Key>D:		undefined-key()				\n\
Meta ~Ctrl<Key>E:		undefined-key()				\n\
Alt ~Ctrl<Key>E:		undefined-key()				\n\
Meta ~Ctrl ~Shift<Key>f:	undefined-key()				\n\
Alt ~Ctrl ~Shift<Key>f:		undefined-key()				\n\
Meta ~Ctrl<Key>G:		undefined-key()				\n\
Alt ~Ctrl<Key>G:		undefined-key()				\n\
Meta ~Ctrl<Key>H:		xfeDoCommand(openHistory)		\n\
Alt ~Ctrl<Key>H:		xfeDoCommand(openHistory)		\n\
Meta ~Ctrl<Key>I:		undefined-key()				\n\
Alt ~Ctrl<Key>I:		undefined-key()				\n\
Meta ~Ctrl<Key>J:		undefined-key()				\n\
Alt ~Ctrl<Key>J:		undefined-key()				\n\
Meta ~Ctrl<Key>K:		xfeDoCommand(addBookmark)		\n\
Alt ~Ctrl<Key>K:		xfeDoCommand(addBookmark)		\n\
Meta ~Ctrl<Key>L:		undefined-key()				\n\
Alt ~Ctrl<Key>L:		undefined-key()				\n\
Meta ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
Alt ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
Meta ~Ctrl ~Shift<Key>n:	xfeDoCommand(openBrowser)		\n\
Alt ~Ctrl ~Shift<Key>n:		xfeDoCommand(openBrowser)		\n\
Meta ~Ctrl  Shift<Key>n:	xfeDoCommand(newBlank)			\n\
Alt ~Ctrl  Shift<Key>n:		xfeDoCommand(newBlank)			\n\
Meta ~Ctrl<Key>O:		undefined-key()				\n\
Alt ~Ctrl<Key>O:		undefined-key()				\n\
Meta ~Ctrl<Key>P:		undefined-key()				\n\
Alt ~Ctrl<Key>P:		undefined-key()				\n\
Meta ~Ctrl<Key>Q:		xfeDoCommand(exit)			\n\
Alt ~Ctrl<Key>Q:		xfeDoCommand(exit)			\n\
Meta ~Ctrl<Key>R:		undefined-key()				\n\
Alt ~Ctrl<Key>R:		undefined-key()				\n\
Meta ~Ctrl<Key>S:		xfeDoCommand(saveAs)			\n\
Alt ~Ctrl<Key>S:		xfeDoCommand(saveAs)			\n\
Meta ~Ctrl<Key>T:		undefined-key()				\n\
Alt ~Ctrl<Key>T:		undefined-key()				\n\
Meta ~Ctrl<Key>U:		xfeDoCommand(viewPageSource)		\n\
Alt ~Ctrl<Key>U:		xfeDoCommand(viewPageSource)		\n\
Ctrl<Key>V:			xfeDoCommand(paste)			\n\
Meta ~Ctrl<Key>W:		xfeDoCommand(close)			\n\
Alt ~Ctrl<Key>W:		xfeDoCommand(close)			\n\
Ctrl<Key>X:			xfeDoCommand(cut)			\n\
Meta ~Ctrl<Key>Y:		xfeDoCommand(paste)			\n\
Alt ~Ctrl<Key>Y:		xfeDoCommand(paste)			\n\
Meta ~Ctrl<Key>Z:		undefined-key()				\n\
Alt ~Ctrl<Key>Z:		undefined-key()				\n\
									\
Meta ~Ctrl ~Shift<Key>1:	xfeDoCommand(openOrBringUpBrowser)	\n\
Alt ~Ctrl ~Shift<Key>1:		xfeDoCommand(openOrBringUpBrowser)	\n\
Meta ~Ctrl  Shift<Key>1:	xfeDoCommand(openFolders)		\n\
Alt ~Ctrl  Shift<Key>1:		xfeDoCommand(openFolders)		\n\
Meta ~Ctrl ~Shift<Key>2:	xfeDoCommand(openInbox)			\n\
Alt ~Ctrl ~Shift<Key>2:		xfeDoCommand(openInbox)			\n\
Meta ~Ctrl  Shift<Key>2:	xfeDoCommand(openAddrBook)		\n\
Alt ~Ctrl  Shift<Key>2:		xfeDoCommand(openAddrBook)		\n\
Meta ~Ctrl<Key>3:		xfeDoCommand(openEditor)		\n\
Alt ~Ctrl<Key>3:		xfeDoCommand(openEditor)		\n\
Meta ~Ctrl<Key>4:		xfeDoCommand(openCalendar)		\n\
Alt ~Ctrl<Key>4:		xfeDoCommand(openCalendar)		\n\
Meta ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
Alt ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
Meta ~Ctrl<Key>7:		xfeDoCommand(openRadio)			\n\
Alt ~Ctrl<Key>7:		xfeDoCommand(openRadio)			\n\
									\
~Meta ~Alt ~Ctrl<Key>Prior:		PageUp()			\n\
~Meta ~Alt ~Ctrl<Key>Next:		PageDown()			\n\
~Meta ~Alt ~Ctrl<Key>osfPageUp:		PageUp()			\n\
~Meta ~Alt ~Ctrl<Key>osfPageDown:	PageDown()			\n\
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
	      Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	      Ctrl ~Shift<Key>g:		xfeDoCommand(findAgain)				\n\
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
!    Ctrl+D for "Delete Message"
!    Ctrl+Y for "Redo"
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
	      Ctrl<Key>Z:		xfeDoCommand(undo)\n\
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
	      Ctrl Shift<Key>f:	xfeDoCommand(search)	   	\n\
	      Ctrl ~Shift<Key>f:		xfeDoCommand(findInObject)			\n\
	      Ctrl<Key>G:		xfeDoCommand(findAgain)				\n\
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
	      Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	      Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
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
	      Ctrl<Key>D:		xfeDoCommand(delete)				\n\
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
	      Ctrl<Key>D:		xfeDoCommand(delete)			\n\
	      Ctrl<Key>F:		xfeDoCommand(findInObject)		\n\
	      Ctrl<Key>G:		xfeDoCommand(findAgain)			\n\
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
	      Ctrl<Key>Y:		xfeDoCommand(redo)					\n\
	      Ctrl<Key>Z:		xfeDoCommand(undo)					\n\
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
       Ctrl<Key>D:		xfeDoCommand(delete)	\n\
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
	           Ctrl<Key>x:		xfeDoText(cut)	\n\
	           Ctrl<Key>c:		xfeDoText(copy)	\n\
                   Ctrl<Key>v:		xfeDoText(paste)	\n\
	Meta ~Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
	~Meta Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
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
	           Ctrl<Key>x:		xfeDoText(cut)	\n\
	           Ctrl<Key>c:		xfeDoText(copy)	\n\
	           Ctrl<Key>v:		xfeDoText(paste)	\n\
	Meta ~Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
	~Meta Alt ~Ctrl<Key>y:		xfeDoText(paste)	\n\
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
             Shift Ctrl<Key>z: xfeDoCommand(redo)              \n\
	      Ctrl<Key>z:		xfeDoCommand(undo)		\n\
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
	           Ctrl ~Shift<Key>f:	xfeDoCommand(findInObject)		\n\
	           Ctrl ~Shift<Key>g:	xfeDoCommand(findAgain)			\n\
									\
	      Ctrl<Key>A:		xfeDoCommand(selectAll)				\n\
	      Ctrl<Key>C:		xfeDoCommand(copy)					\n\
	Meta ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
	 Alt ~Ctrl<Key>H:		xfeDoCommand(openHistory)			\n\
	Meta ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	 Alt ~Ctrl<Key>m:		xfeDoCommand(composeMessage)		\n\
	Meta ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	 Alt ~Ctrl ~Shift<Key>n: xfeDoCommand(openBrowser)			\n\
	Meta ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
	 Alt ~Ctrl  Shift<Key>n: xfeDoCommand(newBlank)				\n\
	Meta ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
	 Alt ~Ctrl<Key>Q:		xfeDoCommand(exit)					\n\
		Meta ~Ctrl<Key>R:		undefined-key()				\n\
		 Alt ~Ctrl<Key>R:		undefined-key()				\n\
	      Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	Meta ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	 Alt ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	      Ctrl<Key>X:		xfeDoCommand(cut)					\n\
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
	Afrikaans [af]				\n\
	Albanian [sq]				\n\
	Basque [eu]				\n\
	Bulgarian [bg]				\n\
	Byelorussian [be]			\n\
	Catalan [ca]				\n\
	Chinese [zh]				\n\
	Chinese/China [zh-CN]			\n\
	Chinese/Taiwan [zh-TW]			\n\
	Croatian [hr]				\n\
	Czech [cs]				\n\
	Danish [da]				\n\
	Dutch [nl]				\n\
	Dutch/Belgium [nl-BE]			\n\
	English [en]				\n\
	English/United Kingdom [en-GB]		\n\
	English/United States [en-US]		\n\
	Faeroese [fo]				\n\
	Finnish [fi]				\n\
	French [fr]				\n\
	French/Belgium [fr-BE]			\n\
	French/Canada [fr-CA]			\n\
	French/France [fr-FR]			\n\
	French/Switzerland [fr-CH]		\n\
	Galician [gl]				\n\
	German [de]				\n\
	German/Austria [de-AT]			\n\
	German/Germany [de-DE]			\n\
	German/Switzerland [de-CH]		\n\
	Greek [el]				\n\
	Hungarian [hu]				\n\
	Icelandic [is]				\n\
	Indonesian [id]				\n\
	Irish [ga]				\n\
	Italian [it]				\n\
	Japanese [ja]				\n\
	Korean [ko]				\n\
	Macedonian [mk]				\n\
	Norwegian [no]				\n\
	Polish [pl]				\n\
	Portuguese [pt]				\n\
	Portuguese/Brazil [pt-BR]		\n\
	Romanian [ro]				\n\
	Russian [ru]				\n\
	Scots Gaelic [gd]			\n\
	Serbian [sr]				\n\
	Slovak [sk]				\n\
	Slovenian [sl]				\n\
	Spanish [es]				\n\
	Spanish/Argentina [es-AR]		\n\
	Spanish/Colombia [es-CO]		\n\
	Spanish/Mexico [ex-MX]			\n\
	Spanish/Spain [es-ES]			\n\
	Swedish [sv]				\n\
	Turkish [tr]				\n\
	Ukrainian [uk]				\n


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
*XmSash.traversalOn:		False

!
! Label Land
!
*Help.sensitive:		False

! HTML forms "More..." button (options menus)
*drawingArea*moreButton.labelString:	Wi�cej...

! Bookmarks "More..." cascade button
*bookmarkMoreButton.labelString:	Wi�cej...

! Mail and news "More..." button
*mailNewsMoreButton.labelString:	Wi�cej...

!====================================================================
!  Menubar stuff
!====================================================================
!
! The file menus for all the components come first.
! Then the menus are listed on a per component basis.
!

*menuBar.fileMenu.labelString:		Plik
!*menuBar.fileMenu.mnemonic:		F

*menuBar.editMenu.labelString:		Edycja
!*menuBar.editMenu.mnemonic:		E

*menuBar.viewMenu.labelString:		Widok
!*menuBar.viewMenu.mnemonic:		V

*menuBar.goMenu.labelString:		Id� do
!*menuBar.goMenu.mnemonic:		G

*menuBar.messageMenu.labelString:	Wiadomo��
!*menuBar.messageMenu.mnemonic:		M

*menuBar.bookmarkMenu.labelString:	Zak�adka
!*menuBar.bookmarkMenu.mnemonic:	B

*menuBar.windowMenuLite.labelString:	Okno
!*menuBar.windowMenuLite.mnemonic:	W
*menuBar.windowMenu.labelString:	Komunikator
!*menuBar.windowMenu.mnemonic:		C
!*menuBar.windowMenu.fontList:		-*-helvetica-bold-o-*-*-*-120-*--*-*-iso8859-2:*-r-*

*menuBar.itemMenu.labelString:		pozycja
!*menuBar.itemMenu.mnemonic:		I

*menuBar.helpMenu.labelString:		Pomoc
!*menuBar.helpMenu.mnemonic:		H


!=======================
!  File Menu - Navigator
!=======================

*menuBar*newSubmenu.labelString:	Nowe
*menuBar*newSubmenu.mnemonic:		N

! File/New Submenu
*menuBar*openBrowser.labelString:	Okno nawigatora
*menuBar*openBrowser.mnemonic:		N
*menuBar*openBrowser.acceleratorText:	Alt+N
*openBrowser.documentationString:		\
Otwiera nowe okno przegl�darki

*composeMessage.mnemonic:		M
*composeMessage.acceleratorText:	Alt+M
*composeMessage.labelString:		Wiadomo��

! In the three pane view, under the "Message" menu, it should read
! "New Message" and not "Message"
*menuBar*composeMessage.labelString:		Nowa wiadomo��

*composeMessage.documentationString:	\
Tworzy now� wiadomo��.
*composeArticle.documentationString:	\
Tworzy now� wiadomo�� grupy dyskusyjnej.

*menuBar*newBlank.labelString:			Pusta strona
*menuBar*newBlank.mnemonic:				P
*menuBar*newBlank.acceleratorText:		Alt+Shift+N
*newBlank.documentationString:			Tworzy now� stron�.

*menuBar*newTemplate.labelString:		Strona z wzorca...
*menuBar*newTemplate.mnemonic:			T
*newTemplate.documentationString:	\
U�yj wzoru do utworzenia nowej strony.

*menuBar*newWizard.labelString:			Strona z kreatora...
*menuBar*newWizard.mnemonic:			W
*newWizard.documentationString:	U�yj kreatora do utworzenia nowej strony.
! end File/New Submenu

*menuBar*openPage.labelString:		Otw�rz...
*menuBar*openPage.mnemonic:			O
*menuBar*openPage.acceleratorText:	Alt+O
*openPage.documentationString:		\
Otwiera plik lokalny lub stron� WWW w aktualnym oknie.

*menuBar*recentSubmenu.labelString:	Otw�rz ostatnie...

*menuBar*saveMsg.labelString:		Zapisz
*menuBar*saveMsg.mnemonic:		S
*menuBar*saveMsg.acceleratorText:	Alt+S
*menuBar*saveAs.labelString:		Zapisz jako...
*menuBar*saveMsgAs.labelString:		Zapisz jako
*menuBar*saveMsgAs.mnemonic:		S

*saveAsCmdString:			Zapisz jako...
*saveFramesetAsCmdString		Zapisz zestaw ramek jako...
*menuBar*saveAs.mnemonic:		S
*menuBar*saveAs.acceleratorText:	Alt+S
*saveAs.documentationString:		Zapisuje kopi� aktualnej strony.

*menuBar*saveFrameAs.labelString:	Zapisz ramk� jako...
*menuBar*saveFrameAs.mnemonic:		F
*saveFrameAs.documentationString:	Zapisuje kopi� aktualnej ramki.

*sendPage.labelString:			Wy�lij stron�
*sendPage.mnemonic:			d
*sendPage.documentationString:		Wysy�a aktualn� stron� do odbiorcy.

*sendLink.labelString:			Wy�lij adres
*sendLink.mnemonic:			k
*sendLink.documentationString:		Wysy�a adres aktualnej strony do odbiorcy.

*editPageCmdString:			Edystuj stron�
*editFrameCmdString:			Edytuj ramk�
*editPage.labelString:			Edytuj stron�
*editFrameSet.labelString:		Edytuj definicj� ramek
*menuBar*editPage.mnemonic:		E
*editPage.documentationString:		Edytuje aktualn� stron� lub definicj� ramek
*menuBar*editFrame.labelString:		Edytuj ramk�
*menuBar*editFrame.mnemonic:		F
*editFrame.documentationString:		Edytuje aktualn� ramk�

*menuBar*uploadFile.labelString:	Wy�lij plik...
*menuBar*uploadFile.mnemonic:		U
*uploadFile.documentationString:	Wysy�a plik na podany adres FTP
;
*menuBar*printSetup.labelString:	Ustawienia drukowania...
*menuBar*printSetup.mnemonic:		g
*printSetup.documentationString:	Zmienia ustawienia drukowania...

*menuBar*printPreview.labelString:	Poka� podgl�d
*menuBar*printPreview.mnemonic:		v
*printPreview.documentationString:	Pokazuje podgl�d aktualnej strony.

*menuBar*print.labelString:	Drukuj...
*printCmdString:		Drukuj...
*printFrameCmdString:		Drukuj ramk�...
*menuBar*print.mnemonic:	P
*menuBar*print.acceleratorText:	Alt+P
*print.documentationString:	Drukuj t� stron�

*menuBar*close.labelString:	Zamknij
*menuBar*close.mnemonic:	C
*menuBar*close.acceleratorText:	Alt+W
*close.documentationString:	Zamknij to okno

*menuBar*exit.labelString:	Wyjd�
*menuBar*exit.mnemonic:		x
*menuBar*exit.acceleratorText:	Alt+Q
*exit.documentationString:	Zamyka wszystkie okna i wychodzi z programu.

!===========================
!  File Menu - Page Composer
!===========================

*menuBar*save.labelString:	Zapisz
*menuBar*save.mnemonic:		S
*menuBar*save.acceleratorText:	Alt+S
*save.documentationString:	Zapiszuje aktualn� stron�

*Editor*menuBar*saveAs.acceleratorText:

*menuBar*publish.labelString:	Opublikuj...
*menuBar*publish.mnemonic:	u
*publish.documentationString:	Wysy�a aktualny plik lub katalog na konto WWW

*menuBar*browsePage.labelString:	Przegl�daj stron�
*menuBar*browsePage.mnemonic:		B
*browsePage.documentationString:	Otw�rz aktualny plik w oknie przegl�darki

!=============================
! File Menu - Compose Message
!=============================

*Composition*save.documentationString:	Zapisz aktualn� wiadomo��

*Composition*toolBar*save*saveAs.labelString:	Jako plik...
*Composition*toolBar*save*saveAs.mnemonic:	F
*Composition*saveAs.documentationString:	Zapisuje kopi� aktualnej wiadomo�ci

*Composition*menuBar*saveAs.labelString:	Plik...
*Composition*menuBar*saveAs.mnemonic:		F
*Composition*menuBar*saveAs.acceleratorText:
*Composition*saveAs.documentationString:	Zapisuje kopi� aktualnej wiadomo�ci

*Composition*toolBar*save*saveDraft.labelString: Jako do wys�ania
*Composition*toolBar*save*saveDraft.mnemonic: D
*Composition*toolBar*save*saveDraft.documentationString: Zapisz aktualn� wiadomo�� w katalogu "Do wys�ania" aby wys�a� j� p�niej.

*menuBar*saveDraft.labelString:		Do wys�ania
*menuBar*saveDraft.mnemonic:		D
*saveDraft.documentationString:		Zapisz aktualn� wiadomo�� w katalogu "Do wys�ania" aby wys�a� j� p�niej.

*Composition*toolBar*save*saveTemplate.labelString: Jako wzorzec
*Composition*toolBar*save*saveTemplate.mnemonic: T
*Composition*toolBar*save*saveTemplate.documentationString: Zapisz t� wiadomo�� jako wzorzec do p�niejszego u�ycia.

*menuBar*saveTemplate.labelString:	Wzorzec
*menuBar*saveTemplate.mnemonic:		T
*saveTemplate.labelString:		Wzorzec
*saveTemplate.mnemonic:			T
*saveTemplate.documentationString:	Zapisz t� wiadomo�� jako wzorzec do p�niejszego u�ycia
*menuBar*saveAsMenu.labelString:	Zapisz jako
*menuBar*saveAsMenu.mnemonic:		A
*menuBar*saveAsMenu.saveMessagesAs.documentationString:		Zapisz jako...

*menuBar*saveMessage.labelString:		Zapisz
*menuBar*saveMessage.acceleratorText:		Alt+S
*menuBar*saveMessage.documenationString:	Zapisz t� wiadomo��

*menuBar*sendMessageNow.labelString:		Wy�lij
*menuBar*sendMessageNow.mnemonic:			d
*sendMessageNow.documentationString:		Wy�lij t� wiadomo�� teraz
*menuBar*sendMessageNow.acceleratorText:	Alt+Enter

*menuBar*sendMessageLater.labelString:		Wy�lij p�niej
*menuBar*sendMessageLater.mnemonic:			L
*sendMessageLater.documentationString:		Zapisuje t� wiadomo�� do wys�ania p�niej
*menuBar*sendMessageLater.acceleratorText:	Alt+Shift+Enter

*menuBar*quoteOriginalText.labelString:		Cytuj oryginaln� wiadomo��
*menuBar*quoteOriginalText.mnemonic:		Q
*menuBar*quoteOriginalText.acceleratorText:	Alt+Shift+Q
*quoteOriginalText.documentationString:	\
Wstawia tekst strony jako cyctat do aktualnej wiadmo�ci

*menuBar*addresseePicker.labelString:		Wybierz odbiorc�w...
*menuBar*addresseePicker.mnemonic:		t
*addresseePicker.documentationString:		Wybierz adresy odbiorc�w
*addresseePicker.tipString:			Wybierz adresy

*autoComplOnCmdString:				Nie uzupe�niaj adres�w
*autoComplOffCmdString:				Uzupe�niaj adresy

*menuBar*showComplPicker.labelString:		Poka� pasuj�ce adresy
*menuBar*showComplPicker.mnemonic:		S
*menuBar*showComplPicker.acceleratorText:	Alt+J
*menuBar*autoComplOnOff.acceleratorText:	Alt+D
!*showComplPicker.documentationString:		Poka� pasuj�ce adresy...
!*showComplPicker.tipString:			Poka� pasuj�ce adresy...

*menuBar*attach.labelString:		Do��cz
*menuBar*attach.mnemonic:		A
*attach.documentationString: 		Do��cz stron� lub kart� ksi��ki adresowej do aktualnej wiadomo�ci
*menuBar*showChrome.labelString:	Poka�
*menuBar*showChrome.mnemonic:		S

*menuBar*floatingTaskBarClose.labelString:  Ruchomy panel

!============================
!  File Menu - Message Center
!============================

*folderPrivileges.labelString:	Uprawnienia
*newFolder.labelString:		Nowy katalog...
*newFolderCmdString:		Nowy katalog...
*newSubFolderCmdString:		Nowy podkatalog...
! sspitzer:  is category used anymore?  what is it?
*newCategoryCmdString:		Nowa kategoria...
*newNewsgroupCmdString:		Nowa grupa dyskusyjna...
*newFolder.mnemonic:							w
*newFolder.documentationString:	Tworzy nowy katalog poczty lub grupy dyskusyjnej

*MailFolder*menuBar*openSelected.labelString:		Otw�rz
*MailFolder*menuBar*openSelected.mnemonic:		O
*MailFolder*menuBar*openSelected.acceleratorText:	Alt+O
*MailFolder*menuBar*openSelected.documentationString: \
Otwiera wybrany katalog poczty lub grupy dyskusyjnej
*openFolder.labelString: Otw�rz
*openFolder.acceleratorText: Alt+O
*openFolder.mnemonic:					O
*openFolder.documentationString: \
Otwiera wybrany katalog poczty lub grupy dyskusyjnej

*renameFolder.labelString:		Zmie� nazw� katalogu...
*renameFolder.mnemonic:			R
*renameFolder.documentationString:	Zmienia nazw� aktualnego katalogu

*menuBar*newMsgSubmenu.labelString:	Pobierz wiadomo�ci
*menuBar*newMsgSubmenu.mnemonic:	G
*newMessage.documentationString:	\
Pobiera nowe wiadomo�ci pocztowe i grup dyskusyjnych

! File/Get Messages Submenu
*menuBar*getNewMessages.labelString:	Pobierz nowe wiadomo�ci
*menuBar*getNewMessages.mnemonic: 	M

! This label is generated dynamically from the preferences
!*menuBar*getNextNNewMsgs.labelString:       Next 500
*menuBar*getNextNNewMsgs.mnemonic: 			e

*menuBar*synchWithServer.labelString:       Synchronizuj z serwerem
*menuBar*synchWithServer.mnemonic: 			S

*menuBar*sendMessagesInOutbox.labelString: Wy�lij niewys�ane wiadomo�ci
*menuBar*sendMessagesInOutbox.mnemonic: d
*sendMessagesInOutbox.documentationString: \
Wy�lij teraz wiadomo�ci z katalogu "Do wys�ania"

*menuBar*updateMessageCount.labelString:	Aktualizuj licznik wiadomo�ci
*menuBar*updateMessageCount.mnemonic:		U
*updateMessageCount.documentationString:	\
Aktualizuje liczb� nieprzeczytanych wiadomo�ci

*addNewsgroup.labelString:		Zapisz...
*addNewsgroup.mnemonic:			b
*addNewsgroup.documentationString:		Zapisz...

!=============================
!  File Menu - Message Threads
!=============================

*menuBar*openAttachmentsSubmenu.labelString:	Otw�rz za��cznik
*menuBar*openAttachmentsSubmenu.mnemonic:				O
*openAttachments.documentationString:	\
Otwiera wybrany za��cznik

! File/Open Attachments Submenu is dynamically generated

*editMessage.labelString:		Edytuj wiadomo�� jako now�
*editMessage.mnemonic:			E
*editMessage.documentationString:	Edytuj wiadomo��

*menuBar*saveTemplate.labelString:	Wzorzec
*menuBar*saveTemplate.mnemonic:		T
*menuBar*saveAsTemplate.labelString:	Wzorzec
*menuBar*saveAsTemplate.mnemonic:	T

*menuBar*saveMessagesAs.labelString:	Plik
*menuBar*saveMessagesAs.mnemonic:	F
*menuBar*saveMessagesAs.acceleratorText:	Alt+S

*MailThread*menuBar*saveMessageAs.labelString:  Plik
*MailThread*menuBar*saveMessageAs.mnemonic:  F
*MailThread*menuBar*saveMessageAs.acceleratorText:	Alt+S

*menuBar*emptyTrash.mnemonic: y

! labelString is generated dynamically
*menuBar*compressFolders.mnemonic: t

!==========================
!  File Menu - Address Book
!==========================

*addToAddressBook.labelString:	Nowa karta...
*addToAddressBook.mnemonic:		r
!*addToAddressBook.acceleratorText:	Alt+N
*addToAddressBook.documentationString:	\
Tworzy now� kart� ksi��ki adresowej

*abNewList.labelString:			Nowa lista...
*abNewList.mnemonic:			s
*abNewList.documentationString:	\
Tworzy now� list� w ksi��ce adresowej

*abNewPAB.labelString:			Nowa ksi��ka adresowa...
*abNewPAB.mnemonic:			A
*abNewPAB.documentationString:	\
Tworzy now� ksi��k� adresow�

*abNewLDAPDirectory.labelString: Nowy katalog...
*abNewLDAPDirectory.mnemonic:			D
*abNewLDAPDirectory.documentationString:	\
Create a Directory Server [???]

*menuBar*import.labelString:	Importuj...
*menuBar*import.mnemonic:		I
*AddressBook*import.documentationString:	\
Importuje plik do ksi��ki adresowej
*AddressBook*menuBar*saveAs.labelString:	Eksportuj...
*AddressBook*menuBar*saveAs.mnemonic:		E
*AddressBook*menuBar*toggleNavigationToolbar.labelString: Panel ksi��ki adresowej
*AddressBook*menuBar*toggleNavigationToolbar.mnemonic: A
*AddressBook*menuBar*abToggleABPane.labelString: Ksi��ka adresowa
*AddressBook*menuBar*abToggleABPane.mnemonic: B

*menuBar*abCall.labelString:	Dzwo�
*menuBar*abCall.mnemonic:		l
*abCall.documentationString:	\
Place a call with Mozilla Conference [???]


!
! i18n labels: used in AB search dialog, Message filter dialog,
! and Search Message dialog
!
!*I18nColon.labelString: will be something like   :
!*I18nFirst.labelString: will be something like   the
!*I18nRest.labelString: will be something like  or/and
!
*I18nColon.labelString:
*I18nFirst.labelString:
*I18nRest.labelString:

!=======================
!  File Menu - Bookmarks
!=======================

*newBookmark.labelString:							Nowa zak�adka...
*bookmarks*menuBar*newBookmark.mnemonic:			w
*newBookmark.documentationString:	\
Tworzy now� zak�adk�

*newFolder.labelString:								Nowy katalog...
*bookmarks*menuBar*newFolder.mnemonic:				F
*bookmarks*newFolder.documentationString:	\
Tworzy nowy katalog zak�adek

*newSeparator.labelString:							Nowy odst�p
*bookmarks*menuBar*newSeparator.mnemonic:			S
*bookmarks*newSeparator.documentationString:	\
Tworzy nowy odst�p

*bookmarks*menuBar*openBookmarkFile.labelString:	Otw�rz plik zak�adek...
*bookmarks*menuBar*openBookmarkFile.mnemonic:		F
*bookmarks*openBookmarkFile.documentationString:	\
Otwiera plik zak�adek w aktualnym oknie

*bookmarks*menuBar*openSelected.labelString:		Id�
*bookmarks*menuBar*openSelected.mnemonic:			k
*bookmarks*openSelected.documentationString:	\
Otwiera adres wybranej zak�adki w oknie przegl�darki

*bookmarks*menuBar*import.labelString:				Importuj...
*bookmarks*menuBar*import.mnemonic:					I
*bookmarks*import.documentationString:	\
Importuje inn� list� zak�adek do aktualnej listy

*bookmarks*menuBar*addToToolbar.labelString:	Dodaj zak�adk� do panela
*bookmarks*menuBar*addToToolbar.mnemonic:	A
*bookmarks*addToToolbar.documentationString:	\
Dodaje zak�adk� do panela osobistego

*bookmarks*menuBar*createShortcut.labelString:		Utw�rz skr�t
*bookmarks*menuBar*createShortcut.mnemonic:			t
*bookmarks*createShortcut.documentationString:	\
Create an Internet Shortcut to the selected bookmark [???]

*makeAlias.labelString:				Powiel
*makeAlias.mnemonic:				M
*makeAlias.documentationString:	\
Powiela zazaczon� zak�adk�

!=====================
!  File Menu - History
!=====================

*history*menuBar*openSelected.labelString:		Id�
*history*menuBar*openSelected.mnemonic:			e
*history*openSelected.documentationString:	\
Otwiera wybran� stron� w oknie przegl�darki

*history*menuBar*addToToolbar.labelString:		Dodaj do panela
*history*menuBar*addToToolbar.mnemonic:			A
*history*addToToolbar.documentationString:	\
Dodaje wybran� stron� do panela osobistego

*history*menuBar*print.labelString:             Drukuj histori�...

!=======================
!  Edit Menu - Navigator
!=======================

*undo.labelString:              Cofnij
*undo.mnemonic:                 U
*undo.acceleratorText:          Ctrl+Z
*undo.documentationString:      Cofa poprzednie polecenie

*redo.labelString:              Pon�w
*redo.mnemonic:                 R
*redo.acceleratorText:          Ctrl+Y
*redo.documentationString:      Pon�w cofni�te polecenie

*cut.labelString:               Wytnij
*cut.mnemonic:                  t
*cut.acceleratorText:           Ctrl+X
*cut.documentationString:	\
Wycina zaznaczony tekst i umieszcza w schowku

*copy.labelString:              Kopiuj
*copy.mnemonic:                 C
*copy.acceleratorText:          Ctrl+C
*copy.documentationString:	\
Kopiuje zaznaczony tekst do schowka

*paste.labelString:             Wstaw
*paste.mnemonic:                P
*paste.acceleratorText:         Ctrl+V
*paste.documentationString:		Wstawia zawarto�� schowka

*delete.labelString:			Skasuj
*delete.mnemonic:				D
*delete.acceleratorText:		Ctrl+D
*delete.documentationString:	Kasuje zaznaczony tekst
! EditorFrame uses this one
*deleteItem.labelString:        Skasuj
*deleteItem.mnemonic:           D
*deleteItem.acceleratorText:    Ctrl+D
*deleteItem.documentationString:Kasuje zaznaczony tekst

*selectAll.labelString:                 Zaznacz wszystko
*selectAllCmdString:                    Zaznacz wszystko
*selectAllInFrameCmdString:				Zaznacz wszystko w ramce
*selectAll.mnemonic:					A
*selectAll.acceleratorText:				Ctrl+A
*selectAll.documentationString:			Zaznacz ca�� stron�
! Thread Window Edit/Select pullaside menu
*MailThread*selectAll.labelString:      Wszystko
*MailThread*selectAllCmdString:         Wszystko
*MailThread*selectAllInFrameCmdString:  Wszystko w ramce

*menuBar*findInObject.labelString:		Szukaj na stronie...
*Composition*menuBar*findInObject.labelString:	Szukaj...
*MailMsg*menuBar*findInObject.labelString:		Szukaj...
*MailThread*menuBar*findInObject.labelString:	Szukaj...
*findInObjectCmdString:					Szukaj na stronie...
*findInFrameCmdString:					Szukaj w ramce...

*menuBar*findInObject.mnemonic:         F
*menuBar*findInObject.acceleratorText:	Ctrl+F
*findInObject.documentationString:		\
Szuka podanego tekstu na aktualnej stronie

*menuBar*findAgain.labelString:			Szukaj ponownie
*menuBar*findAgain.mnemonic:			g
*menuBar*findAgain.acceleratorText:		Ctrl+G
*findAgain.documentationString:			Powtarza ostatni� operacj� szukania

*Navigator*menuBar*search.labelString:	Szukaj w internecie
*Navigator*menuBar*search.mnemonic:     I
*Navigator*search.documentationString:	\
Przeszukuje Internet za podan� informacj�

*menuBar*searchAddress.labelString:     Szukaj w katalogu
*menuBar*searchAddress.mnemonic: 	    y
*searchAddress.documentationString:	\
Szuka w katalogu podanej osoby

*menuBar*editPreferences.labelString:   Ustawienia...
*menuBar*editPreferences.mnemonic:		e
*editPreferences.documentationString:	\
Zmienia ustawienia u�ytkownika

!===========================
!  Edit Menu - Page Composer
!===========================

*deleteTableMenu.labelString:                   Skasuj
!*deleteTableMenu.mnemonic:		                b
*deleteTableMenu.mnemonic:			l

! Edit/Delete Table Submenu

*deleteTable.labelString:                       Tabel�
*deleteTable.mnemonic:                          T
*deleteTable.documentationString:	\
Kasuje ca�� tabel�

! new
*deleteTableRow.labelString:                    Rz�d
*deleteTableRow.mnemonic:                       R
*deleteTableRow.documentationString:	\
Kasuje rz�d

*deleteTableColumn.labelString:                 Kolumn�
*deleteTableColumn.mnemonic:                    o
*deleteTableColumn.documentationString:	\
Kasuje kolumn�

*deleteTableCell.labelString:                   Kom�rk�
*deleteTableCell.mnemonic:                      C
*deleteTableCell.documentationString:	\
Kasuje kom�rk�

! end Edit/Delete Table Submenu

*removeLink.labelString:		Usu� odno�nik
*removeLink.mnemonic:			k
*removeLinks.labelString:		Usu� odno�niki
*menuBar*removeLinks.mnemonic:      R
*removeLinks.documentationString:	\
Usu� odno�nik przypisany do zaznaczonego tekstu

*selectTable.labelString:                       Zaznacz tabel�
*selectTable.mnemonic:                          b
*selectTable.documentationString:	\
Zaznacza tabel�

*menuBar*editPageSource.labelString:        �r�d�o HTML
*editPageSource.documentationString:	\
Edycja kodu �r�d�owego HTML aktualnej strony

!=============================
!  Edit Menu - Compose Message
!=============================

*menuBar*pasteAsQuoted.labelString:			Wstaw jako cytat
*menuBar*pasteAsQuoted.mnemonic:			Q
*pasteAsQuoted.documentationString:	\
Wstaw zawarto�� schowka jako cytat

!============================
!  Edit Menu - Message Center
!============================

*menuBar*search.labelString:            Szukaj wiadomo�ci...
*menuBar*search.mnemonic:               S
*menuBar*search.acceleratorText:        Alt+Shift+F
*search.documentationString:	Szukaj wiadomo�ci pocztowych i grup dyskusyjnych

*menuBar*editConfiguration.labelString:	Konto pocztowe
*menuBar*editConfiguration.mnemonic:		M

*menuBar*moderateDiscussion.labelString:	Zarz�dzanie grupami
*menuBar*moderateDiscussion.mnemonic:		N

*menuBar*editMailFilterRules.labelString: Filtry wiadomo�ci...
*menuBar*editMailFilterRules.mnemonic:    i
*editMailFilterRules.documentationString:	\
Ustawianie regu� filtoowania poczty

*popup*deleteNewsgroup.labelString:		Usu� serwer grup dyskusyjnych
*popup*addNewsgroup.labelString:		Zapisz do grupy dyskusyjnej...
*newsServerPropsCmdString:  W�a�ciwo�ci serwera grup dyskusyjnych
*newsgroupPropsCmdString:	W�a�ciwo�ci grupy dyskusyjnej
*folderPropsCmdString:		W�a�ciwo�ci
*mailServerPropsCmdString:  W�a�ciwo�ci serwera pocztowego
*menuBar*viewProperties.labelString:	W�a�ciwo�ci
*menuBar*viewProperties.mnemonic:		s
*viewProperties.documentationString:	\
Pokazuje w�a�ciwo�ci katalogu pocztowego lub grupy dyskusyjnej

! text generated dynamically
*menuBar*deleteFolder.mnemonic: D
*menuBar*deleteFolder.acceleratorText: Ctrl+D


!=============================
!  Edit Menu - Message Threads
!=============================

*deleteAny.labelString:		Skasuj wiadomo��
*deleteAny.mnemonic:		D
*deleteAny.acceleratorText:		Ctrl+D

*selectSubmenu.labelString:				Zaznacz
*selectSubmenu.mnemonic:                l


! Edit/Select Submenu

*selectThread.labelString:				W�tek
*selectThread.mnemonic:					T
*selectThread.acceleratorText:				Alt+Shift+A

*selectCategory.labelString:			Kategoria
*selectCategory.mnemonic:				C

*selectFlaggedMessages.labelString:		Oznaczone wiadomo�ci
*selectFlaggedMessages.mnemonic:			F

*selectAllMessages.labelString:			Wszystkie wiadomo�ci
*selectAllMessages.mnemonic:			M

! end Edit/Select Submenu

!==========================
!  Edit Menu - Address Book
!==========================

*menuBar*abDelete.labelString:    	Skasuj
*menuBar*abDelete.mnemonic:    	D
*menuBar*abDelete.acceleratorText: Del
*abDelete.documentationString:	\
Kasuje zaznaczone strony ksi��ki adresowej

*menuBar*abDeleteAllEntries.labelString:    	Skasuj wszystkie wyst�pienia
*menuBar*abDeleteAllEntries.mnemonic: O

*menuBar*abSearchFor.labelString:     Szukaj...
*menuBar*abSearchFor.mnemonic:        f

*menuBar*displayHTMLDomainsDialog.labelString:	Domeny HTML...
*menuBar*displayHTMLDomainsDialog.mnemonic:		H
*displayHTMLDomainsDialog.documentationString:	\
Edycja listy domen na kt�re mo�na wysy�a� wiadomo�ci HTML

*AddressBook*menuBar*viewProperties.labelString:	W�a�ciwo�ci
*AddressBook*menuBar*viewProperties.mnemonic:		s

*viewProperties.documentationString:	\
Place a call with Mozilla Conference

*AddressBook**menuBar*selectAll.acceleratorText:

!=======================
!  Edit Menu - Bookmarks
!=======================

*bookmarks*menuBar*findInObject.labelString:		Szukaj w ksi��ce adresowej...
*bookmarks*findInObject.documentationString:		\
Szuka w stronach ksi��ki adresowej

*bookmarkProperties.labelString:			W�a�ciwo�ci
*menuBar*bookmarkProperties.mnemonic:		P
*bookmarkProperties.documentationString:	\
W�a�ciwo�ci strony ksi��ki adresowej

!=======================
!  Edit Menu - History
!=======================

*history*menuBar*search.labelString:            Szukaj w historii
*history*menuBar*search.mnemonic:               H
*history*search.documentationString:	\
Szuka element�w w historii

!=======================
!  View Menu - Navigator
!=======================

*menuBar*toggleNavigationToolbar.labelString: Panel nawigacyjny
*menuBar*toggleNavigationToolbar.mnemonic:	N
*menuBar*toggleNavigationToolbar.documentationString: Pokazuje lub ukrywa panel nawigacyjny

*menuBar*toggleLocationToolbar.labelString: Panel lokalizacji
*menuBar*toggleLocationToolbar.mnemonic:	L
*toggleLocationToolbar.documentationString:	Pokazuje lub ukrywa panel lokalizacji

*menuBar*togglePersonalToolbar.labelString:    Panel osobisty
*menuBar*togglePersonalToolbar.mnemonic:	P
*togglePersonalToolbar.documentationString:	Pokazuje lub ukrywa panel osobisty

*menuBar*increaseFont.labelString:	Powi�ksz czcionk�
*menuBar*increaseFont.mnemonic:		F
*menuBar*increaseFont.acceleratorText:	Alt+]
*increaseFont.documentationString:	\
Powi�ksza czcionk� aktualnie ogl�danej strony

*menuBar*decreaseFont.labelString:	Zmniejsz czcionk�
*menuBar*decreaseFont.mnemonic:		n
*menuBar*decreaseFont.acceleratorText:	Alt+[
*decreaseFont.documentationString:	\
Zmniejsza czcionk� aktualnie ogl�danej strony

*reload.labelString:				Wczytaj ponownie
*reload.mnemonic:					R
*reload.acceleratorText:			Alt+R
! In mail and news reply to sender uses this accelerator
*MailThread*menuBar*reload.acceleratorText:
*MailMsg*menuBar*reload.acceleratorText:
*News*menuBar*reload.acceleratorText:
*reload.documentationString:		Wczytuje ponownie aktualn� stron�

*showImages.labelString:			Poka� obrazki
*showImages.mnemonic:				g
*showImages.documentationString:	Pokazuje obrazki na aktualnej stronie

*refresh.labelString:				Od�wie�
*refresh.mnemonic:					h
*refresh.documentationString:		Od�wie�a widok

*stopAnimationsCmdString:			Zatrzymaj animacje
*stopLoadingCmdString:				Zatrzymaj �adowanie
*stopLoading.labelString:			Zatrzymaj �adowanie
*stopLoading.mnemonic:				S
*stopLoading.acceleratorText:		ESC
*stopLoading.documentationString:	Przerywa aktualne transfery
!xxx need separate doc string for stop animations

*viewPageSource.labelString:		�r�d�o HTML strony
*viewPageSource.acceleratorText:    Alt+U
*viewPageSource.documentationString:Pokazuje �r�d�o HTML aktualnej strony

*viewPageInfo.labelString:			Informacje o stronie
*viewPageInfo.mnemonic:				I
*viewPageInfo.documentationString:	Pokazuje informacje o aktualnej stronie

*pageServices.labelString:			Us�ugi strony
*pageServices.mnemonic:				P
!*pageServices.documentationString:

*menuBar*encodingSubmenu.labelString:	Zestaw znak�w
*menuBar*encodingSubmenu.mnemonic:		C
*encodingSubmenu.documentationString:	\
Zmienia u�ywany zestaw znak�w dla aktualnej strony

! View/Encoding Submenu

*latin1EncCmdString:		Western (ISO-8859-1)
*885915EncCmdString:		Western (ISO-8859-15)
*latin2EncCmdString:		Europa �rodkowa (ISO-8859-2)
*Win1250EncCmdString:		Europa �rodkowa (Windows-1250)
*jaAutoEncCmdString:		Japo�ski (automatyczne wykrywanie)
*jaSJISEncCmdString:		Japo�ski (Shift_JIS)
*jaEUCEncCmdString:			Japo�ski (EUC-JP)
*twBig5EncCmdString:		Chi�ski tradycyjny (Big5)
*twEUCEncCmdString:			Chi�ski tradycyjny (EUC-TW)
*gbEUCEncCmdString:			Chi�ski uproszczony (GB2312)
*krEUCEncCmdString:			Korea�ski (automatyczne wykrywanie)
*2022krEncCmdString:		Korea�ski (ISO-2022-KR)
*koi8rEncCmdString:			Cyrylica (KOI8-R)
*88595EncCmdString:			Cyrylica (ISO-8859-5)
*Win1251EncCmdString:		Cyrylica (Windows-1251)
*cp866EncCmdString:			Cyrylica (CP-866)
*greekEncCmdString:			Grecki (ISO-8859-7)
*Win1253EncCmdString:		Grecki (Windows-1253)
*88599EncCmdString:			Turecki (ISO-8859-9)
*unicode_utf8EncCmdString:	Unicode (UTF-8)
*unicode_utf7EncCmdString:	Unicode (UTF-7)
*otherEncCmdString:			Zdefiniowany przez u�ytkownika
*setDefaultDocCSID:			Ustaw domy�lny zestaw znak�w
*setDefaultDocumentEncoding.documentationString:	\
Ustawia domy�lny zestaw znak�w

! end View/Encoding Submenu

!==============================
!  View Menu - Page Composer
!==============================

*toggleMenubar.labelString:	Panel menu
*toggleMenubar.documentationString:	\
Pokazuje lub ukrywa panel menu

*Editor*toggleNavigationToolbar.labelString:	Panel edycji
*Editor*toggleNavigationToolbar.documentationString:	\
Pokazuje lub ukrywa panel edycji

*toggleFormatToolbar.labelString:	Panel formatowania
*toggleFormatToolbar.documentationString:	\
Pokazuje lub ukrywa panel formatowania

*menuBar*toggleParagraphMarks.labelString:		Panel akapit�w
*menuBar*toggleParagraphMarks.mnemonic:			P
*toggleParagraphMarks.documentationString:	\
Pokazuje lub ukrywa panel akapit�w

!=============================
! View Menu - Compose Message
!=============================

*Composition*menuBar*toggleNavigationToolbar.labelString: Panel wiadomo�ci
*Composition*toggleAddressArea.documentationString:	\
Pokazuje lub ukrywa obszar adresowy
*Composition*toggleAddressArea.tipString:	      Obszar adresowy
*Composition*toggleAddressArea.mnemonic:	      A
*Composition*toggleAddressArea.labelString:	      Obszar adresowy

*Composition*toggleNavigationToolbar.labelString:	Panel wiadomo�ci
*Composition*toggleNavigationToolbar.documentationString:	\
Pokazuje lub ukrywa panel wiadomo�ci
*Composition*toggleNavigationToolbar.mnemonic:	T

!xxx add Show/Hide Addressing Area

*Composition*menuBar*viewAddresses.labelString:       Zak�adka adres�w
*Composition*menuBar*viewAddresses.mnemonic:          A
*Composition*viewAddresses.documentationString:	\
Pokazuje zak�adk� adres�w odbiorc�w

*Composition*menuBar*viewAttachments.labelString:     Zak�adka za��cznik�w
*Composition*menuBar*viewAttachments.mnemonic:        t
*viewAttachments.documentationString:	\
Pokazuje zak�adk� za��cznik�w

*Composition*menuBar*viewOptions.labelString:         Zak�adka opcji
*Composition*menuBar*viewOptions.mnemonic:            O
*Composition*viewOptions.documentationString: Pokazuje zak�adk� opcji wiadomo�ci

!xxx no longer in spec (viewMessageBodyOnly)
*Composition*menuBar*viewMessageBodyOnly.labelString: Tylko tre�� wiadomo�ci
*Composition*menuBar*viewMessageBodyOnly.mnemonic:    B
*Composition*viewMessageBodyOnly.documentationString:	\
Pokazuje tylko tre�� wiadomo�ci i ukrywa adresy

*Composition*menuBar*wrapLongLines.labelString:       Dziel d�ugie linie
*Composition*menuBar*wrapLongLines.mnemonic:          W
*Composition*wrapLongLines.documentationString:	\
Dziel d�ugie linie przy wysy�aniu wiadomo�ci

!============================
!  View Menu - Message Center
!============================

*MailFolder*menuBar*toggleNavigationToolbar.labelString: Panel wiadomo�ci
*MailFolder*menuBar*toggleNavigationToolbar.mnemonic:	M
*MailFolder*menuBar*toggleNavigationToolbar.documentationString: Pokazuje lub ukrywa panel wiadomo�ci

*menuBar*showSubmenu.labelString:   Poka�
*menuBar*showSubmenu.mnemonic:   w

*MailFolder*toggleNavigationToolbar.documentationString:	\
Pokazuje lub ukrywa panel wiadomo�ci
*MailFolder*toggleNavigationToolbar.mnemonic:	M

*menuBar*moveSubmenu.labelString: Przenie� katalog

!=============================
!  View Menu - Message Threads
!=============================

*MailThread*menuBar*toggleNavigationToolbar.labelString: Panel wiadomo�ci
*MailThread*menuBar*toggleNavigationToolbar.documentationString: Pokazuje lub ukrywa panel wiadomo�ci
*MailThread*toggleNavigationToolbar.mnemonic:	M

*menuBar*toggleMessageExpansion.labelString: Wiadomo��
*menuBar*toggleMessageExpansion.mnemonic: g
*menuBar*toggleMessageExpansion.documentationString: Pokazuje lub ukrywa wiadomo��

*menuBar*toggleFolderExpansion.labelString: Katalogi
*menuBar*toggleFolderExpansion.mnemonic: F
*menuBar*toggleFolderExpansion.documentationString: Pokazuje lub ukrywa katalogi
*menuBar*sortSubmenu.labelString:	Sortuj
*menuBar*sortSubmenu.mnemonic:		o

! View/Sort Submenu
*menuBar*sortBySubject.labelString:		wed�ug tematu
*menuBar*sortBySubject.mnemonic:		S
*menuBar*sortBySender.labelString:		wed�ug nadawcy
*menuBar*sortBySender.mnemonic:			r
*menuBar*sortByDate.labelString:		wed�ug daty
*menuBar*sortByDate.mnemonic:			e
*menuBar*sortByFlag.labelString:		wed�ug flag
*menuBar*sortByFlag.mnemonic:			F
*menuBar*sortByPriority.labelString:	wed�ug priorytetu
*menuBar*sortByPriority.mnemonic:		P
*menuBar*sortByThread.labelString:		wed�ug w�tk�w
*menuBar*sortByThread.mnemonic:			T
*menuBar*sortBySize.labelString:		wed�ug rozmiaru
*menuBar*sortBySize.mnemonic:			z
*menuBar*sortByStatus.labelString:		wed�ug statusu
*menuBar*sortByStatus.mnemonic:			u
*menuBar*sortByUnread.labelString:		wed�ug stanu przeczytania
*menuBar*sortByUnread.mnemonic:			n
*menuBar*sortByMessageNumber.labelString:	wed�ug kolejno�ci otrzymywania
*menuBar*sortByMessageNumber.mnemonic:		O
*menuBar*sortForward.labelString:		Rosn�co
*menuBar*sortForward.mnemonic:			A
*menuBar*sortBackward.labelString:		Malej�co
*menuBar*sortBackward.mnemonic:			D
! end View/Sort Submenu

*menuBar*expandCollapseSubmenu.labelString:	Zwi�/Rozwi�
*menuBar*expandCollapseSubmenu.mnemonic:	x

! View/Expand/Collapse Submenu
*menuBar*expand.labelString:		Rozwi�
*menuBar*expand.mnemonic:			x
*menuBar*expand.acceleratorText:	+
*menuBar*expandAll.labelString:		Rozwi� wszystkie
*menuBar*expandAll.mnemonic:		A
*menuBar*expandAll.acceleratorText:	*
*menuBar*collapse.labelString:		Zwi�
*menuBar*collapse.mnemonic:			C
*menuBar*collapse.acceleratorText:	-
*menuBar*collapseAll.labelString:	Zwi� wszystkie
*menuBar*collapseAll.mnemonic:		l
*menuBar*collapseAll.acceleratorText: /
! end View/Expand/Collapse Submenu

*menuBar*threadSubmenu.labelString:	Wiadomo��
*menuBar*threadSubmenu.mnemonic:	M

! View/Messages Submenu
*menuBar*viewNew.labelString:			Nieprzeczytana
*menuBar*viewNew.mnemonic:				U
*viewNew.documentationString:	Pokazuje tylko nowe lub nieprzeczytane wiadomo�ci

*menuBar*viewThreadsWithNew.labelString:W�tki z nieprzeczytanymi wiadomo�ciami
*menuBar*viewThreadsWithNew.mnemonic:	T
*viewThreadsWithNew.documentationString:	\
Pokazuje w�tki zawieraj�ce nowe lub nieprzeczytane wiadomo�ci

*menuBar*viewWatchedThreadsWithNew.labelString:	�ledzone w�tki z nieprzeczytanymi wiadomo�ciami
*menuBar*viewWatchedThreadsWithNew.mnemonic:	W
*viewWatchedThreadsWithNew.documentationString:	\
Pokazuje �ledzone w�tki zawieraj�ce nowe lub nieprzeczytane wiadomo�ci

*menuBar*viewAllThreads.labelString:	Wszystkie
*menuBar*viewAllThreads.mnemonic:		A
*viewAllThreads.documentationString: Pokazuje wszystkie wiadomo�ci
! end View/Messages Submenu

*menuBar*headersSubmenu.labelString:	Nag��wki
*menuBar*headersSubmenu.mnemonic:	d

! View/Headers Submenu
*menuBar*showAllHeaders.labelString:	Wszystkie
*menuBar*showAllHeaders.mnemonic:	A
*showAllHeaders.documentationString: Pokazuje wszystkie nag��wki

*menuBar*showNormalHeaders.labelString:	Normalnie
*menuBar*showNormalHeaders.mnemonic:	N
*showNormalHeaders.documentationString: Pokazuje wi�kszo�� nag��wk�w
*showBriefHeaders.labelString:	Skr�towo
*menuBar*showBriefHeaders.mnemonic:	B
*menuBar*showBriefHeaders.documentationString: Pokazuje tylko najwa�niejsze nag��wki
! end View/Headers Submenu

!xxx nolonger an attachments submenu
*menuBar*attachmentsSubmenu.labelString:	Za��czniki
*menuBar*attachmentsSubmenu.mnemonic:	n

*menuBar*viewAttachmentsInline.labelString:	Poka� za��czniki w tre�ci
*menuBar*viewAttachmentsInline.mnemonic:	A
*viewAttachmentsInline.documentationString:	\
Pokazuje za��czniki w tre�ci wiadomo�ci

! [nn]
*rot13Message.labelString:				Odszyfruj (ROT13)
*rot13Message.mnemonic:					U
*rot13Message.documentationString:	\
Odszyfrowuje

! [nn]
*wrapLongLines.labelString:				Dziel d�ugie linie
*wrapLongLines.mnemonic:				p
*wrapLongLines.documentationString:	\
Dzieli d�ugie linie przy wy�wetalniu

!============================
!  View Menu - Message Window
!============================


!==========================
!  View Menu - Address Book
!==========================

*AddressBook*toggleNavigationToolbar.documentationString:	\
Poka� lub ukryj panel nawigacyjny
*AddressBook*toggleNavigationToolbar.mnemonic:	B

*menuBar*abByType.labelString:        	wed�ug typu
*menuBar*abByType.mnemonic:				T
*abByType.documentationString:	\
Sortowanie wed�ug typu

*menuBar*abByName.labelString:        	wed�ug nazwy
*menuBar*abByName.mnemonic:				N
*abByName.documentationString:	\
Sortowanie wed�ug nazwy


*menuBar*abByEmailAddress.labelString:  wed�ug adresu
*menuBar*abByEmailAddress.mnemonic:		E
*abByEmailAddress.documentationString:	\
Sortowanie wed�ug adresu e-mail

*menuBar*abByNickName.labelString:    	wed�ug pseudonimu
*menuBar*abByNickName.mnemonic:			k
*abByNickName.documentationString:	\
Sortowanie wed�ug pseudonimu

*menuBar*abByCompany.labelString:    	wed�ug organizacji
!*menuBar*abByCompany.mnemonic:			O
*abByCompany.documentationString:	\
Sortowanie wed�ug organizacji

*menuBar*abByLocality.labelString:    	wed�ug miasta
*menuBar*abByLocality.mnemonic:			i
*abByLocality.documentationString:	\
Sortowanie wed�ug miasta

! shared with other windows
*menuBar*sortAscending.labelString:		Rosn�co
*menuBar*sortAscending.mnemonic:		A
*AddressBook*menuBar*sortAscending.documentationString:	\
Sortowanie w kolejno�ci rosn�cej

*menuBar*sortDescending.labelString:	Malej�co
*menuBar*sortDescending.mnemonic:		D
*AddressBook*sortDescending.documentationString:	\
Sortowanie w kolejno�ci zmalej�cej

*menuBar*abVCard.labelString:    		Moja strona w ksi��ce...
*menuBar*abVCard.mnemonic:    			o
*abVCard.documentationString:	\
Tworzenie i edycja w�asnej strony w ksi��ce adresowej

*menuBar*abStopSearch.labelString:     Przerwij szukanie
*menuBar*abStopSearch.mnemonic: S
*menuBar*abStopSearch.acceleratorText: Esc


!=======================
!  View Menu - Bookmarks
!=======================

bookmarks*menuBar*sortByTitle.labelString:	wed�ug nazwy
bookmarks*menuBar*sortByTitle.mnemonic:		T
bookmarks*sortByTitle.documentationString:	\
Sortowanie zak�adek wed�ug nazwy

*menuBar*sortByLocation.labelString:		wed�ug miejsca
*menuBar*sortByLocation.mnemonic:			L
*sortByLocation.documentationString:	\
Sortowanie zak�adek wed�ug miejsca

*sortByDateLastVisited.labelString:			wed�ug daty ostatnich odwiedzin
*sortByDateLastVisited.mnemonic:			V
*sortByDateLastVisited.documentationString:	\
Sortowanie zak�adek wed�ug daty ostatnich odwiedzin

*menuBar*sortByDateCreated.labelString:		wed�ug daty utworzenia
*menuBar*sortByDateCreated.mnemonic:		C
*sortByDateCreated.documentationString:	\
Sortowanie zak�adek wed�ug daty utworzenia zak�adki

*menuBar*moveBookmarkUp.labelString:		W g�r�
*menuBar*moveBookmarkUp.mnemonic:			U
*menuBar*moveBookmarkUp.acceleratorText:	Shift+Up
*moveBookmarkUp.documentationString:	\
Przesuwa zak�adk� w g�r� na li�cie

*menuBar*moveBookmarkDown.labelString:		W d�
*menuBar*moveBookmarkDown.mnemonic:			w
*menuBar*moveBookmarkDown.acceleratorText:	Shift+Down
*moveBookmarkDown.documentationString:	\
Przesuwa zak�adk� w d� na li�cie

*menuBar*bookmarksWhatsNew.labelString:		Aktualizuj zak�adki
*menuBar*bookmarksWhatsNew.mnemonic:		B
*bookmarksWhatsNew.documentationString:	\
Sprawdza zak�adki za aktualizacjami

*setToolbarFolder.labelString:				Ustaw jako katalog panela
*setToolbarFolder.mnemonic:					F
*setToolbarFolder.documentationString:	\
Ustawia wybrany folder jako folder na panelu osobistym

*setNewBookmarkFolder.labelString:			Ustaw dla nowych zak�adek
*setNewBookmarkFolder.mnemonic:				N
*setNewBookmarkFolder.documentationString:	\
Zaznacza katalog jako domy�lny dla nowych zak��dek

*setBookmarkMenuFolder.labelString:			Ustaw dla menu zak�adek
*setBookmarkMenuFolder.mnemonic:			M
*setBookmarkMenuFolder.documentationString:	\
Ustawia wybrany katalog jako katalog menu zak�adek

!=====================
!  View Menu - History
!=====================

*menuBar*sortByTitle.labelString:			wed�ug nazwy
*menuBar*sortByTitle.mnemonic:				T
*sortByTitle.documentationString:	\
Sortowanie histori wed�ug nazwy

*menuBar*sortByDateFirstVisited.labelString:	wed�ug daty pierwszych odwiedzin
*menuBar*sortByDateFirstVisited.mnemonic:		F
*sortByDateFirstVisited.documentationString:	\
Sortowanie histori wed�ug daty pierwszych odwiedzin

*menuBar*sortByExpirationDate.labelString:		wed�ug daty wyga�ni�cia
*menuBar*sortByExpirationDate.mnemonic:			E
*sortByExpirationDate.documentationString:	\
Sortowanie histori wed�ug daty wyga�ni�cia

*menuBar*sortByVisitCount.labelString:			wed�ug liczby odwiedzin
*menuBar*sortByVisitCount.mnemonic:				C
*sortByVisitCount.documentationString:	\
Sortowanie histori wed�ug liczby odwiedzin

!=====================
!  Go Menu - Navigator
!=====================

*back.labelString:			Wstecz
*back.mnemonic:				B
*back.acceleratorText:		Alt+Left
*back.documentationString:  Powr�t do porzedniej strony w histori

*forward.labelString:		Dalej
*forward.mnemonic:			F
*forward.acceleratorText:	Alt+Right
*forward.documentationString: Idzie do nast�pnej strony w histori

*menuBar*home.labelString:	Strony domowej
*menuBar*home.mnemonic:		H
!xxx dynamic *home.documentationString:

!===========================
!  Go Menu - Message Threads
!===========================

*menuBar*nextSubmenu.labelString:				Nast�pna
*menuBar*nextSubmenu.mnemonic:					N
*menuBar*prevSubmenu.labelString:				Poprzednia
*menuBar*prevSubmenu.mnemonic:					P

*menuBar*nextMessage.labelString:				Wiadomo��
*menuBar*nextMessage.mnemonic:					M
*menuBar*nextMessage.acceleratorText:			Alt+Down
*nextMessage.documentationString:	\
Przechodzi do nast�pnej wiadomo�ci

*menuBar*nextUnreadMessage.labelString:			Nieprzeczytana wiadmomo��
*menuBar*nextUnreadMessage.mnemonic:			U
*menuBar*nextUnreadMessage.acceleratorText:		Alt+Shift+Down
*nextUnreadMessage.documentationString:	\
Przechodzi do nast�pnej nieprzeczytanej wiadomo�ci

*menuBar*nextFlaggedMessage.labelString:		Oznaczona wiadomo��
*menuBar*nextFlaggedMessage.mnemonic:			F
*nextFlaggedMessage.documentationString:	\
Przechodzi do nast�pnej oznaczonej wiadomo�ci

*menuBar*nextUnreadThread.labelString:			Nieprzeczytany w�tek
*menuBar*nextUnreadThread.mnemonic:				T
*menuBar*nextUnreadThread.acceleratorText:		T
*nextUnreadThread.documentationString:	\

Przechodzi do nast�pnego nieprzeczytanego w�tku

*menuBar*nextCategory.labelString:				Nast�pna kategoria
*menuBar*nextCategory.mnemonic:					C
*nextCategory.documentationString:	\
Przechodzi do nast�pnej kategorii

*menuBar*nextUnreadCategory.labelString:		Nast�pna nieprzeczytana kategoria
*menuBar*nextUnreadCategory.mnemonic:			y
*nextUnreadCategory.documentationString:	\
Przechodzi do nast�pnej nieprzeczytanej kategorii

*menuBar*nextCollection.mnemonic:				o
*nextCollection.documentationString:	\
Przechodzi do nast�pnego katalogu lub grupy

*menuBar*nextUnreadCollection.mnemonic:			d
*menuBar*nextUnreadCollection.acceleratorText: G
*nextUnreadCollection.documentationString:	\
Przechodzi do nast�pnego nieprzeczytanego katalogu lub grupy

*menuBar*previousMessage.labelString:			Wiadomo��
*menuBar*previousMessage.mnemonic:				M
*menuBar*previousMessage.acceleratorText:		Alt+Up
*previousMessage.documentationString:	\
Przechodzi do poprzedniej wiadomo�ci

*menuBar*previousUnreadMessage.labelString:		Nieprzeczytana wiadomo��
*menuBar*previousUnreadMessage.mnemonic:		U
*menuBar*previousUnreadMessage.acceleratorText:		Alt+Shift+Up
*previousUnreadMessage.documentationString:	\
Przechodzi do poprzedniej nieprzeczytanej wiadomo�ci

*menuBar*previousFlaggedMessage.labelString:	Oznaczona wiadomo��
*menuBar*previousFlaggedMessage.mnemonic:		F
*previousFlaggedMessage.documentationString:	\
Przechodzi do poprzedniej oznaczonej wiadomo�ci

*menuBar*firstUnreadMessage.labelString:		Pierwsza nieprzeczytana wiadomo��
*menuBar*firstUnreadMessage.mnemonic:			U

*menuBar*firstFlaggedMessage.labelString:		Pierwsza oznaczona wiadomo��
*menuBar*firstFlaggedMessage.mnemonic:			F
*firstFlaggedMessage.documentationString:	\
Przej�cie do pierwszej oznaczonej wiadomo�ci

*MailThread*back.acceleratorText:		Alt+Left
*MailMsg*back.acceleratorText:			Alt+Left
*MailThread*back.documentationString:	Powr�t do ostatniej wiadomo�ci
*MailMsg*back.documentationString:		Powr�t do ostatniej wiadomo�ci

*MailThread*forward.mnemonic:			w
*MailMsg*forward.mnemonic:				w
*MailThread*forward.acceleratorText:		Alt+Right
*MailMsg*forward.acceleratorText:		Alt+Right
*MailThread*forward.documentationString: Do nast�pnej wiadomo�ci
*MailMsg*forward.documentationString:	Do nast�pnej wiadomo�ci

!================================
!  Message Menu - Message Threads
!================================

*menuBar*replySubmenu.labelString:				Odpisz
*menuBar*replySubmenu.mnemonic:					R
*replySubmenu.documentationString:	\
Odpowiedz jednemu lub wi�cej odbiorcy.

*menuBar*replyAllSubmenu.labelString:		    Odpisz wszystkim
*menuBar*replyAllSubmenu.mnemonic:					p
*replySubmenu.documentationString:	\
Odpowiedz wszystkim odbiorcom

! Message/Reply Submenu
*replyToSender.labelString:				tylko do nadawcy
*replyToSender.mnemonic:				S
*replyToSender.acceleratorText:			Alt+R
*replyToSender.documentationString:	\
Wy�lij odpowied� do nadawcy zaznaczonej wiadomo�ci

*replyToAll.labelString:				do nadawcy i wszystkich odbiorc�w
*replyToAll.mnemonic:					S
*replyToAll.acceleratorText:			Alt+Shift+R
*replyToAll.documentationString:	\
Wy�lij do wszystkich odbiorc�w zaznaczonej wiadomo�ci

*replyToNewsgroup.labelString:			na grup� dyskusyjn�
*replyToNewsgroup.mnemonic:				N
!*replyToNewsgroup.acceleratorText:		Alt+D
*replyToNewsgroup.documentationString:	\
Wy�lij odpowied� na grup� dyskusyjn�

*replyToSenderAndNewsgroup.labelString:	do nadawcy i na grup� dyskusyjn�
*replyToSenderAndNewsgroup.mnemonic:	N
!*replyToSenderAndNewsgroup.acceleratorText:	Alt+Shift+D
*replyToSenderAndNewsgroup.documentationString:	\
Wy�lij odpowied� na grup� dyskusyjn� i do nadawcy
! end Message/Reply Submenu

!
*cleanUpDisk.labelString:		Wyczy�� dysk
*cleanUpDisk.mnemonic:			a
*cleanUpDisk.documentationString:	Usu� stare wiadomo�ci grup dyskusyjnych
*cleanUpDisk.tipString:			Usu� stare wiadomo�ci grup dyskusyjnych
*menuBar*forwardSubmenu.labelString: Przeka� jako
*menuBar*forwardSubmenu.mnemonic: o

*menuBar*forwardMessage.labelString:			Przeka�
*menuBar*forwardMessage.mnemonic:				F
*menuBar*forwardMessage.acceleratorText:		Alt+L
*forwardMessage.documentationString:	\
Przekazuje dalej zaznaczon� wiadomo��

*menuBar*forwardMessageAttachment.labelString: Za��cznik
*menuBar*forwardMessageAttachment.mnemonic:    A
*menuBar*forwardMessageAttachment.documentationString: \
Przekazuje dalej zaznaczon� wiadomo�� jako za��cznij.

*menuBar*forwardMessageQuoted.labelString:		Cytat
*menuBar*forwardMessageQuoted.mnemonic:			Q
*menuBar*forwardMessageQuoted.acceleratorText:	Alt+Shift+L
*forwardMessageQuoted.documentationString:	\
Przekazuje dalej zaznaczon� wiadomo�� jako cytat.

*menuBar*forwardMessageInLine.labelString:		W tre�ci
*menuBar*forwardMessageInLine.mnemonic:			I
*forwardMessageInLine.documentationString:	\
Przekazuje zaznaczon� wiadomo�� w tre�ci

![nn]
![nn]
*menuBar*fileSubmenu.labelString:				Przenie� wiadomo��
*menuBar*fileSubmenu.mnemonic:					M
*fileSubmenu.documentationString:	\
Przenosi zaznaczon� wiadomo�� do katalogu

*menuBar*copySubmenu.labelString:				Kopiuj wiadomo��
*menuBar*copySubmenu.mnemonic:					C

*copySubmenu.documentationString:	\
Kopiuje zaznaczon� wiadomo�� do katalogu

*menuBar*addToABSubmenu.labelString:			Dodaj do ksi��ki adresowej
*menuBar*addToABSubmenu.mnemonic:				A

! Message/Add to Address Book Submenu
*addSenderToAddressBook.labelString:	Dodaj nadawc� do ksi��ki adresowej
*addSenderToAddressBook.mnemonic:		S
*addSenderToAddressBook.documentationString:	\
Dodaje nadawc� wiadomo�ci do ksi��ki adresowej
*addAllToAddressBook.labelString:		Dodaj wszystkich do ksi��ki adresowej
*addAllToAddressBook.mnemonic:			A
*addAllToAddressBook.documentationString:	\
Dodaje nadawc� i wszystkich odbiorc�w do ksi��ki adresowej
! end Message/Add to Address Book Submenu

*menuBar*markSubmenu.labelString:		Zaznacz
*menuBar*markSubmenu.mnemonic:			k

! Message/Mark Submenu

*markMessages.labelString: Oznacz
*markMessages.mnemonic: F
*markMessages.documentationString: Oznacza wybran� wiadomo��.

*markMessageRead.labelString:			jako przeczytana
*markMessageRead.mnemonic:				R
*markMessageRead.acceleratorText:		M
*markMessageRead.documentationString:	Oznacza wybran� wiadomo�� jako przeczytan�
*markMessageRead.tipString:				Oznacz wiadomo��

*markThreadRead.labelString:			Oznacz w�tek jako przeczytany
*markThreadRead.mnemonic:				T
*markThreadRead.documentationString:	\
Oznacza wiadomo�ci z tym samym tematem jako przeczytane

*markAllMessagesRead.labelString:		Wszystkie przeczytane
*markAllMessagesRead.mnemonic:			A
*markAllMessagesRead.acceleratorText:	Alt+Shift+C
*markAllMessagesRead.documentationString:	\
Oznacza wszystkie wiadomo�ci jako przeczytane

![nn]
*markMessageByDate.labelString:			wed�ug daty...
*markMessageByDate.mnemonic:			D
*markMessageByDate.acceleratorText:		C
*markMessageByDate.documentationString:	\
Porz�dkuje zaznaczone wiadomo�ci wg daty

*markMessageForLater.labelString:		na p�niej
*markMessageForLater.mnemonic:			L
*markMessageForLater.acceleratorText:	L
*markMessageForLater.documentationString:	\
Zaznacz wiadomo�� do p�niejszego przeczytania
! end Message/Mark Submenu

*menuBar*flagMessage.labelString:		Oznacz
*menuBar*flagMessage.mnemonic:			F
*flagMessage.documentationString: Oznacz zaznaczon� wiadomo��

*menuBar*ignoreThread.labelString:		Ignoruj w�tek
*menuBar*ignoreThread.mnemonic:			I
*menuBar*ignoreThread.acceleratorText:		K
*ignoreThread.documentationString: Ignoruje zaznaczony w�tek

*menuBar*ignoreCategory.labelString:	Ignoruj kategori�
*ignoreCategory.documentationString: Ignoruje zaznaczon� kategori�

*menuBar*watchThread.labelString:		�led� w�tek
*menuBar*watchThread.mnemonic:			W
*menuBar*watchThread.acceleratorText:		W
*watchThread.documentationString:	\
Pokazuje nadej�cie nowych wiadomo�ci w tym w�tku

! override shared resources
*MailThread*mommy.tipString: Centrum wiadomo�ci
*MailMsg*mommy.tipString: Otw�rz katalog

*MailThread*menuBar*composeMessage.labelString: Nowa wiadomo��
*MailThread*menuBar*composeMessage.mnemonic: N
*MailThread*menuBar*composeMessage.acceleratorText: Alt+M

!=============================
!  Insert Menu - Page Composer
!=============================

*menuBar*insert.labelString:				Wstaw
*menuBar*insertLink.labelString:                Odno�nik...
*menuBar*insertLink.mnemonic:                   L
*insertLink.documentationString:		Wstawia odno�nik.

*menuBar*insertTarget.labelString:              Cel...
*menuBar*insertTarget.mnemonic:                 T
*insertTarget.documentationString:		Wstawia cel.

*menuBar*insertImage.labelString:               Obrazek...
*menuBar*insertImage.mnemonic:                  I
*insertImage.documentationString:		Wstawia obrazek

*insertTableMenu.labelString:                   Tabel�
*insertTableMenu.mnemonic:                      e
*insertTableMenu.documentationString:	\
Wstawia tabel�

*menuBar*insertHorizontalLine.labelString:      Lini� poziom�...
*menuBar*insertHorizontalLine.mnemonic:         o
*insertHorizontalLine.documentationString:	\
Wstawia poziom� lini� <HR>

*menuBar*insertHtmlTag.labelString:             Tag HTML...
*menuBar*insertHtmlTag.mnemonic:                H
*insertHtmlTag.documentationString:	\
Wstawia tag HTML

*menuBar*insertNewLineBreak.labelString:        Koniec linii
*menuBar*insertNewLineBreak.mnemonic:           N
*menuBar*insertNewLineBreak.acceleratorText:    Shift+Return
*insertNewLineBreak.documentationString:	\
Wstawia znacznik ko�ca lini <BR>

*menuBar*insertBreakBelow.labelString:          Break below Image(s)
*menuBar*insertBreakBelow.mnemonic:             B
*insertBreakBelow.documentationString:	\
Insert break to continue text to the left and right

![nn]
*menuBar*insertNonBreaking.labelString:         Nonbreaking Space
*menuBar*insertNonBreaking.mnemonic:            S
*menuBar*insertNonBreaking.acceleratorText:     Shift+Space
*insertNonBreaking.documentationString:	\
Insert a non-breaking space character at cursor location
![nn]

!=============================
!  Format Menu - Page Composer
!=============================

*menuBar*formatMenu.labelString:            Format
*menuBar*fontStyleMenu.labelString:         Czcionka
*menuBar*fontStyleMenu.mnemonic:            F
*fontStyleMenu.documentationString: Zmienia czcionk�

*menuBar*characterSizeMenu.labelString:     Rozmiar
*menuBar*characterSizeMenu.mnemonic:        z

! Format/Size Submenu
*setFontSizeMinusTwo.labelString:           -2
*setFontSizeMinusTwo.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na -2
*setFontSizeMinusOne.labelString:           -1
*setFontSizeMinusOne.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na -1
*setFontSizeZero.labelString:               +0
*setFontSizeZero.documentationString:		\
Ustawia wzgl�dn� wielko�� czcionki na +0
*setFontSizePlusOne.labelString:            +1
*setFontSizePlusOne.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na +1
*setFontSizePlusTwo.labelString:            +2
*setFontSizePlusTwo.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na +2
*setFontSizePlusThree.labelString:          +3
*setFontSizePlusThree.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na +3
*setFontSizePlusFour.labelString:           +4
*setFontSizePlusFour.documentationString:	\
Ustawia wzgl�dn� wielko�� czcionki na +4
*setFontSize.labelString:                  Domy�lna
*setFontSize.documentationString:			\
Ustawia wzgl�dn� wielko�� czcionki na domy�ln�
! end Format/Size Submenu

*menuBar*characterStyleMenu.labelString:	Styl
*menuBar*characterStyleMenu.mnemonic:	    S

! Format/Style Submenu
*toggleCharacterStyleBold.labelString:			Pogrubienie
*toggleCharacterStyleBold.documentationString:	\
Ustawia styl czcionki na pogrubiony <Alt+B>
*toggleCharacterStyleItalic.labelString:		Pochylenie
*toggleCharacterStyleItalic.documentationString:	\
Ustawia styl czcionki na pochylony <Alt+I>
*toggleCharacterStyleUnderline.labelString:		Podkre�lenie
*toggleCharacterStyleUnderline.documentationString:	\
Ustawia styl czcionki na podkre�lony<Alt+U>
*toggleCharacterStyleFixed.labelString:			Sta�y
*toggleCharacterStyleFixed.documentationString:	\
W��cza sta�� szeroko�� czcionek
![nn]
*toggleCharacterStyleSuperscript.labelString:	Indeks g�rny
*toggleCharacterStyleSuperscript.documentationString:	\
Ustawia styl czcionki na indeks g�rny
*toggleCharacterStyleSubscript.labelString:		Indeks dolny
*toggleCharacterStyleSubscript.documentationString:	\
Ustawia styl czcionki na indeks dolny
*toggleCharacterStyleStrikethrough.labelString:	Strikethrough
*toggleCharacterStyleStrikethrough.documentationString:	\
Set the style to Strikethrough
*toggleCharacterStyleBlink.labelString:			Migaj�cy
*toggleCharacterStyleBlink.documentationString:	\
Ustawia styl czcionki na migaj�cy
! end Format/Style Submenu

*menuBar*characterColorMenu.labelString:    Kolor tekstu
*menuBar*characterColorMenu.mnemonic:       C

*menuBar*setCharacterColor.labelString:     Kolor tekstu...
*menuBar*setCharacterColor.mnemonic:        C

*menuBar*clearAllStyles.labelString:        Usu� style
*menuBar*clearAllStyles.mnemonic:           r
*clearAllStyles.documentationString: Usuwa wszystkie style tekstu

*menuBar*setTableProperties.labelString:    W�a�ciwo�ci tabeli
*menuBar*setTableProperties.mnemonic:       T
*setTableProperties.documentationString: Zmienia w�a�ciwo�ci tabeli

![nn]
*menuBar*headingStyleMenu.labelString:      Nag��wek
*menuBar*headingStyleMenu.mnemonic:         H

! Format/Heading Submenu
*setParagraphStyleNormal.labelString:       Normalny
*setParagraphStyleNormal.documentationString:	\
Ustawia styl nag��wka na normalny
*setParagraphStyleHeadingOne.labelString:   Nag��wek 1
*setParagraphStyleHeadingOne.documentationString:	\
Ustawia styl nag��wka na nag��wek 1
*setParagraphStyleHeadingTwo.labelString:   Nag��wek 2
*setParagraphStyleHeadingTwo.documentationString:	\
Ustawia styl nag��wka na 2
*setParagraphStyleHeadingThree.labelString: Nag��wek 3
*setParagraphStyleHeadingThree.documentationString:	\
Ustawia styl nag��wka na 3
*setParagraphStyleHeadingFour.labelString:  Nag��wek 4
*setParagraphStyleHeadingFour.documentationString:	\
Ustawia styl nag��wka na 4
*setParagraphStyleHeadingFive.labelString:  Nag��wek 5
*setParagraphStyleHeadingFive.documentationString:	\
Ustawia styl nag��wka na 5
*setParagraphStyleHeadingSix.labelString:   Nag��wek 6
*setParagraphStyleHeadingSix.documentationString:	\
Ustawia styl nag��wka na 6
! end Format/Heading Submenu

*menuBar*paragraphStyleMenu.labelString:    Akapit
*menuBar*paragraphStyleMenu.mnemonic:       P

! Format/Paragraph Style Submenu
*setParagraphStyleAddress.labelString:      Adres
*setParagraphStyleAddress.documentationString:	\
Ustawia styl akapitu na adres
*setParagraphStyleFormatted.labelString:    Formatowany
*setParagraphStyleFormatted.documentationString:	\
Ustawia styl akapitu na formatowany
*setParagraphStyleDescriptionTitle.labelString: Tekst tytu�u
*setParagraphStyleDescriptionTitle.documentationString:	\
Ustawia styl akapitu na opis tytu�u
*setParagraphStyleDescriptionText.labelString: Description Text
*setParagraphStyleDescriptionText.documentationString:	\
Ustawia styl akapitu na opis tytu�u
! end Format/Paragraph Style Submenu

*menuBar*listStyleMenu.labelString:         Listy
*menuBar*listStyleMenu.mnemonic:            L

! Format/List Submenu
*setListStyleNone.labelString:              Brak
*setListStyleNone.documentationString:	\
Usuwa definicj� stylu listy
*setListStyleBulleted.labelString:          Punktowana
*setListStyleBulleted.documentationString:	\
Ustawia styl listy na punktowan�
*setListStyleNumbered.labelString:          Numerowana
*setListStyleNumbered.documentationString:	\
Ustawia styl listy na numerowan�
! end Format/List Submenu

*menuBar*indent.labelString:                Zwi�ksz wci�cie
*menuBar*indent.mnemonic:                   I
*indent.documentationString:		Zwi�ksza wci�cie tekstu o 1

*menuBar*outdent.labelString:               Zmniejsz wci�cie
*menuBar*outdent.mnemonic:                  D
*outdent.documentationString:		Zmniejsza wci�cie tekstu o 1

*menuBar*setObjectProperties.labelString:   W�a�ciwo�ci obiektu
*menuBar*setObjectProperties.mnemonic:      e
*setObjectProperties.documentationString:	\
Zmiana w�a�ciwo�ci wybranego obektu

*setPageProperties.labelString:     W�a�ciwo�ci strony
*setPageProperties.mnemonic:        g
*setPageProperties.documentationSting:	\
Zmiana w�a�ciwo�ci strony

*setSaveEncrypted.labelString:     Save Encrypted
*setSaveEncrypted.mnemonic:        E
*setSaveEncrypted.documentationString:	\
Save this File as a Pre-Encrypted File

*menuBar*alignmentStyleMenu.labelString:		Wyr�wnanie
*menuBar*alignmentStyleMenu.mnemonic:			A

*setAlignmentStyleLeft.labelString:				Do lewej
*setAlignmentStyleLeft.documentationString:	\
Wyr�wnuje akapit do lewej kraw�dzi
*setAlignmentStyleCenter.labelString:			Wy�rodkowany
*setAlignmentStyleCenter.documentationString:	\
Wy�rodkowuje akapit
*setAlignmentStyleRight.labelString:			Do prawej
*setAlignmentStyleRight.documentationString:	\
Wyr�wnuje akapit do prawej kraw�dzi

!============================
!  Tools Menu - Page Composer
!============================

*menuBar*toolsMenu.labelString:             Narz�dzia
*spellCheck.labelString:            Sprawdzanie ortografi...
*spellCheck.acceleratorText:		Alt+K
*spellCheck.mnemonic:			S
*spellCheck.tipString:              Sprawd� ortografi�
*spellCheck.documentationString:    Sprawdza ortografi� aktualnej stony
*Composition*spellCheck.documentationString:	\
Sprawdza ortografi� aktualniej wiadomo�ci

!===================
!  Communicator Menu
!===================

*menuBar*openOrBringUpBrowser.labelString:		Nawigator
*menuBar*openOrBringUpBrowser.mnemonic:			N
*menuBar*openOrBringUpBrowser.acceleratorText:	Alt+1
*openOrBringUpBrowser.documentationString:	\
Otwiera okno przegl�darki

*menuBar*openInbox.labelString:					Poczta
*menuBar*openInbox.mnemonic:					M
*menuBar*openInbox.acceleratorText:				Alt+2
*openInbox.documentationString:	\
Otwiera okno klienta pocztowego i sprawdza poczt�

*menuBar*openNewsgroups.labelString:			Grupy dyskusyjne
*menuBar*openNewsgroups.mnemonic:				g
!*menuBar*openNewsgroups.acceleratorText:		Alt+3
*openNewsgroups.documentationString:	\
Otwiera list� grup dyskusyjnych

*menuBar*openEditor.labelString:				Edytor
*menuBar*openEditor.mnemonic:					C
*menuBar*openEditor.acceleratorText:			Alt+3
*openEditor.documentationString:	\
Otwiera edytor stron WWW

*menuBar*openConference.labelString:			Konferencje
*menuBar*openConference.mnemonic:				o
*menuBar*openConference.acceleratorText:		Alt+5
!*openConference.documentationString:	\
!Open the conferencing window

*menuBar*openCalendar.labelString:				Kalendarz
*menuBar*openCalendar.mnemonic:					r
*menuBar*openCalendar.acceleratorText:			Alt+4
*openCalendar.documentationString:	\
Otwiera kalendarz osobisty

*menuBar*openRadio.labelString:					Radio
*menuBar*openRadio.mnemonic:					d
*menuBar*openRadio.acceleratorText:				Alt+7
*openRadio.documentationString:	\
Otwiera program do s�uchania radia internetowego

*menuBar*toggleTaskbarShowing.labelString:				Ruchomy panel program�w
*menuBar*toggleTaskbarShowing.mnemonic:	C
*toggleTaskbarShowing.documentationString:	\
Pokazuje lub chowa ruchomy panel program�w

*menuBar*openFolders.labelString:				Centrum wiadomo�ci
*menuBar*openFolders.mnemonic:					M
!*menuBar*openFolders.acceleratorText:			Alt+Shift+1
*openFolders.documentationString:	\
Otwiera katalogi pocztowe i grupy dyskusyjne

*menuBar*openAddrBook.labelString:				Ksi��ka adresowa
*menuBar*openAddrBook.mnemonic:					A
*menuBar*openAddrBook.acceleratorText:			Alt+Shift+2
*openAddrBook.documentationString:	\
Otwiera ksi��k� adresow�

*menuBar*bookmarksSubmenu.labelString:			Zak�adki
*menuBar*bookmarksSubmenu.mnemonic:				B

*menuBar*toolsSubmenu.labelString:			Narz�dzia
*menuBar*toolsSubmenu.mnemonic:				T

*menuBar*serverToolsSubmenu.labelString:		Narzedzia serwera
*menuBar*serverToolsSubmenu.mnemonic:			S

! Communicator/Bookmarks Submenu
*addBookmark.labelString:						Dodaj zak�adk�
*addBookmark.mnemonic:							A
!*addBookmark.acceleratorText:					Alt+K
*addBookmark.documentationString:	\
Dodaje aktualn� stron� do zak�adek

*menuBar*openBookmarks.labelString:				Edytuj zak�adki...
*menuBar*openBookmarks.mnemonic:				E
!*menuBar*openBookmarks.acceleratorText:			Alt+B
*openBookmarks.documentationString:	\
Edycja zak�adek

*menuBar*fileBookmarksSubmenu.labelString:      File Bookmark
*menuBar*fileBookmarksSubmenu.mnemonic:	        F
*fileBookmarksSubmenu.documentationString:	\
File the current page in a Bookmarks folder

![nn]
*menuBar*placesSubmenu.labelString:				Przewodnik
*menuBar*placesSubmenu.mnemonic:				G

! Communicator/Bookmarks/Guide Submenu
*menuBar*inetIndex.labelString:		Internet
*menuBar*inetIndex.mnemonic:		I

*menuBar*inetWhite.labelString:		Ludzie
*menuBar*inetWhite.mnemonic:		P

*menuBar*inetYellow.labelString:	Yellow Pages
*menuBar*inetYellow.mnemonic:		Y

*menuBar*whatsNew.labelString:		Co nowego?
*menuBar*whatsNew.mnemonic:			N

*menuBar*whatsCool.labelString:		Co ciekawego?
*menuBar*whatsCool.mnemonic:		C
! end Communicator/Bookmarks/Guide Submenu

! end Communicator/Bookmarks Submenu

*menuBar*openHistory.labelString:				Historia
*menuBar*openHistory.mnemonic:					H
!*menuBar*openHistory.acceleratorText:			Alt+H
*openHistory.documentationString:		Otwiera okno histori

*menuBar*javaConsole.labelString:				Konsola Javy
*menuBar*javaConsole.mnemonic:					J
*javaConsole.documentationString:		Otwiera okno konsoli Javy

*menuBar*viewSecurity.labelString:				Informacje bezpiecze�stwa
*menuBar*viewSecurity.mnemonic:					S
!*menuBar*viewSecurity.acceleratorText:			Alt+Shift+I
*viewSecurity.documentationString:	\
Pokazuje informacje bezpiecze�stwa dla aktualnej strony

! Communicator/Server Tools Submenu
*menuBar*manageMailingList.labelString:		listy dyskusyjne
*menuBar*manageMailingList.mnemonic:		L

*managePublicFolders.labelString:	Prawa katalog�w
*managePublicFolders.mnemonic:		F

! end Communicator/Bookmarks Submenu

!===========
!  Help Menu
!===========

*menuBar*manual.labelString:	Zawarto�� pomocy
*menuBar*manual.mnemonic:		H
*manual.documentationString: Podr�cznik pomocy

*menuBar*relnotes.labelString:		O programie
*menuBar*relnotes.mnemonic:		R
*relnotes.documentationString:	\
Informacje o programie

*menuBar*productInfo.labelString:	Informacje i wsparcie techniczne
*productInfo.documentationString:	\
Informacje  i wsparcie techniczne

*menuBar*feedback.labelString:		How to Give Feedback
*menuBar*feedback.mnemonic:		G
*feedback.documentationString:	\
Instructions on how to give feedback about Mozilla

*menuBar*intl.labelString:			For International Users
*intl.documentationString:	\
Information on running Mozilla for international users

*menuBar*aboutSecurity.labelString:	On Security
*menuBar*aboutSecurity.mnemonic:	O
*aboutSecurity.documentationString:	\
Information regarding security on the Internet

*menuBar*registration.labelString:	Register Now
*menuBar*registration.mnemonic:		I
*registration.documentationString:	\
Product registration

*menuBar*upgrade.labelString:		Software
*menuBar*upgrade.mnemonic:		t
*upgrade.documentationString:	\
Download Mozilla software and upgrades

*menuBar*services.labelString:		Mozilla Direct

*menuBar*aboutUsenet.labelString:	Ntykieta

*menuBar*aboutplugins.labelString:	O wytczkach
*menuBar*aboutplugins.mnemonic:		P
*aboutplugins.documentationString:	\
Information about your plug-ins

*menuBar*aboutfonts.labelString:	About Font Displayers
*menuBar*aboutfonts.mnemonic:		D

*menuBar*about.labelString:		O Komunikatorze
*menuBar*aboutLite.labelString:		O nawigatorze
*menuBar*about.mnemonic:		A
*about.documentationString:	\
Pokazuje informacje o produkcie i prawach autorskich

!==============
!  end of menus
!==============

! Leftovers, old, and duplicates...

*viewMailFilter.labelString:				Filtry pocztowe

! Mail filter stuff

*filterDialog.dialogTitle:				Filtry wiadomo�ci
*filterDialog*form*orderBox*orderLabel.labelString:	Filter\norder
*filterDialog*form*newFilter.labelString:		Nowy...
*filterDialog*form*newFilter.mnemonic:			N
*filterDialog*form*editFilter.labelString:		Edytuj...
*filterDialog*form*editFilter.mnemonic:			E
*filterDialog*form*delFilter.labelString:		Skasuj
*filterDialog*form*delFilter.mnemonic:			D
*filterDialog*form*javaScript.labelString:		Skrypt Java
*filterDialog*form*logbtn.labelString:			Loguj u�ycie filtra
*filterDialog*form*logbtn.mnemonic:				L
*filterDialog*form*viewLog.labelString:			Poka� log
*filterDialog*form*viewLog.mnemonic:			V
*filterDialog*form*okbtn.labelString:			OK
*filterDialog*form*cancelbtn.labelString:		Anuluj
*filterDialog*form*onserver.labelString:		Filtry na serwerze...
*filterDialog*form*dropdownLabel.labelString:   	Filtry na:
*filterDialog*form*outlinerLabel.labelString:\
Filtry b�d� wykonywane w nast�puj�cej kolejno�ci:
*filterDialog*form*frameTitle.labelString:				Opis

*editFilterDialog.dialogTitle:	Zasady filtrowania
*editFilterDialog*filterLabel.labelString:	Nazwa filtra:
*editFilterDialog*criteriaFrameTitle.labelString:	Kryteria filtru
*editFilterDialog*actionFrameTitle.labelString:	Akcja

*editFilterDialog*scriptokbtn.labelString: OK
*editFilterDialog*scriptokbtn.alignment: ALIGNMENT_CENTER
*editFilterDialog*scriptcancelbtn.labelString: Anuluj
*editFilterDialog*scriptcancelbtn.alignment: ALIGNMENT_CENTER
*editFilterDialog*scripteditbtn.labelString: Edytuj skrypt
*editFilterDialog*scripteditbtn.alignment: ALIGNMENT_CENTER

*editFilterDialog*editContainer*commandGrp*more.labelString: 	Wi�cej
*editFilterDialog*editContainer*commandGrp*more.mnemonic:    	M
*editFilterDialog*editContainer*commandGrp*fewer.labelString: 	Mniej
*editFilterDialog*editContainer*commandGrp*fewer.mnemonic:	F
*editFilterDialog*editContainer*despLabel.labelString: Opis:
*editFilterDialog*editContainer*okbtn.labelString: OK
*editFilterDialog*editContainer*cancelbtn.labelString: Anuluj
*editFilterDialog*newFolder.labelString: 	Nowy katalog...
*editFilterDialog*newFolder.mnemonic:	 	F
*editHdrBtn.labelString: Dopasuj nag��wki...

! The Edit headers dialog, for search and filter:
*editHdrDialog.title: Dopasuj nag��wki
![nn]
*editHdrDialog*editHdrLabel.labelString: Customize the message headers that you\ncan search for and filter on.
*editHdrDialog*new.labelString: Nowy
*editHdrDialog*edit.labelString: Edytuj
*editHdrDialog*delete.labelString: Skasuj

! The New Folder dialog:
*newFolderDialog*dialogTitle: Nowy katalog
*newFolderDialog*name.labelString: Zazwa:
*newFolderDialog*subFolderOf.labelString: Utw�rz jako podkatalog:
![nn]
*newFolderDialog*folderTypeLabel.labelString: \
This server restricts the contents of folders.\n\
What will this folder contain?
*newFolderDialog*foldersOnly.labelString: Tylko katalogi.
*newFolderDialog*messagesOnly.labelString: Tylko wiadomo�ci.


!=============================================================================
! MailCompose menubar
!=============================================================================

! Don't limit these to just menubars or else they won't show up
! in popups.
*setPriority.labelString:			Priorytet

*messageActionAskUser.labelString:		Zapytaj
*messageActionText.labelString:			Tekst
*messageActionHTML.labelString:			HTML
*messageActionTextAndHTML.labelString:		Tekst i HTML

*attachFile.labelString:			Plik...
*attachFile.mnemonic:				F
*attachWebPage.labelString:			Strona WWW...
*attachWebPage.mnemonic:			W
*deleteAttachment.labelString:			Skasuj za��cznik
*deleteAttachment.mnemonic:			D
*attachAddressBookCard.labelString:		Karta osobista (vCard)
*attachAddressBookCard.mnemonic:		A

! Edit Menu
*menuBar*undoNull.labelString:              Nic do cofni�cia
*menuBar*undoTyping.labelString:            Cofnij wpisywanie
*menuBar*undoAddText.labelString:           Cofnij dodanie tekstu
*menuBar*undoDeleteText.labelString:        Cofnij kasowanie tekstu
*menuBar*undoCut.labelString:               Cofnij wycinanie
*menuBar*undoPasteText.labelString:         Cofnij wstawianie tekstu
*menuBar*undoPasteHTML.labelString:         Cofnij wsyatianie kodu HTML
*menuBar*undoPasteHREF.labelString:         Cofnij wstawianie odno�nika
*menuBar*undoChangeAttributes.labelString:  Cofnij zmian� atrybut�w
*menuBar*undoIndent.labelString:            Cofnij wci�cie
*menuBar*undoParagraphAlign.labelString:    Cofnij wyr�wnanie akapit�w
*menuBar*undoMorphContainer.labelString:    Cofnij zmian� stylu akapitu
*menuBar*undoInsertHorizRule.labelString:   Cofnij wstawienie lini poziomej <HR>
*menuBar*undoSetHorizRuleData.labelString:  Cofnij zmian� w�a�ciwo�ci lini poziomej
*menuBar*undoInsertImage.labelString:       Cofnij wstawienie obrazka
*menuBar*undoSetImageData.labelString:      Cofnij zmian� w�a�ciwo�ci obrazka
*menuBar*undoInsertBreak.labelString:       Cofnij wstawienie ko�ca lini <BR>
*menuBar*undoChangePageData.labelString:    Cofnij zmian� w�a�ciwo�ci strony
*menuBar*undoSetMetaData.labelString:       Cofnij zmian� znacznik�w META
*menuBar*undoDeleteMetaData.labelString:    Cofnij skasowanie znacznik�w META
*menuBar*undoInsertTarget.labelString:      Cofnij wstawienie celu
*menuBar*undoSetTargetData.labelString:     Cofnij zmian� w�a�ciwo�ci celu
*menuBar*undoInsertUnknownTag.labelString:  Cofnij nieznany znacznik
*menuBar*undoSetUnknownTagData.labelString: Cofnij zmian� w�a�ciwo�ci nieznanego znacznika
*menuBar*undoGroupOfChanges.labelString:    Cofnij zmiany
*menuBar*undoSetListData.labelString:       Cofnij zmian� w�a�ciwo�ci listy
*menuBar*undoInsertTable.labelString:		Cofnij wstawienie tabeli
*menuBar*undoDeleteTable.labelString:		Cofnij skasowanie tabeli
*menuBar*undoSetTableData.labelString:		Cofnij zmian� w�a�ciwo�ci tabeli
![nn]
*menuBar*undoInsertTableCaption.labelString: Undo Insert Caption
*menuBar*undoSetTableCaptionData.labelString: Undo Set Caption Data
*menuBar*undoDeleteTableCaption.labelString: Undo Delete Caption
*menuBar*undoInsertTableRow.labelString:	Cofnij wstawienie rz�du
*menuBar*undoSetTableRowData.labelString:	Cofnij zmian� w�a�ciwo�ci rz�du
*menuBar*undoDeleteTableRow.labelString:	Cofnij skasowanie rz�du
*menuBar*undoInsertTableColumn.labelString: Cofnij wstawienie komlumny
*menuBar*undoSetTableCellData.labelString:	Cofnij zmian� w�a�ciwo�ci kom�rki
*menuBar*undoDeleteTableColumn.labelString: Cofnij skasowanie kolumny
*menuBar*undoInsertTableCell.labelString:	Cofnij wstawienie kom�rki
*menuBar*undoDeleteTableCell.labelString:	Cofnij skasowanie kom�rki

*menuBar*redoNull.labelString:			Nic do ponowienia
*menuBar*redoTyping.labelString:		Pon�w pisanie
*menuBar*redoAddText.labelString:		Pon�w dodawanie tekstu
*menuBar*redoDeleteText.labelString:		Pon�w skasowanie tekstu
*menuBar*redoCut.labelString:			Pon�w wyci�cie
*menuBar*redoPasteText.labelString:		Pon�w wstawienie tekstu
*menuBar*redoPasteHTML.labelString:		Pon�w wstawienie kodu HTML
*menuBar*redoPasteHREF.labelString:		Pon�w wsyawienie odno�nika
*menuBar*redoChangeAttributes.labelString:	Pon�w zmian� atrybut�w
*menuBar*redoIndent.labelString:		Pon�w wci�cie
*menuBar*redoParagraphAlign.labelString:	Pon�w wyr�wnanie akapitu
*menuBar*redoMorphContainer.labelString:	Pon�w zmian� stylu akapitu
*menuBar*redoInsertHorizRule.labelString:	Pon�w wstawienie poziomej lini <HR>
*menuBar*redoSetHorizRuleData.labelString:	Pon�w zmian� w�a�ciwo�ci lini poziomej
*menuBar*redoInsertImage.labelString:		Pon�w wstawienie obrazka
*menuBar*redoSetImageData.labelString:		Pon�w zmian� w�a�ciwo�ci obrazka
*menuBar*redoInsertBreak.labelString:		Pon�w wstawienie ko�ca lini <BR>
*menuBar*redoChangePageData.labelString:	Pon�w zmian� w�a�ciwo�ci strony
*menuBar*redoSetMetaData.labelString:		Pon�w zmian� w�a�ciow�ci znacznik�w META
*menuBar*redoDeleteMetaData.labelString:	Pon�w skasowanie znacznik�w META
*menuBar*redoInsertTarget.labelString:		Pon�w wstawienie celu
*menuBar*redoSetTargetData.labelString:		Pon�w zmian� w�a�ciwo�ci celu
*menuBar*redoInsertUnknownTag.labelString:	Pon�w nieznany znacznik
*menuBar*redoSetUnknownTagData.labelString:	Pon�w zmian� w�a�cio�ci nieznanego znacznika
*menuBar*redoGroupOfChanges.labelString:	Pon�w zmiany
*menuBar*redoSetListData.labelString:		Pon�w zmian� w�a�ciwo�ci listy
*menuBar*redoInsertTable.labelString:		Pon�w wstawienie tabeli
*menuBar*redoDeleteTable.labelString:		Pon�w skasowanie tabeli
*menuBar*redoSetTableData.labelString:		Pon�w zmian� w�a�ciwo�ci tabeli
![nn]
*menuBar*redoInsertTableCaption.labelString:	Redo Insert Caption
*menuBar*redoSetTableCaptionData.labelString:	Redo Set Caption Data
*menuBar*redoDeleteTableCaption.labelString:	Redo Delete Caption
*menuBar*redoInsertTableRow.labelString:	Pon�w wstawienie rz�du
*menuBar*redoSetTableRowData.labelString:	Pon�w zmian� w�a�ciwo�ci rz�du
*menuBar*redoDeleteTableRow.labelString:	Pon�w skasowanie rz�du
*menuBar*redoInsertTableColumn.labelString:	Pon�w wstawienie kolumny
*menuBar*redoSetTableCellData.labelString:	Pon�w zmian� w�a�ciwo�ci kom�rki
*menuBar*redoDeleteTableColumn.labelString:	Pon�w skasowanie kolumny
*menuBar*redoInsertTableCell.labelString:	Pon�w wstawienie kom�rki
*menuBar*redoDeleteTableCell.labelString:	Pon�w skasowanie kom�rku
! new


! View Menu
*Editor*menuBar*source.labelString:		Poka� kod �r�d�owy
*Editor*menuBar*source.mnemonic:                S
*menuBar*editSource.labelString:		Edytuj kod �r�d�owy
*menuBar*editSource.mnemonic:			E
*menuBar*paragraphMarks.labelString:		Display Paragraph Marks
*menuBar*paragraphMarks.mnemonic:		        P
!*displayTableBoundaries.labelString:           Display Table Boundaries
*displayTables.labelString:                     Wy�wietlaj tabel�
*displayTables.mnemonic:                        T
![nn]
! new
*menuBar*toggleComposeToolbar.labelString:	Panel edycji
![nn]
*menuBar*toggleComposeToolbar.mnemonic:		C
*menuBar*toggleFormatToolbar.mnemonic:		F
*menuBar*toggleFormatToolbar.labelString:	Panel formatowania
*menuBar*toggleTableBorders.labelString:	Kraw�dzie tabeli
*menuBar*toggleTableBorders.mnemonic:		B

! Insert Menu
! new
*menuBar*insertMenu.labelString:		Wstaw
*menuBar*insertListMenu.labelString:		List�
*menuBar*insertBulletedList.labelString:	List� punktowan�
*menuBar*insertNumberedList.labelString:	List� numerowan�
*insertTableRow.labelString:			Rz�d
*insertTableRow.mnemonic:			R
*insertTableRow.documentationString:		Wstaw nowy rz�d do tabeli
*insertTableColumn.labelString:			Kolumn�
*insertTableColumn.mnemonic:			o
*insertTableColumn.documentationString:		Wstaw now� kolumn� do tasbeli
*insertTableCell.labelString:                   Kom�rk�
*insertTableCell.mnemonic:                      C
*insertTableCell.documentationString:           Wstaw now� kom�rk� do tabeli

*insertHtml.labelString:                        Znacznik HTML...
*insertHtml.mnemonic:                           H
*insertHtml.documentationString:                \
Wstaw podany znacznik (tag)HTML
![nn]
*insertNonBreakingSpace.labelString:            Non-breaking Space
*insertNonBreakingSpace.mnemonic:               S
*insertBreakBelowImage.labelString:             Znacz. ko�ca wiersza poni�ej obrazka
*insertBreakBelowImage.mnemonic:                B
*insertLineBreak.labelString:                   Znacznik ko�ca wiersza
*insertLineBreak.mnemonic:                      L

! Insert/Tables pullaside.
*insertTable.labelString:                       Tabela...
*insertTable.mnemonic:                          T
*insertRow.labelString:                         Rz�d
*insertRow.mnemonic:                            R
*insertColumn.labelString:                      Kolumna
*insertColumn.mnemonic:                         o
*insertCell.labelString:                        Kom�rka
*insertCell.mnemonic:                           C

! new
! Format Menu
! Properties Menu
*menuBar*properties.labelString:			W�a�ciwo�ci
*menuBar*textProperties.labelString:		W�a�ciwo�ci zestawu znak�w
*menuBar*textProperties.mnemonic:	    e
*menuBar*linkProperties.labelString:		W�a�ciwo�ci odno�nika
*menuBar*linkProperties.mnemonic:	    L
*menuBar*imageProperties.labelString:		W�a�ciwo�ci obrazka
*menuBar*imageProperties.mnemonic:	    I
*menuBar*targetProperties.labelString:		W�a�ciwo�ci celu
*menuBar*targetProperties.mnemonic:	    a
*menuBar*tableProperties.labelString:		W�a�ciwo�ci tabeli
*menuBar*tableProperties.mnemonic:	    T
*menuBar*hruleProperties.labelString:		W�a�ciwo�ci lini poziomej
![nn]
*menuBar*hruleProperties.mnemonic:	    o
*menuBar*tagProperties.labelString:			W�a�ciwo�ci znacznika HTML
![nn]
*menuBar*tagProperties.mnemonic:		H
*menuBar*documentProperties.labelString:	W�a�ciwo�ci dokumentu
*menuBar*documentProperties.mnemonic:   D

! Properties Character Pullaside
![nn] by�o character
*charProperties.labelString:				Znak
*charProperties.mnemonic:			    C
*charProperties.bold.labelString:			Pogrubienie
*charProperties.bold.acceleratorText:	Alt+B
*charProperties.bold.mnemonic:	        B
*charProperties.underline.labelString:	Podkre�lenie
*charProperties.underline.acceleratorText:	Alt+U
*charProperties.underline.mnemonic:	    U
*charProperties.italic.labelString:			Pochylenie
*charProperties.italic.acceleratorText:	Alt+I
*charProperties.italic.mnemonic:	    I
*charProperties.fixed.labelString:			Sta�a szeroko��
*charProperties.fixed.acceleratorText:	Alt+T
*charProperties.fixed.mnemonic:	        F
*charProperties.superscript.labelString:	Indeks g�rny
*charProperties.superscript.mnemonic:	p
*charProperties.subscript.labelString:		Indeks dolny
*charProperties.subscript.mnemonic:		S
*charProperties.strikethrough.labelString:	Przekre�lenie
*charProperties.strikethrough.mnemonic:	t
*charProperties.blink.labelString:			Mruganie
*charProperties.blink.mnemonic:         k
*charProperties.textColor.labelString:		Kolor tekstu...
*charProperties.textColor.mnemonic:		C
*charProperties.defaultColor.labelString:	Domy�lny kolor
*charProperties.defaultColor.mnemonic:	D
*charProperties.serverJavaScript.labelString: JavaScript (Serwer)
*charProperties.serverJavaScript.mnemonic: J
*charProperties.clientJavaScript.labelString: JavaScript (Klient)
*charProperties.clientJavaScript.mnemonic: v
*menuBar*charProperties.clearAllStyles.labelString:	Wyczy�� wystkie style <Alt+K>
*menuBar*charProperties.clearAllStyles.acceleratorText:	Alt+K
*menuBar*charProperties.clearAllStyles.mnemonic:	a
*menuBar*fontSize.labelString:						Wielko�� czcionki
*menuBar*fontSize.mnemonic:			    S
*menuBar*paragraphProperties.labelString:			Akapit
*menuBar*paragraphProperties.mnemonic:	    P
*menuBar*paragraphProperties.indent.labelString:	Wci�cie o 1 poziom
*menuBar*paragraphProperties.indent.acceleratorText:	Tab
*menuBar*paragraphProperties.indent.mnemonic:           I
*menuBar*paragraphProperties.outdent.labelString:	Usu� wci�cie o 1 poziom
*menuBar*paragraphProperties.outdent.acceleratorText:	Shift+Tab
*menuBar*paragraphProperties.outdent.mnemonic:          R

![nn]
! Properties Font Size PullAside/Toolbar Font Size Popup.
*characterToolbar*fontSize.marginWidth:				0
![nn]
*characterToolbar*fontSize.marginHeight:			0
*composeToolbar*fontSize.marginWidth:				0
*composeToolbar*fontSize.marginHeight:				0
*fontSize.XmPushButtonGadget.labelType: STRING
*fontSize.minusTwo.labelString: 					-2
*fontSize.minusOne.labelString: 					-1
*fontSize.plusZero.labelString:  					+0
*fontSize.plusZero.mnemonic:                 0
*fontSize.plusOne.labelString:  					+1
*fontSize.plusOne.mnemonic:                  1
*fontSize.plusTwo.labelString:  					+2
*fontSize.plusTwo.mnemonic:                  2
*fontSize.plusThree.labelString:					+3
*fontSize.plusThree.mnemonic:                3
*fontSize.plusFour.labelString: 					+4
*fontSize.plusFour.mnemonic:				 4

! Properties Paragraph PullAside/Toolbar Properties Popup.
*composeToolbar*paragraphProperties.marginWidth:	0
*composeToolbar*paragraphProperties.marginHeight:	0
*paragraphProperties.XmPushButtonGadget.labelType:	STRING
*normal.labelString:      	    Normalny
*normal.mnemonic:			    N
*headingOne.labelString:		Nag��wek 1
*headingOne.mnemonic:		    1
*headingTwo.labelString:		Nag��wek 2
*headingTwo.mnemonic:		    2
*headingThree.labelString:		Nag��wek 3
*headingThree.mnemonic:		    3
*headingFour.labelString:		Nag��wek 4
*headingFour.mnemonic:		    4
*headingFive.labelString:		Nag��wek 5
*headingFive.mnemonic:		    5
*headingSix.labelString:		Nag��wek 6
*headingSix.mnemonic:		    6
*address.labelString:			Adres
*address.mnemonic:			    A
*formatted.labelString:			Formatowany
*formatted.mnemonic:			F
*listItem.labelString:			Pozycja listy
*listItem.mnemonic:			    L
*descriptionItem.labelString:	Description Title
*descriptionItem.mnemonic:		T
*descriptionText.labelString:	Description Text
*descriptionText.mnemonic:		x

! Tools menu
! Options Menu
*menuBar*editorPrefs.labelString:	Ustawienia edytora...
*menuBar*editorPrefs.mnemonic:	    E
*Editor*menuBar*showToolbar.labelString:	Poka�/edytuj panel
*Editor*menuBar*showToolbar.mnemonic:	T
*menuBar*showCharacter.labelString:	Poka� panel znak�w
*menuBar*showCharacter.mnemonic:	C
*menuBar*showParagraph.labelString:	Poka� panel akapit�w
*menuBar*showParagraph.mnemonic:	P

! Windows Menu
*menuBar*netBrowser.labelString:	Przegl�darka Mozilla

!=============
!  Popup Menus
!=============

!this comes up when you right click on a person in the address book
!so it should say "New Message" and not "Message"
*popup*composeMessage.labelString:	Nowa wiadomo��
!
*popup*viewProperties.labelString:   	W�a�ciwo�ci
*popup*viewProperties.mnemonic:   		s
!
![nn]
*popup*abDelete.labelString:    	Skasuj
*popup*abDelete.mnemonic:    		D
![nn]
*popup*abDelete.acceleratorText: 	Ctrl+D
!
*popup*abDeleteAllEntries.labelString:    	Skasuj z wszystkich list
!
*popup*addToAddressBook.labelString: 	Nowa karta...
*popup*addToAddressBook.mnemonic: 		w
*popup*abNewList.labelString:       	Nowa lista...
*popup*abNewList.mnemonic:        		L
!
*popup*saveMessagesAs.labelString:      Zapisz jako...
*popup*saveMessagesAs.mnemonic:         S
*popup*saveMessagesAs.acceleratorText:  Alt+S

! These are std Mail folder names.
*popup*sentMail.labelString:				Wys�ane
*popup*sentMail.mnemonic:				S

*popup*inbox.labelString:				Skrzynka odbiorcza
*popup*inbox.mnemonic:					I

*popup*trash.labelString:				Kosz
*popup*trash.mnemonic:					T

*popup*newFolder.labelString:				Nowy...
*popup*newFolder.mnemonic:				N

! A few Message Center popups:
*popup*openFolder.labelString:  Otw�rz
*popup*openFolderInNew.labelString:  Otw�rz w nowym oknie
*popup*deleteFolder.labelString:	 Skasuj
*popup*renameFolder.labelString:	 Zmie� nazw�...
*popup*compactFolder.labelString:	 Kompaktuj
*popup*subscribeFolder.labelString:	 Zapisz...
*popup*unsubscribeFolder.labelString:	 Wypisz

*popup*search.labelString:		Szukaj
*popup*search.labelString:		Szukaj
*popup*openNewsgroups.labelString:	Otw�rz grupy dyskusyjne
*popup*markNewsgroupsRead.labelString:	Oznacz grup� jako przeczytan�
*popup*updateMessageCount.labelString:	Aktualizuj licznik wiadomo�ci

! These are only in the threads window popup:
*popup*ignoreThread.labelString:	Ignoruj w�tek
*popup*ignoreThread.mnemonic:		I
*popup*watchThread.labelString:		�led� w�tek
*popup*watchThread.mnemonic:		W
*popup*changePriority.labelString:	Zmie� priorytet
*popup*openSelected.labelString:	Otw�rz wiadomo��
*popup*openMsgInNew.labelString:	Otw�rz wiadomo�� w nowym oknie
*popup*editMsg.labelString:	        Edytuj wiadomo��
*popup*addSenderToAddressBook.labelString:	Dodaj do ksi��ki adresowej

! the Mail Message window popup:
! many of these don't actually get there because they're
! overridden by the backend's allxpstr.h defs.
*popup*replyToSender.labelString:	Odpowiedz tylko do nadawcy
*popup*replyToSender.mnemonic:		R
*popup*replyToAll.labelString:		Odpowiedz do nadawcy i odbiorc�w
*popup*replyToAll.mnemonic:		A
*popup*replyToNewsgroup.labelString:		Odpowiedz do grupy dyskusyjnej

*toolBar*popup_PopupMenu.PopupMenu.replyToSender.labelString: tylko do nadawcy
*toolBar*popup_PopupMenu.PopupMenu.replyToNewsgroup.labelString: tylko do grupy dyskusyjnej

*popup*replyToSenderAndNewsgroup.labelString:		Odpowiedz do nadawcy i grupy dyskusyjnej
*popup*forwardMessage.labelString:	Przeka�
*popup*forwardMessage.mnemonic:		a
*popup*forwardMessageQuoted.labelString:	Przeka� jako cytat
*popup*forwardMessage.mnemonic:		Q
*popup*forwardMessageInLine.labelString:	Przeka� w tre�ci
*popup*forwardMessageInLine.mnemonic:	l
! "Recipients"?  What does that do?  It's in the spec.


*popup*addToAddrBkSubmenu.labelString:	Dodaj do ksi��ki adresowej
*popup*addToABSubmenu.labelString:	Dodaj do ksi��ki adresowej
*popup*addSenderToAddrBk.labelString:	Nadawc�
*popup*addAllToAddrBk.labelString:	Wszystkich

*popup*fileSubmenu.labelString:		Przenie� wiadomo��
*popup*deleteMessage.labelString:	Skasuj wiadomos�
*popup*deleteMessage.mnemonic:		D
*popup*saveMessage.labelString:		Zapisz wiadomo��
*popup*saveMessage.mnemonic:		v
*popup*print.labelString:		Drukuj wiadomo��...
*popup*print.mnemonic:			P

! Editor Popup Menu
*popup*textProperties.labelString:      W�a�ciwo�ci zestawu znak�w
*popup*textProperties.mnemonic:         x
*popup*targetProperties.labelString:    W�a�ciwo�ci celu
*popup*targetProperties.mnemonic:       a
*popup*imageProperties.labelString:     W�a�ciwo�ci obrazka
*popup*imageProperties.mnemonic:        I
*popup*tableProperties.labelString:     W�a�ciwo�ci tabeli
*popup*tableProperties.mnemonic:        T
*popup*hruleProperties.labelString:     W�a�ciwo�ci lini poziomej
*popup*hruleProperties.mnemonic:        o
*popup*tagProperties.labelString:       W�a�ciwo�ci znacznika HTML
![nn]
*popup*tagProperties.mnemonic:          H
*popup*paragraphProperties.labelString: W�a�ciwo�ci akapitu
*popup*paragraphProperties.mnemonic:    g
*popup*documentProperties.labelString:  W�a�ciwo�ci dokumentu
*popup*documentProperties.mnemonic:     D
*popup*insert.labelString:              Wstaw
*popup*insert.mnemonic:                 s
*popup*insertLink.labelString:          Wstaw odno�nik...
*popup*insertLink.mnemonic:             n
*popup*linkProperties.labelString:      W�a�ciwo�ci odno�nika
*popup*linkProperties.mnemonic:         n
*popup*browseLink.labelString:          Otw�rz odno�nik w przegl�darce...
*popup*browseLink.mnemonic:             w
*popup*browseToLink.labelString:        Przegl�daj: (%s)
*popup*editLink.labelString:            Otw�rz odno�nik w edytorze...
*popup*editLink.mnemonic:               E
*popup*bookmarkLink.labelString:        Dodaj odno�nik do zak�adek
*popup*bookmarkLink.mnemonic:           B
*popup*copyLink.labelString:            Kopiuj adres odno�nika
*popup*copyLink.mnemonic:               k
*popup*removeLink.labelString:          Usu� odno�nik
*popup*removeLink.mnemonic:             R

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (submenu).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*toolBar*newBlank.labelString:          Pusta strona
*toolBar*newTemplate.labelString:       Nowa strona z wzorca
*toolBar*newWizard.labelString:         Nowa strona z kreatora
*toolBar*openPage.labelString:          Otw�rz stron�...
*toolBar*save.labelString:              Zapisz
*toolBar*saveAs.labelString:            Zapisz jako...
*toolBar*publish.labelString:           Publikuj
*toolBar*sendPage.labelString:          Wy�lij stron�

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (text only).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*toolBar.editDocument.labelString:      Edytuj
*toolBar.editorNewBlank.labelString:    Nowa
*toolBar.editorOpenFile.labelString:    Otw�rz...
*toolBar.save.labelString:              Zapisz
*toolBar.editorBrowse.labelString:      Przegl�daj
*toolBar.cut.labelString:		Wytnij
*toolBar.copy.labelString:		Kopiuj
*toolBar.paste.labelString:		Wstaw
*toolBar.publish.labelString:		Publikuj

*toolBar.newBlank.labelString:          Nowa
*newBlank.tipString:                Nowa strona
*toolBar.openPage.labelString:          Otw�rz
*toolBar.browsePage.labelString:        Przegl�daj
*toolBar.findInObject.labelString:      Szukaj
*toolBar.insertLink.labelString:        Odno�nik
*toolBar.insertTarget.labelString:      Cel
*toolBar.insertImage.labelString:       Obrazek
*toolBar.insertHorizontalLine.labelString: Linia
*toolBar.insertTable.labelString:       Tabela
*toolBar.spellCheck.labelString:        Sprawdzanie

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor dialogs.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*textPropertiesDialog_popup.title:			Mozilla: W�a�ciwo�ci
*textPropertiesDialog.folder.XmForm.marginHeight: 		10
*textPropertiesDialog.folder.XmForm.marginWidth:		10
*textPropertiesDialog*XmFrame.marginHeight: 	2
*textPropertiesDialog*XmFrame.marginWidth:		2
*imagePropertiesDialog_popup.title:		       Mozilla: W�a�ciwo�ci
*imagePropertiesDialog.folder.XmForm.marginHeight: 		10
*imagePropertiesDialog.folder.XmForm.marginWidth:		10
*imagePropertiesDialog*XmFrame.marginHeight: 	2
*imagePropertiesDialog*XmFrame.marginWidth:		2

! Properties/Link properties.
*linkProperties.tabLabelString:	Odno�nik
*linkSourceTitle.labelString:	�r�d�o odno�nika
*linkSourceLabel.labelString:		Wpisz tekst odno�nika:
*linkToTitle.labelString:		Odno�nik do
*linkToLabel.labelString:		Wpisz adres odno�nika do strony lub pliku lokalnego:
*browseFile.labelString:		Przegl�daj...
*linkTarget.labelString:		\
Link to a named target in specified document(optional)
*showTargets.labelString:		Poka� cele w:
*currentDocument.labelString:	Aktualnym dokumencie
*selectedFile.labelString:		Wybranym pliku
*linkProperties*targetText.height:				100

! Properties/Character properties:
*characterProperties.tabLabelString:	Znak
*colorTitle.labelString:		Kolor
*colorLabel.labelString:		Aktualny kolor:
*default.labelString:			Domy�ly kolor
*custom.labelString:			kolor u�ytkownika
*chooseColor.labelString:		Wybierz kolor...
*colorText.labelString:			Kolor zaznaczonego tekstu zostanie zmieniony na aktualnie wybrany kolor.
*sizeTitle.labelString:			Rozmiar
*sizeText.labelString:			Ka�dy styl akapitu\nma w�asny rozmiar.
*styleTitle.labelString:		Styl
*clearStyles.labelString:		Wyczy�� ustawienia stylu
*characterProperties*clearStyles.marginWidth:	10
*characterProperties*clearStyles.marginHeight:	5
*characterProperties*clearStyles.leftOffset:	30
*characterProperties*clearStyles.rightOffset:	30
*characterProperties*clearStyles.bottomAttachment: ATTACH_FORM
*characterProperties*clearStyles.bottomOffset:	5
*characterProperties*javaFrame.leftOffset:		10
*characterProperties*sizeFrame.leftOffset:		10
*javaTitle.labelString:			Java Script
*java*client.labelString:		Klient
*java*server.labelString:		Serwer
*clearAll.labelString:			Wyczy�� wszystkie ustawienia
*characterProperties*clearAll.marginWidth:		10
*characterProperties*clearAll.marginHeight:		5
*characterProperties*clearAll.topOffset:		20
*characterProperties*clearAll.leftOffset:		15
*characterProperties*clearAll.rightOffset:		15

! Properties/Paragraph properties:
*paragraphProperties.tabLabelString: Akapit
*styleLabel.labelString:			Styl akapitu:
*additionalLabel.labelString:		Dodatkowy styl:
*additional*default.labelString:	Domy�lny
*additional*list.labelString:		Lista
![nn]
*additional*blockQuote.labelString:	Block quote
*listTitle.labelString:				Lista
*listLabel.labelString:				Styl:
*numbered.labelString:				Numerowana
*unnumbered.labelString:			Nienumerowana
*directory.labelString:				Katalog
*menu.labelString:					Menu
*description.labelString:			Opis
*automatic.labelString:				Automatycznie
*digital.labelString:				1,2,3,4,5..
*lowerRoman.labelString:			i,ii,iii,iv,v..
*upperRoman.labelString:			I,II,III,IV,V..
*lowerAlpha.labelString:			a,b,c,d,e..
*upperAlpha.labelString:			A,B,C,D,E..
*solidCircle.labelString:			Wype�nione k�ka
*openCircle.labelString:			Puste k�ka
*openSquare.labelString:			Puste kwadraty
*startLabel.labelString:			Numer pocz�tkowy
*startText.columns:					4
*spaceAvailable.labelString:		This Space Available
*paragraphProperties*spaceAvailable.topOffset:	40
*paragraphProperties*spaceAvailable.leftOffset:	150

! Properties/Image properties:
![nn]
*imageProperties.tabLabelString:	Obrazek
*imageFileTitle.labelString:		\
Adres obrazka - wpisz adres URL lub plik lokalny:
*chooseFile.labelString:		    Wybierz plik...
*browse.labelString:				Przegl�daj...
*alternativeImageTitle.labelString:	Alternatywna reprezentacja (opcjonalnie):
*alternativeImageLabel.labelString:	Obrazek:
*alternativeTextLabel.labelString:	Tekst:
*alignmentRowColumn*XmToggleButtonGadget.shadowThickness: 2
*alignmentTitle.labelString:		Wyr�wnanie i przenoszenie tekstu wok� obrazka
*alignmentInfoLabel.labelString:	\
Aby zobaczy� wklejony tekst, otw�rz stron� w przegl�darce.
*imageSpaceTitle.labelString:		Przestrze� wok� obrazka
*imageProperties.imageSpaceFrame.leftOffset:	10
*leftRightLabel.labelString:		Lewo i prawo:
*topBottomLabel.labelString:		Top and Bottom:
*solidBorderLabel.labelString:		Solidna ramka:
*originalSize.labelString:			Oryginalny rozmiar
*customSize.labelString:			Rozmiar u�ytkownika
![nn]
*constrain.labelString:			    Wymuszony
*copyImage.labelString:				Kopiuj obrazek do katalogu strony
*leaveImage.labelString:			Zostaw obrazek na oryginalnym miejscu
*useAsBackground.labelString:		U�yj jako t�o
*removeImageMap.labelString:		Usu� map� obrazka
*editImage.labelString:				Edytuj obrazek

! Horizontal Line Properties
*horizontalLineProperties_popup.title: Mozilla: linia pozioma
*dimensionsTitle.labelString:		Rozmiary
*horizontalLineProperties*XmFrame.marginWidth:  10
*horizontalLineProperties*XmFrame.marginHeight: 10
*heightLabel.labelString:			Wysoko��:
*heightText.columns:				4
*pixels.labelString:				pixels
*widthLabel.labelString:			Szeroko��:
*widthText.columns:					4
*percent.labelString:				% okna
*alignTitle.labelString:			Wyr�wnanie
*left.labelString:					Lewo
*center.labelString:				Wy�rodkowana
*right.labelString:				Prawo
*threeDShading.labelString:			Cienie 3-D

! Document Properties & Editor Preferences/Appearance
*appearanceProperties.tabLabelString:				Kolory i t�o
*documentPropertiesDialog_popup.title:	Mozilla: W�a�ciwo�ci dokumentu
*editorPreferencesDialog_popup.title:	Mozilla: W�a�ciwo�ci edytora
*folder*appearance.marginHeight: 	10
*folder*appearance.marginWidth:		10
*folder*appearance*XmFrame.marginHeight: 2
*folder*appearance*XmFrame.marginWidth:	2
*appearance*custom.labelString:		U�yj kolor�w u�ytkownika
*appearance*browser.labelString:  \
U�yj ustawie� kolor�w przegl�darki
*schemesTitle.labelString:		Schemat kolor�w
*save.labelString:			Zapisz
*remove.labelString:			Usu�
*documentColorsTitle.labelString:	Kolory dokumentu
*documentPropertiesDialog*previewFrame.marginHeight: 	0
*documentPropertiesDialog*previewFrame.marginWidth:	0
*appearance*normal.labelString:			Normalny tekst...
*appearance*link.labelString:			Odno�nik...
*appearance*active.labelString:			Aktywny odno�nik...
*appearance*followed.labelString:		Odwiedzony odno�nik...
*appearance*background.labelString:		T�o...
*appearance*backgroundInfo.labelString:		Obrazek t�a zast�puje kolor t�a.
*appearance*preview.normal.labelString: Normalny tekst
*appearance*preview.link.labelString:	Odno�nik
*appearance*preview.active.labelString:  Aktywny (wybrany) odno�nik
*appearance*preview.followed.labelString: Odwiedzony odno�nik
*appearance*preview*normalLabelString: Normalny tekst
*appearance*preview*linkLabelString:	Odno�nik
*appearance*preview*activeLabelString:  Aktywny (wybrany) odno�nik
*appearance*preview*followedLabelString: Odwiedzony odno�nik
*backgroundImageTitle.labelString:			Obrazek t�a
*browseImageFile.labelString:				Przegl�daj...
*solid.labelString:			Kolor
*useImage.labelString:				U�yj obrazka
*choose.labelString:			Wybierz kolor...
*documentPropertiesDialog*appearance*infoLabel.labelString:	\
Te ustawienia zostan� zastosowane do aktualnego koloru.
*editorAppearance*appearance*infoLabel.labelString:	\
Te ustawienia zostan� u�yte dla nowego dokumentu, nie aktualnego..

! Document Properties/General
![nn]
*generalProperties.tabLabelString:	Og�lne
*folder*general.marginHeight: 		10
*folder*general.marginWidth:		10
*locationLabel.labelString:			Adres:
*titleLabel.labelString:			Tytu�:
*authorLabel.labelString:			Autor:
*descriptionLabel.labelString:		Opis:
*createdLabel.labelString:			Data utworzenia:
*updatedLabel.labelString:			Ostatnia aktualizacja:
*otherAttributesTitle.labelString:	Inne atrybuty
*infoLabel.labelString:				\
U�yj przecink�w do odzielenie s��w i fraz.
*keywordsLabel.labelString:			S�owa kluczowe:
*classificationLabel.labelString:	Klasyfikacja:

! Document Properties/Advanced
*advanced.tabLabelString:			Zaawansowane
*folder*advanced.marginHeight: 		10
*folder*advanced.marginWidth:		10
*systemLabel.labelString:		Mozilla system variables (HTTP-EQUIV):
*userLabel.labelString:			Parametry u�ytkownika(META):
*nameLabel.labelString:			Nazwa:
*valueLabel.labelString:		Warto��:
*delete.labelString:			Skasuj
*set.labelString:			Ustaw
*new.labelString:			Nowa

! Target Properties
*targetPropertiesDialog_popup.title: 	Mozilla: W�a�ciwo�ci celu
*targetLabel.labelString:				Podaj nazw� tego celu:

! Html Properties
*htmlPropertiesDialog_popup.title: 	Mozilla: Znacznik HTML
*htmlPropertiesInfo.labelString:	\
Podaj nazw� znacznika i atrybuty oraz parametry (tylko dla jednego znacznika).
*htmlPropertiesDialog.Apply.labelString:	Sprawd�
*htmlPropertiesDialog.ApplyLabelString: 	Sprawd�

! Editor Preferences/General

*generalPreferences.tabLabelString:	Og�lne
*authorTitle.labelString:		Autor
*externalTitle.labelString:		Zewn�trzny edytor
*htmlLabel.labelString:			�r�d�o HTML:
*imageLabel.labelString:		Obrazek:
*templateTitle.labelString:		Wzorzec nowego dokumentu
*templateInfo.labelString:		\
Ta strona zostanie otwarta kiedy wybierzesz z menu:\n\
Plik/Nowy dokument/Ze wzorca.
*restoreDefault.labelString:	Przywr�� ustawienia domy�lne
*autosaveTitle.labelString:		Automatyczny zapis
*autosaveEnable.labelString:	Automatycznie zapisuj dokument co:
*minutes.labelString:			minut

! Editor/Tables Properties&Create

*table.tabLabelString:			Tabela
*row.tabLabelString:			Rz�d
*cell.tabLabelString:			Kom�rka
*tableCreateDialog_popup.title:				Mozilla: W�a�ciwo�ci nowej tabeli
*tablePropertiesDialog_popup.title: 		Mozilla: W�a�ciwo�ci tabeli
*tableRowsLabel.labelString:				Liczba rz�d�w:
*tableColumnsLabel.labelString:				Liczba kolumn:
*attributesTitle.labelString:				Atrybuty
*tableAlignmentTitle.labelString:			Wyr�wnanie tabeli
*borderLineWidthLabel.labelString:			szeroko�� ramki
*borderLineWidthUnits.labelString:			pikseli
*cellSpacingLabel.labelString:				Cell spacing
*cellSpacingUnits.labelString:				pikseli pomi�dzy kom�rkami
*cellPaddingLabel.labelString:			    Cell padding
*cellPaddingUnits.labelString:              pikseli odst�pu wewn�trz kom�rki




![nn]
*tableWidthToggle.labelString:				Szeroko�� tabeli
*tableHeightToggle.labelString:				Minimalna wysoko�� tabeli
*tableColorToggle.labelString:				Kolor tabeli
*captionToggle.labelString:				Do��czaj nazwy
*above.labelString:					nad tabelk�
*below.labelString:					poni�ej tabelki
*tableWidthUnits.marginWidth:				0
*tableWidthUnits.marginHeight:				0
*tableHeightUnits.marginWidth:				0
*tableHeightUnits.marginHeight:				0
*captionUnits.marginWidth:				0
*captionUnits.marginHeight:				0
*textAlignmentTitle.labelString:			wyr�wnanie tekstu
*horizontalLabel.labelString:				Poziomo
*verticalLabel.labelString:				Pionowo
*textAlignment*default.labelString:			Domy�lnie
*textAlignment*left.labelString:			W lewo
*textAlignment*right.labelString:			W prawo
*textAlignment*center.labelString:			Wy�rodkowany
*textAlignment*top.labelString:				Do g�ry
*textAlignment*bottom.labelString:			Do do�u
![nn]
*textAlignment*baselines.labelString:			Baselines
*tableAlignmentBox*left.labelString:			Lewo
*tableAlignmentBox*right.labelString:			Prawo
*tableAlignmentBox*center.labelString:			Wy�rodkowany
*rowColorToggle.labelString:				Kolor rz�du
*textOtherTitle.labelString:				Tekst
*headerStyle.labelString:				Styl nag��wka
*nonBreaking.labelString:				bez przenoszenia
*cellRowsLabel.labelString:				Cell spans
*cellColumnsLabel.labelString:				rz�d�w, i
*cellColumnsUnits.labelString:				kolumn
*cellWidthToggle.labelString:				Szeroko�� kom�rki
*cellHeightToggle.labelString:				Minimalna wysoko�� kom�rki
*cellColorToggle.labelString:				Kolor kom�rki
*percentOfCell.labelString:				% nadrz�dnej kom�rki
*percentOfWindow.labelString:			% okna
*cancel.cancelLabelString:              Anuluj
*cancel.closeLabelString:               Zamknij
*Cancel.cancelLabelString:              Anuluj
*Cancel.closeLabelString:               Zamknij
*borderLineWidth.labelString:           Szeroko�� ramki
*equalColumnWidth.labelString:          R�wne szeroko�ci kolumn
*backgroundTitle.labelString:           T�o
*backgroundAttributes.useColor.labelString: U�yj koloru:
*backgroundAttributes.useImage.labelString: U�yj obrazka:
*backgroundAttributes.chooseImage.labelString: Wybierz...

! Editor Preferences/Publish
*publishPreferences.tabLabelString:	Publikuj
*folder*publish.marginHeight: 		10
*folder*publish.marginWidth:		10
*linksAndImagesTitle.labelString:	Odno�niki i obrazki
*linksAndImagesLabel.labelString:	\
Przy zapisywaniu zdalnych dokument�w, i przy wstawianiu odno�nik�w oraz obrazk�w:
*linksToggle.labelString:		Zarz�dzaj odno�nikami
*linksInfo.labelString:			\
Dostosuj odno�niki aby by�y dost�pne z dokument�w. (odno�niki do lokalnych\n\
dokument�w zadzia�aj� gdy b�d� dost�pne wersje lokalne).
*imagesToggle.labelString:		Trzymaj obrazki z dokumentami
*imagesInfo.labelString:		\
Zapisuje kopie obrazk�w do katalogu z dokumentami.\n\
Obrazki zawsze b�d� dost�pne w wersj lokalnej\n\
dokumentu oraz wersji opublikowanej.
*linksAndImagesTip.labelString:		\
Rada: W��cz obie opcje je�eli masz zamiar publikowa� zdalnie swoje dokumenty.
*publishTitle.labelString:		Domy�lna lokalizacja publikowania
*publishLabel.labelString:		Publikuj na (FTP lub HTTP):
*browseLabel.labelString:		Przechod� do (HTTP):
*usernameLabel.labelString:		Nazwa u�ytkownika:
*passwordLabel.labelString:		Has�o:
*savePassword.labelString:		Zapisz has�o

! Publish Files dialog box
*publishFilesDialog_popup.title: 	Mozilla: Publikacja
*localFilesTitle.labelString:		Pliki lokalne
*localFiles.publishLabel.labelString:	Publikuj:
*includeLabel.labelString:		Do��cz pliki:
*includeImages.labelString:		Pliki powi�zane z t� stron�
*includeAll.labelString:		Wszystkie pliki z katalogu strony
*selectNone.labelString:		Nic nie do��czaj
!
!
*titleFrameTitle.labelString:	Nazwa strony
*publishLocationTitle.labelString:	Adres publikacji
*publishLocation.publishLabel.labelString:	\
Wysy�a pliki na ten adres (FTP or HTTP):
*useDefault.labelString:		U�yj domy�lnego adresu
! bogus url alert default button:
*publishFilesDialog_popup.question_popup.dialog.defaultButtonType:	\
dialog_cancel_button

*hintDialog_popup.title:		Mozilla: Rady
*dontDisplayAgain.labelString:	Nie wy�wietlaj tego ponownie.
*hintDialog.dontDisplayAgainRow.marginWidth: 9

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor popups.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Color Picker
*setColors_popup.title:                         Mozilla: Ustawienia kolor�w
*standardColorsTitle.labelString:               Kolory standardowe
*colorPicker*oldSample.labelString:             Stare
*colorPicker*newSample.labelString:             Nowe
![nn]
*colorPicker*swatches.tabLabelString:           Swatches
*colorPicker*rgb.tabLabelString:                Rgb
*colorPicker*rgb*unitsMenu.decimal.labelString: Dziesi�tnie
*colorPicker*rgb*unitsMenu.hex.labelString:     Szesnastkowo
*colorPicker*rgb*unitsMenu.percent.labelString: %
*colorPicker*defaultColor.labelString:          Kolor domy�lny
*colorPicker*otherColor.labelString:            Inny kolor...

! Save Remote Dialog.
*saveRemote.marginHeight:		10
*saveRemote.marginWidth:		10
! These don't seem to get set by above two lines.
*saveRemote*infoIcon.marginWidth:	15
*saveRemote*infoIcon.marginHeight:	15
*saveRemote_popup.title:		Mozilla: Zapisz zdalny dokument
*saveRemote*infoText.labelString:	\
Ten dokument znajduje si� na zdalnym serwerze.\n\
Musisz zapisa� go lokalnie zanim wprowadzisz zmiany.
*saveRemote*linksTitle.labelString:	Odno�niki
*saveRemote*linksToggle.labelString:	Dopasuj odno�niki aby pasowa�y w zdalnym dokumencie
*saveRemote*linksText.labelString:	\
Odno�niki do innych dokument�w pod tym samym adresie (katalogu) b�d� dzia�a�\n\
lokalnie i kiedy dokumenty b�d� publikowane.\n\
\n\
Odno�niki do zdalnych stron nie b�d� zmieniane.
*saveRemote*imagesTitle.labelString:	Obrazki
*saveRemote*imagesToggle.labelString:	Zapisuj obrazki wraz z dokumentami
*saveRemote*imagesText.labelString:	\
Obrazki b�d� umieszczone wraz z lokaln� wersj� dokumentu.
*saveRemote*save.labelString:		Zapisz
*saveRemote*cancel.labelString:		Anuluj
*saveRemote*help.labelString:		Pomoc

! Confirm Save File(s) Dialog.
*confirmSaveFiles_popup.title:			Mozilla: Potwierd� zapis pliku
*confirmSaveFiles.marginHeight:			0
*confirmSaveFiles.marginWidth:			0
*yes.labelString:		Tak
*confirmSaveFiles*yesToAll.labelString:	Tak na wszystkie
*no.labelString:		Nie
*confirmSaveFiles*noToAll.labelString:	Nie na wszystkie
*confirmSaveFiles*cancel.labelString:	Anuluj
*confirmSaveFiles*help.labelString:		Pomoc
*confirmSaveFiles*defaultButtonShadowThickness:	0

! Save/Upload files message dialogs.
*saveMessageDialog_popup.title:			Zapisuj� pliki
*uploadMessageDialog_popup.title:		Wysy�am pliki
*imageLoadMessageDialog_popup.title:	Wczytuj� obrazek
*saveMessageDialog.width:               400
*uploadMessageDialog.width:             400
*imageLoadMessageDialog.width:          400

!=============================================================================
! Mail/News column titles
!=============================================================================
*mailNewsColumns.folderlist.Name:	Nazwa
*mailNewsColumns.folderlist.Unread:	Nieprzeczytanych
*mailNewsColumns.folderlist.Total:	Wszystkich
*mailNewsColumns.messagelist.Thread:	W�tek
*mailNewsColumns.messagelist.Sender:	Nadawca
*mailNewsColumns.messagelist.Subject:	Temat
*mailNewsColumns.messagelist.Date:	Data


!=============================================================================
*toolBar*spacer.marginWidth:		4

*urlBar*whatsNew.labelString:		Co nowego?
*whatsNew.documentationString:		Co nowego w sieci
*urlBar*whatsCool.labelString:		Co ciekawego?
*whatsCool.documentationString:		Ciekawe strony w sieci
*urlBar*inetIndex.labelString:		Internet
*inetIndex.documentationString:		Przegl�danie sieci
*urlBar*inetSearch.labelString:		Szukanie w sieci
*inetSearch.documentationString:	Wyszukiwanie informacji w sieci
*urlBar*inetWhite.labelString:		Ludzie
*inetWhite.documentationString:		Ludzie i miejsca
*urlBar*inetYellow.labelString:		Yellow Pages
*urlBar*upgrade.labelString:		Oprogramowanie
*urlBar*welcome.labelString:		Witamy
*urlBar*newsgroups.labelString:		Grupy
*inetAbout.documentationString:		O internecie

*toolBar.getNewMail.labelString:	Pobierz poczt�
*toolBar.deleteMessage.labelString:	Skasuj
*toolBar.mailNew.labelString:		Nowa wiadomo��
*toolBar.postNew.labelString:		Nowa
*toolBar.replyToSender.labelString:	Odpowiedz
*toolBar.replyToAll.labelString:	Odpowiedz wszystkim
![nn]
*toolBar.postReply.labelString:		Wy�lij odpowied�
*toolBar.postAndMailReply.labelString:	Odpowiedz
*toolBar.forwardMessage.labelString:	Przeka�
*toolBar.previousUnreadMessage.labelString:Poprzednia
*toolBar.nextUnreadMessage.labelString:	Nast�pna
*toolBar.markThreadRead.labelString:	W�tek
*toolBar.markAllRead.labelString:	Wszystkie

*msgViewAttachPopup*open.labelString:		Otw�rz...
*msgViewAttachPopup*open.mnemonic:		O
*msgViewAttachPopup*save.labelString:		Zapisz...
*msgViewAttachPopup*save.mnemonic:		S
*msgViewAttachPopup*properties.labelString:	W�a�ciwo�ci
*msgViewAttachPopup*properties.mnemonic:	P

*attachmentProps.dialogTitle:			Za��cznik
Netscape*attachmentProps*XmLabelGadget.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

*attachmentProps.okLabelString:			Ok
*attachmentProps*nameLabel.labelString:		Nazwa:
*attachmentProps*typeLabel.labelString:		Typ:
*attachmentProps*encLabel.labelString:		Kodowanie:
*attachmentProps*descLabel.labelString:		Opis:

!=============================================================================
! Toolbar for addressbook
!
*toolBar.addToAddressBook.labelString:	Nowa karta
*toolBar.abNewList.labelString:		Nowa lista
*toolBar.deleteABEntry.labelString:	Skasuj
*toolBar.toAB.labelString:		To:
*toolBar.ccAB.labelString:		CC:
*toolBar.bccAB.labelString:		BCC:
*toolBar.directoryAB.labelString:	Zapisz

!
*Properties*showSecurBtn.labelString: Poka� Certifikat
!*filterBoxForm.filterPrompt.labelString: Wybierz katalog i wpisz poszukiwan� nazw�:
*filterBoxForm.filterPrompt.labelString: Poka� nazwy zawieraj�ce:
![nn]
*filterBoxForm.filterInLabel.labelString: Wyniki poszukiwania
*filterBoxForm.filterSearchBtn.labelString: Szukaj...
*filterBoxForm.filterStopBtn.labelString: Stop

!=============================================================================
! Toolbar for mail compose
*toolBar.SendOrSendLater.labelString:	Wy�lij
*toolBar.quoteMessage.labelString:	Cytuj
*toolBar.attach.labelString:		Do��cz
*toolBar.openAddrBook.labelString:	Adres

!=============================================================================
! Turn off beeping on name completion in the address outliner:
*addressText*verifyBell:		False

!=============================================================================
*noDocumentLoadedMessage:	Jeszcze nie wzcytano �adnego dokumentu do tego okna.
*optionsSavedMessage:		Opcje zosta�y zapisane.
*clickToSaveMessage:		Kliknij na odno�niku aby go zapisa�.
*clickToSaveCancelledMessage:	Zapis odno�nika do pliku zosta� anulowany.
*noPreviousURLMessage:		Brak poprzedniego dokumentu.
*noNextURLMessage:		Brak nast�pnego dokumentu.
*noHomeURLMessage:		Nie podano adresu strony startowej.
*notOverImageMessage:		Nie nad obrazkiem.
*notOverLinkMessage:		Nie nad odno�nikiem.
*noSearchStringMessage:		Nie podano czego szuka�.
*wrapSearchMessage:	     Koniec dokumentu; kontynuowa� od pocz�tku?
*wrapSearchBackwardMessage:  Pocz�tek dokumentu; kontynuowa� od ko�ca?
*wrapSearchNotFoundMessage:  Poszukiwanego ci�gu nie znaleziono.
*noAddressesMessage:	     Nie podano odbiorc�w.
*noFileMessage:		     Nie podano nazwy pliku.
![nn]
*noPrintCommandMessage:	     Nie okre�lono polecenia drukowania
*overwriteFileMessage:	     Zapisa� na istniej�cym pliku %s?
*bookmarksChangedMessage:    Plik ksi��ki adresowej zosta� zmieniony an dysku\nSkasowa� go i zapisa� aktualny?
*bookmarkConflictMessage:	\
			Nie zapisano listy zak�adek.\nWczyta� ponownie zak�adki z dysku?
*bookmarksNoFormsMessage:	\
	      Nie mo�na doda� wyniku formularza do zak�adek.
*reallyQuitMessage:	Zamkn�� wszystkie okna i wyj�� z Mozilla?
*doubleInclusionMessage:	\n\
Dokument jest ju� cytowany.\n\
 \n\
Czy chcesz go cytowa� ponownie?\n

*expireNowMessage:		\
		To oznaczy wszystkie odno�niki jako nie odwiedzone.\nKontynuowa�?
*clearMemCacheMessage:		\
    To usunie wszystkie pliki z pami�ci podr�cznej.\nKontynuowa�?
*clearDiskCacheMessage:		\
    To usunie wszystkie pliki z podr�cznej pami�ci dyskowej.\nKontynuowa�?

*createCacheDirErrorMessage:	\
B��d: nie mo�na utworzy� katalogu dla podr�cznej pami�ci dyskowej:\n\
 \n\
            %s: %s.\n\
 \n\
Prosz� poda� inny katalog w sekcji Zaawansowane/Pami�� podr�czna\n\
okna `Edycja|Ustawienia...'.\n

*createdCacheDirMessage:	\
Katalog dla dyskowej pami�ci podr�cznej zosta� utworzony:\n\
 \n\
            %s/\n\
 \n\
Mo�na poda� inny katalog w sekcji Zaawansowane/Pami�� podr�czna\n\
okna `Edycja|Ustawienia...'.\n

*cacheNotDirMessage:	\
B��d: nazwa podana do u�ycia jako katalog dla dyskowej pami�ci podr�cznej\n\
ju� istnieje, jednak to nie jest katalog:\n\
 \n\
            %s\n\
 \n\
Prosz� poda� inny katalog w sekcji Zaawansowane/Pami�� podr�czna\n\
okna `Edycja|Ustawienia...'.\n

*cacheSuffixMessage:	\
 \n\
Powinna by� jedna podr�czna pami�� dyskowa dla ka�dego u�ytkownika, dlatego\n\
u�ywanie wsp�lnych katalog�w (jak /tmp) nie jest zalecane.\n\
 \n\
Aktualny rozmiar podr�cznej pami�ci dyskowej to %d kilobajt�w.\n\
Mo�esz zmieni� rozmiar podr�cznej pami�ci dyskowej w sekcji\n\
Zaawansowane/Pami�� podr�czna okna `Edycja|Ustawienia...'.\n\
 \n\
Je�li chcesz wy��czy� dyskow� pami�� podr�czn�, ustaw\n\
'Rozmiar dyskowej pami�ci podr�cznej' na 0. Je�li to zrobisz,\n\
dokumenty nadal b�d� przetrzymywane w pami�ci podr�cznej (zgodnie z\n\
ustawieniami 'Rozmiar pami�ci podr�cznej', jednak�e nie b�d� zapisywane\n\
na dysk. To oznacza �e dokumenty nie b�d� dost�pne z pami�ci podr�cznej\n\
podczas nast�pnej sesji z programem Mozilla.

*cubeTooSmallMessage:		\
We were only able to allocate %d cells for the color\n\
cube to which images are dithered.  As a result, the\n\
image quality may be poor.\n\
 \n\
One way to improve image quality is to exit any other\n\
color-intensive applications which are running and\n\
restart Mozilla.\n\
 \n\
Another way is to run Mozilla with the `-install'\n\
command-line option, which will cause it to use a\n\
private colormap.  The drawback to this is that on\n\
some systems, this will result in colormap flashing\n\
when moving focus to other windows.

*renameInitFilesMessage:		\
Znaleziono plik ustawie� starszej wersji Mozilla;\n\
Ta wersja u�ywa tego samego formatu pliku, jednak�e\n\
zosta�y zmienione nazwy. Czy chcesz zmieni� nazwy starych plik�w\n\
na nowe?

*unsentMailMessage:			\
 Nie wys�ano poczty. Czy nadal chcesz wyj�� nie wysy�aj�c jej?

*binaryDocumentMessage:			\
 To jest dokument binarny; Nie mo�na pokaza� �r�d�a.

! For Helper App Editor - Delete
*helperAppDeleteMessage:			\
Jeste� pewien �e chcesz skasowa� t� definicj� typu MIME?\n\
�adne pliki tego typu nie b�d� w przysz�o�ci rozpoznawane przez\n\
wtyczki Mozilla i/lub programy pomocnicze Mozilla.


!=============================================================================
!*preeditType:				root
!*Netscape.preeditType:			overthespot

! default titles for the TopLevelShell widgets.
! note that the title and icon title of Navigator windows are
! changed at runtime; these resources won't override that.
*title:					Mozilla
*iconName:				Mozilla
*Navigator.title:			Mozilla Navigator 4.79
*MailThread.title:			Mozilla poczta i grupy dyskusyjne
*MailThread.iconName:		Poczta i grupy dyskusyjne


*Download.title:			Mozilla: Pobieranie plik�w
*Download.iconName:			Pobieranie plik�w
*Composition.title:			Mozilla: Edycja wiadomo�ci
*Composition.iconName:		Edycja wiadomo�ci
*bookmarks.title:			Mozilla: Zak�adki
*bookmarks.iconName:		Zak�adki
*AddressBook.title:			Mozilla: Ksi��ka adresowa
*AddressBook.iconName:		Ksi��ka adresowa
*Editor.title:				Mozilla: Edytor
*Editor.iconName:			Edytor
*MailFolder.title:			Mozilla: Centrum wiadomo�ci
*MailFolder.iconName:		Centrum wiadomo�ci
*AWTapp.iconName:           Konsola Java
*history.iconName:          Historia
*MailMsg.iconName:          Wiadomo��

!========================
!  Popup Menu - Navigator
!========================

*popup.title.labelString:		Komendy Mozilla:
*popup.openURLNewWindow.labelString:	Otw�rz odno�nik w nowym oknie
*popup.openURLNewWindow.mnemonic:		 O
*popup*openURLNewWindow.acceleratorText:  �rodkowy przycisk
*popup.openFrameNew.labelString:		Otw�rz ramk� w nowym oknie
*popup.openFrameNew.mnemonic:			 w
*popup.openFrameInWindow.labelString:	Otw�rz ramk� w oknie
*popup.openFrameInWindow.mnemonic:		 i
![nn]
*popup.editLink.labelString:			Otw�rz odno�nik w edytorze
*popup.editLink.mnemonic:				 e
!                                       ------------------------
! back
! forward
*reloadNonFrameCmdString:				Prze�aduj
*reloadWithFrameCmdString:				Prze�aduj ramk�
*popup.frameReload.mnemonic:			 R
*popup.showImage.labelString:			Poka� obrazek
*popup.showImage.mnemonic:              g
! stopLoading
!                                       ------------------------
*pageSourceNonFrameCmdString:			Poka� �r�d�o strony
*pageSourceWithFrameCmdString:			Poka� �r�d�o ramki
*popup.framePageSource.mnemonic:		 u
*pageInfoNonFrameCmdString:				Poka� informacje o stronie
*pageInfoWithFrameCmdString:			Poka� informacje o ramce
*popup.framePageInfo.mnemonic:			 V
*openImageCmdString:					Poka� obrazek osobno
*popup.openImage.mnemonic:				 m
!                                       ------------------------
*popup.addLinkBookmark.labelString:		Dodaj zak�adk� do odno�nika
*popup.addLinkBookmark.mnemonic:		 k
*popup.addFrameBookmark.labelString:	Dodaj zak�adk� do ramki
*popup.addFrameBookmark.mnemonic:		 k
! sendPage
!                                       ------------------------
*popup.saveURL.labelString:				Zapisz odno�nik jako...
*popup.saveURL.mnemonic:				 S
*popup.saveURL.acceleratorText:			 Shift+Button1
*popup.saveImage.labelString:		   	Zapisz obrazek jako...
*popup.saveImage.mnemonic:				 i
*popup.saveBGImage.labelString:			Zapisz t�o jako...
*popup.saveBGImage.mnemonic:			 d
!                                       ------------------------
! 'copy' command defined in editor popup above
! 'copyLink' command defined in editor popup above
*popup.copyImage.labelString:			Kopiuj adres obrazka
*popup.copyImage.mnemonic:				 y


!
! Convert from old version file formats
*convertQuestion_popup*OK.labelString:		Skasuj stare pliki konfiguracyjne
*convertQuestion_popup*Cancel.labelString:	Zachowaj stare pliki konfiguracyjne

!
! Convert from old version file formats
*sendNow_popup*OK.labelString:		Tak
*sendNow_popup*Cancel.labelString:	Nie


! Mail/News popup menus
!
*Mail*popup.title.labelString:		Poczta Mozilla
*News*popup.title.labelString:		Grupy dyskusyjne Mozilla

! News open News host dialog
!
*News*openNewsHost.title:	Mozilla: Otw�rz serwer news
*News*openNewsHost*selectionLabelString:	\
				Podaj adres i port serwera grup dyskusyjnych (news):
*News*openNewsHost*hostLabel.labelString:	Adres:
*News*openNewsHost*hostLabel.alignment:		ALIGNMENT_END
*News*openNewsHost*portLabel.labelString:	Port:
*News*openNewsHost*portLabel.leftOffset:	10
*News*openNewsHost*portLabel.alignment:		ALIGNMENT_END
*News*openNewsHost*secure.labelString:		Secure
*News*openNewsHost*secure.topOffset:		10
*News*openNewsHost*portText.columns:		5


*history_popup.title:			Mozilla: Historia
*history_popup*listLabelString:		Gdzie by�e�...
*history_popup*OK.labelString:		Id�
*history_popup*OkLabelString:		Id�
*history_popup*Cancel.labelString:	Zamknij
*history_popup*CancelLabelString:	Zamknij
*history_popup*Apply.labelString:	Utw�rz zak�adk�
*history_popup*ApplyLabelString:	Utw�rz zak�adk�


*source_popup.title:				Mozilla: Poka� �r�d�o
*source_popup*save.labelString:			Zapisz...
*source_popup*OK.labelString:			OK
*source_popup*text.editable:			False
*source_popup*text.cursorPositionVisible:	False
*source_popup*text.wordWrap:			True
*source_popup*text.scrollHorizontal:		False
*source_popup*urlLabel.labelString:		Adres:
*source_popup*titleLabel.labelString:		Tytu�:
![nn]
*source_popup*titleLabel.leftOffset:		0
*source_popup*titleLabel.rightOffset:		4
*source_popup*titleLabel.alignment:		ALIGNMENT_END
*source_popup*urlLabel.topOffset:		0
*source_popup*urlLabel.leftOffset:		0
*source_popup*urlLabel.rightOffset:		4
*source_popup*urlLabel.alignment:		ALIGNMENT_END
*source_popup*titleText.leftOffset:		0
![nn]
*source_popup*titleText.rightOffset:		0
*source_popup*urlText.leftOffset:		0
*source_popup*urlText.rightOffset:		0
*source_popup*text.leftOffset:			0
*source_popup*text.rightOffset:			0
*source_popup*XmScrolledWindow.topOffset:	8
*source_popup*text.columns:			80
*source_popup*text.rows:			20

*docinfo_popup.title:				Mozilla: Informacje o dokumencie
*docinfo_popup*OK.labelString:	OK
*docinfo_popup*titleLabel.labelString:		Nazwa:
*docinfo_popup*urlLabel.labelString:		Adres:
*docinfo_popup*modifiedLabel.labelString:	Ostatnie zmiany:
*docinfo_popup*sourceLabel.labelString:		�r�d�o:
*docinfo_popup*charsetLabel.labelString:	Kodowanie:
![nn]
*docinfo_popup*dpyLabel.labelString:		Visual:
*docinfo_popup*securityFrame.label.labelString:	Informacje o bezpiecze�stwie
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
Nieprawid�owy format znacznika Language/Country.\n\n\
Prawid�owy format to: 'Aaaaa/Bbbbb [xx-YY]' gdzie:	\n\
    'Aaaa/Bbbb' - kraj (dodatkowe, nie u�ywane)\n\
    '[' and ']' obejmuje znacznik (obowi�zkowe, odst�py (spacje)\n\
nie s� dozwolone w�wn�trz)\n\
    'xx' okre�la j�zyk (obowi�zkowe)\n\
    '-YY' okre�la kraj (dodatkowe)

*invalidLangTagFormatDialogTitle:	Nieprawid�owy format znacznika

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
Ta wersja Mozilla nie ma wbudowanych zapezpiecze� bezpiecze�stwa.

*docinfo*securityLabel.labelString:\
Security protects Internet documents you receive and information you send\n\
back with server authentication, privacy using encryption, and data\n\
integrity.  You can see a document's security status using the key/broken\n\
key icon in the status area or the colorbar above the content area (blue for\n\
secure; gray for insecure).  Consult the Handbook or the `On Security' page\n\
for details.



*bmPreferences_popup.title:				Mozilla: Zak�adki
*bmPreferences_popup*frame1label.labelString:		Dodaj zak�adk�
*bmPreferences_popup*frame2label.labelString:		Menu zak�adek
*bmPreferences_popup*addbm_option.labelString:		\
						Dodaj zak�adk� do tego nag��wka
*bmPreferences_popup*bmmenu_option.labelString:		\
					  Poka� ten nag��wek w menu zak�adek
*bmPreferences_popup*addbm_default.labelString: Dodaj do najwy�szego poziomu
*bmPreferences_popup*bmmenu_default.labelString: Nag��wek najwy�szego poziomu

*bookmarksWhatsChanged*button_0.labelString: Wszystkie zak�adki
*bookmarksWhatsChanged*button_1.labelString: Wybrane zak�adki
*bookmarksWhatsChanged*Apply.labelString: Start
*bookmarksWhatsChanged*ApplyLabelString:  Start
*bookmarksWhatsChanged*title.labelString: Co zmienione?
*bookmarksWhatsChanged.width: 400
*bookmarksWhatsChanged.minWidth: 400
*bookmarksWhatsChanged.maxWidth: 400
!*bookmarksWhatsChanged.height: 300
!*bookmarksWhatsChanged.minHeight: 300
![nn]
!*bookmarksWhatsChanged.maxHeight: 300

*composeFolder.height:                          650
*composeFolder.shadowThickness:                 2
*composeFolder.bottomOffset:                    3
*composeFolder.leftOffset:                      3
*composeFolder.rightOffset:                     3
*composeFolder.topOffset:                       5
*composeFolder.spacing:                         1
*composeFolder.autoSelect:                      False


*mailto_field*fromLabel.labelString:		Od:
*mailto_field*replyToLabel.labelString:		Odpowiedz:
*mailto_field*toLabel.labelString:		Wy�lij do:
*mailto_field*ccLabel.labelString:		Wy�lij DW:
*mailto_field*bccLabel.labelString:		Wy�lij UDW:
*mailto_field*fccLabel.labelString:		File CC:
*mailto_field*newsgroupsLabel.labelString:	Grupy dyskusyjne:
*mailto_field*followupToLabel.labelString:	Followup To:
*mailto_field*attachmentsLabel.labelString:		Za��cznik:
*mailto_field*attachButton.labelString:		Za��cz...
*mailto_field*browseButton.labelString:		Przegl�daj...
*mailto_field*secureToggle.labelString:		Secure
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
*mailto_bodyText.columns:			72
! This resource will change the size of the compose tab
*mailto_bodyText.rows:				25
*composeViewBaseWidget*composeViewEditFormWidget.leftOffset: 3
*composeViewBaseWidget*composeViewEditFormWidget.bottomOffset: 3
*composeViewBaseWidget*subject.topOffset: 3
*composeViewBaseWidget*subject.bottomOffset: 3
*composeViewBaseWidget*addReceipient.topOffset:20
*composeViewBaseWidget*removeReceipient.topOffset: 15
*composeViewBaseWidget*selectReceipient.topOffset: 15
*composeViewBaseWidget*addReceipient.leftOffset: 5
*composeViewBaseWidget*removeReceipient.leftOffset: 5
*composeViewBaseWidget*selectReceipient.leftOffset: 5


! Some people just aren't too hip.
!*defaultMailtoText:			Hey, check out this cool URL:\n\n

*attachForm*attachWebPage.labelString:  Za��cz stron�...
*attachForm*attachWebPage.mnemonic:	W
*attachForm*attachFile.labelString:     Za��cz plik...
*attachForm*attachFile.mnemonic:	F
*attachForm*deleteAttachment.labelString:		Skasuj za��cznik
*attachForm*deleteAttachment.mnemonic:			D
*attachForm*attachAddressBookCard.labelString:		Za��cz wizyt�wk� (vCard)
*attachForm*attachAddressBookCard.mnemonic:		A

*location_popup.dialogTitle:			Mozilla: Za��cz stron�
*location_popup*label.labelString:	Podaj adres strony kt�r� chcesz za��czy�:
*location_popup*locationLabel.labelString:	Adres strony (URL):
*location_popup*locationText.columns:		40
*location_popup*locationText.leftOffset:	20
*location_popup*okLabelString: Attach
*location_popup*cancelLabelString: Cancel
*location_popup*clear.labelString: Clear

*attachForm*fileBrowser_popup.title:		Mozilla: Za��cz plik
*attachForm*fileBrowser.OkLabelString:		Za��cz

*formatType*none.labelString:		Nie za��czaj
*formatType*text.labelString:		Tekst
*formatType*formattedText.labelString:	Formatowany tekst
*formatType*html.labelString:		�r�d�o
*formatType*tree.labelString:		�r�d�o i obrazki
*formatType*ps.labelString:		PostScript
*formatType*url.labelString:		Tylko adres (URL)


! Helper Editor stuff
*helperEditor_popup.title:		Pomoc Mozilla
*helperEditor.width: 400
*helperEditor*mimeTypesDescriptionLabel.labelString: Opis
*helperEditor*mimeTypesDescriptionLabel.leftOffset: 3
*helperEditor*mimeTypesLabel.labelString: Typ
*helperEditor*mimeTypesLabel.leftOffset: 3
*helperEditor*mimeTypesSuffixLabel.labelString: Ko�c�wka
*helperEditor*mimeTypesSuffixLabel.leftOffset: 3
*helperEditor*helperEditForm.XmTextField.rightOffset: 3
*helperEditor*helperEditFrameLabel.labelString: Obs�ugiwane przez
*helperEditor*helperEditNavigator.labelString: Navigator
*helperEditor*helperEditPlugin.labelString: Wtyczka
*helperEditor*helperEditApp.labelString: Program
*helperEditor*helperEditSave.labelString: Zapisz na dysk
*helperEditor*helperEditUnknown.labelString: Nieznany:Zapytaj u�ytkownika
*helperEditor*helperEditAppBrowse.labelString: Przegl�daj...
*helperEditor*helperEditNavigator.leftOffset: 20
*helperEditor*helperEditAppText.columns: 40


! Preferences: Styles 2
!


*enteringSecureDialog_popup.title:		Mozilla: Bezpieczny dokument
*enteringSecureDialog*toggle.labelString:  	Pokazuj to ostrze�enie nast�pnym razem
*enteringSecureDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*enteringSecureDialog*toggle.leftOffset:	100
*enteringSecureDialog.selectionLabelString:\
Za��da�e� bezpiecznego dokumentu. Ten dokument i wszystkie informacje\n\
kt�re ode�lesz b�d� kodowane dla prywatno�ci podczas przesy�ania.\n\
Aby uzyska� wi�cej informacji na temat zabezpiecze� wybierz 'Informacje\n\
o stronie' z menu 'Widok'.

*leavingSecureDialog_popup.title:		Mozilla: Ostrze�enie o bezpiecze�stwie
*leavingSecureDialog*toggle.labelString:	Pokazuj to ostrze�enie nast�pnym razem
*leavingSecureDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*leavingSecureDialog.OkLabelString:		Kontynuuj wczytywanie
*leavingSecureDialog.CancelLabelString:		Przerwij wczytywanie
*leavingSecureDialog*toggle.leftOffset:		100
*leavingSecureDialog.selectionLabelString:\
Za��da�e� niezabezpieczonego dokumentu. Ten dokument i wszystkie informacje\n\
kt�re ode�lesz mog� by� podgl�dni�te przez osoby trzecie podczas przesy�ania.\n\
Aby uzyska� wi�cej informacji na temat zabezpiecze� wybierz 'Informacje\n\
o stronie' z menu 'Widok'.

*mixedSecurityDialog_popup.title:		Mozilla: Ostrze�enie o bezpiecze�stwie
*mixedSecurityDialog*toggle.labelString:	Pokazuj to ostrze�enie nast�pnym razem
*mixedSecurityDialog*toggle.alignment:		ALIGNMENT_BEGINNING
*mixedSecurityDialog*toggle.leftOffset:		100
*mixedSecurityDialog.selectionLabelString:\
Za��da�e� bezpiecznego dokumentu kt�ry zawiera cz�� informacji niezabezpieczonych\n\
 \n\
Niezabezpieczone informacje nie b�d� pokazane.\n\
Aby uzyska� wi�cej informacji na temat zabezpiecze� wubier 'Informacje\n\
o stronie' z menu 'Widok'.

*redirectionToInsecureDialog_popup.title:	Mozilla: Ostrze�enie o bezpiecze�stwie
*redirectionToInsecureDialog*toggle.labelString:Pokazuj to ostrze�enie nast�pnym razem
*redirectionToInsecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToInsecureDialog.OkLabelString:	Kontynuuj wczytywanie
*redirectionToInsecureDialog.CancelLabelString:	Przerwij wczytywanie
*redirectionToInsecureDialog*toggle.leftOffset:	100
*redirectionToInsecureDialog.selectionLabelString:\
Ostrze�enie! Za��da�e� bezpiecznego dokumentu kt�ry kt�ry zosta�\n\
zmieniony na dokument niezabezpieczony (adres dokumentu zosta�\n\
przekierunkowany przez serwer z dokumentu bezpiecznego na dokument\n\
niezabezpieczony).  Ten dokument i wszystkie informacje kt�re ode�lesz\n\
mog� by� podgl�dni�te przez osoby trzecie podczas przesy�ania.\n\
Aby uzyska� wi�cej informacji na temat zabezpiecze� wybierz 'Informacje\n\
o stronie' z menu 'Widok'.

*redirectionToSecureDialog_popup.title:	Mozilla: Ostrze�enie o bezpiecze�stwie
*redirectionToSecureDialog*toggle.labelString:Pokazuj to ostrze�enie nast�pnym razem
*redirectionToSecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToSecureDialog.OkLabelString:	Kontynuuj wczytywanie
*redirectionToSecureDialog.CancelLabelString:	Przerwij wczytywanie
*redirectionToSecureDialog*toggle.leftOffset:	100
*redirectionToSecureDialog.selectionLabelString:\
Ostrze�enie! Twoje po��czenie zosta�o przekierunkowane na inn�\n\
stron�. Dlatego te� mo�esz by� pod��czony do innej strony ni� ta z kt�r�\n\
chcia�e� si� po��czy�.

*insecurePostFromSecureDocDialog_popup.title:	     Mozilla: Ostrze�enie o bezpiecze�stwie
*insecurePostFromSecureDocDialog*toggle.labelString: Pokazuj to ostrze�enie nast�pnym razem
*insecurePostFromSecureDocDialog*toggle.alignment:   ALIGNMENT_BEGINNING
*insecurePostFromSecureDocDialog.OkLabelString:      Kontynuuj wysy�anie
*insecurePostFromSecureDocDialog.CancelLabelString:  Przerwij wysy�anie
*insecurePostFromSecureDocDialog*toggle.leftOffset:  100
*insecurePostFromSecureDocDialog.selectionLabelString:\
Ostrze�enie! Pomimo �e ten dokument jest bezpieczny, wszystkie informacje\n\
jakie chcesz odes�a� b�d� niezabezpiecone i mog� zosta� podgl�dni�te przez\n\
osoby trzecie podczas przesy�ania. Je�li przesy�asz has�a, numery kart\n\
kredytowych, lub inne informacje kt�rych nie chcesz zdradza� osobom\n\
niepowo�anym b�dzie dla ciebie bezpieczniej przerwa� przerwa� wysy�anie.

*insecurePostFromInsecureDocDialog_popup.title:	      Mozilla: Ostrze�enie o bezpiecze�stwie
*insecurePostFromInsecureDocDialog.OkLabelString:     Kontynuuj wysy�anie
*insecurePostFromInsecureDocDialog.CancelLabelString: Przerwij wysy�anie
*insecurePostFromInsecureDocDialog*toggle.labelString:Pokazuj to ostrze�enie nast�pnym razem
*insecurePostFromInsecureDocDialog*toggle.alignment:  ALIGNMENT_BEGINNING
*insecurePostFromInsecureDocDialog*toggle.leftOffset: 100
*insecurePostFromInsecureDocDialog.selectionLabelString:\
Informacje kt�re zamierzasz wys�a� nie b�d� zabezpieczone i mog� zosta�\n\
podgl�dni�te przez osoby trzecie. Je�li przesy�asz has�a, numery kart\n\
kredytowych, lub inne informacje kt�rych nie chcesz zdradza� osobom\n\
niepowo�anym b�dzie dla ciebie bezpieczniej przerwa� przerwa� wysy�anie.


![nn]
*licenseDialog_popup.title:			Mozilla: Licencja
*licenseDialog*label1.labelString:\n\
 Mozilla is licensed software.  Its use is subject to the\n\
 terms and conditions of the license agreement below.\n
*licenseDialog*label2.labelString:\n\
 Je�li akceptujesz warunki licencji wci�nij `Akceptuj�.'\n\
 W przeciwnym razie wci�nij `Nie akceptuj�.'\n
*licenseDialog*text.columns:			72
*licenseDialog*text.rows:			23
*licenseDialog*text.wordWrap:			True
*licenseDialog*text.scrollHorizontal:		False
*licenseDialog.accept.labelString:		Akceptuj�
*licenseDialog.reject.labelString:		Nie akceptuj�

*printSetup_popup.title:			Mozilla: Drukowanie
*printSetup*printToLabel.labelString:		Drukuj do:
*printSetup*toPrinterToggle.labelString:	Drukarka
*printSetup*toFileToggle.labelString:		Plik
*printSetup*printCommandLabel.labelString:	Komenda drukowania:
*printSetup*fileNameLabel.labelString:		Nazwa pliku:
*printSetup*browseButton.labelString:		Przegl�daj...
*printSetup*printLabel.labelString:		Drukuj:
*printSetup*firstFirstToggle.labelString:	Pierwsz� stron� na pocz�tku
*printSetup*lastFirstToggle.labelString:	Ostatni� stron� na pocz�tku
*printSetup*orientationLabel.labelString:	Orientacja:
*printSetup*portraitToggle.labelString:		Pionowa
*printSetup*landscapeToggle.labelString:	Pozioma
*printSetup*printColorLabel.labelString:	Drukuj:
*printSetup*greyscaleToggle.labelString:	Odcienie szaro�ci
*printSetup*colorToggle.labelString:		Kolor
*printSetup*paperSizeLabel.labelString:		Rozmiar kartki:
*printSetup*letterToggle.labelString:		Letter (8 1/2 x 11 in.)
*printSetup*legalToggle.labelString:		Legal (8 1/2 x 14 in.)
*printSetup*executiveToggle.labelString:	Executive (7 1/2 x 10 in.)
*printSetup*a4Toggle.labelString:		A4 (210 x 297 mm)
*printSetup*OK.labelString:			Drukuj
*printSetup*OkLabelString:			Drukuj
*printSetup*CancelLabelString:			Zaniechaj
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

*findDialog_popup.title:			Mozilla: Szukaj
*findDialog*findInLabel.labelString:		Szukaj w:
*findDialog*msgHeaders.labelString:		Nag��wki wiadomo�ci w tym katalogu
*findDialog*msgBody.labelString:		Tre�� tej wiadomo�ci
*findDialog*msgHeaders.indicatorType:		ONE_OF_MANY
*findDialog*msgBody.indicatorType:		ONE_OF_MANY
*findDialog*findLabel.labelString:		Szukaj:
*findDialog*findLabel.alignment:		ALIGNMENT_END
*findDialog*caseSensitive.labelString:		Rozr�nianie wielko�ci liter
*findDialog*backwards.labelString:		Wstecz
*findDialog*backwards.leftOffset:		20
*findDialog*caseSensitive.alignment:		ALIGNMENT_BEGINNING
*findDialog*backwards.alignment:		ALIGNMENT_BEGINNING
*findDialog*XmToggleButtonGadget.indicatorType:	N_OF_MANY
*findDialog*XmToggleButtonGadget.visibleWhenOff:True
*findDialog*OK.labelString:			Szukaj
*findDialog*OkLabelString:			Szukaj
*findDialog*Apply.labelString:			Wyczy��
*findDialog*ApplyLabelString:			Wyczy��
*findDialog*Cancel.labelString:			Zamknij
*findDialog*CancelLabelString:			Zamknij
!*findDialog_popup*preeditType:			overthespot
! Bookmark Find dialog shares resources with the main find dialog
! Extra resources specific to bookmark find dialog
*findDialog*lookinLabel.labelString:		Patrz w:
*findDialog*nameToggle.labelString:		Zazwa
*findDialog*locationToggle.labelString:		Adres
*findDialog*descriptionToggle.labelString:	Opis
*findDialog*wordToggle.labelString:		Ca�e wyrazy
*findDialog*helptext.labelString:		U�yj 'Szukaj ponownie' aby ponowi� szukanie.

! More resources for the Addressbook find dialog
*findDialog*nicknameToggle.labelString:		Pseudonim


*openURLDialog_popup.title:			Mozilla: Otw�rz stron�
!*openURLDialog_popup*preeditType:		none
*openURLDialog*label.labelString:	\
Enter the World Wide Web location (URL) or specify\n\
the local file you would like to open:
*openURLDialog*choose.labelString:		Wybierz plik...
*openURLDialog*toolLabel.labelString:		Otw�rz adres lub plik w:
*openURLDialog*browserToggle.labelString:	Nawigatorze
*openURLDialog*editorToggle.labelString:	Edytorze
*openURLDialog*OK.labelString:			Otw�rz
*openURLDialog*OkLabelString:			Otw�rz
*openURLDialog*Apply.labelString:		Wyczy��
*openURLDialog*ApplyLabelString:		Wyczy��
*openURLDialog*Cancel.labelString:		Anuluj
*openURLDialog*CancelLabelString:		Anuluj
*openURLDialog*label.alignment:			ALIGNMENT_BEGINNING
*openURLDialog*XmToggleButtonGadget.indicatorType: ONE_OF_MANY
*openURLDialog*XmRowColumn.orientation:		VERTICAL
*openURLDialog*browserToggle.set:		True
*openURLDialog*XmTextField.columns:		45
!*openURLDialog.width:				500
*openURLDialog*openInEditor.labelString:	Edytuj
*openURLDialog*openInBrowser.labelString:	Otw�rz

*message_popup.title:				Mozilla
*message_popup*OK.labelString:			OK
*message_popup*OkLabelString:			OK

*error_popup.title:			Mozilla: B��d

*question_popup.title:			Mozilla: Pytanie
*question_popup*OK.labelString:	OK
*question_popup*Cancel.labelString:	Zaniechaj

*prompt_popup.title:			Mozilla: Pytanie
*password_popup.title:			Mozilla: Has�o
*promptSubject_popup.title:		Mozilla: Temat pytania
*stdout_popup.title:			Mozilla: subprocess diagnostics (stdout)
*stderr_popup.title:			Mozilla: subprocess diagnostics (stderr)
*stdout_stderr_popup.title:	 Mozilla: subprocess diagnostics (stdout/stderr)

*citing_popup.title:			Mozilla
*citing_popup*messageString:		\nQuoting...\n

*printing_popup.title:			Mozilla
*printing_popup*messageString:		\nDrukuj�...\n

*deliveringMessage_popup.title:		Mozilla
*deliveringMessage_popup*messageString:	\nDostarczam wiadomo��...\n

*saving_popup.title:			Mozilla
*saving_popup*messageString:		\nZapisuj� na dysk...\n

*visual_popup.title:			Mozilla: Change X Visual
*visual_popup*listLabelString:		Available Visuals:

*autoSaveNew.title:          Mozilla: Automatycznie zapisz nowy dokument
*saveFile_popup.title:          Mozilla: Zapisz dokument
*saveNewFile_popup.title:       Mozilla: Zapisz nowy dokument
*markMessagesRead_popup.title:       Zaznacz wiadomo�ci jako przeczytane

*promptSubject_popup*messageString:	\
Ne poda�e� tematu tej wiadomo�ci.\n\
Je�li chcesz go poda�, prosz� wpisa� go teraz.
![nn]

*dialog*OK.labelString:			OK
*dialog*clear.labelString:		Wyczy��
*dialog*Cancel.labelString:		Zaniechaj
*dialog*userLabel.labelString:		Identyfikator:
*dialog*passwdLabel.labelString:	Has�o:
*dialog*userLabel.alignment:		ALIGNMENT_END
![nn]
*dialog*passwdLabel.alignment:		ALIGNMENT_END
*dialog*dialogform*text.columns:   50
*dialog*dialogform*pwtext.columns: 50

*clear.labelString:			Wyczy��
*cancel.labelString:			Zaniechaj
*OK.labelString:			OK

*citationQuery_popup.title:		Pytanie o styl cytatu
*citationQuery.selectionLabelString:	\n\
+ Zacytowa�e� ca�y dokument zamiast go do��czy�.\n\
 \n\
Zamiast tego mo�esz do��czy� ten dokument na koniec wiadomo�ci\n\
bez poprzedzaj�cego ka�d� lini� znaku `>'. Uczyni to �atwiejszym\n\
dla odbiorcy zapis i u�ywanie tego dokumentu.\n\
 \n\
Czy chcesz wys�a� ten dokument jako za��cznik??\n

*citationQuery*OK.labelString:		Wy�lij jako\nza��cznik tekstowy
*citationQuery*OkLabelString:		Wy�lij jako\nza��cznik tekstowy
*citationQuery*Apply.labelString:	Wy�lij jako\ncytat
*citationQuery*ApplyLabelString:	Wy�lij jako\ncytat
*citationQuery*Cancel.labelString:	Zaniechaj
*citationQuery*CancelLabelString:	Zaniechaj

*doubleCitationQuery_popup.title:	Pytanie o styl cytatu
*doubleCitationQuery.selectionLabelString:	\n\
Prawdopodobnie przypadkowo za��czy�e� ten sam dokument podw�jnie:\n\
za pierwszym razem jako cytat (zanczy si�: z `>' na pocz�tku ka�dej lini)\n\
a p�niej jako za��cznik (czyli jako drug� cz�� wiadomo�ci)\n\
 \n\
Chcesz wys�a� ten dokument jako cytat czy jako za��cznik?

*doubleCitationQuery*OK.labelString:	Wy�lij jako\nza��cznik tekstowy
*doubleCitationQuery*OkLabelString:	Wy�lij jako\nza��cznik tekstowy
*doubleCitationQuery*Apply.labelString:	Wy�lij jako\nCytat
*doubleCitationQuery*ApplyLabelString:	Wy�lij jako\nCytat
*doubleCitationQuery*Cancel.labelString:Zaniechaj
*doubleCitationQuery*CancelLabelString:	Zaniechaj

*streamingAudioQuery_popup.title:	Pytanie o d�wi�k
*streamingAudioQuery.selectionLabelString:	\
Chcesz odegra� dane d�wi�kowe w zewn�trznej odtwarzarce jako\n\
dane prosto z sieci czy zapisa� na dysk jako plik i dopiero wtedy odtworzy� z pliku?
*streamingAudioQuery*OK.labelString:	Graj prosto z sieci
*streamingAudioQuery*OkLabelString:	Graj prosto z sieci
*streamingAudioQuery*Apply.labelString:	Pierw zapisz
*streamingAudioQuery*ApplyLabelString:	Pierw zapisz
*streamingAudioQuery*Cancel.labelString:Zaniechaj
*streamingAudioQuery*CancelLabelString:	Zaniechaj

*fileSelector*filterLabelString:	Filtr
*fileSelector*dirListLabelString:	Katalogi
*fileSelector*fileListLabelString:	Pliki
*fileSelector*OkLabelString:	OK
*fileSelector*ApplyLabelString:	Filter
*fileSelector*CancelLabelString:	Zaniechaj
*fileSelector.Selection.labelString:	Wyb�r
*fileSelector.pattern:			*.html
*fileSelector*fileTypeMask:		FILE_ANY_TYPE
*fileSelector*saveTypeBox.orientation:	HORIZONTAL
*fileSelector*formatType.labelString:	Format dokumentu:
!*fileSelector_popup*preeditType:	overthespot

*fileBrowser_popup.title:		Mozilla: Przegl�darka plik�w
*fileBrowser*filterLabelString:		Filtr
*fileBrowser*dirListLabelString:		Katalogi
*fileBrowser*fileListLabelString:		Pliki
*fileBrowser*Selection.labelString:		Wyb�r
*fileBrowser*OkLabelString:		OK
*fileBrowser*ApplyLabelString:		Filtr
*fileBrowser*CancelLabelString:		Anuluj
*fileBrowser*HelpLabelString:		Pomoc
*fileBrowser*encodingFrame*optionMenu.labelString: Typ pliku:
*fileBrowser*encodingFrame*attachAutoDetect.labelString: Wykryj autmoatycznie
*fileBrowser*encodingFrame*attachBinary.labelString: Binary


*formSubmitButton.labelString:		Wy�lij
*formResetButton.labelString:		Wyczy��
![nn]
*formButton.labelString:		Monkey Brains
*formFileBrowseButton.labelString:	Przegl�daj...

! Bookmarks popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*bookmarks*popup.title.labelString:		Zak�adki
*bookmarks*popup*newFolder.labelString: Nowy katalog...
*bookmarks*popup.saveURL.acceleratorText:

*titleSeparator.separatorType:			XmDOUBLE_LINE

! Bookmarks edit properties window.
!
*bookmarkProps_popup*title:			Mozilla: W�a�ciwo�ci zak�adki
*bookmarkProps*nameLabel.labelString:		Nazwa:
*bookmarkProps*nameLabel.alignment:		ALIGNMENT_END
*bookmarkProps*locationLabel.labelString:	Adres:
*bookmarkProps*locationLabel.alignment:		ALIGNMENT_END
*bookmarkProps*descriptionLabel.labelString:	Opis:
*bookmarkProps*descriptionLabel.alignment:	ALIGNMENT_END
*bookmarkProps*lastvisitedLabel.labelString:	Ostatnie odwiedziny:
*bookmarkProps*lastvisitedLabel.alignment:	ALIGNMENT_END
*bookmarkProps*addedonLabel.labelString:	Dodano:
*bookmarkProps*addedonLabel.alignment:		ALIGNMENT_END
*bookmarkProps*descriptionText.topOffset:	8
*bookmarkProps*descriptionText.columns:		40
*bookmarkProps*descriptionText.rows:		5
*bookmarkProps*aliasButton.labelString:		Wybierz skr�ty

!
! Address Book
!
*AddressBook*mainform.width:			760
*AddressBook*mainform.height:			400
*AddressBook*menuBar.Item.labelString:		Pozycja
*AddressBook*addUser.labelString:		Dodaj u�ytkownika...
*AddressBook*addUser.mnemonic:			U
*AddressBook*addList.labelString:		Dodaj list�...
*AddressBook*addList.mnemonic:			L
*AddressBook*properties.labelString:		W�a�ciwo�ci
*AddressBook*properties.mnemonic:		P
*AddressBook*queryLabel.labelString:		Wpisz nazw� kt�rej szukasz:
*AddreMsgWin*toBtn.labelString:                 To:
!*AddreMsgWin*toBtn.mnemonic:					T
*AddreMsgWin*ccBtn.labelString:                 CC:
!*AddreMsgWin*ccBtn.mnemonic:					C
*AddreMsgWin*bccBtn.labelString:              	BCC:
!*AddreMsgWin*bccBtn.mnemonic:					B
*AddreMsgWin*removeBtn.labelString:           	Usu�
*AddreMsgWin*addToAddressBtn.labelString:       Dodaj do ksi��ki adesowej
*AddreMsgWin*propertiesBtn.labelString:     	W�a�ciwo�ci
*AddreMsgWin*delBtn.labelString:     			Skasuj
!*AddreMsgWin*addToAddressBtn.mnemonic:       	A
*AddressBook*dirLabel.labelString:		w:
*AddressBook*searchBtn.labelString:		Szukaj
*AddressBook*helpBar.height:			10
*AddressBook*outline.Name:			Nazwa
*AddressBook*outline.Nick:			Pseudonim
![nn]
*AddressBook*outline.Secure:			Secure
*AddressBook*outline.HTML:			HTML
*AddressBook*mainform.fontList:			-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

! The mail compose window part of addr book
*mc_queryLabel.labelString:	Podaj nazw� kt�rej szukasz:
*mc_dirLabel.labelString:	w:
*mc_searchBtn.labelString:	Szukaj
*mc_tobtn.labelString:		To:
*mc_ccbtn.labelString:		Cc:
*mc_bccbtn.labelString:		Bcc:
*mc_okbtn.labelString:		OK
*mc_cancelbtn.labelString:	Zaniechaj

! Address Book popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*AddressBook*popup.title.labelString:			Ksi��ka adresowa
*AddressBook*popup.titleSeparator.separatorType:	XmDOUBLE_LINE


!
! Download
!
*Download*downloadURLLabel.labelString:			�r�d�o:
*Download*downloadFileLabel.labelString:		Zapisz:
*Download*stopLoading.labelString:				Sop
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

*Download*logo.topOffset:					15
*Download*logo.rightOffset:					10
*Download*cancel.marginWidth:				15
*Download*cancel.marginHeight:				10
*Download*cancel.topOffset:					20
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
Netscape*XmTextField.foreground:		Black
Netscape*XmText.foreground:		Black
Netscape*XmList.foreground:		Black
Netscape*XmTextField.background:		#FFFFFF
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
!*insecureDocumentColor:			#0C0C0C

! Default for all buttons
Netscape*XmPushButton*shadowThickness:	2
Netscape*XmPushButtonGadget*shadowThickness: 2

! And for option menus:
Netscape*XmCascadeButton.shadowThickness: 2
Netscape*XmCascadeButtonGadget.shadowThickness: 2

!!
!! *logo
!!
*logo.animationInterval:		150
*logo.marginBottom:				0
*logo.marginLeft:				0
*logo.marginRight:				0
*logo.marginTop:				0
*logo.shadowThickness:			1
*logo.documentationString:		Strona domowa Netscape Communications Corporation
*logo.tipString:				Odwied� Netscape

*historyMenuBox.marginHeight:	0
*historyMenuBox.marginWidth:	0

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
Netscape.version: 		4.79


! ============================================================================
! Fonts in the widgets.
! These fonts are all down in Motif land, and thus are not controlled by the
! font selector on the Preferences dialog.  That applies only to fonts in
! the document display area.
! ============================================================================
!
*fontList:			-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

*XmTextField.fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*XmText.fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*XmList*fontList:		-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

! SGI default:
!*menuBar*fontList:		-*-helvetica-bold-o-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
! Sensible default:
!*menuBar*fontList:		-*-lucida-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

*menuBar*historyTruncated.fontList:\
				-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*popup*fontList:		-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

!*topArea*fontList:		-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*topArea*XmTextField.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*topArea*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

!*bookmark*fontList:	      -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*bookmark*fontList:	        -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*bookmark*selectedLabel.fontList:\
			      -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*bookmark*XmTextField.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!*bookmark*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

*docinfoButton.fontList:      -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*mailto*urlLabel.fontList:    -*-helvetica-medium-r-*-*-*-140-*-*-*-*-iso8859-2:*-r-*

*licenseDialog*text.fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

! These are the fonts used in the outline lists used in Mail, News, Bookmarks,
! and Address Book windows.  (Note that there can't be any whitespace after
! the commas.)

! For non-SUN platforms, user can accept font size to be 10 pt on the message list
Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2,\
-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2=BOLD,\
-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-2=ITALIC

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*,\
-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*=BOLD,\
-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-2:*-r-*=ITALIC

! Font for the Mail/News banner
! For non-SUN platforms, user can accept font size to be 10 pt to be default on the message list
Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*
Netscape*banner*folderDropdown*fontList:\
-adobe-courier-medium-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*,\
-adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*=BOLD

Netscape*banner*title.fontList:		-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*
Netscape*banner*subtitle.fontList:	-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*
Netscape*banner*info.fontList:	-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!Netscape*banner*folderDropdown*.fontList:\
-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*,\
-adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*=BOLD

!Netscape*banner*title.fontList:		-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!Netscape*banner*subtitle.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
!Netscape*banner*info.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

*banner*folderDropdown*shadowThickness: 1
! Font for the Thread window expando flippy label
*arrowlabel.fontList:		-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

! Font for the attachment panel icon label
! need class name to defeat *sgiMode
Netscape*attachItemLabel*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

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
*documentFonts.defaultFont*iso-8859-1.prop:	adobe-times-140-noscale
*documentFonts.defaultFont*iso-8859-1.fixed:	adobe-courier-140-noscale

*documentFonts.defaultFont*iso-8859-2.prop:	adobe-times-140-noscale
*documentFonts.defaultFont*iso-8859-2.fixed:	adobe-courier-140-noscale

*documentFonts.defaultFont*UTF-8.prop:	nsPseudoFont-times-140-noscale
*documentFonts.defaultFont*UTF-8.fixed:	nsPseudoFont-courier-140-noscale


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
*documentFonts.charsetlang*gb_2312-80:			Simplified Chinese
*documentFonts.charsetlang*iso-8859-1:			Western
*documentFonts.charsetlang*iso-8859-2:			Central European
*documentFonts.charsetlang*iso-8859-5:			Cyrillic
*documentFonts.charsetlang*iso-8859-7:			Greek
*documentFonts.charsetlang*iso-8859-9:			Turkish
*documentFonts.charsetlang*jis_x0201:			Japanese
*documentFonts.charsetlang*jis_x0208-1983:		Japanese
*documentFonts.charsetlang*jis_x0212-1990:		Japanese
*documentFonts.charsetlang*koi8-r:			Cyrillic
*documentFonts.charsetlang*ks_c_5601-1987:		Korean
*documentFonts.charsetlang*x-cns11643-1110:		Traditional Chinese
*documentFonts.charsetlang*x-cns11643-1:		Traditional Chinese
*documentFonts.charsetlang*x-cns11643-2:		Traditional Chinese
*documentFonts.charsetlang*x-gb2312-11:			Simplified Chinese
*documentFonts.charsetlang*x-jisx0208-11:		Japanese
*documentFonts.charsetlang*x-ksc5601-11:		Korean
*documentFonts.charsetlang*x-x-big5:			Traditional Chinese
*documentFonts.charsetlang*unicode-2-0:			Unicode


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
*documentFonts.maximumPoints: 200

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
*unicodeFont.helvetica*jis_x0208-1983:        gothic
*unicodeFont.helvetica*jis_x0201:             gothic
*unicodeFont.times*jis_x0208-1983:            mincho
*unicodeFont.times*jis_x0201:                 mincho
*unicodeFont.courier*jis_x0208-1983:          fixed
*unicodeFont.courier*jis_x0201:               fixed
*unicodeFont.lucida*jis_x0208-1983:           gothic
*unicodeFont.lucida*jis_x0201:                gothic
*unicodeFont.lucidatypewriter*jis_x0208-1983: gothic
*unicodeFont.lucidatypewriter*jis_x0201:      gothic
*unicodeFont.allowHPScaling:                  false
!*unicodeFont.screenDpi:                       100
!*javaFont.usePointSizing:                     false
!*javaFont.screenDpi:                          100


*scrollerX*VertScrollBar.width:		10
*scrollerX*VertScrollBar.height:	100

! Mail search dialog...
*MNSearch.title:                          Mozilla: Szukaj
*MNSearch.iconName:                       Szukaj
*MNSearch*SearchBtn.labelString:          Szukaj
*MNSearch*NewBtn.labelString:             Wyczy��
*MNSearch*MiscBtn.labelString:            Opcje...
*MNSearch*HelpBtn.labelString:		  Pomoc
*MNSearch*SaveAsBtn.labelString:          Zapisz jako...
*MNSearch*CloseBtn.labelString:           zamknij
*matchAll.labelString:           Zaznacz wszystkie z
*matchAny.labelString:           Zaznacz dowoln� z
*MNSearch*SaveAsDialogTextLabel.labelString:	      	Nazwa grupy dyskusyjnej:
*searchSaveAsPromptDialog.dialogTitle:		Mozilla: Zapisz jako wirtualn� grup� dyskusyjn�
*MNSearch*SaveAsDialogInfo.labelString:	\
Zapisanie kryterii wyszukiwania utworzy wirtualn� grup� dyskusyj�\n\
bazuj�c� na podanych kryteriach. Wirtualna grupa dyskusyjna b�dzie\n\
dost�pna z listy katalog�w okna Messanger.

*where.labelString:                       gdzie
*MNSearch*searchFolderLabel.labelString:  Szukaj wiadomo�ci w
*MNSearch*itemsLabelTitle.labelString:    Znaleziono pozycji:
*MNSearch.width:     			  650
! needs to match up with XFE_SEARCH_DATE_FORMAT in ns/cmd/xfe/xfe_err.h
*MNSearch*labelValueField.labelString:    mm/dd/yyyy
*MNSearch*moreBtn.labelString:		  Wi�cej
*MNSearch*lessBtn.labelString:		  Mniej
*MNSearch*searchContent.marginWidth:	  5
*MNSearch*searchContent.marginHeight:	  5
*MNSearch*resultComment.topOffset: 	  4
*MNSearch*goToMessageFolder.labelString:  Otw�rz katalog wiadomo�ci
*MNSearch*fileMsg.labelString:            Plik w:
*MNSearch*fileMsg.buttonLayout:           button_label_only
*MNSearch*deleteMsg.labelString:          Skasuj wiadomo��
*popup*copySubmenu.labelString:        	  Skopiuj wiadomo��

! Advanced mail search (Options) dialog
*advancedSearch*subfolderToggle.labelString:	szukanie w podkatalogach
*advancedSearch*whenOnlineSearch.labelString: Kiedy po��czony, szukaj wiadomo�ci:
*advancedSearch*searchLocalToggle.labelString:	na na dyskach lokalnych
*advancedSearch*searchServerToggle.labelString:	na podanym serwerze

! Ldap Search
*Ldap.title:                          	Mozilla:Szukaj katalog�w
*Ldap.iconName:                       	Szukaj katalog�w
*Ldap*A_the1.labelString:
*Ldap*A_the2.labelString:             	i
*Ldap*SearchBtn.labelString:     	szukaj
*Ldap*NewBtn.labelString:     		Wyczy��
*Ldap*MiscBtn.labelString:     		Pomoc
*Ldap*CloseBtn.labelString:     	Zamknij
*Ldap*ldapSearchFolderLabel.labelString: Szukaj
*Ldap*itemsLabelTitle.labelString:    	Znaleziono:
*Ldap.width:				650
*Ldap.height:				250
*Ldap*labelValueField.labelString:	mm/dd/yy
*Ldap*searchContent.marginWidth:	5
*Ldap*searchContent.marginHeight:	5
*Ldap*resultComment.topOffset: 		4
*Ldap*ldapCommands.marginWidth:   	10
*Ldap*ldapCommands.spacing:   		20
*Ldap*toAddrBook.labelString:   	Dodaj do ksi��ki adresowej
*Ldap*toCompose.labelString:     	Napisz wiadomo��

!
! Navigator mouse documentation.
!
*tipLabel.fontList:           -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
Netscape*tipLabel.background:  #FFFFCC
Netscape*tipLabel.foreground:  Black
Netscape*tipShell.borderColor: Black
Netscape*tipShell.borderWidth: 1

!
! Browser documentation and tip strings
!

! Navigator/Toolbar (tip strings and special documentation strings)
*back.tipString:		            Przejd� do poprzedniej strony
*forward.tipString:		            Przejd� do nast�pnej strony
*home.tipString:                    Id� do strony domowej
*home.documentationString:          Id� do strony domowej
*search.tipString:                  Szukaj w internecie
*search.documentationString:        Przeszukaj internet za informacjami
*MailThread*search.documentationString:  Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch
*MailMsg*search.documentationString:  Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch
*MailFolder*search.documentationString:  Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch
*destinations.tipString:            Twoja osobista strona pocz�tkowa
*destinations.documentationString:  Id� do strony pocz�tkowej
*guide.tipString:            Interesuj�ce miejsca w internecie
*guide.documentationString:  Id� do interesuj�cych miejsc w internecie
*myshopping.tipString:		    Go to Shop@Netscape
*myshopping.documentationString:    Go to Shop@Netscape
*showImages.tipString:              Poka� obrazki na tej stronie
*reload.tipString:                  Prze�aduj t� stron�
*stopLoading.tipString:             Przerwij aktualne transfery

!
! Some mail/news documentation and tip strings
!
!*MailFolder*stopLoading.tipString:  Przesta� �ci�ga� wiadomo�ci
!*MailFolder*search.documentationString:	Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch
!*MailThread*search.documentationString:	Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch
!*MailMsg*search.documentationString:	Szukaj w wiadomo�ciach pocztowych i grup dyskusyjnch

!!
!! *urlBarItem
!!
*urlBarItem.shadowType:					shadow_out
*urlBarItem.shadowThickness:			1
*urlBarItem.marginLeft:					1
*urlBarItem.marginRight:				1
*urlBarItem.marginTop:					1
*urlBarItem.marginBottom:				1

!!
!! *bookmarkQuickfile
!!
*bookmarkQuickfile.labelString:			Zak�adki
![nn]
*bookmarkQuickfile.tipString:			Bookmark QuickFile
*bookmarkQuickfile.documentationString:	Bookmark QuickFile
*bookmarkQuickfile.topOffset:			2
*bookmarkQuickfile.leftOffset:			2
*bookmarkQuickfile.buttonLayout:		button_label_on_right
*bookmarkQuickfile.mappingDelay:		0

!!
!! *relatedItems
!!
*relatedItems.labelString:				What's Related
*relatedItems.tipString:				What's Related
*relatedItems.documentationString:		What's Related
*relatedItems.topOffset:				2
*relatedItems.leftOffset:				2
*relatedItems.buttonLayout:				button_label_on_right

!!
!! *urlLocationProxyIcon
!!
*urlLocationProxyIcon.tipString:	\
Drag this to create a link to this page
*urlLocationProxyIcon.documentationString:	\
Drag this to create a link to this page
*urlLocationProxyIcon.topOffset:		3
*urlLocationProxyIcon.leftOffset:		3
*urlLocationProxyIcon.cursor:			hand2

*urlLocationProxyIcon.shadowThickness:			0
*urlLocationProxyIcon.raiseBorderThickness:		0
*urlLocationProxyIcon.fillOnArm:				false
*urlLocationProxyIcon.buttonLayout:				button_pixmap_only


!!
!! *urlLocationLabel
!!
*urlLocationLabel.alignment:				alignment_end
*urlLocationLabel.recomputeSize:			False
*urlLocationLabel.marginHeight:				0
*urlLocationLabel.leftOffset:				4


*urlLocationLabel.netsiteLabelString:		Adres:
*urlLocationLabel.uneditedLabelString:		Adres:
*urlLocationLabel.editedLabelString:		Id� do:

! this must be the longer of the two...
*urlLocationLabel.labelString:				Adres:

!!
!! Fixed Quickfile items
!!
*bookmarkQuickfile*addBookmark.labelString:				Dodaj zak�adk�
*bookmarkQuickfile*addBookmark.mnemonic:					A
*bookmarkQuickfile*addBookmark.acceleratorText:			Alt+K

*bookmarkQuickfile*openBookmarks.labelString:				Edytuj zak�adki...
*bookmarkQuickfile*openBookmarks.mnemonic:					E
*bookmarkQuickfile*openBookmarks.acceleratorText:			Alt+B

*bookmarkQuickfile*fileBookmarksSubmenu.labelString:		Plik zak�adek
*bookmarkQuickfile*fileBookmarksSubmenu.mnemonic:	        F

!!
!! *personalToolbarItem
!!
*personalToolbarItem.shadowType:				shadow_out
*personalToolbarItem.shadowThickness:			1
*personalToolbarItem.marginLeft:				1
*personalToolbarItem.marginRight:				1
*personalToolbarItem.marginTop:					1
*personalToolbarItem.marginBottom:				1

*personalToolbar.shadowThickness:				0
*personalToolbar.marginLeft:					0
*personalToolbar.marginRight:					0
*personalToolbar.marginTop:						0
*personalToolbar.marginBottom:					0

*personalToolbar.spacing:						1
*personalToolbar.raiseBorderThickness:			2

*personalToolbar*XfeButton.marginBottom:		1
*personalToolbar*XfeButton.marginLeft:			1
*personalToolbar*XfeButton.marginRight:			1
*personalToolbar*XfeButton.marginTop:			1
*personalToolbar*XfeButton.shadowThickness:		1

*personalToolbar*XfeCascade.marginBottom:		1
*personalToolbar*XfeCascade.marginLeft:			1
![nn]
*personalToolbar*XfeCascade.marginRight:		1
*personalToolbar*XfeCascade.marginTop:			1
*personalToolbar*XfeCascade.shadowThickness:	1
*personalToolbar*XfeCascade.mappingDelay:		0

*personalToolbar*toolBarSeparator.shadowThickness:		0
*personalToolbar*toolBarSeparator.width:				20
*personalToolbar*toolBarSeparator.height:				2
*personalToolbar*toolBarSeparator.orientation:			horizontal


! Navigator/Dashboard
*docinfoLabel.documentationString:	\
Wska�nik bezpiecze�stwa. Dokument jest bezpieczny gdy kluczyk nie jest z�amany
*docinfoLabel.tipString:            Wska�nik bezpiecze�stwa
*biffButton.documentationString:    Poka� okno pocztowe i sprawd� z now� poczt�
*biffButton.tipString:              Sprawd� poczt�

! Editor/Toolbar
*editorNewBlank.tipString:          Nowy dokument
*editorOpenFile.tipString:          Otw�rz plik
*save.tipString:                    Zapisz
*browsePage.tipString:              Poka� w przegl�darce
*editorBrowse.tipString:            Poka� w przegl�darce
*cut.tipString:                     Wytnij
*copy.tipString:                    Kopiuj
*paste.tipString:                   Wstaw
*publish.tipString:                 Publikuj dokument
*findInObject.tipString:            Znajd� na stronie <Ctrl+F>
*Editor*openPage.tipString:         Otw�rz plik


*editorFormattingToolbar*buttonLayout:	button_pixmap_only
*editorFormattingToolbar*buttonLayout:	button_pixmap_only
*editorFormattingToolbar*mappingDelay:	0

*charSizeShrink.documentationString: Zmniejsz rozmiar czcionki o 1
*charSizeShrink.tipString:          Zmniejsz rozmiar czcionki
*charSizeGrow.documentationString:  Zwi�ksz rozmiar czcionki o 1
*charSizeGrow.tipString:            Zwi�ksz rozmiar czcionki
*fontSize.documentationString:      Ustaw wielko�� czcionki
*fontSize.tipString:                Ustaw wielko�� czcionki
!*bold.documentationString:         Ustaw styl na pogrubiony <Alt+B>
*bold.tipString:                    Pogrubiony
!*italic.documentationString:       Ustaw styl na pochylony <Alt+I>
*italic.tipString:                  Pochylony
!*fixed.documentationString:        Set the style to Fixed Width <Alt+T>
*fixed.tipString:                   Sta�a szeroko��
!*textColor.documentationString:    Change or edit current font color
*textColor.tipString:               Kolor czcionki
*makeLink.documentationString:		\
Utw�rz odno�nik z zaznaczonego tekstu, zmie� obecne odno�niki lub wstaw nowy odno�nik
*makeLink.tipString:				Utw�rz odno�nik
*insertLink.tipString:				Wstaw lub utw�rz odno�nik
*clearAllStyles.tipString:          Usu� wszystkie style <Alt+K>
*insertTarget.documentationString:  Wstawia cel (Named Anchor)
*insertTarget.tipString:            Wstaw cel (Named Anchor)
*insertImage.documentationString:   Wstawia obrazek
*insertImage.tipString:             Wstaw obrazek
*insertHorizontalLine.documentationString:	\
Wstawia lini� poziom�
*insertHorizontalLine.tipString:    Wstaw lini� poziom�
*insertTable.documentationString:   Wstaw tabel�
*insertTable.tipString:             Wstaw tabel�
*objectProperties.documentationString:	\
Zmienia w�a�ciwo�ci aktualnie zaznaczonego obiektu
*objectProperties.tipString:        W�a�ciwo�ci obiektu

*paragraphProperties.documentationString: Zmie� styl akapitu lub nag��wka
*paragraphProperties.tipString:     Zmie� styl akapitu
*insertBulleted.documentationString:	\
Rozpocznij, zmie� na lub wyczy�� nienumerowan� (punktowan�) list�
*insertBulleted.tipString:          Lista punktowana
*insertNumbered.documentationString:	\
Rozpocznij, zmie� na lub wyczy�� numerowan� list�
*insertNumbered.tipString:          Lista numerowana
*indent.documentationString:	\
Zwi�ksz wci�cie akapitu o jeden poziom <Alt+=>
*indent.tipString:                  Zwi�ksz wci�cie
*outdent.documentationString:	\
Zmniejsz wci�cie akapitu o jednen poziom <Alt+->
*outdent.tipString:                 Zmniejsz wci�cie
*alignLeft.documentationString:     Wyr�wnaj do lewego marginesu
*setAligmentStyleLeft.documentationString: Wyr�wnaj do lewego marginesu
*alignLeft.tipString:               Do lewej
*alignCenter.documentationString:   Wy�rodkowuje pomi�dzy marginesami
*setAligmentStyleCenter.documentationString: Wy�rodkowuje pomi�dzy marginesami
*alignCenter.tipString:             Wy�rodkuj
*alignRight.documentationString:    Wyr�wnaj do prawego marginesu
*setAligmentStyleRight.documentationString: Wyr�wnaj do prawego marginesu
*alignRight.tipString:              Do prawej

! Formatting toolbar
*setParagraphStyle*documentationString: \
Zmie� styl akapitu lub nag��wka
*setParagraphStyle*tipString:       Styl akapitu
*setFontFace*documentationString:   Zmie� czcionk�
*setFontFace*tipString:             Czcionka
*setFontSize*documentationString:   Zmie� rozmiar czcionki
*setFontSize*tipString:             Rozmiar czcionki
*setFontColor*documentationString:  Zmie� kolor czcionki
*setFontColor*tipString:            Kolor czcionki
*toggleCharacterStyleBold.tipString: Pogrubienie <Alt+B>
*toggleCharacterStyleItalic.tipString: Pochylenie <Alt+I>
*toggleCharacterStyleUnderline.tipString: Podkre�lenie <Alt+U>
*insertNumberedList.tipString:      Lista numerowana
*insertNumberedList.documentationString: \
Rozpocznij, zmie� na lub wyczy�� numerowan� list�
*insertBulletedList.tipString:      Lista punktowana
*insertBulletedList.documentationString: \
Rozpocznij, zmie� na lub wyczy�� nienumerowan� (punktowan�) list�
*setAlignmentStyle.tipString:       Wyr�wnanie
*setAlignmentStyle.documentationString: Wybierz poziome wyr�wnanie
*insertLineBreak.documentationString: \
Wstaw koniec lini aby kontynuowa� tekst od nowej lini
*insertBreakBelowImage.documentationString: \
Wstaw przerw� aby kontynuowa� tekst pod obrazkami
*setCharacterColor.documentationString: Zmie� aktualny kolor czcionki
*editorGoodiesMenu.tipString:           Wstaw obiekt
*editorGoodiesMenu.documentationString: Wstaw obiekt

! Editor/Popups (additional items)
*browseLink.documentationString:    Pod�� za tym odno�nikiem
*editLink.documentationString:      Otw�rz odno�nik w nowym oknie wdytora
*bookmarkLink.documentationString:  Dodaj odno�nik do listy zak�adek
*copyLink.documentationString:      Skopiuj adres odno�nika do schowka
*removeLink.documentationString:	\
Usu� zaznaczony odno�nik lub wszystkie odno�niki w zaznaczonym tek�cie

! Mail/Toolbar
*getNewMail.tipString:              Pobierz now� poczt�
*deleteMessage.tipString:           Skasuj zaznaczon� wiadomo��
*mailNew.tipString:                 Napisz now� wiadomo��
*replyToSender.tipString:           Odpowiedz na wiadomo��
*replyToAll.tipString:              Odpowiedz wszystkim adresatom
*forwardMessage.tipString:          Przeka� zaznaczon� wiadomo��
*previousUnreadMessage.tipString:   Poprzednia nieprzeczytana wiadomo��
*nextUnreadMessage.tipString:       Nast�pna nieprzeczytana wiadomo��

! Composition/Edit menu (additional items)
*pasteQuote.documentationString:    Wstaw zawarto�� schowka jako cytat
*clear.documentationString:         Wyma� zaznaczony obszar tekstu
*clearAllText.documentationString:  Wyma� wszystko
*selectAllText.documentationString: Zaznacz wszystko
![nn]
*rot13.documentationString:         Obr�c tekst wiadomo�ci o 13 znak�w (rot13)

! Composition/View menu (additional items)
*showFrom.documentationString:      Poka� pole mail-from
*showReplyTo.documentationString:   Poka� pole reply-to
*showTo.documentationString:        Poka� pole mail-to
*showCC.documentationString:        Poka� pole Carbon-Copy
*showBCC.documentationString:       Poka� pole Blind-Carbon-Copy
![nn]
*showFCC.documentationString:       Show the copy file location field
*showPostTo.documentationString:    Poka� pole Post-to-newsgroup
*showFollowupTo.documentationString: Poka� pole Send-followups-to
*showSubject.documentationString:   Poka� pole tematu
*showAttachments.documentationString: Poka� pole za��cznik�w
*wrapLines.documentationString:		Dziel linie d�u�sze ni� 72 znaki

! Composition/Options menu (additional items)
*deliverNow.documentationString:    Wy�lij wiadomo�ci niezw�ocznie
*deliverLater.documentationString:  Od�u� wys�anie wiadomo�ci na p�niej

! Compose/Toolbar
*sendOrSendLater.documentationString: Wy�lij aktualn� wiadomo��
*sendOrSendLater.tipString:         Wy�lij wiadomo��
*quoteMessage.documentationString:	\
Wstaw tekst oryginalnej wiadomo�ci jako cytat
*quoteMessage.tipString:            Cytuj orygina�

*options.labelString:	Opcje
*options.tipString:	Wy�wietl opcje wiadomo�ci

*attach.tipString:  Wstaw za��cznik
*attachFile.documentationString:	\
Do��cz plik do tej wiadomo�ci
*attachFile.tipString:  Do��cz plik
*attachWebPage.documentationString:	\
Do��cz stron� WWW to tej wiadomo�ci
*attachWebPage.tipString:  Do��cz stron� WWW
*deleteAttachment.documentationString:	\
Skasuj zaznazcony za��cznik
*deleteAttachment.tipString:  Skasuj za��cznik

*attachAddressBookCard.documentationString:	\
Do��cz swoj� wizyt�wk� jako vCard
*attachAddressBookCard.tipString:  Do��cz wizyt�wk�
*attachForm.documentationString:	\
Przeci�gnij tutaj dokument aby do��czy� go do wiadomo�ci.
*attachForm.tipString: Przeci�gnij tutaj dokument aby go za��czy�

!*editAddressBook.documentationString: Otw�rz ksi��k� adresow�
*editAddressBook.tipString:         Ksi��ka adresowa

*formattingToolbar*buttonLayout:	button_pixmap_only
*formattingToolbar*buttonLayout:	button_pixmap_only
*formattingToolbar*mappingDelay:	0


! News/Toolbar
*postNew.tipString:			        Og�o� now� wiadomo��
*postReply.tipString:			    Og�o� odpowied�
*postAndMailReply.tipString:        Og�o� i odpowiedz
*markThreadRead.tipString:          Zaznacz w�tek jako przeczytany
![nn]
*markAllRead.tipString:             Zaznacz wszystkie w�tki

! Preferences dialog
!
*prefs*fontList:						-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*prefs_popup.title:							Mozilla: Ustawienia
*pref.category:                             Kategoria

*prefs.form.leftPane.topOffset:				8
*prefs.form.leftPane.leftOffset:			8
*prefs.form.leftPane.bottomOffset:			8

*prefs.form.rightPane.leftOffset:			8
*prefs.form.rightPane.rightOffset:			8
*prefs.form.rightPane.bottomOffset:			8

*prefs*pageTitle.alignment:					ALIGNMENT_BEGINNING
*prefs*pageTitle.fontList:\
-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*=NORMAL,\
-*-helvetica-bold-r-*-*-*-140-*-*-*-*-iso8859-2:*-r-*=BOLD,\
-*-helvetica-medium-o-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*=ITALIC

*prefs*categoryList*fontList:				-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

*prefs*pageForm.topOffset:					4
*prefs*XmFrame.marginWidth:					8
*prefs*XmFrame.marginHeight:				4
*prefs*XmPushButtonGadget.marginWidth:		8

! Preferences dialog - Appearance

*prefs*appearance*launchBoxLabel.labelString:	Przy starcie uruchom
*prefs*appearance*navigator.labelString:	Nawigatora
*prefs*appearance*messenger.labelString:	Mened�era poczty
*prefs*appearance*collabra.labelString:		Grupy dyskusyjne
*prefs*appearance*composer.labelString:		Edytora
*prefs*appearance*conference.labelString:	Konferencje
*prefs*appearance*netcaster.labelString:	Netcaster
*prefs*appearance*calendar.labelString:		Kalendarz
*prefs*appearance*radio.labelString:		Radio
*prefs*appearance*frame2*toolbarBoxLabel.labelString:	Poka� przyciski panela jako
*prefs*appearance*frame2*picAndText.labelString:	Obrazki i tekst
*prefs*appearance*frame2*picOnly.labelString:		Tylko obrazki
*prefs*appearance*frame2*textOnly.labelString:	Tylko tekst
*prefs*appearance*frame2*showTooltips.labelString:	Poka� okienko podpowiedzi
*prefs*appearance*frame2*showTooltips.tipString:	Okienko podpowiedzi
*prefs*appearance*underline.labelString:		Podkre�laj odno�niki

! Preferences dialog - General/Fonts

*prefs*fontsFrame*fontsBoxLabel.labelString:	Czcionki i kodowanie
*prefs*fontsFrame*encodingLabel.labelString:	Dla kodowania:
![nn]
*prefs*fontsFrame*proportionalLabel.labelString:Czcionki o zmiennej szeroko�ci:
*prefs*fontsFrame*propSizeLabel.labelString:	Rozmiar:
*prefs*fontsFrame*propSizeToggle.labelString:	Dopuszczaj skalowanie
*prefs*fontsFrame*fixedLabel.labelString:		Czcionki o sta�ej szeroko�ci:
*prefs*fontsFrame*fixedSizeLabel.labelString:	Rozmiar:
*prefs*fontsFrame*fixedSizeToggle.labelString:	Dopuszczaj skalowanie
![nn]
*prefs*fontsFrame*0.labelString:				Any
*prefs*webFontFrame*useFontLabel.labelString:	Czasami dokumenty u�ywaj� w�asnych czcionek.
![nn]
*prefs*webFontFrame*dynaFont.labelString:		Dynamic Fonts...
*prefs*webFontFrame*useMyFont.labelString:		\
U�ywaj moich czcionek, pomijaj�c czcionki zdefiniowane przez dokument
*prefs*webFontFrame*useDocFontSelective.labelString:\
U�ywaj czcionek zdefiniowanych przez dokument, ale wy��cz czcionki dynamiczne
*prefs*webFontFrame*useDocFontWhenever.labelString:	\
U�ywaj czcionek zdefiniowanych przez dokument, w��czaj�c czcionki dynamiczne

! Preferences dialog - General/Colors


*prefs*colors*colorBoxLabel.labelString:	Kolory
*prefs*colors*textColorLabel.labelString:	Tekst:
*prefs*colors*bgColorLabel.labelString:		T�o:
*prefs*colors*useDefColors.labelString:		U�yj kolor�w domy�lnych
*prefs*colors*linksBoxLabel.labelString:	Odno�niki
*prefs*colors*linksLabel.labelString:		Nieodwiedzone odno�niki:
*prefs*colors*vlinksLabel.labelString:		Odwiedzone odno�niki:
*prefs*colors*underline.labelString:		Podkre�laj odno�niki
*prefs*colors*useColor.labelString:			\
Czasami dokument u�ywa w�asnych ustawie� kolor�w i t�a
*prefs*colors*useMyColor.labelString:		Zawsze u�ywaj moich kolor�w, pomijaj�c ustawienia dokumentu

! Preferences dialog - Browser/Languages - Add

*prefsLang*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*prefsLang_popup.title:					Mozilla: Dodaj j�zyki
*prefsLang*langLabel.labelString:		Wybierz j�zyk, kt�ry chcesz doda�.\n\nJ�zyki:
*prefsLang*langList.visibleItemCount:	15
*prefsLang*otherLabel.labelString:		Inny:

! Preferences dialog - Smart Browsing
*prefs*relatedFrame*relatedBoxLabel.labelString:	What's Related
*prefs*relatedFrame*enableRelated.labelString:		W��cz What's Related

*prefs*relatedFrame*autoloadLabel.labelString:		Automatycznie wczytuj What's Related

*prefs*relatedFrame*autoloadAlways.labelString:		Zawsze
*prefs*relatedFrame*autoloadAdaptive.labelString:	Przy pierwszym u�yciu
*prefs*relatedFrame*autoloadNever.labelString:		Nigdy

*prefs*relatedFrame*excludedLabel.labelString:		\
Enter a comma separated list of domain names for\n\
whose sites related items will never be loaded

![nn] by�o 'Internet keywords'
*prefs*keywordFrame*keywordBoxLabel.labelString:	S�owa kluczowe
*prefs*keywordFrame*enableKeywords.labelString:		W��cz s�owa kluczowe

! Preferences dialog - Advanced

*prefs*advanced*showImage.labelString:			\
Automatycznie wczytuj obrazki i inne typy danych\n\
(W przeciwnym wypadku, u�yj przycisku "Obrazki" aby je pokaza�)
*prefs*advanced*enableJava.labelString:			W��cz Java
*prefs*advanced*enableJs.labelString:			W��cz JavaScript
*prefs*advanced*enableJsMailNews.labelString:           W��cz JavaScript dla poczty i grup dyskusyjnych
*prefs*advanced*enableStyleSheet.labelString:	W��cz arkusze styli (Style Sheets)
*prefs*advanced*emailAnonFtp.labelString:		Wysy�aj adres email jako has�o dla anonimowych serwer�w FTP
*prefs*cookieFrame*cookieBoxLabel.labelString:	Ciasteczka (cookies)
*prefs*cookieFrame*alwaysAcceptCookie.labelString:	Akceptuj wszystkie ciasteczka
*prefs*cookieFrame*noForeignCookie.labelString:	\
Akceptuj tylko ciasteczka wystawione na ten sam serwer \n\
z kt�rego pochodzi ogl�dana strona
*prefs*cookieFrame*neverAcceptCookie.labelString:Nie akceptuj i nie wysy�aj ciasteczek
*prefs*cookieFrame*warnCookie.labelString:		Ostrzegaj mnie przed ciasteczkami

*prefs*alertFrame*submDoc.labelString:			submitting a secure document
*prefs*alertFrame*dpyDoc.labelString:			displaying a secure document
*prefs*alertFrame*viewMixed.labelString:		viewing a document with a secure/insecure mix
*prefs*alertFrame*submForm.labelString:			submitting a form insecurely
*prefs*alertFrame*submMixedForm.labelString:	submitting a form with a secure/insecure mix

! Preferences dialog - Browser/Applications

*prefs*applFrame*newButton.labelString:			Nowy...
*prefs*applFrame*editButton.labelString:		Edytuj...
*prefs*applFrame*deleteButton.labelString:		Skasuj
*prefs*appl*folderLabel.labelString:			Zapisuj pobrane pliki:
*prefs*appl*browseButton.labelString:			Wybierz...

! Preferences dialog - General - Applications - Edit

*prefsApplEdit*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

*prefsApplEdit_popup.title:						Mozilla: Programy
*prefsApplEdit*mimeTypesDescriptionLabel.labelString: Opis:
*prefsApplEdit*mimeTypesLabel.labelString: 		Typ MIME:
*prefsApplEdit*mimeTypesSuffixLabel.labelString:        Ko�c�wki:
*prefsApplEdit*applEditFrameLabel.labelString:	Obs�ugiwany przez
*prefsApplEdit_popup.title:						Mozilla: Aplikacja
*prefsApplEdit*applEditFrameLabel.labelString:	Obs�ugiwany przez
*prefsApplEdit*applEditNavigator.labelString: 	Navigator

*prefsApplEdit*applEditPlugin.labelString: 		Wtyczka:
*prefsApplEdit*applEditApp.labelString: 		Program:
*prefsApplEdit*applEditSave.labelString: 		Zapisuj na dysk
*prefsApplEdit*applEditUnknown.labelString: 	Nieznany:Zapytaj
*prefsApplEdit*applEditAppBrowse.labelString: 	Wybierz...
*prefsApplEdit*defaultOutgoingToggle.labelString: U�ywaj tej definicji MIME jako domy�lna dla wysy�anych plik�w o podanych ko�c�wkach.


![nn]
! Preferences dialog - General/Cache

*prefs*cache*cacheLabel.labelString:		\
Pami�� podr�czna jest u�ywana do przechowywania lokalnych kopii cz�sto\n\
odczytywanych dokument�w co powoduje zwi�kszenie szybko�ci ich wczytywania\n\
Przycisk 'Prze�aduj' zawsze sprawdza zapami�tany dokument z wersj� oryginaln�\n\
i pokazuje najbardziej aktualn�. Aby wczyt� strony i obrazki bezpo�rednio z\n\
sieci zamiast pami�ci podr�cznej, trzymaj wci�ni�ty klawisz 'Shift' podczas\n\
wciskania przycisku 'Prze�aduj'.
*prefs*cache*cacheDirLabel.labelString:		Katalog na pami�� podr�czn�:
*prefs*cache*memoryLabel.labelString:		Pami��:
*prefs*cache*memoryK.labelString:			kilobajt�w
*prefs*cache*diskLabel.labelString:			Dysk:
*prefs*cache*diskK.labelString:				kilobajt�w
*prefs*cache*verifyLabel.labelString:		\
Dokument w pami�ci podr�cznej jest por�wnywany do dokumentu w sieci
*prefs*cache*verifyRc*once.labelString:		Raz na sesj�
*prefs*cache*verifyRc*every.labelString:	Za ka�dym razem
*prefs*cache*verifyRc*never.labelString:	Nigdy
*prefs*cache*browse.labelString:			Wybierz...
*prefs*cache*clearDisk.labelString:			Wyczy�� pami�� dyskow�
*prefs*cache*clearMem.labelString:			Wyczy�� pami��

! Preferences dialog - General/Proxies

*prefs*proxies*proxiesLabel.labelString:		\
Serwery proxy s� u�ywane do zapewnienia dodatkowego bezpiecze�stwa pomi�dzy\n\
twoim komputerem a Internetem (przewa�nie w wsp�pracy z �cian� ognia 'firewall')\n\
i/lub zwi�kszenia wydajno�ci pomi�dzy sieciami redukuj�c t�oki dzi�ki wykorzystaniu\n\
systemu pami�ci podr�cznej. Tw�j administrator systemu powinien dostarczy� ci\n\
prawid�owe informacjeyou do skonfigurowania ustawie� proxy.
*prefs*proxies*direct.labelString:			Bezpo�rednie po��czenie do internetu
*prefs*proxies*manual.labelString:			R�czna konfiguracja proxy
*prefs*proxies*auto.labelString:			Automatyczna konfiguracja proxy
*prefs*proxies*config.labelString:			Adres konfiguracyjny (URL)
*prefs*proxies*view.labelString:			Poka�...
*prefs*proxies*reload.labelString:			Prze�aduj

! Preferences dialog - General - Proxies - View

*prefsProxiesView*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*prefsProxiesView_popup.title:                                  Mozilla: R�czne ustawienia proxy
*prefsProxiesView*proxyViewLabel1.labelString:	\
Mo�esz skonfigurowa� oddzielnie adres i port serwera proxy dla ka�dego\n\
protoko�u obs�ugiwanego przez Mozilla.
*prefsProxiesView*proxyViewLabel2.labelString:	\
Mo�esz poda� list� adres�w kt�re Mozilla powinien odczytywa� bezpo�rednio\n\
z sieci zamiast korzystaj�c z proxy:
*prefsProxiesView*ftpProxyLabel.labelString:	FTP Proxy:
*prefsProxiesView*gopherProxyLabel.labelString:	Gopher Proxy:
*prefsProxiesView*httpProxyLabel.labelString:	HTTP Proxy:
*prefsProxiesView*httpsProxyLabel.labelString:	Security Proxy:
*prefsProxiesView*waisProxyLabel.labelString:	WAIS Proxy:
*prefsProxiesView*noProxyLabel.labelString:		Nie u�ywaj proxy dla:
*prefsProxiesView*socksHostLabel.labelString:	Serwer SOCKS:
*prefsProxiesView*ftpPortLabel.labelString:		Port:
*prefsProxiesView*gopherPortLabel.labelString:	Port:
*prefsProxiesView*httpPortLabel.labelString:	Port:
*prefsProxiesView*httpsPortLabel.labelString:	Port:
*prefsProxiesView*waisPortLabel.labelString:	Port:
*prefsProxiesView*socksPortLabel.labelString:	Port:

! Roaming Access Conflict Dialog
*liConflict*queryLabel.labelString: What would you like to do?
*liConflict*alwaysToggle.labelString: Apply this decision to remaining items.

! Preferences dialog - Roaming Access: General Prefs
!*prefs*liGeneral*topTitle.labelString: General Flags
*prefs*liGeneral*hint.labelString: \
Use Roaming Access to retrieve your user profile information from\n\
any place on the network.\n\
\n\
Your user profile information will then be retrieved from your\n\
Roaming Access server each time on startup and transferred to the\n\
server on shutdown.

*prefs*liGeneral*enableToggle.labelString: Enable Roaming Access for this profile
!*prefs*liGeneral*syncToggle.labelString: Background synchronize every
!*prefs*liGeneral*unitLabel.labelString: minutes.
*prefs*liLoginAdvancedButton.labelString: Options

!*prefs*liGeneral*bottomTitle.labelString: User Information
*prefs*liGeneral*bottomFrame.topOffset: 20
*prefs*liGeneral*userInfoLabel.labelString: \
Please enter your login information to be used when retrieving your\n\
user profile from your Roaming Access server.
*prefs*liGeneral*userLabel.labelString: User Name:
*prefs*liGeneral*passwordLabel.labelString: Password:
*prefs*liGeneral*passwordText.maxLength: 256
*prefs*liGeneral*savePasswordToggle.labelString: Remember my Roaming Access password

! Preferences dialog - Roaming Access: Server Prefs
![nn]
*prefs*liServer*frameLabel.labelString: Server Information

*prefs*liServer*serverLabel.labelString: \
The information below is needed to connect to your Roaming Access\n\
![nn]
server.  If you do not know the information requested, please contact\n\
your system administrator.

*prefs*liServer*bottomFrame.topOffset: 20
*prefs*liServer*ldapToggle.labelString: LDAP Directory Server
*prefs*liServer*ldapAddrLabel.labelString: Address:
*prefs*liServer*ldapBaseLabel.labelString: User DN:
*prefs*liServer*httpToggle.labelString: HTTP Server
*prefs*liServer*httpBaseLabel.labelString: Base URL:

! Preferences dialog - Roaming Access: File Prefs
*prefs*liFiles*fileLabel.labelString: \
The user profile items selected below will be retrieved from your\n\
Roaming Access server on startup and transferred to the server\n\
on shutdown.
*prefs*liFiles*frameLabel.labelString: Items
*prefs*liFiles*bookmarkToggle.labelString: Bookmarks
*prefs*liFiles*cookiesToggle.labelString: Cookies
*prefs*liFiles*filterToggle.labelString: Mail Filters
*prefs*liFiles*addrbookToggle.labelString: Address Book
*prefs*liFiles*historyToggle.labelString: History
*prefs*liFiles*prefsToggle.labelString: User Preferences
*prefs*liFiles*javasecToggle.labelString: Java Security
*prefs*liFiles*certToggle.labelString: Certificates and Private Keys

! Preferences dialog - Advanced/Disk space

*prefs*diskSpace*allMsgsBoxLabel.labelString: 	Wszystkie wiadomo�ci
*prefs*diskSpace*maxMsgSize.labelString: 		Nie przechowywuj lokalnie wiadomo�ci wi�kszych ni�
*prefs*diskSpace*k.labelString: 				kB
![nn]
*prefs*diskSpace*askThreshold.labelString: 		Automatycznie kompaktuj katalogi zajmuj�ce wi�cej ni�
*prefs*diskSpace*k2.labelString: 				kB

*prefs*diskSpace*newsMsgsBoxLabel.labelString: 	Tylko wiadomo�ci grup dyskusyjnych
*prefs*diskSpace*newsMsgsLabel.labelString: 	Kiedy jest czas aby wyczy�ci� wiadomo�ci:
*prefs*diskSpace*keepNewsByAge.labelString:		Zatrzymaj wiadomo�ci kt�re przyby�y w czasie ostatnich
*prefs*diskSpace*keepAllNews.labelString:		Zatrzymaj wszystkie wiadomo�ci
*prefs*diskSpace*keepNewsByCount.labelString:	Zatrzymaj
*prefs*diskSpace*keepUnreadNews.labelString:	Zatrzymaj tylko nieprzeczytane wiadomo�ci
*prefs*diskSpace*daysLabel.labelString: 		dni
*prefs*diskSpace*msgsLabel.labelString: 		najnowsze wiadomo�ci
*prefs*diskSpace*more.labelString: 				Wi�cej opcji...
*prefs*diskSpace*rmMsgBodyToggle.labelString:	Usu� tre�ci tylko wiadomo�ci starszych ni�

! Preferences dialog - Advanced/Help Files

*prefs*helpFiles*helpLabel.labelString: 	Pomoc pochodz�ca z:
*prefs*helpFiles*netscapeToggle.labelString:Stron Pomocy Mozilla
*prefs*helpFiles*installToggle.labelString:	Zainstalowane pliki pomocy
*prefs*helpFiles*customToggle.labelString:	Strona u�ytkownika:
*prefs*helpFiles*browse.labelString: 		Wybierz...
![nn]

! Preferences dialog - Advanced/SmartUpdate
*prefs*smartUpdate*enableToggle.labelString: 	W��cz SmartUpdate
*prefs*smartUpdate*confirmToggle.labelString: 	��daj potwierdzenia ka�dego uaktualnienia

*prefs*smartUpdate*uninstallLabel.labelString: By odinstalowa�, wybierz z listy i naci�nij przycisk Odinstaluj
*prefs*smartUpdate*uninstallButton.labelString: Odinstaluj

! Preferences dialog - Browser

*prefs*browser*indicatorType:				ONE_OF_MANY
*prefs*browser*XmLabelGadget.alignment:		ALIGNMENT_BEGINNING
*prefs*browser*browserBoxLabel.labelString:	Przegl�darka ma si� uruchami� z
*prefs*browser*blankPage.labelString:		Pust� stron�
*prefs*browser*homePage.labelString:		Stron� domow�
*prefs*browser*lastPage.labelString:		Ostatnio odwiedzan� stron�
*prefs*browser*homePageBoxLabel.labelString:Strona domowa
*prefs*browser*homePageLabel.labelString:	Wci�ni�cie przycisku 'Dom' zabierze ci� do tej strony.
*prefs*browser*locLabel.labelString:		Adres:
*prefs*browser*browse.labelString:			Wybierz...
*prefs*browser*useCurrent.labelString:		U�yj aktualnej strony
*prefs*browser*historyBoxLabel.labelString:	Historia
*prefs*browser*expireLabel.labelString:		Historia mija po
*prefs*browser*daysLabel.labelString:		dniach
*prefs*browser*expireNow.labelString:		Wyczy�� histori�



! Preferences dialog - Browser/Languages

*prefs*lang*langLabel.alignment:			ALIGNMENT_BEGINNING
*prefs*lang*langLabel.labelString:	\
Wybierz w kolejno�ci preferencji j�zyki w jakich wolisz ogl�da� strony WWW.\n\
Strony WWW s� czasami dost�pne w r�nych j�zykach. Mozilla wy�wietli stron�\n\
w j�zyku jaki najbardziej preferujesz.
*prefs*lang*addButton.labelString:		Dodaj...
*prefs*lang*deleteButton.labelString:	Skasuj



! Preferences dialog - Mail News

*prefs.quotedTextStyle.plain:				Normalny
*prefs.quotedTextStyle.bold:				Pogrubiony
*prefs.quotedTextStyle.italic:				Pochylony
*prefs.quotedTextStyle.boldItalic:			Pogrubiony i pochylony
*prefs.quotedTextSize.normal:				Normalna
*prefs.quotedTextSize.bigger:				Wi�ksza
*prefs.quotedTextSize.smaller:				Mniejsza
*prefs*mailnews*quotedTextLabel.labelString:	\
Tekst cytat�w (zaczynaj�cy si� od '>') ma by� wy�wietlany
*prefs*mailnews*quotedTextStyleLabel.labelString:	Styl:
*prefs*mailnews*quotedTextSizeLabel.labelString:	Rozmiar:
*prefs*mailnews*quotedTextColorLabel.labelString:	Kolor:
*prefs*mailnews*msgArticleLabel.labelString:	\
Wy�wietlaj tekst wiadomo�ci u�ywaj�c
*prefs*mailnews*fixedWidthFont.labelString:			Czcionek o sta�ej szeroko�ci
*prefs*mailnews*varWidthFont.labelString:			Czcionek o zmiennej szeroko�ci
*prefs*mailnews*rememberSelected.labelString: Zapami�taj ostatnio zaznaczon� wiadomo��
*prefs*mailnews*reuseThread.labelString: Dwuklik na katalogu lub grupie dyskusyjnej otwiera j� w nowym oknie.
*prefs*mailnews*reuseMsg.labelString: Dwuklik na wiadomo�ci otwiera j� w nowym oknie
*prefs*mailnews*confirmFolderTrash.labelString: ��daj potwierdzenia przy przenoszeniu wiadomo�ci do kosza.

*prefs*mailnews*newsBehaviorLabel.labelString: Grupy dyskusyjne
*prefs*mailnews*newsInThreePaneToggle.labelString: Otwieraj grupy dyskusyjne w oknie Messenge.
*prefs*mailnews*newsInMessageCenterToggle.labelString: Otwieraj centrum wiadomo�ci

! Preferences dialog - Mail News/Messages
*prefs*mailnewsMessages*replyLabel.labelString: Przekazywanie i odpowiadanie na wiadomo�ci:
*prefs*mailnewsMessages*forwardLabel.labelString: Domy�lnie przekazuj wiadomo�ci jako:
*prefs*mailnewsMessages*autoquoteToggle.labelString: Automatycznie cytuj wiadomo�� przy odpowiadaniu
![nn]
*prefs*mailnewsMessages*autoquoteMyReplyLabel.labelString: Then,
*prefs*mailnewsMessages*autoquoteSepLabel.labelString: Oddzielaj odpowied� i cytowan� wiadomo�� przez
*prefs*mailnewsMessages*autoquoteSepLinesLabel.labelString: lines
*prefs*mailnewsMessages*spellToggle.labelString: Sprawdzaj wiadomo�ci przed wys�aniem
*prefs*mailnewsMessages*wrapLabel.labelString: Dzielenie wiadomo�ci:
*prefs*mailnewsMessages*wrapToggle.labelString: Dziel przychodz�ce wiadomo�ci tekstowe stosownie do wielko�ci okna
*prefs*mailnewsMessages*wrapLengthLabel.labelString: Dziel wychodz�ce wiadomo�ci tekstowe na:
*prefs*mailnewsMessages*wrapLengthAfterLabel.labelString: kolumnie
*prefs*mailnewsMessages*eightbitLabel.labelString: Wysy�aj wiadomo�ci u�ywaj�ce znak�w 8-bitowych:
*prefs*mailnewsMessages*eightbitAsIsToggle.labelString: Jak jest (czasami nie dzia�a dobrze z niekt�rymi serwerami grup dyskusyjnych)
*prefs*mailnewsMessages*eightbitQuotedToggle.labelString: \
U�ywaj�c kodowania MIME "quoted printable"\n\
(czasami nie dzia�a dobrze z niekt�rymi czytnikami poczty i grup dyskusyjnych)

! Preferences dialog - Mail News/Identity

*prefs*mailnewsIdentity*idLabel.labelString:		\
Informacje poni�ej s� wymagane do wysy�ania wiadomo�ci. Je�li nie znasz\n\
wymaganych informacji, skontaktuj si� z swoim administratorem systemu lub\n\
dostarczycielem us�ug internetowych (ISP).
*prefs*mailnewsIdentity*nameLabel.labelString:	Imi� i Nazwisko:
*prefs*mailnewsIdentity*emailAddrLabel.labelString:	Adres e-mail:
*prefs*mailnewsIdentity*replyToAddrLabel.labelString:	\
Odpisuj na adres (Potrzebne tylko wtedy gdy adres jest inny ni� adres email):
*prefs*mailnewsIdentity*orgLabel.labelString:	Organizacja:
*prefs*mailnewsIdentity*sigFileLabel.labelString:	Plik podpisu:
*prefs*mailnewsIdentity*browse.labelString:		Wybierz...
*prefs*mailnewsIdentity*editCardButton.labelString: Edytuj...
*prefs*mailnewsIdentity*attachCard.labelString:	Do��czaj wizyt�wk� do wiadomo�ci (jako vCard)
*prefs*mailnewsIdentity*editCard.labelString:	Edytuj wizyt�wk�...

! Preferences dialog - Mail News/Mail Server

*prefs*mailnewsMserver*iServerFrame*incomingServerLabel.labelString: \
 Serwer poczty przychodz�cej
*prefs*mailnewsMserver*oServerFrame*outgoingServerLabel.labelString: \
Serwer poczty wychodz�cej
*prefs*mailnewsMserver*localFrame*localMailDirLabel.labelString: \
Katalog poczty lokalnej
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*newButton.labelString: \
Dodaj...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*editButton.labelString: \
Edytuj...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*deleteButton.labelString: \
Skasuj
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*defaultButton.labelString: \
Ustaw jako domy�lny

*prefs*mailnewsMserver*iServerFrame*iServerBox*incomingServerLabel.labelString:\
Aby zmieni� w�a�ciwo�ci serwera (na przyk�ad w��czy�\n\
automatyczne sprawdzanie nowych wiadomo�ci), wybierz serwer\n\
i wci�nij przycisk 'Edytuj'.
*SubUpgradeDialog*paragraphLabel.labelString: \
Messenger wykry� aktualizacj� z wcze�niejszej wersji. Aby odczyta� twoj�\n\
pozct�, Messenger potrzebuje wiedzie� do kt�rych katalog�w chcesz si� zapisa�.\n\
\n\
Tylko katalogi do kt�rych jeste� zapisany pojawi� si� na li�cie katalog�w.\n\
Katalogi do kt�rych nie jeste� zapisany nie b�d� dost�pne. (Informacja: zawsze\n\
mo�esz zmieni� list� katalog�w do kt�rych jeste� zapisany p�niej wybieraj�c 'Zapisz'\n\
z menu 'Plik'.)
*SubUpgradeDialog*customToggle.labelString: \
Wybierz teraz do kt�rych katalog�w jeste� zapisany

! Preferences dialog - incoming mail server - new server pop up

*MailServerInfo.title:	Mozilla: Informacje serwera pocztowego
*MailServerInfo*form1*ServerName.labelString: \
Nazwa serwera:
*MailServerInfo*form1*ServerType.labelString: \
Typ serwera:
*MailServerInfo*form1*ServerUser.labelString: \
U�ytkownik:
*MailServerInfo*form1*RememberPass.labelString: \
Pami�taj has�o.
*MailServerInfo*form1*CheckMail.labelString: \
sprawdzaj poczt� co
*MailServerInfo*form1*MinuteLabel.labelString: \
minut.
*MailServerInfo*form1*downloadToggle.labelString: \
Automatycznie pobieraj nowe wiadomo�ci.
*MailServerInfo*form1*imapOption.labelString: IMAP
*MailServerInfo*form1*popOption.labelString: POP
*MailServerInfo*form1*movemailOption.labelString: MoveMail

! Imap tab

*prefs_popup*MailServerInfo*xmlFolder*form2*imapImap.labelString: IMAP
*prefs_popup*MailServerInfo*xmlFolder*form2*deleteLabel.labelString: \
Przy kasowaniu wiadomo�ci:
*prefs_popup*MailServerInfo*xmlFolder*form2*trashToggle.labelString: \
Przenie� j� do kosza.\n\
(Wiadomo�� zostanie usuni�ta gdy wybierzesz 'Opr�nij kosz')
*prefs_popup*MailServerInfo*xmlFolder*form2*markToggle.labelString: \
Zaznacz ja jako skasowan�.\n\
(Wiadomos� zostanie usuni�ta gdy wybierzesz 'Kompaktuj ten katalog')
*prefs_popup*MailServerInfo*xmlFolder*form2*removeToggle.labelString: \
Usu� j� od razu.\n\
(Mo�na j� odzyska� wybieraj�c 'Cofnij')
*prefs_popup*MailServerInfo*xmlFolder*form2*trashExitToggle.labelString:\
Opr�nij kosz przy wyj�ciu.
![nn]
*prefs_popup*MailServerInfo*xmlFolder*form2*expungeExitToggle.labelString:\
Wyczy�� ("Expunge") skrzynk� odbiorcz� przy wyj�ciu.
*prefs_popup*MailServerInfo*xmlFolder*form2*UseSSL.labelString: \
U�yj bezpiecznego po��czenia. (SSL)

! Advanced tab

*MailServerInfo*form3*PathPrefsLabel.labelString: \
These preferences specify the different namespaces on your\n\
IMAP server.
*MailServerInfo*form3*PersonalDir.labelString: \
Personal Namespace
![nn]
*MailServerInfo*form3*PublicDir.labelString: \
Public (shared)
*MailServerInfo*form3*OtherUsers.labelString: \
Other Users
*MailServerInfo*form3*AllowServer.labelString: \
Allow server to override these namespaces
*MailServerInfo*form3*imapDirLabel.labelString: \
IMAP server directory:
*MailServerInfo*form3*subfolderMessageToggle.labelString: \
Server supports folders that contain subfolders and messages.
*MailServerInfo*form3*useSubscriptions.labelString: \
Show only subscribed folders.

! pop server - general tab

*MailServerInfo*form4*LeaveMessages.labelString: \
Zostaw wiadomo�ci na serwerze
*MailServerInfo*form4*deleteOnPopServer.labelString: \
Przy kasowaniu wiadomosci lokalnie, usu� j� tak�e z serwera.

! Movemail tab

*MailServerInfo*form5*builtinToggle.labelString: U�yj wbudowanego klienta movemail
*MailServerInfo*form5*externalToggle.labelString: Use an external application:
*MailServerInfo*form5*appChoose.labelString: Wybierz..
! Preferences dialog - outgoing mail server
*prefs*mailnewsMserver*oServerFrame*oServerBox*outgoingServerLabel.labelString: \
Serwer poczty wychodz�cej(SMTP):
*prefs*mailnewsMserver*oServerFrame*oServerBox*serverUsernameLabel.labelString:\
Nazwa u�ytkownika na serwerze wychodz�cym:
*prefs*mailnewsMserver*oServerFrame*oServerBox*chooseSSLLabel.labelString: \
U�yj bezpiecznego po��czenia (SSL) lub TLS dla wychodz�cych wiadomo�ci:
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslNever.labelString: \
Nigdy
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslIfPossible.labelString: \
Je�li to mo�liwe
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslAlways.labelString: \
Zawsze

! Preferences dialog - mail server - local mail directory

*prefs*mailnewsMserver*localFrame*localBox*localMailDir.labelString: \
Katalog:
*prefs*mailnewsMserver*localFrame*localBox*chooseButton.labelString: \
Wybierz...

! Preferences dialog - Mail News/News Server

*prefs*mailnewsNServer*serverLabel.labelString:
*prefs*mailnewsNServer*serverAddButton.labelString: Dodaj...
*prefs*mailnewsNServer*serverEditButton.labelString: Edytuj...
*prefs*mailnewsNServer*serverDeleteButton.labelString: Skasuj
*prefs*mailnewsNServer*serverDefaultButton.labelString: Ustaw jako domy�lny
*prefs*mailnewsNServer*localLabel.labelString: Katalog:
*prefs*mailnewsNServer*dirLabel.labelString: Katalog grup dyskusyjnych (news):
*prefs*mailnewsNServer*chooseButton.labelString: Wybierz...
*prefs*mailnewsNServer*sizeLimitToggle.labelString: Zapytaj przed pobraniem wi�cej ni�
*prefs*mailnewsNServer*sizeLimit2.labelString: wiadomo�ci.

! Preferences dialog - Mail News/News Server popup

*NewsServerInfo*serverLabel.labelString: Serwer:
*NewsServerInfo*portLabel.labelString: Port:
*NewsServerInfo*sslToggle.labelString: \
Obs�uguj bezpieczne po��czenie (SSL)
*NewsServerInfo*passwordToggle.labelString: \
Zawsze u�ywaj nazwy u�ytkownika i has�a

! Preferences dialog - Mail News/Address Book

*prefs*mailnewsAddrBook*addrBookLabel.labelString:	\
When searching directories, search for items using\n\
these directories in the following order:
*prefs*mailnewsAddrBook*newButton.labelString:		New...
*prefs*mailnewsAddrBook*editButton.labelString:		Edytuj...
*prefs*mailnewsAddrBook*deleteButton.labelString:	Skasuj
*prefs*mailnewsAddrBook*fullNameLabel.labelString:	Pokazuj pe�ne nazwy jako
*prefs*mailnewsAddrBook*firstLastToggle.labelString:(imi�) (nazwisko)
*prefs*mailnewsAddrBook*lastFirstToggle.labelString:(nazwisko), (imi�)
*prefs*mailnewsAddrBook*firstLastLabel.labelString:	(John Smith)
*prefs*mailnewsAddrBook*lastFirstLabel.labelString:	(Smith, John)

![nn]
*prefs*mailnewsAddress*messageLabel.labelString: Adresowanie:
*prefs*mailnewsAddress*completeLabel.labelString: Szukaj adres�w w:
*prefs*mailnewsAddress*completeABToggle.labelString: Ksi��ce adresowej.
![nn]
*prefs*mailnewsAddress*completeDirToggle.labelString: Serwerze katalogowym:
*prefs*mailnewsAddress*conflictLabel.labelString: Kiedy b�dzie kilka znalezionych adres�w:
*prefs*mailnewsAddress*conflictShowToggle.labelString: Poka� list�
*prefs*mailnewsAddress*conflictAcceptToggle.labelString: Akceptuj to co pisz�
*prefs*mailnewsAddress*onlyMatchLabel.labelString: Kiedy jest tylko jedna mo�liwo�� w osobistej ksi��ce adesowej:
*prefs*mailnewsAddress*onlyMatchToggle.labelString: U�yj adresu i nie szukaj w katalogu
*prefs*mailnewsAddress*sortLabel.labelString: Przy wy�wietlaniu pe�nych nazw:
*prefs*mailnewsAddress*sortFirstToggle.labelString: Poka� u�ywaj�c pola 'wy�wietlaj' z ksi��ki adresowej.
*prefs*mailnewsAddress*sortLastToggle.labelString: Poka� u�ywaj�c nazwiska i imienia.
! Preferences dialog - Mail News/Directory - New/Edit

*prefsLdapProp*fontList:					-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*prefsLdapProp_popup.title:					Mozilla: LDAP Serwer - Ustawienia
*prefsLdapProp*descLabel.labelString:		Opis:
*prefsLdapProp*serverLabel.labelString:		LDAP Serwer:
*prefsLdapProp*rootLabel.labelString:		Search Root:
*prefsLdapProp*portNumberLabel.labelString:	Port:
*prefsLdapProp*numHitLabel.labelString:		Maksymalna ilo�� trafie�:
*prefsLdapProp*secure.labelString:			bezpieczne
*prefsLdapProp*savePasswd.labelString:		Zapisz has�o

! Preferences dialog - Mail News/Message Copies

*prefs*mailnewsCopies*newsCopies.labelString: Przy wysy�aniu wiadomo�ci na grupy dyskusyjne, automatycznie
*prefs*mailnewsCopies*newsOtherToggle.labelString: BCC reszt� adres�w:
*prefs*mailnewsCopies*newsChooseButton.labelString: Wybierz katalog ...
*prefs*mailnewsCopies*newsFccToggle.labelString: Katalog %s w %s
*prefs*mailnewsCopies*mailCopies.labelString: Przy wysy�aniu wiadomo�ci pocztowej, automatycznie
*prefs*mailnewsCopies*mailOtherToggle.labelString: BCC reszt� adres�w:
*prefs*mailnewsCopies*mailChooseButton.labelString: Wybierz katalog ...
*prefs*mailnewsCopies*mailFccToggle.labelString: Katalog %s w %s
*prefs*mailnewsCopies*dtCopies.labelString: Projekty i wzory
*prefs*mailnewsCopies*dSaveToggle.labelString: Trzymaj projekty w '%s' w %s
*prefs*mailnewsCopies*tSaveToggle.labelString: Trzymaj wzory w '%s' w %s
*prefs*mailnewsCopies*dFccButton.labelString: Wybierz katalog ...
*prefs*mailnewsCopies*tFccButton.labelString: Wybierz katalog ...

*prefsMailFolderDialog*specificFolder.labelString: Inne:

! Preferences dialog - HTML Formatting
*prefs*mailnewsHTML*useHTML.labelString: Formatowanie wiadomo�ci
*prefs*mailnewsHTML*useHTMLToggle.labelString: U�yj edytora HTML do utworzenia wiadomo�ci.
*prefs*mailnewsHTML*usePlainToggle.labelString: Uzyj edytora tekstowego do utworzenia wiadomo�ci.
*prefs*mailnewsHTML*noHTML.labelString: Przy wysy�aniu wiadomo�ci HTML do odbiorc�w nie b�d�cych na li�cie\n\
odbiorc�w mog�cych odczytywa� wiadomo�ci HTML:
*prefs*mailnewsHTML*noHTMLoverride.labelString: Mo�esz omin�� te ustawienia przy ka�dej wiadomo�ci u�ywaj�c\npanela opcji w oknie tworzenia wiadomo�ci.\n\
Ponadto nale�y wspomnie� i� wiele os�b nie toleruje wiadomo�ci zapisanych jako HTML\n\i mo�e potraktowa� tak� wiadomo�� jako dyshonor.
*prefs*mailnewsHTML*noHTMLAsk.labelString: Zapytaj co zrobi� je�eli wiadomo�� zawiera formatowanie HTML,\nw przeciwnym wypadku wy�lij jako tekst.
*prefs*mailnewsHTML*noHTMLText.labelString: Skonwertuj wiadomo�� do tekstu.\n(mo�e pomin�� formatowanie HTML)
*prefs*mailnewsHTML*noHTMLHTML.labelString: Mimo wszystko wy�lij wiadomo�� jako HTML\n(niekt�rzy odbiorcy mog� nie by� w stanie j� odczyta�)
*prefs*mailnewsHTML*noHTMLBoth.labelString: Wy�lij wiadomos� jako tekst i HTML\n(zajmuje wi�cej miejsca i czasu)

*prefs*editor*authorLabel.labelString:		Autor:
*prefs*editor*externalFrameTitle.labelString:	Zewn�trzne edytory
*prefs*editor*htmlLabel.labelString:		�r�d�o HTML:
*prefs*editor*imageLabel.labelString:		Obrazki:
*prefs*editor*locationLabel.labelString:	Wzorzec dla nowych stron:
*prefs*editor*restoreDefault.labelString:	U�yj warto�ci domy�lnych
*prefs*editor*browseTemplate.labelString:	Wybierz...
*prefs*editor*autosaveEnable.labelString:	Automatycznie zapisuj wiadomo�� co
*prefs*editor*minutes.labelString:			minut
*prefs*editor*browse.labelString:			Wybierz...

! Preferences dialog - Read Receipts
*prefs*mailnewsReceipts*requestReceiptsLabel.labelString: Je�li zaznaczasz ch�� otrzymania potwierdzenia odbioru wiadomo�ci, to chcesz
*prefs*mailnewsReceipts*dsn.labelString: Otrzyma� potwierdzenie z odbieraj�cego serwera (DSN)
*prefs*mailnewsReceipts*mdn.labelString: Otrzyma� potwierdzenie odczytania gdy odbiorca odczyta t� wiadomo�� (MDN)
*prefs*mailnewsReceipts*both.labelString: Otrzyma� oba typy potwierdzenia
*prefs*mailnewsReceipts*receiptsArriveLabel.labelString: Kiedy odpowied� nadejdzie
*prefs*mailnewsReceipts*inbox.labelString: Zostaw j� w katalogu odbiorczym
*prefs*mailnewsReceipts*sentmail.labelString: Przenie� j� do katalogu wys�anej poczty
*prefs*mailnewsReceipts*receiveReceiptsLabel.labelString: Kiedy nadejdzie wiadomo�� i pro�ba o potwierdzenie (MDN)
*prefs*mailnewsReceipts*never.labelString: Nigdy nie potwierdzaj
*prefs*mailnewsReceipts*some.labelString: Potwierd� otrzymanie wiadomo�ci
*prefs*mailnewsReceipts*customizeButton.labelString: Dostosuj...

! make sure these are multi-line, otherwise the widgets line up funny
*prefsDialogReceipts.title: Dostosowywanie
*prefsDialogReceipts*instructLabel.labelString:\
Kiedy nadejdzie wiadomo�� i nadawca prosi o potwierdzenie jej odebrania (MDN),\n\,
zastosuj si� do poni�szych zasad:
*prefsDialogReceipts*mailingLabel.labelString:\
Je�li nie ma mojego adresu w polu To lub CC wiadomo�ci\n\
(na przyk�ad jak w wiadomo�ciach do list dyskusyjnycht):
*prefsDialogReceipts*outsideLabel.labelString:\
Je�li wiadomo�� nadejdzie z innej domeny ni� (domain here):
*prefsDialogReceipts*otherLabel.labelString:\
W innych wypadkach:

! Preferences dialog - Editor/Publish

![nn]
!*prefs*editor*linksAndImagesTitle.labelString:	Odno�niki i obrazki
!*prefs*editor*linksAndImagesLabel.labelString:	\
!Przy zapiywaniu zdalnego dokumentu i wstawianiu odno�nik�w oraz obrazk�w:
!*prefs*editor*linksToggle.labelString:		Zarz�dzaj odno�nikami
!*prefs*editor*linksInfo.labelString:			\
!Adjust links to work from the document's location. Links to local\n\
!files will work when local versions exist.
!*prefs*editor*imagesToggle.labelString:		Keep images with document
!*prefs*editor*imagesInfo.labelString:		\
!Save copies of images to the document's location. Images will\n\
!always appear in local versions of the document and when it is\n\
!published.
!*prefs*editor*linksAndImagesTip.labelString:		\
!Tip: Set both options if you will be using remote publishing.
!*prefs*editor*publishTitle.labelString:		Default publishing location
!*prefs*editor*publishLabel.labelString:		Publish to (FTP or HTTP):
!*prefs*editor*browseLabel.labelString:		Browse to (HTTP):

! Preferences dialog - Offline

![nn]
!*prefs*offline*startupBoxLabel.labelString:	Startup Communicator in
!*prefs*offline*online.labelString:			Online Work Mode
!*prefs*offline*offline.labelString:			Offline Work Mode
!*prefs*offline*ask.labelString:				Ask Me
!*prefs*offline*onlineDesc.labelString:\
!Choose this if you are on a network and connected to the\n\
!Internet all the time.
!*prefs*offline*offlineDesc.labelString:\
!Choose this if you use a modem and/or want to control\n\
!when you make network connections.
!*prefs*offline*askDesc.labelString:\
!Choose this if you are not sure when you will have access\n\
!to a network when you use Communicator. You will be\n\
!prompted with a choice dialog on start up.

! Preferences dialog - Offline/News

*prefs*offlineNews*downloadBoxLabel.labelString: 	Pobieranie wiadomo�ci
*prefs*offlineNews*downloadMsgs.labelString: 		Pobierz
*prefs*offlineNews*downloadByDate.labelString:		Pobierz wzgl�dem daty
*prefs*offlineNews*downloadDateFrom.labelString:	Od
*prefs*offlineNews*downloadDateSince.labelString:	do
*prefs*offlineNews*msgsLabel.labelString:			wiadomo�ci
*prefs*offlineNews*daysAgoLabel.labelString:		dni
*prefs*offlineNews*discussionLabel.labelString:	\
Aby przegl�da� grupy dyskusyjne w trybie offline, musisz pierw zaznaczy� je do\n\
pobrania.
*prefs*offlineNews*selectDiscussion.labelString:	Wybierz grupy dyskusyjne...
*prefs*offlineNews*discussionLabel2.labelString:	(12 zaznaczonych grup dyskusyjnych)

! Preferences dialog - page labels

*pref.appearance:					Wygl�d
*pref.fonts:						Czcionki
*pref.colors:						Kolory
*pref.browser:						Nawigator
*pref.lang:							J�zyki
*pref.smart:						Inteligentne przegl�danie
*pref.applications:					Programy
*pref.mailNews:						Poczta i grupy dyskusyjne
*pref.identity:						Identyfikacja
*pref.messages:                     Wiadomo�ci
*pref.mailServer:					Serwery pocztowe
*pref.newsServer:					Serwery grup dyskusyjnych
*pref.addressing:                   Adresowanie
*pref.copies:                       Kopie i katalogi
*pref.htmlmail:                     Formatowanie
*pref.readreceipts:                 Potwierdzenia
*pref.diskSpace:					Przestrze� dyskowa
*pref.editor:						Edytor
*pref.editorAppearance:				Kolory nowych stron
*pref.editorPublish:				Publikacja
*pref.offline:						Bez po��czenia
*pref.offlineNews:					Grupy
*pref.helpFiles:					Pliki pomocy
*pref.advanced:						Zaawansowane
*pref.cache:						Pami�� podr�czna
*pref.proxies:						Serwery proxy
*pref.liGeneral:					U�ytkownik w�druj�cy
*pref.liServer:						Informacje serwera
*pref.liFiles:						Item Selection

*prefDesc.appearance:				Zmiana wygl�du
*prefDesc.fonts:					Zmiana czcionek
*prefDesc.colors:					Zmiana kolor�w
*prefDesc.browser:					Podaj adres strony domowej
*prefDesc.lang:						Pokazywanie stron w r�nych j�zykach
![nn]
*prefDesc.smart:					Pomoc w przegl�daniu
*prefDesc.applications:				Programy pomocnicze dla r�nych typ�w plik�w
*prefDesc.mailNews:					Ustawienia poczty i grup dyskusyjnych
*prefDesc.identity:					Nazwisko, adres email i plik podpisu
*prefDesc.composition:				Ustawienia poczty wychodz�cej
*prefDesc.mailServer:				Serwery pocztowe
*prefDesc.newsServer:				Serwery grup dyskusyjnych
![nn]
*prefDesc.addressBook:				Choose directories for searching addresses
*prefDesc.addressing:               Adresownie
*prefDesc.copies:                   Kopie, projekty i wzorce
*prefDesc.messages:                 Ustawienia wiadomo�ci
*prefDesc.htmlMail:                 Przekazywanie wiadomo�ci
*prefDesc.readReceipts:             Ustawienia potwierdze�
*prefDesc.editor:					Domy�lne ustawienia nowych stron WWW
*prefDesc.editorAppearance:			Ustawienia domy�lnego wygl�du nowych stron WWW
*prefDesc.editorPublish:			Okre�l domy�ln� lokalizacj� publikowania
*prefDesc.offline:					Choose the startup mode of the product
*prefDesc.offlineNews:				Ustawienia przegl�dania grup dyskusyjnych Offline
*prefDesc.diskSpace:				Zarz�dzanie przestrzeni� dyskow� dla wiadomo�ci
*prefDesc.helpFiles:				Choose Help files
*prefDesc.advanced:					Ustawienia wp�ywaj�ce na zachowanie ca�ego Mozilla
*prefDesc.cache:					Pami�� podr�czna
*prefDesc.proxies:					Serwery proxy
![nn]
*prefDesc.liGeneral:				Enter your server login information
*prefDesc.liServer:					Specify the Roaming Access server information
*prefDesc.liFiles:					Specify which items to transfer
*prefDesc.smartUpdate:				Configure software installation

! Preferences dialog - TODOs


*prefs*mailnewsMserver*inboxToggle.sensitive:	false


! Color picker

*colorDialog_popup.title:			Mozilla: Color Picker

! Mail/News banners
*bannerItem.shadowType:				shadow_out
*bannerItem.shadowThickness:		1
*bannerItem.marginLeft:				1
*bannerItem.marginRight:			1
*bannerItem.marginTop:				1
*bannerItem.marginBottom:			1

*banner*mommy.buttonLayout:			button_pixmap_only

! Subscribe UI

*subscribeFolder*fontList: -*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*subscribeFolder*subscribe.labelString: Zapisz
*subscribeFolder*unsubscribe.labelString: Wypisz
*subscribeFolder*setSubscribe.labelString:    Zapisz
*subscribeFolder*clearSubscribe.labelString:  Wypisz
*subscribeFolder*expandAll.labelString:		Rozwi�
*subscribeFolder*collapseAll.labelString:	Zwi� wszystko
*subscribeFolder*fetchGroupList.labelString:	Od�wie�
*subscribeFolder*stopLoading.labelString:	Stop
*subscribeFolder*getNewGroups.labelString:	Pobierz nowe
*subscribeFolder*clearNewGroups.labelString:	Wyczy�� nowe
*subscribeFolder*search.labelString:		szukaj
*subscribeFolder*addNewsServer.labelString:	Dodaj serwer...
*subscribeFolder*subNewInfoLabel.labelString: Ta lista pokazuje wszystkie nowe grupy dyskusyjne od ostatatniego razu.
*subscribeFolder*searchLabel.labelString:	Szukaj:
*subscribeFolder*onserverLabel.labelString:	Na zarwerze:
*subscribeFolder*serverLabel.labelString:	Serwer:
*subscribeFolder*newsgroupLabel.labelString:	Grupa:
*subscribeFolder*subNewInfoLabel.alignment:	ALIGNMENT_BEGINNING

! The Add server dialog
*serverDialog*fontList:						-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
*serverDialogForm*serverLabel.labelString:	Nazwa serwera:
*serverDialogForm*portLabel.labelString:	Port:
*serverDialogForm*secureLabel.labelString:	Secure:
*serverDialogForm*secureToggle.labelString:

! Compose Window attachment panel resources
*newComposeFolder*attachItemImage.highlightThickness:      2
*newComposeFolder*attachItemImage.navigationType: NONE

*addressFolderBaseWidget*addressBook.labelString:     Ksi��ka adresowa
*addressBook.documentationString: Do��cz wizyt�wk� do aktualnej wiadomo�ci

*subjectFormW*subjectLabel.labelString:		Temat:
*PriorityOption.labelString:			Priorytet:
*optionForm*returnReceipt.labelString:		��daj potwierdzenia otrzymania
*optionForm*encrypted.labelString:		Kodowana
*optionForm*signed.labelString:			Podpisana
*optionForm*leftMargin:			40
*optionForm*rightMargin:		40

*TextEncodingOption.labelString:		U�yj 8-bit zamiast kodowania zgodnego z MIME
*AttachmentEncodingOption.labelString:		U�yj uuencode zamiast MIME dla za��cznik�w
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
*Navigator*toolBox*Tab0.tipString:		Panel nawigacyjny
*Navigator*toolBox*Tab1.tipString:		Panel adresowy
*Navigator*toolBox*Tab2.tipString:		Panel osobisty

*Editor*toolBox*Tab0.tipString:			Panel edycji
*Editor*toolBox*Tab1.tipString:			Panel formatowania

*Composition*toolBox*Tab0.tipString:	Panel wiadomo�ci
*Composition*toolBox*Tab1.tipString:	Pole adresowe
*Composition*subjectFormW.toolBox*Tab0.tipString: Panel formatowania

*MailFolder*toolBox*Tab0.tipString:		Panel centrum wiadomo�ci
*MailFolder*toolBox*Tab1.tipString:		Panel adresowy

*MailThread*toolBox*Tab0.tipString:		Panel wiadomo�ci
*MailThread*toolBox*Tab1.tipString:		Panel adresowy

*MailMsg*toolBox*Tab0.tipString:		Panel wiadomo�ci
*MailMsg*toolBox*Tab1.tipString:		Panel adresowy

*toolBox*Tab0.tipString:				Panel nawigacyjny
*toolBox*Tab1.tipString:				Panel adresowy

*Navigator*toolBox*Tab0.documentationString:		Panel nawigacyjny
*Navigator*toolBox*Tab1.documentationString:		Panel adresowy
*Navigator*toolBox*Tab2.documentationString:		Panel osobiosty

*Editor*toolBox*Tab0.documentationString:		Panel edytora
*Editor*toolBox*Tab1.documentationString:		Panel formatowania

*Composition*toolBox*Tab0.documentationString:	Panel wiadomo�ci
*Composition*toolBox*Tab1.documentationString:	Panel adresowania
*Composition*subjectFormW.toolBox*Tab0.documentationString: Panel formatowania

*MailFolder*toolBox*Tab0.documentationString:		Panel centrum wiadomo�ci
*MailFolder*toolBox*Tab1.documentationString:		Panel adresowy

*MailThread*toolBox*Tab0.documentationString:		Panel wiadomo�ci
*MailThread*toolBox*Tab1.documentationString:		Panel adresowy

*MailMsg*toolBox*Tab0.documentationString:		Panel wiadomo�ci
*MailMsg*toolBox*Tab1.documentationString:		Panel adresowy

*toolBox*Tab0.documentationString:			Panel nawigacyjny
*toolBox*Tab1.documentationString:			Panel aresowy

!! Number of pixels to move an item before swapping
*toolBox.swapThreshold:			10

!! Maximum number of pixels an item can be dragged (for one mouse motion)
*toolBox.dragThreshold:			10

*toolBox.marginLeft:			0
*toolBox.marginRight:			0
*toolBox.marginTop:			0
*toolBox.marginBottom:			0

!!
!! *toolBar
!!
*toolBarItem.shadowType:		shadow_out
*toolBarItem.shadowThickness:		1
*toolBarItem.marginLeft:		1
*toolBarItem.marginRight:		1
*toolBarItem.marginTop:			1
*toolBarItem.marginBottom:		1

*toolBar*XfeButton.marginBottom:	1
*toolBar*XfeButton.marginLeft:		1
*toolBar*XfeButton.marginRight:		1
*toolBar*XfeButton.marginTop:		1
*toolBar*XfeButton.shadowThickness:	1

*toolBar*XfeCascade.marginBottom:	1
*toolBar*XfeCascade.marginLeft:		1
*toolBar*XfeCascade.marginRight:	1
*toolBar*XfeCascade.marginTop:		1
*toolBar*XfeCascade.shadowThickness:	1

*toolBar*XmSeparator.shadowThickness:	0
*toolBar*XmSeparator.width:		20
*toolBar*XmSeparator.height:		2
*toolBar*XmSeparator.orientation:	horizontal

*toolBar*armOffset:				1
*toolBar*fillOnEnter:				false
*toolBar*raiseForeground:			Blue
*toolBar*fontList:				-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

*toolBar.spacing:						0
*toolBar.shadowThickness:				0
*toolBar.marginLeft:					0
*toolBar.marginRight:					0
*toolBar.marginTop:						0
*toolBar.marginBottom:					0


!!
!! Browser Toolbar destinations
!!
*toolBar*destinations.mapingDelay:                           1
*toolBar*destinations*whatsNew.labelString:		Co nowego?
*toolBar*destinations*whatsCool.labelString:	Co ciekawego?
*toolBar*destinations*inetIndex.labelString:	Internet
*toolBar*destinations*inetSearch.labelString:	Szukanie w sieci
*toolBar*destinations*inetWhite.labelString:	Ludzie
*toolBar*destinations*inetYellow.labelString:	Yellow Pages
*toolBar*destinations*upgrade.labelString:		Oprogramowanie
*toolBar*destinations*welcome.labelString:              Witamy
*toolBar*destinations*newsgroups.labelString:	Grupy

!!
!! *dashBoard
!!
*dashBoard.shadowThickness:							1
*dashBoard.shadowType:								shadow_out
*dashBoard.bottomOffset:							0
*dashBoard.leftOffset:								0
*dashBoard.rightOffset:								0
*dashBoard.topOffset:								0
*dashBoard.marginBottom:							2
*dashBoard.marginLeft:								2
*dashBoard.marginRight:								2
*dashBoard.marginTop:								2

!!
!! *dashBoard*securityBar
!!
*dashBoard*securityBar.marginBottom:				0
*dashBoard*securityBar.marginLeft:					0
*dashBoard*securityBar.marginRight:					0
*dashBoard*securityBar.marginTop:					0
*dashBoard*securityBar.buttonLayout:				button_pixmap_only

!!
!! *dashBoard*viewSecurity
!!
*dashBoard*viewSecurity.shadowType:					shadow_in
*dashBoard*viewSecurity.shadowThickness:			1
*dashBoard*viewSecurity.raiseOnEnter:				false
*dashBoard*viewSecurity.buttonType:					button_none
*dashBoard*viewSecurity.marginTop:					1
*dashBoard*viewSecurity.marginBottom:				1

!!
!! *dashBoard*statusBar
!!
*dashBoard*statusBar.shadowType:					shadow_in
*dashBoard*statusBar.shadowThickness:				1
*dashBoard*statusBar.truncateLabel:					false
*dashBoard*statusBar.fontList:						-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*dashBoard*statusBar.labelAlignment:				alignment_beginning

! initial value for the status bar
*dashBoard*statusBar.labelString:					Mozilla

!!
!! *dashBoard*progressBar
!!
*dashBoard*progressBar.shadowType:			shadow_in
*dashBoard*progressBar.shadowThickness:			1
*dashBoard*progressBar.fontList:			-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
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
*dockedTaskBar*fontList:				-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*

*dockedTaskBar*openOrBringUpBrowser.labelString:	Navigator
*dockedTaskBar*openInboxAndGetNewMessages.labelString:	Inbox
*dockedTaskBar*openNewsgroups.labelString:		Grupy dyskusyjne
*dockedTaskBar*openAddrBook.labelString:		Ksi��ka adresowa
*dockedTaskBar*openEditor.labelString:			Edytor

*dockedTaskBar*openOrBringUpBrowser.tipString:		Otw�rz okno przegl�darki
*dockedTaskBar*openInboxAndGetNewMessages.tipString:	Otw�rz okno poczty i pobierz nowe wiadomo�ci
*dockedTaskBar*openNewsgroups.tipString:		Otw�rz centrum wiadomo�ci
*dockedTaskBar*openAddrBook.tipString:			Otw�rz ksi��k� adresow�
*dockedTaskBar*openEditor.tipString:			Otw�rz edytor stron WWW

*openInboxAndGetNewMessages.documentationString:	Otw�rz okno poczty i pobierz nowe wiadomo�ci

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
*floatingTaskBar*fontList:				-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*



*floatingTaskBar*openInboxAndGetNewMessages.labelString:	Skrzynka odbiorcza
*floatingTaskBar*openNewsgroups.labelString:			Grupy dyskusyjne
*floatingTaskBar*openAddrBook.labelString:			Ksi��ka adresowa
*floatingTaskBar*openEditor.labelString:			Edytor

*floatingTaskBar*openOrBringUpBrowser.tipString:	Otw�rz okno przegl�darki
*floatingTaskBar*openInboxAndGetNewMessages.tipString:	Otw�rz okno poczty i pobierz nowe wiadomo�ci
*floatingTaskBar*openNewsgroups.tipString:		Otw�rz okno poczty i grup dyskusyjnych
*floatingTaskBar*openAddrBook.tipString:		Otw�rz ksi��k� adresow�
*floatingTaskBar*openEditor.tipString:			Otw�rz edytor stron WWW


*openInboxAndGetNewMessages.documentationString:		Otw�rz okno poczty i pobierz nowe wiadomo�ci

*floatingTaskBar*XfeButton.marginBottom:			2
*floatingTaskBar*XfeButton.marginLeft:				2
*floatingTaskBar*XfeButton.marginRight:				2
*floatingTaskBar*XfeButton.marginTop:				2
*floatingTaskBar*XfeButton.shadowThickness:			1


!!
!! *taskBarContextMenu
!!
*taskBarContextMenu*floatingTaskBarAlwaysOnTop.labelString:		Zawsze na wierzchu
*taskBarContextMenu*floatingTaskBarClose.labelString:			Zamknij

*floatingTaskBarVerticalCmdString:								Pionowo
*floatingTaskBarHorizontalCmdString:							Poziomo

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! buttons for compose/post  message pulldown on the toolbar
*toolBar*composeMessagePlain.labelString: 	jako tekst
*toolBar*composeMessageHTML.labelString: 	jako HTML

*toolBar*composeArticlePlain.labelString: 	jako tekst
*toolBar*composeArticleHTML.labelString: 	jako HTML

! buttons specific to the folder frame.
*toolBar*getNewMessages.labelString:	Nowa
*toolBar*composeMessage.labelString:	Napisz
*composeMessage.tipString:		Nowa wiadomo��
*toolBar*newFolder.labelString:
*toolBar*addNewsgroup.labelString:	Zapisz
*toolBar*deleteFolder.labelString:	Skasuj
*toolBar*deleteAny.labelString:		Skasuj
*toolBar*deleteAny.tipString:     Skasuj zaznaczon� wiadomo��
*toolBar*deleteAny.documentationString: Skasuj zaznaczon� wiadomo��

*unsubscribeNewsgroupCmdString: Wypisz
!
*getNewMessages.tipString:	Pobierz
*getNewMessages.documentationString:	Pobierz nowe wiadomo�ci poczty i grup dyskusyjnych
*getNewMessages.labelString:	Pobierz
*getNewMessages.mnemonic:	M

*newFolder.tipString:		Nowy katalog
*addNewsgroup.tipString:	Dodaj grup� dyskusyjn�
*deleteFolder.tipString:	Skasuj katalog

! buttons specific to the thread/message frame.
*toolBar*composeArticle.labelString: Napisz
*toolBar*replyToNewsgroup.labelString: Odpowiedz
*toolBar*replyToSender.labelString:	Odpowiedz
*toolBar*nextMessage.labelString:	=>
*toolBar*nextUnreadMessage.labelString:	Nast�pna nieprzeczytana wiadomo��
*toolBar*nextUnreadThread.labelString:	Nast�pny nieprzeczytany w�tek
*toolBar*nextFlaggedMessage.labelString:	 Nast�pna oznaczona wiadomo��
*toolBar*nextCategory.labelString:	Nast�pna kategoria
*toolBar*nextUnreadCategory.labelString:	Nast�pna nieprzeczytana kategoria
*toolBar*nextUnreadCollection.labelString:	Nast�pna nieprzeczytana kolekcja
*toolBar*forwardMessage.labelString:	Przeka�
*toolBar*deleteMessage.labelString:	Skasuj
*toolBar*previousUnreadMessage.labelString: Poprzednia
*toolBar*previousMessage.labelString:	Poprzednia
*previousMessage.tipString: Poprzednia wiadomo��
*toolBar*moveMessage.labelString: Plik
*toolBar*copyMessage.labelString: Plik
*toolBar*composeArticle.tipString: Nowa wiadomo�� do tej grupy dyskusyjnej
*toolBar*replyToNewsgroup.tipString: Odpowiedz na t� wiadomo��
*toolBar*nextMessage.tipString:	Nast�pna nieprzeczytana wiadomo��


*toolBar*moveMessage.tipString: File the selected message
*toolBar*copyMessage.tipString: File the selected message
![nn]
*toolBar*moveMessage.documentationString: File the selected message to a folder
*toolBar*copyMessage.documentationString: Kopiuj zaznaczon� wiadomo�� do katalogu

! buttons specific to the browser frame.
*toolBar*back.labelString:	<=
*toolBar*forward.labelString:	=>
*toolBar*home.labelString:	Dom
*toolBar*search.labelString:	Szukaj
*toolBar*destinations.labelString:	Mozilla
*toolBar*guide.labelString:	Przewodnik
*toolBar*myshopping.labelString:			Sklep
*toolBar*showImages.labelString:	Obrazki
*toolBar*loadImages.labelString:	Wczytaj obrazki
*toolBar*print.labelString:	Drukuj
*print.tipString:                   Drukuj t� stron�
*MailThread*print.tipString:        Drukuj zaznaczon� wiadomo��
*MailMsg*print.tipString:           Drukuj zaznaczon� wiadomo��
*toolBar*reload.labelString:	Prze�aduj

! buttons specific to the compose frame.
*toolBar*sendMessageNow.labelString:	Wy�lij
*toolBar*quote.labelString:		Cytuj
*toolBar*addresseePicker.labelString:	Adres
*toolBar*saveDraft.labelString:		Zapisz
*toolBar*viewAddresses.labelString:	Adres
*toolBar*viewDirectories.labelString:	Katalog
!
*sendMessageNow.tipString:	Wy�lij t� wiadomo��
![nn]
*saveDraft.tipString:		Wy�lij t� wiadomo�� jako draft
*quote.tipString:		Cytuj poprzedni dokument
*viewDirectories.tipString:	Sprawd� adres
*viewSecurity.tipString:        Poka� informacje bezpiecze�stwa
!
*addressBook.tipString:
!
*quote.documentationString:	      Wstaw tekst oryginalnej strony jako cytat
*viewDirectories.documentationString: Sprawd� adres w katalogu LDAP
!
! buttons specific to the Addressbook frame. documentationString
*toolBar*abEditEntry.labelString:     W�a�ciwo�ci
*toolBar*abDelete.labelString:   Skasuj
*toolBar*searchAddress.labelString:       Katalog
*toolBar*abCall.labelString:       Kom�rka
!
*addToAddressBook.tipString: Utw�rz nowy wpis
*abNewList.tipString:        Utw�rz now� list� dyskusyjn�
*abEditEntry.tipString:     Edytuj zaznaczony wpis
*abDelete.tipString:   Skasuj zaznaczony wpis
*abCall.tipString:          Rozpocznij konferencj�
*searchAddress.tipString:       Sprawd� adres
!

*abEditEntry.documentationString:     \
Pokazuje i edytuje w�a�ciwo�ci pozycji ksi��ki adresowej
*viewProperties.documentationString:  \
Pokazuje i edytuje w�a�ciwo�ci pozycji ksi��ki adresowej
*displayHTMLDomainsDialog.documentationString: \
Edytuj list� domen mog�cych otrzymywa� wiadomo�ci HTML
*abVCard.documentationString:    	  Utw�rz i edytuj moj� wizyt�wk� (vCard)

*abDelete.documentationString:   Skasuj zaznaczony wpis z ksi��ki adresowej

*searchAddress.documentationString:       Sprawd� adres w katalogu LDAP

!*AddressBook*toggleNavigationToolbar.documentationString:
!
*toBtn.documentationString:           Utw�rz wiadomo�� do zaznaczonego wpisu
*ccBtn.documentationString:           Utw�rz i wy�lij kopi� wiadomo��i (CC) do zaznaczonego wpisu
*bccBtn.documentationString:          Utw�rz i wy�lij ukryt� kopi� wiadomo�ci (BCC) do zaznaconego wpisu
!
! buttons used everywhere (it seems.)
*toolBar*viewSecurity.labelString:	Bezpiecze�stwo
*toolBar*stopLoading.labelString:	Stop
!wy��czenie paru zb�dnych (IMHO) przycisk�w
Netscape*toolBar.myshopping.isEnabled: false
Netscape*toolBar.destinations.isEnabled: false
Netscape*toolBar.search.isEnabled: false
Netscape*toolBar.viewSecurity.isEnabled: false
!Netscape*toolBar.home.isEnabled: false
!Netscape*toolBar.print.isEnabled: false


![nn]
*changeDocumentEncoding.documentationString: Indicate Documentation Encoding


*MailFolder.width:	280
*MailFolder.height:	400
!
*abCardProperties*strip.topOffset: 3
*abCardProperties*strip.leftOffset: 15
*abCardProperties*strip.bottomOffset: 3
*abCardProperties*strip.rightOffset: 15

!
! For the mail message download dialog
!
Netscape*MessageDownload*label.alignment: ALIGNMENT_BEGINNING
Netscape*MessageDownload*stopButtonForm*stopLoading.labelString: poniechaj

Netscape*NewsDownload*fontList:				-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*
Netscape*NewsDownload_popup.title:			Mozilla: pobieranie nag��wk�w

Netscape*NewsDownload*allToggle.labelString: Pobierz wszystkie nag��wki
Netscape*NewsDownload*numMessagesToggle.labelString: Pobierz
Netscape*NewsDownload*numMessagesCaption.labelString: nag��wk�w
Netscape*NewsDownload*markOthersRead.labelString: Zaznacz pozosta�e nag��wki jako przeczytane.

!
! For the news group property dialog
!
*NewsgroupProps*name_label.labelString:	Nazwa:
*NewsgroupProps*location_label.labelString: Katalog:
*NewsgroupProps*unread_label.labelString: Nieprzeczytane wiadomo�ci:
*NewsgroupProps*total_label.labelString: Wszystkich wiadomo�ci:
*NewsgroupProps*space_label.labelString: U�yte mejsce na dysku:
*NewsgroupProps*html_toggle.labelString: Mo�e otrzymywa� wiadomo�ci HTML
!
! For the mail folder property dialog
!
*MailFolderProps*name_label.labelString:	Nazwa:
*MailFolderProps*name_value.columns: 20
*MailFolderProps*location_label.labelString: Adres:
*MailFolderProps*unread_label.labelString: Nieprzeczytane wiadomo�ci:
*MailFolderProps*total_label.labelString: Wszystkich wiadomo�ci:
*MailFolderProps*wasted_label.labelString: Zmarnowane miejsce na dysku:
*MailFolderProps*space_label.labelString: U�yte mejsce na dysku:
*MailFolderProps*sharePrivilegesLabel.labelString: Wsp�dziel ten i inne \
katalogi z u�ytkownikami sieciowymi\n\
oraz wy�wietl prawa dost�pu

!
! For the news server property dialog
!
*NewsServerProps*name_label.labelString: Nazwa:
*NewsServerProps*port_label.labelString: Port #:
*NewsServerProps*security_label.labelString: Bezpiecze�stwo:
*NewsServerProps*desc_label.labelString: Opis:
*NewsServerProps*prompt_toggle.labelString: Zawsze pytaj mnie o nazw� u�ytkownika i has�o
*NewsServerProps*anonymous_toggle.labelString: \
Pytaj mnie o nazw� u�ytkownika i has�o tylko kiedy to konieczne
*NewsServerProps*html_toggle.labelString: Mo�e otrzymywa� wiadomo�ci HTML

!
! For the splash screen
!
Netscape*splashShell*background:	Black
Netscape*splashShell*foreground:	White
Netscape*splashShell*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-2:*-r-*

!
! Special for HTMLCompose
!
Netscape*composeViewEditFormWidget.scrollerForm.pane.scroller.spacing:	0
Netscape*composeViewEditFormWidget.scrollerForm.pane*spacing:			0
Netscape*composeViewEditFormWidget.scrollerForm.pane*marginWidth:		0
Netscape*composeViewEditFormWidget.scrollerForm.pane*marginHeight:		0
Netscape*composeViewEditFormWidget.scrollerForm.pane*highlightThickness:	0
Netscape*composeViewEditFormWidget.scrollerForm.pane*traversalOn:		False

!Composition navigation
*Composition*navigationType:		TAB_GROUP
*Composition*XmTextField.highlightThickness:	2
*Composition*XmText.highlightThickness:		2

! Plain Text Compose Popup
*popup*pasteAsQuoted.labelString:			Wstaw jako cytat
*popup*pasteAsQuoted.mnemonic:			Q
*popup*quoteOriginalText.labelString:			Cytuj oryginalny tekst

!
! Special for SpellHandler...
!
*spellDialog*right_rc.entryAlignment:  ALIGNMENT_CENTER

*spellDialog*replace.labelString:      Zamie�
*spellDialog*replace_all.labelString:  Zamie� wszystkie
*spellDialog*check.labelString:	      Sprawd�
*spellDialog*ignore.labelString:       Ignoruj
*spellDialog*ignore_all.labelString:   Ignoruj Wszystkie
*spellDialog*learn.labelString:        Naucz si�
*spellDialog*stop.labelString:         Stop
*spellDialog*text_label.labelString:   S�owo:
*spellDialog*list_label.labelString:   Suggestia:

*spellDialog*done.labelString:             Gotowe
*spellDialog*msgFinished.labelString:      [ sprawdzanie uko�czone ]
*spellDialog*msgNoSuggestions.labelString: [ brak sugesti ]
*spellDialog*msgUnRecognized.labelString:  [ nieznane s�owo ]
*spellDialog*msgCorrect.labelString:       [ poprawna pisownia ]
*spellDialog*msgNull.labelString:          [ ]

*spellDialog*text_label.fontList: -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*spellDialog*list_label.fontList: -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*spellDialog*right_rc*fontList:   -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*spellDialog*combo_frame*fontList:   -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-2:*-r-*
*spellDialog*langCzech.labelString:                Czech
*spellDialog*langRussian.labelString:              Russian
*spellDialog*langCatalan.labelString:              Catalan
*spellDialog*langHungarian.labelString:            Hungarian
*spellDialog*langFrench.labelString:               French
*spellDialog*langGerman.labelString:               German
*spellDialog*langSwedish.labelString:              Swedish
*spellDialog*langSpanish.labelString:              Spanish
*spellDialog*langItalian.labelString:              Italian
*spellDialog*langDanish.labelString:               Danish
*spellDialog*langDutch.labelString:                Dutch
*spellDialog*langPortugueseBrazilian.labelString:  Portuguese (Brazilian)
*spellDialog*langPortugueseEuropean.labelString:   Portuguese (European)
*spellDialog*langNorwegianBokmal.labelString:      Norwegian (Bokmal)
*spellDialog*langNorwegianNynorsk.labelString:     Norwegian (Nynorsk)
*spellDialog*langNorwegian.labelString:            Norwegian
*spellDialog*langFinnish.labelString:              Finnish
*spellDialog*langGreek.labelString:                Greek
*spellDialog*langEnglishUS.labelString:            English (US)
*spellDialog*langEnglishUK.labelString:            English (UK)
*spellDialog*langEnglish.labelString:              English
*spellDialog*langAfrikaans.labelString:            Afrikaans
*spellDialog*langPolish.labelString:               Polski

!
! tips for SwatchMatrix in colorPicker...
!
*#FFFFFF.tipString: 255 255 255
*#CCCCCC.tipString: 204 204 204
*#999999.tipString: 153 153 153
*#666666.tipString: 102 102 102
*#333333.tipString: 51 51 51
*#000000.tipString: 0 0 0

*#FFCCCC.tipString: 255 204 204
*#FF6666.tipString: 255 102 102
*#FF0000.tipString: 255 0 0
*#CC0000.tipString: 204 0 0
*#990000.tipString: 153 0 0
*#660000.tipString: 102 0 0
*#330000.tipString: 51 0 0

*#FFCC99.tipString: 255 204 153
*#FFCC33.tipString: 255 204 51
*#FF9900.tipString: 255 153 0
*#FF6600.tipString: 255 102 0
*#CC6600.tipString: 204 102 0
*#993300.tipString: 153 51 0
*#663300.tipString: 102 51 0

*#FFFFCC.tipString: 255 255 204
*#FFFF99.tipString: 255 255 153
*#FFFF00.tipString: 255 255 0
*#FFCC00.tipString: 255 204 0
*#999900.tipString: 153 153 0
*#666600.tipString: 102 102 0
*#333300.tipString: 51 51 0

*#99FF99.tipString: 153 255 153
*#66FF99.tipString: 102 255 153
*#33FF33.tipString: 51 255 51
*#33CC00.tipString: 51 204 0
*#009900.tipString: 0 153 0
*#006600.tipString: 0 102 0
*#003300.tipString: 0 51 0

*#CCFFFF.tipString: 204 255 255
*#66FFFF.tipString: 102 255 255
*#33CCFF.tipString: 51 204 255
*#3366FF.tipString: 51 102 255
*#3333FF.tipString: 51 51 255
*#000099.tipString: 0 0 153
*#000066.tipString: 0 0 102

*#FFCCFF.tipString: 255 204 255
*#FF99FF.tipString: 255 153 255
*#CC66CC.tipString: 204 102 204
*#CC33CC.tipString: 204 51 204
*#993399.tipString: 153 51 153
*#663366.tipString: 102 51 102
*#330033.tipString: 51 0 51

*#FFFF99.tipString: 255 255 153
*#FFFF66.tipString: 255 255 102
*#FFCC66.tipString: 255 204 102
*#FFCC33.tipString: 255 204 51
*#CC9933.tipString: 204 153 51
*#996633.tipString: 153 102 51
*#663333.tipString: 102 51 51

*#99FFFF.tipString: 153 255 255
*#33FFFF.tipString: 51 255 255
*#66CCCC.tipString: 102 204 204
*#00CCCC.tipString: 000 204 204
*#339999.tipString: 51 153 153
*#336666.tipString: 51 102 102
*#003333.tipString: 0 51 51

*#CCCCFF.tipString: 204 204 255
*#9999FF.tipString: 153 153 204
*#6666CC.tipString: 102 102 204
*#6633FF.tipString: 102 51 255
*#6600CC.tipString: 102 0 204
*#333399.tipString: 51 51 153
*#330099.tipString: 51 0 153

!
! doc strings for SwatchMatrix in colorPicker...
!
*#FFFFFF.documentationString: RGB Color [ 255 255 255 ][ #FFFFFF ]
*#CCCCCC.documentationString: RGB Color [ 204 204 204 ][ #CCCCCC ]
*#999999.documentationString: RGB Color [ 153 153 153 ][ #999999 ]
*#666666.documentationString: RGB Color [ 102 102 102 ][ #666666 ]
*#333333.documentationString: RGB Color [ 51 51 51 ][ #333333 ]
*#000000.documentationString: RGB Color [ 0 0 0 ][ #000000 ]

*#FFCCCC.documentationString: RGB Color [ 255 204 204 ][ #FFCCCC ]
*#FF6666.documentationString: RGB Color [ 255 102 102 ][ #FF6666 ]
*#FF0000.documentationString: RGB Color [ 255 0 0 ][ #FF0000 ]
*#CC0000.documentationString: RGB Color [ 204 0 0 ][ #CC0000 ]
*#990000.documentationString: RGB Color [ 153 0 0 ][ #990000 ]
*#660000.documentationString: RGB Color [ 102 0 0 ][ #660000 ]
*#330000.documentationString: RGB Color [ 51 0 0 ][ #330000 ]

*#FFCC99.documentationString: RGB Color [ 255 204 153 ][ #FFCC99 ]
*#FFCC33.documentationString: RGB Color [ 255 204 51 ][ #FFCC33 ]
*#FF9900.documentationString: RGB Color [ 255 153 0 ][ #FF9900 ]
*#FF6600.documentationString: RGB Color [ 255 102 0 ][ #FF6600 ]
*#CC6600.documentationString: RGB Color [ 204 102 0 ][ #CC6600 ]
*#993300.documentationString: RGB Color [ 153 51 0 ][ #993300 ]
*#663300.documentationString: RGB Color [ 102 51 0 ][ #663300 ]

*#FFFFCC.documentationString: RGB Color [ 255 255 204 ][ #FFFFCC ]
*#FFFF99.documentationString: RGB Color [ 255 255 153 ][ #FFFF99 ]
*#FFFF00.documentationString: RGB Color [ 255 255 0 ][ #FFFF00 ]
*#FFCC00.documentationString: RGB Color [ 255 204 0 ][ #FFCC00 ]
*#999900.documentationString: RGB Color [ 153 153 0 ][ #999900 ]
*#666600.documentationString: RGB Color [ 102 102 0 ][ #666600 ]
*#333300.documentationString: RGB Color [ 51 51 0 ][ #333300 ]

*#99FF99.documentationString: RGB Color [ 153 255 153 ][ #99FF99 ]
*#66FF99.documentationString: RGB Color [ 102 255 153 ][ #66FF99 ]
*#33FF33.documentationString: RGB Color [ 51 255 51 ][ #33FF33 ]
*#33CC00.documentationString: RGB Color [ 51 204 0 ][ #33CC00 ]
*#009900.documentationString: RGB Color [ 0 153 0 ][ #009900 ]
*#006600.documentationString: RGB Color [ 0 102 0 ][ #006600 ]
*#003300.documentationString: RGB Color [ 0 51 0 ][ #003300 ]

*#CCFFFF.documentationString: RGB Color [ 204 255 255 ][ #CCFFFF ]
*#66FFFF.documentationString: RGB Color [ 102 255 255 ][ #66FFFF ]
*#33CCFF.documentationString: RGB Color [ 51 204 255 ][ #33CCFF ]
*#3366FF.documentationString: RGB Color [ 51 102 255 ][ #3366FF ]
*#3333FF.documentationString: RGB Color [ 51 51 255 ][ #3333FF ]
*#000099.documentationString: RGB Color [ 0 0 153 ][ #000099 ]
*#000066.documentationString: RGB Color [ 0 0 102 ][ #000066 ]

*#FFCCFF.documentationString: RGB Color [ 255 204 255 ][ #FFCCFF ]
*#FF99FF.documentationString: RGB Color [ 255 153 255 ][ #FF99FF ]
*#CC66CC.documentationString: RGB Color [ 204 102 204 ][ #CC66CC ]
*#CC33CC.documentationString: RGB Color [ 204 51 204 ][ #CC33CC ]
*#993399.documentationString: RGB Color [ 153 51 153 ][ #993399 ]
*#663366.documentationString: RGB Color [ 102 51 102 ][ #663366 ]
*#330033.documentationString: RGB Color [ 51 0 51 ][ #330033 ]

*#FFFF99.documentationString: RGB Color [ 255 255 153 ][ #FFFF99 ]
*#FFFF66.documentationString: RGB Color [ 255 255 102 ][ #FFFF66 ]
*#FFCC66.documentationString: RGB Color [ 255 204 102 ][ #FFCC66 ]
*#FFCC33.documentationString: RGB Color [ 255 204 51 ][ #FFCC33 ]
*#CC9933.documentationString: RGB Color [ 204 153 51 ][ #CC9933 ]
*#996633.documentationString: RGB Color [ 153 102 51 ][ #996633 ]
*#663333.documentationString: RGB Color [ 102 51 51 ][ #663333 ]

*#99FFFF.documentationString: RGB Color [ 153 255 255 ][ #99FFFF ]
*#33FFFF.documentationString: RGB Color [ 51 255 255 ][ #33FFFF ]
*#66CCCC.documentationString: RGB Color [ 102 204 204 ][ #66CCCC ]
*#00CCCC.documentationString: RGB Color [ 000 204 204 ][ #00CCCC ]
*#339999.documentationString: RGB Color [ 51 153 153 ][ #339999 ]
*#336666.documentationString: RGB Color [ 51 102 102 ][ #336666 ]
*#003333.documentationString: RGB Color [ 0 51 51 ][ #003333 ]

*#CCCCFF.documentationString: RGB Color [ 204 204 255 ][ #CCCCFF ]
*#9999FF.documentationString: RGB Color [ 153 153 204 ][ #9999FF ]
*#6666CC.documentationString: RGB Color [ 102 102 204 ][ #6666CC ]
*#6633FF.documentationString: RGB Color [ 102 51 255 ][ #6633FF ]
*#6600CC.documentationString: RGB Color [ 102 0 204 ][ #6600CC ]
*#333399.documentationString: RGB Color [ 51 51 153 ][ #333399 ]
*#330099.documentationString: RGB Color [ 51 0 153 ][ #330099 ]

*selector*background:			gray70
*selector*shadowThickness:		1
*selector.orientation:			vertical

*selector*ToolBar.buttonLayout:			button_label_on_top

*selector.leftAttachment:			attach_form
*selector.rightAttachment:			attach_none
*selector.topAttachment:			attach_form
*selector.bottomAttachment:			attach_form


*selector.leftOffset:				10
*selector.rightOffset:				10
*selector.topOffset:				10
*selector.bottomOffset:				10

!*selector.usePreferredWidth:		false
*selector.usePreferredHeight:		false

*selector.clipShadowThickness:		1
*selector.clipShadowType:			shadow_in


!*selector.marginLeft:					0
!*selector.marginRight:					0
!*selector.marginTop:					0
!*selector.marginBottom:				0

!*selector.marginLeft:				0
!*selector.marginRight:				0
!*selector.marginTop:				0
!*selector.marginBottom:				0

!*selector.spacing:					10

*selector*ToolBar.radioBehavior:				true


!*selector*XfeButton.buttonType:			button_toggle

*selector*XfeButton.buttonTrigger:			button_trigger_either
*selector*XfeButton.marginLeft:			4
*selector*XfeButton.marginRight:			4
*selector*XfeButton.marginTop:				4
*selector*XfeButton.marginBottom:			4

*selector*XfeButton.raiseOnEnter:			true
*selector*XfeButton.shadowThickness:		0
!*selector*XfeButton.fillOnEnter:			true
*selector*XfeButton.armOffset:				0

*selector*XfeButton.transparentCursor:		cross
!*selector*XfeButton.cursor:				hand2



!Netscape*AddressOutlinerPopup*fontList:\
!-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*:*-r-*,\
!-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*:*-r-*=BOLD,\
!-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-*:*-r-*=ITALIC

Netscape*AddressOutlinerPopup*fontList:\
-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*,\
-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-2:*-r-*=BOLD,\
-*-helvetica-medium-o-*-*-*-100-*-*-*-*-iso8859-2:*-r-*=ITALIC



! This table maps the host's locale names to MIME charsets
!
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


! English strings are built into the binary
*localeCharset*pl_PL:		iso-8859-2
*localeCharset*pl:		iso-8859-2
