! Netscape.ad --- Archivo app-defaults para Mozilla 4.7[es]
! REVISION 0.6 de la versión en castellano (1999-10-19)
!
! Basado en el Netscape.ad de Netscape Communicator 4.61 en inglés:
!    Creado por Jamie Zawinski <jzw@netscape.com> el 23 de Junio de 1994.
!    Modificado por Dp Suresh <dp@netscape.com> el 1 de Agosto de 1995
!    Modificado por snpf <snpf@netscape.com> el 23 de Setiembre de 1996
! Y en la versión en castellano para Netscape 4.08 por Rogelio Bernal
!       Andreo <rba@netscape.com> el 14 de Diciembre de 1998 
!	Pablo Saratxaga <srtxg@chanae.alphanet.ch> el 24 de abril 1999
! Modificaciones para la 4.61 y Modificado para que use las composiciones
! 	de teclas estándard Ctrl-C Ctrl-V Ctrl-X etc en vez de Alt.
!       Pablo Saratxaga <srtxg@chanae.alphanet.ch> el 20 de agosto 1999	
! Adaptado para la 4.7 por Pablo Saratxaga <pablo@mandrakesoft.com> 1999-10-19
! Adapted for 4.75 by Bill Nottingham <notting@redhat.com> 2000-02-23
! Adapted for 4.76 by Bill Nottingham <notting@redhat.com> 2000-11-09
! Adapted for 4.79 by Bill Nottingham <notting@redhat.com> 2001-04-09

! Traducción y publicación de este archivo realizada bajo la
! licencia del Programa de Localización Universal, publicada
! en http://www.mozilla.org/docs/l10n/ulpLicense.html
! 
! PARA INFORMACION ACTUALIZADA SOBRE ESTA Y OTRAS VERSIONES DE COMMUNICATOR
! Y MOZILLA EN CASTELLANO REALIZADAS POR EL PROYECTO N.A.V.E., VISITE LA
! PAGINA OFICIAL DEL PROYECTO N.A.V.E. Y MOZILLA[ES] EN
! 
! http://www.e-listas.com/rba/mozilla-es/
! 
! PARA INFORMACION SOBRE EL ESTADO CONCRETO DE ESTA VERSION, VISITE
! 
! http://www.e-listas.com/rba/mozilla-es/es/vdown/
!
! SIGA LEYENDO PARA SABER COMO UTILIZAR ESTE ARCHIVO...
!
! -------------------------------------------------------------------------
!
! NOTA LEGAL
! ==========
! ESTE ARCHIVO NO ESTA DESTINADO AL PUBLICO EN GENERAL
! DEBIDO A SU ESTADO "BETA", EL ARCHIVO PUEDE GENERAR ALGUNOS FALLOS
! EN LA APLICACION, QUE NO APARECEN CUANDO ESTE ARCHIVO NO SE USA.
!
! LOS ARCHIVOS QUE FORMAN ESTA DISTRIBUCION DE MOZILLA[ES] 4.07 SON
! DISTRIBUIDOS "COMO ESTÁN", SIN GARANTÍAS NI SOPORTE DE NINGÚN TIPO.
! EL USUARIO ACEPTA TODA LA RESPONSABILIDAD EN USAR DICHOS ARCHIVOS. 
! 
! EL USUARIO ES LIBRE DE REDISTRIBUIR COPIAS DE ESTOS ARCHIVOS SIEMPRE
! QUE NO MODIFIQUE LAS NOTAS DE DERECHOS DE AUTOR, NI ALTERE EL CONTENIDO
! DE NINGUNO DE LOS ARCHIVOS INCLUIDOS EN LA DISTRIBUCION ORIGINAL, Y
! SIEMPRE QUE NO OBTENGA BENEFICIOS ECONÓMICOS DE DICHA DISTRIBUICIÓN. 
! 
! SE PERMITE LA DISTRIBUICIÓN DE ESTOS ARCHIVOS COMO COMPLEMENTO A UN
! PRODUCTO DE PAGO (POR EJEMPLO, ESTÁ PERMITIDO INCLUIR MOZILLA[ES] EN EL
! CD PROMOCIONAL DE UNA REVISTA) SIEMPRE Y CUANDO LA INCLUSIÓN DE DICHOS
! ARCHIVOS NO SUPONGA UN COSTO ADICIONAL AL USUARIO. 
! 
! SE PERMITE LA MODIFICACIÓN DE LOS RECURSOS INCLUÍDOS EN ESTE SOFTWARE
! SIEMPRE Y CUANDO EL PROGRAMA RESULTANTE SEA SOLO PARA USO PERSONAL, 
! CON LA ÚNICA EXCEPCIÓN DE NETSCAPE COMMUNICATIONS CORPORATION, QUE PUEDE
! HACER USO DE CUALQUIER PARTE DE MOZILLA[ES] PR4 EN LA MANERA LE PAREZCA
! APROPIADA, ACEPTANDO DICHA COMPAÑÍA EN CUALQUIER CASO TODA LA
! RESPONSABILIDAD DE TAL USO. LAS NOTAS ORIGINALES DE DERECHOS DE AUTOR
! NO SERÁN MODIFICADAS EN NINGÚN CASO. 
! 
! NETSCAPE COMMUNICATIONS CORPORATION NO PROPORCIONARÁ NI ESTÁ OBLIGADO A
! PROPORCIONAR NINGÚN TIPO DE SOPORTE, GARANTÍA O DOCUMENTACIÓN
! RELACIONADOS CON LAS VERSIONES TRADUCIDAS AL CASTELLANO POR EL
! PROYECTO N.A.V.E. 
! 
! ESTAS CONDICIONES ESTAN SUJETAS A MODIFICACIONES EN EL FUTURO. 
! 
! NOTAS ADICIONALES 
! =================
! LOS ARCHIVOS QUE FORMAN MOZILLA[ES] VERSIONES 4.XX ESTAN SUJETOS A LA
! LICENCIA DEL PROGRAMA DE LOCALIZACIÓN UNIVERSAL O U.L.P. (UNIVERSAL
! LOCALIZATION PROGRAM LICENSE AGREEMENT). LA U.L.P ESTÁ PUBLICADA EN
! http://www.mozilla.org/docs/l10n/ulpLicense.html 
! 
! (c) Copyright 1998,1999 Proyecto NAVE - Todos los derechos reservados
!
! SI DESEA DISTRIBUIR ESTE ARCHIVO BAJO ESTA LICENCIA, NO ESTA OBLIGADO
! A NOTIFICARNOSLO, PERO ES RECOMENDABLE, YA QUE PODRIAMOS PROPORCIONARLE
! ON UNA VERSION MAS ACTUALIZADA, DADO EL CASO.
!
! -- LICENCIA GENERAL DE USO Y DISTRIBUCION, REV.04 
! 
! ------------------------------------------------------------------------
!
! DONDE COMUNICAR PROBLEMAS, DUDAS O SUGERENCIAS
! ==============================================
! Si tiene alguna sugerencia que hacer que signifique la modificación
! de este archivo, por favor, comuníquenosla en alguno de los siguientes
! sitios:
!
!  * En la lista de correo mozilla-es: mozilla-es@zeus.etsimo.uniovi.es
!
!  * En la lista de correo LuCAS:  lucas@slug.ctv.es
!
!  * Correo privado a mí: rba@murcia.net (preferido) o rba@netscape.com
!
!  Recuerde que las dos listas indicadas (mozilla-es y LuCAS) son
!  listas públicas, es decir, mensajes mandados a estas listas
!  serán leidos por todas las personas suscritas a dichas listas.
!  Adicionalmente, es posible que uno necesite suscribirse antes
!  de poder enviar correo a estas listas.
!        
! -------------------------------------------------------------------------
!
! AUTORES Y COLABORADORES
! =======================
!
! Localización:
!
! Archivo Netscape407.ad-es generado por:
!       Rogelio Bernal Andreo <rba@murcia.net>
!
! Traducción realizada por:
!
!    Legado de versiones anteriores de Windows/Mac  (16.000 palabras):
!       Judith Rincon                               (versión 2.0 - 1995/96)
!       Xosé Castro Roig  <xose_castro@redestb.es>  (versiones 3.0 y 4.0 - 1996/97)
!       Juan P. Gray  <jpgray@arrakis.es>           (versiones 3.0 y 4.0 - 1996/97)
!
!    Traducción incremental de la versión 4.05 (11.000 palabras):
!       Antonio Bello García <antonio@zeus.etsimo.uniovi.es>
!       Antonio Calvo Rodriguez <ancalvo@mx2.redestb.es>
!       Yiyus <jg_yiyus@jet.es>
!       Jose Miguel Gurpegui <jmgurpe@unav.es>
!       Andres Herrera <ista1251@tsai.es>
!       Claudio S. Suarez Sanchez <csuarez@ctv.es>
!       Javier Polo <javipolo@oioio.ddns.org>
!       Rogelio Bernal Andreo <rba@murcia.net>
!
!    Traducción incremental de la versión 4.07 (1.500 palabras):
!       Rogelio Bernal Andreo <rba@murcia.net>
!
!    Adaptación a la versión 4.08, y corrección de algunas cadenas
!    de texto olvidadas:
!	Pablo Saratxaga <srtxg@chanae.alphanet.ch>
!    Adaptación a la versión 4.61
!	Pablo Saratxaga <pablo@mandrakesoft.com>
!    Adaptación a la versión 4.7
!	Pablo Saratxaga <pablo@mandrakesoft.com>
!
!#-
!###################################
!## ¡OJO! quedan todavía muchas cadenas por traducir; si desea hacerlo
!## busque ^!#- (líneas comenzando con '!#-') 
!###################################
!#-
!
! ------------------------------------------------------------------------
!
! CÓMO UTILIZAR ESTE ARCHIVO. CÓMO CONVERTIR COMMUNICATOR 4.79 AL CASTELLANO
! =========================================================================
! En primer lugar, tiene que instalar la versión "standard" original inglesa de 
! Communicator 4.79. Si tiene instalada cualquier otra versión, pero no la 4.79,
! este archivo no funcionará. Los más intrépidos pueden indagar en este archivo
! y conseguir que funcione en otras versiones, pero entonces, no solo no
! obtendrá una versión *íntegramente* en castellano, sino que es muy posible que
! el programa falle. Del mismo modo, si en lugar de la versión "standard", tiene
! instalada la profesional (la que incluye Calendar, entre otras cosas), tampoco
! se puede asegurar que aparezca todo en castellano, aunque posiblemente, el
! programa se ejecute sin mayores complicaciones.
!
! Una vez este seguro de que tiene ya instalada la versión 4.79 de Communicator,
! tan solo tiene que copiar este archivo a su directorio de inicio (home
! directory) con el nombre "Netscape" (sí, la primera letra en mayúscula):
! 
! $ cp Netscape461.ad-es ~/Netscape
!
! O copiarlo como /usr/X11R6/lib/X11/es/app-defaults/Netscape, lo que permite
! que la interface en castellano aparezca a todos aquellos usuarios, y solo
! aquellos usuarios, que hayan posicionado la variable de entorno $LANG a 'es'
!
! 
! Ejecute Communicator como de costumbre, y el programa deberia aparecer en
! castellano.
!
! ¡YA ESTÁ!
!
!
! Si esto no occurriera, tiene tres opciones más a probar:
!
! 1) Si tiene acceso "root" al sistema, puede intentar instalarlo como
!    un app-defaults global para todos los usuarios del sistema. Ésto se
!    hace copiando el archivo al directorio app-deaults del sistema, el
!    cual generalmente es /usr/lib/X11/app-defaults o /usr/openwin/lib/app-defaults
!    en el caso de SunOS... De hecho, este directorio puede ser cualquiera,
!    depende de como se instaló X en el sistema.
!
!    Se recomienda que no instale este archivo en el directorio app-defaults
!    a no ser que esté completamente seguro de lo que está haciendo.
!    Hay un monton de problemas asociados con archivos app-defaults, que se
!    pueden evitar simplemente no usandolos.
!
! 2) Copiar este archivo (siempre renombrándolo a "Netscape") al directorio donde
!    está instalado Communicator (el directorio donde se encuentra el ejecutable
!    'netscape'.
! 
! 3) Como última solucción, añada el contenido de este archivo a su archivo
!    .Xresources en su directorio de inicio:
!
!    $ cat Netscape407.ad-es >> ~/.Xresources
!
!    El nombre de su Xresources puede ser diferente, dependiendo del SO y
!    servidor X usado (.Xdefaults, etc.)
!
! Si ninguno de estos métodos consigue hacer que su copia de Communicator 4.07
! aparezca en castellano, envíeme un mensaje comunicándome el problema a
! rba@murcia.net o rba@netscape.com.
!
! --------------------------------------------------------------------------------

! Language localization:
*versionLocale: es

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


! Keybindings in the main window which correspond to menu items.
! These are installed on every widget which is a child of our Shell,
! and are not installed on popups/transients.
!
*globalTranslations:			#override					\n\
											\
	      Ctrl ~Shift<Key>a:		xfeDoCommand(selectAll)				\n\
	Meta ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)			\n\
	 Alt ~Ctrl<Key>B:		xfeDoCommand(openBookmarks)			\n\
	      Ctrl<Key>C:		xfeDoCommand(copy)					\n\
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
	      Ctrl<Key>V:		xfeDoCommand(paste)					\n\
	Meta ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	 Alt ~Ctrl<Key>W:		xfeDoCommand(close)					\n\
	      Ctrl<Key>X:		xfeDoCommand(cut)					\n\
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
        Meta ~Ctrl<Key>7:               xfeDoCommand(openRadio)			\n\
         Alt ~Ctrl<Key>7:               xfeDoCommand(openRadio) 		\n\
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
	<Btn3Down>:			xfeDoPopup()			\n\
	Ctrl<Btn4Down>:                PageUp()                        	\n\
        Ctrl<Btn5Down>:                PageDown()                      	\n\
        Shift<Btn4Down>:               LineUp()                        	\n\
        Shift<Btn5Down>:               LineDown()                      	\n\
        <Btn4Down>: LineUp()LineUp()LineUp()LineUp()LineUp()LineUp()   	\n\
        <Btn5Down>: LineDown()LineDown()LineDown()LineDown()LineDown()LineDown() \n\
        Alt<Btn4Down>:                         xfeDoCommand(forward)	\n\
	Alt<Btn5Down>:                         xfeDoCommand(back)	\n

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
									\
        Shift<Btn4Down>:                        LineUp()                \n\
        Shift<Btn5Down>:                        LineDown()              \n\
        <Btn4Down>: LineUp()LineUp()LineUp()LineUp()LineUp()LineUp()    \n\
        <Btn5Down>: LineDown()LineDown()LineDown()LineDown()LineDown()LineDown() \n\
        Alt<Btn4Down>:                          xfeDoCommand(forward)   \n\
        Alt<Btn5Down>:                          xfeDoCommand(back)      \n


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
	Meta ~Ctrl<Key>3:		xfeDoCommand(openEditor)		\n\
	 Alt ~Ctrl<Key>3:		xfeDoCommand(openEditor)		\n\
	Meta ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	 Alt ~Ctrl<Key>4:		xfeDoCommand(openCalendar)			\n\
	Meta ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	 Alt ~Ctrl<Key>5:		xfeDoCommand(openConference)		\n\
	Meta ~Ctrl<Key>7:		xfeDoCommand(openRadio)			\n\
	 Alt ~Ctrl<Key>7:		xfeDoCommand(openRadio)			\n\
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
*httpAcceptLanguage: es, en, en-US
!
! The following languages and regions are presented to the user:
!
*languageRegionList:				\n\
	Afrikaans [af]				\n\
	Albano [sq]				\n\
	Alemán [de]				\n\
	Alemán/Austria [de-AU]			\n\
	Alemán/Alemania [de-DE]			\n\
	Alemán/Suiza [de-CH]		\n\
	Bieloruso [be]			\n\
	Búlgaro [bg]				\n\
	Catalán [ca]				\n\
	Checo [cs]				\n\
	Chino [zh]				\n\
	Chino/China [zh-CN]			\n\
	Chino/Taiwán [zh-TW]			\n\
	Coreano [ko]				\n\
	Croata [hr]				\n\
	Danés [da]				\n\
	Escocés Gaélicp [gd]			\n\
	Eslovaco [sk]				\n\
	Eslovenio [sl]				\n\
	Español [es]				\n\
	Español/Argentina [es-AR]		\n\
	Español/Colombia [es-CO]		\n\
	Español/España [es-ES]			\n\
	Español/México [ex-MX]			\n\
	Euskera [eu]				\n\
	Feroés [fo]				\n\
	Finlandés [fi]				\n\
	Francés [fr]				\n\
	Francés/Bélgica [fr-BE]			\n\
	Francés/Canada [fr-CA]			\n\
	Francés/Francia [fr-FR]			\n\
	Francés/Suiza [fr-CH]		\n\
	Gallego [gl]				\n\
	Griego [el]				\n\
	Holandés [nl]				\n\
	Holandés/Bélgica [nl-BE]			\n\
	Húngaro [hu]				\n\
	Indonesio [id]				\n\
	Inglés [en]				\n\
	Inglés/Reino Unido [en-GB]		\n\
	Inglés/Estados Unidos [en-US]		\n\
	Irlandés [ga]				\n\
	Islandés [is]				\n\
	Italiano [it]				\n\
	Japonés [ja]				\n\
	Macedonio [mk]				\n\
	Noruego [no]				\n\
	Polaco [pl]				\n\
	Portugués [pt]				\n\
	Portugués/Brasil [pt-BR]		\n\
	Rumano [ro]				\n\
	Ruso [ru]				\n\
	Serbio [sr]				\n\
	Sueco [sv]				\n\
	Turco [tr]				\n\
	Ucraniano [uk]				\n\
	Vietnamita [vi]				\n\
	Walón [wa]				\n


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
*Help.sensitive:			False

! HTML forms "More..." button (options menus)
*drawingArea*moreButton.labelString:	Más...

! Bookmarks "More..." cascade button
*bookmarkMoreButton.labelString:	Más...

! Mail and news "More..." button
*mailNewsMoreButton.labelString:	Más...

!============
! Some default values
!===========
*OK.labelString:                Aceptar
*Cancel.labelString:		Cancelar

!====================================================================
! Menubar stuff
!====================================================================
!
! The file menus for all the components come first.
! Then the menus are listed on a per component basis.
!

*menuBar.fileMenu.labelString:	Archivo
!*menuBar.fileMenu.mnemonic:	A

*menuBar.editMenu.labelString:	Modificar
!*menuBar.editMenu.mnemonic:		E

*menuBar.viewMenu.labelString:	Ver
!*menuBar.viewMenu.mnemonic:		V

*menuBar.goMenu.labelString:	Ir
!*menuBar.goMenu.mnemonic:			G

*menuBar.messageMenu.labelString:	Mensaje
!*menuBar.messageMenu.mnemonic:		M

*menuBar.bookmarkMenu.labelString:	Marcador
!*menuBar.bookmarkMenu.mnemonic:	B

*menuBar.windowMenuLite.labelString:	Ventana
!*menuBar.windowMenuLite.mnemonic:		W
*menuBar.windowMenu.labelString:	Communicator
!*menuBar.windowMenu.mnemonic:		C
!*menuBar.windowMenu.fontList:	    -*-helvetica-bold-o-*-*-*-120-*--*-*-iso8859-*

*menuBar.itemMenu.labelString:	Elemento
!*menuBar.itemMenu.mnemonic:		I

*menuBar.helpMenu.labelString:	Ayuda
!*menuBar.helpMenu.mnemonic:	y

!=======================
! File Menu - Navigator 
!=======================

*menuBar*newSubmenu.labelString:	Nuevo
*menuBar*newSubmenu.mnemonic:	N

! File/New Submenu
*menuBar*openBrowser.labelString:	Ventana de Navegación
*menuBar*openBrowser.mnemonic:	N
*menuBar*openBrowser.acceleratorText:	Alt+N
*openBrowser.documentationString:	Crear una nueva ventana de navegación para ver las páginas de la red

*composeMessage.mnemonic:	M
*composeMessage.acceleratorText:	Alt+M
*composeMessage.labelString:	Mensaje

! In the three pane view, under the "Message" menu, it should read
! "New Message" and not "Message"
*menubar*composeMessage.labelString:	Mensaje de correo nuevo

*composeMessage.documentationString:	Crear un nuevo mensaje de correo o para un grupo de noticias.
*composeArticle.documentationString:	Crear un nuevo mensaje para un grupo de noticias.

*menuBar*newBlank.labelString:	Página en blanco
*menuBar*newBlank.mnemonic:	P
*menuBar*newBlank.acceleratorText:	Alt+Shift+N
*newBlank.documentationString:	Crear una nueva página web.

*menuBar*newTemplate.labelString:	Página hecha con plantilla
*menuBar*newTemplate.mnemonic:	t
*newTemplate.documentationString:	Usar una plantilla para crear una nueva página web.

*menuBar*newWizard.labelString:	Página hecha con asistente...
*menuBar*newWizard.mnemonic:	W
*newWizard.documentationString:	Usar el asistente para crear una nueva página web.
! end File/New Submenu

*menuBar*openPage.labelString:	Abrir página...
*menuBar*openPage.mnemonic:	A
*menuBar*openPage.acceleratorText:	Alt+O
*openPage.documentationString:	Abrir un archivo local o una página web en la ventana actual

*menuBar*recentSubmenu.labelString:     Abrir recientes...

*menuBar*saveMsg.labelString:       Guardar
*menuBar*saveMsg.mnemonic:              G
*menuBar*saveMsg.acceleratorText:   Alt+S
*menuBar*saveAs.labelString:        Guardar como...
*menuBar*saveMsgAs.labelString:     Guardar como
*menuBar*saveMsgAs.mnemonic:        S

*saveAsCmdString:	Guardar como...
*saveFramesetAsCmdString:	Guardar el marco como...
*menuBar*saveAs.mnemonic:	S
*menuBar*saveAs.acceleratorText:	Alt+S
*saveAs.documentationString:	Guardar una copia de esta página

*menuBar*saveFrameAs.labelString:	Guardar marco como...
*menuBar*saveFrameAs.mnemonic:	F
*saveFrameAs.documentationString:	Guardar una copia del marco seleccionado

*sendPage.labelString:	Enviar página...
*sendPage.mnemonic:	d
*sendPage.documentationString:	Enviar esta página a alguien

*sendLink.labelString:	Enviar enlace
*sendLink.mnemonic:	k
*sendLink.documentationString:	Enviar la dirección de la página actual a alguien

*editPageCmdString:	Modificar página
*editFrameCmdString:	Modificar marco
*editPage.labelString:	Modificar página
*editFrameSet.labelString:	Modificar página contenedora de marcos
*menuBar*editPage.mnemonic:	E
*editPage.documentationString:	Modificar la página actual o la contenedora de marcos
*menuBar*editFrame.labelString:	Modificar marco
*menuBar*editFrame.mnemonic:	F
*editFrame.documentationString:	Modificar el marco actual

*menuBar*uploadFile.labelString:	Enviar archivo...
*menuBar*uploadFile.mnemonic:	U
*uploadFile.documentationString:	Enviar un archivo a este directorio de FTP

*menuBar*printSetup.labelString:	Preparar página...
*menuBar*printSetup.mnemonic:	g
*printSetup.documentationString:	Cambiar las opciones de impresión

*menuBar*printPreview.labelString:	Presentación preliminar
*menuBar*printPreview.mnemonic:	v
*printPreview.documentationString:	Presentación preliminar de la página completa

*menuBar*print.labelString:	Imprimir...
*printCmdString:	Imprimir...
*printFrameCmdString:	Imprimir marco
*menuBar*print.mnemonic:	I
*menuBar*print.acceleratorText:	Alt+P
*print.documentationString:	Imprimir esta página

*menuBar*close.labelString:	Cerrar
*menuBar*close.mnemonic:	C
*menuBar*close.acceleratorText:	Alt+W
*close.documentationString:	Cerrar esta ventana

*menuBar*exit.labelString:	Salir
*menuBar*exit.mnemonic:		S
*menuBar*exit.acceleratorText:	Alt+Q
*exit.documentationString:	Cerrar todas las ventanas de la aplicación y salir

!===========================
! File Menu - Page Composer
!===========================

*menuBar*save.labelString:	Guardar
*menuBar*save.mnemonic:	S
*menuBar*save.acceleratorText:	Alt+S
*save.documentationString:	Guardar la página actual

*Editor*menuBar*saveAs.acceleratorText:	

*menuBar*publish.labelString:	Publicar...
*menuBar*publish.mnemonic:	u
*publish.documentationString:	Enviar archivo o directorio actual a un servidor para mostrarlo públicamente

*menuBar*browsePage.labelString:	Examinar página
*menuBar*browsePage.mnemonic:	B
*browsePage.documentationString:	Presentación preliminar de la página en una ventana nueva de navegación

!=============================
! File Menu - Compose Message
!=============================

*Composition*save.documentationString:  Guardar el mensaje actual

*Composition*toolBar*save*saveAs.labelString: Como Archivo...
*Composition*toolBar*save*saveAs.mnemonic: A
*Composition*saveAs.documentationString: Guardar una copia del mensaje actual

*Composition*menuBar*saveAs.labelString:    Archivo...
*Composition*menuBar*saveAs.mnemonic:       A
*Composition*menuBar*saveAs.acceleratorText:
*Composition*saveAs.documentationString: Guardar una copia del mensaje actual

*Composition*toolBar*save*saveDraft.labelString: Como borrador
*Composition*toolBar*save*saveDraft.mnemonic: B
*Composition*toolBar*save*saveDraft.documentationString: Guardar este mensaje en la carpeta de borradores para enviarlo más tarde.

*menuBar*saveDraft.labelString:	Borrador
*menuBar*saveDraft.mnemonic:	B
*saveDraft.documentationString:	 Guardar este mensaje en la carpeta de borradores para enviarlo más tarde.

*Composition*toolBar*save*saveTemplate.labelString: Como Patrón
*Composition*toolBar*save*saveTemplate.mnemonic: P
*Composition*toolBar*save*saveTemplate.documentationString: Guardar este mensaje en la carpeta de patrones  para usarlo de vuelta.

*menuBar*saveTemplate.labelString:          Patrón
*menuBar*saveTemplate.mnemonic:             P
*saveTemplate.labelString:          Patrón
*saveTemplate.mnemonic:             P
*saveTemplate.documentationString:  Guardar este mensaje en la carpeta de patrones  para usarlo de vuelta.

*menuBar*saveAsMenu.labelString:                        Guardar como
*menuBar*saveAsMenu.mnemonic:                           c
*menuBar*saveAsMenu.saveMessagesAs.documentationString: Guardar como...

*menuBar*saveMessage.labelString:               Guardar
*menuBar*saveMessage.acceleratorText:           Alt+S
*menuBar*saveMessage.documenationString:        Guardar este mensaje

*menuBar*sendMessageNow.labelString:	Enviar ahora
*menuBar*sendMessageNow.mnemonic:	d
*sendMessageNow.documentationString:	Enviar el mensaje ahora
*menuBar*sendMessageNow.acceleratorText:        Alt+Enter

*menuBar*sendMessageLater.labelString:	Enviar más tarde
*menuBar*sendMessageLater.mnemonic:	L
*sendMessageLater.documentationString:	Mover el mensaje a la carpeta de salida
*menuBar*sendMessageLater.acceleratorText:      Alt+Shift+Enter

*menuBar*quoteOriginalText.labelString:	Citar el texto original
*menuBar*quoteOriginalText.mnemonic:	Q
*menuBar*quoteOriginalText.acceleratorText:     Alt+Shift+Q
*quoteOriginalText.documentationString:	\
Pegar texto de la página original en forma de cita

*menuBar*addresseePicker.labelString:	Seleccionar direcciones...
*menuBar*addresseePicker.mnemonic:	t
*addresseePicker.documentationString:	Seleccionar las direcciones de los destinatarios
*addresseePicker.tipString:	Seleccionar direcciones

*autoComplOnCmdString:                 No completar direcciones
*autoComplOffCmdString:                Completar direcciones

menuBar*showComplPicker.labelString:            Ver direcciones que corresponden
*menuBar*showComplPicker.mnemonic:              S
*menuBar*showComplPicker.acceleratorText:       Alt+J
*menuBar*autoComplOnOff.acceleratorText:        Alt+D
!*showComplPicker.documentationString:          Ver direcciones que corresponden...
!*showComplPicker.tipString:                    Ver direcciones que corresponden...


*menuBar*attach.labelString:	Adjuntar
*menuBar*attach.mnemonic:	A
*attach.documentationString:	Adjuntar una página, archivo o tarjeta de libro de direcciones a este mensaje

*menuBar*showChrome.labelString:            Ver
*menuBar*showChrome.mnemonic:               V

*menuBar*floatingTaskBarClose.labelString:	Barra de componentes flotante


!============================
! File Menu - Message Center
!============================

*folderPrivileges.labelString:	Privilegios
*newFolder.labelString:	Carpeta nueva...
*newFolderCmdString:	Carpeta nueva...
*newSubFolderCmdString:	Nueva subcarpeta...
*newCategoryCmdString:	Nueva categoría...
*newNewsgroupCmdString:	Nuevo grupo de noticias...
*newFolder.mnemonic:	w
*newFolder.documentationString:	\
Crear una nueva carpeta de correo o un nuevo grupo de noticias


*MailFolder*menuBar*openSelected.labelString: 	Abrir
*MailFolder*menuBar*openSelected.mnemonic: 	A
*MailFolder*menuBar*openSelected.acceleratorText: Alt+O
*MailFolder*menuBar*openSelected.documentationString: \
Abrir la carpeta de correo o de noticias elegida
*openFolder.labelString: 			Abrir
*openFolder.acceleratorText: 			Alt+O
!*openFolder.mnemonic:					A
*openFolder.documentationString: \
Abrir la carpeta de correo o de noticias elegida

*renameFolder.labelString:	Cambiar el nombre de la carpeta...
*renameFolder.mnemonic:	R
*renameFolder.documentationString:	Cambiar el nombre de la carpeta seleccionada

*menuBar*newMsgSubmenu.labelString:	Obtener mensajes
*menuBar*newMsgSubmenu.mnemonic:	G
*newMessage.documentationString:	Obtener el correo y los mensajes de los grupos de noticias

! File/Get Messages Submenu
*menuBar*getNewMessages.labelString:	Recoger nuevos mensajes
*menuBar*getNewMessages.mnemonic:	M
		
! This label is generated dynamically from the preferences
!*menuBar*getNextNNewMsgs.labelString:       Next 500
*menuBar*getNextNNewMsgs.mnemonic:	x

*menuBar*synchWithServer.labelString:	Sincronizar con el servidor
*menuBar*synchWithServer.mnemonic:	S
! end File/Get Messages Submenu

*menuBar*sendMessagesInOutbox.labelString:	Enviar mensajes de la carpeta de salida
!*menuBar*sendMessagesInOutbox.mnemonic:	t
*sendMessagesInOutbox.documentationString:	\
Enviar ahora los mensajes del buzón de salida

*menuBar*updateMessageCount.labelString:	Actualizar cómputo de mensajes
*menuBar*updateMessageCount.mnemonic:	U
*updateMessageCount.documentationString:	\
Actualizar el número de mensajes no leídos

*addNewsgroup.labelString:	Suscribirse...
*menuBar*addNewsgroup.mnemonic:	b
*addNewsgroup.documentationString:	Suscribirse a grupos de noticias
 
!=============================
! File Menu - Message Threads
!=============================

*menuBar*openAttachmentsSubmenu.labelString:	Abrir adjunto
*menuBar*openAttachments.mnemonic:	A
*openAttachments.documentationString:	\
Abrir el archivo adjunto seleccionado

! File/Open Attachments Submenu is dynamically generated

*editMessage.labelString:	Modificar mensaje
*editMessage.mnemonic:	E
*editMessage.documentationString: \
Modificar el mensaje seleccionado

*menuBar*saveTemplate.labelString:      Patrón
*menuBar*saveTemplate.mnemonic:         P
*menuBar*saveAsTemplate.labelString:    Patrón
*menuBar*saveAsTemplate.mnemonic:       P

*menuBar*saveMessagesAs.labelString:    Archivo
*menuBar*saveMessagesAs.mnemonic:       A
*menuBar*saveMessagesAs.acceleratorText:        Alt+S

*MailThread*menuBar*saveMessageAs.labelString:  Archivo
*MailThread*menuBar*saveMessageAs.mnemonic:  A
*MailThread*menuBar*saveMessageAs.acceleratorText:      Alt+S

*menuBar*emptyTrash.mnemonic:   y

!==========================
! File Menu - Address Book
!==========================

*addToAddressBook.labelString:	Tarjeta nueva...
*addToAddressBook.mnemonic:	r
!*addToAddressBook.acceleratorText:     Alt+N
*addToAddressBook.documentationString: \
Crear una nueva tarjeta del libro de direcciones

*abNewList.labelString:	Lista nueva...
*abNewList.mnemonic:	L
*abNewList.documentationString:	\
Crear una nueva lista de libro de direcciones

*abNewPAB.labelString:                  Nuevo libro de direcciones...
*abNewPAB.mnemonic:                     A
*abNewPAB.documentationString:  \
Crear una nuevo libro de direcciones

*abNewLDAPDirectory.labelString: Nuevo directorio...
*abNewLDAPDirectory.mnemonic:                   D
*abNewLDAPDirectory.documentationString:        \
Crear un servicio de directorio LDAPD

*menuBar*import.labelString:	Importar...
*menuBar*import.mnemonic:	I
*AddressBook*import.documentationString: \
Importar un archivo al libro de direcciones

!
! customized for PAB
!
*AddressBook*menuBar*saveAs.labelString:        Exportar...
*AddressBook*menuBar*saveAs.mnemonic:        E
*AddressBook*menuBar*toggleNavigationToolbar.labelString: Barra del libro de direcciones
*AddressBook*menuBar*toggleNavigationToolbar.mnemonic: A
*AddressBook*menuBar*abToggleABPane.labelString: Libro de direcciones
*AddressBook*menuBar*abToggleABPane.mnemonic: B

*menuBar*abCall.labelString:	Llamar
*menuBar*abCall.mnemonic:	L
*abCall.documentationString:	\
Hacer una llamada con la aplicación de conferencias de Mozilla

!
! i18n labels: used in AB search dialog, Message filter dialog, 
! and Search Message dialog
!
!*I18nColon.labelString: will be something like   :
!*I18nFirst.labelString: will be something like   the
!*I18nRest.labelString: will be something like  or/and
!
*I18nColon.labelString: :
*I18nFirst.labelString: el
*I18nRest.labelString:  y/o

!=======================
! File Menu - Bookmarks
!=======================

*newBookmark.labelString:	Marcador nuevo...
*bookmarks*menuBar*newBookmark.mnemonic:	w
*newBookmark.documentationString: \
Crear una nueva entrada de marcador

*newFolder.labelString:	Carpeta nueva...
*bookmarks*menuBar*newFolder.mnemonic:	F
*bookmarks*newFolder.documentationString: \
Insertar una nueva carpeta de marcador

*newSeparator.labelString:	Separador nuevo
*bookmarks*menuBar*newSeparator.mnemonic:	S
*bookmarks*newSeparator.documentationString: \
Insertar un separador

*bookmarks*menuBar*openBookmarkFile.labelString:	Abrir archivo de marcadores
*bookmarks*menuBar*openBookmarkFile.mnemonic:	F
*bookmarks*openBookmarkFile.documentationString: \
Abrir un documento local

*bookmarks*menuBar*openSelected.labelString:	Ir a marcador
*bookmarks*menuBar*openSelected.mnemonic:	k
*bookmarks*openSelected.documentationString: \
Abrir este enlace en una nueva ventana de navegación

*bookmarks*menuBar*import.labelString:	Importar...
*bookmarks*menuBar*import.mnemonic:	I
*bookmarks*import.documentationString: \
Importar una archivo al libro de direcciones

*bookmarks*menuBar*addToToolbar.labelString:	Añadir selección a la barra
*bookmarks*menuBar*addToToolbar.mnemonic:	A
*bookmarks*addToToolbar.documentationString: \
Añadir un marcador a la barra personal de herramientas

*bookmarks*menuBar*createShortcut.labelString:	Crear acceso directo
*bookmarks*menuBar*createShortcut.mnemonic:	t
*bookmarks*createShortcut.documentationString: \
Crear un acceso directo a Internet hacia el marcador seleccionado

*makeAlias.labelString:	Crear alias
*makeAlias.mnemonic:	M
*makeAlias.documentationString: \
Crear un alias hacia el marcador selccionado

!=====================
! File Menu - History
!=====================

*history*menuBar*openSelected.labelString:	Ir a la página
*history*menuBar*openSelected.mnemonic:	e
*history*openSelected.documentationString: \
Abrir la página seleccionada en una ventana de navegación

*history*menuBar*addToToolbar.labelString:	Añadir página a barra de herramientas
*history*menuBar*addToToolbar.mnemonic:	A
*history*addToToolbar.documentationString: \
Añadir la página seleccionada a la barra personal de herramientas

*history*menuBar*print.labelString:	Imprimir historia...

!=======================
! Edit Menu - Navigator
!=======================
 
*undo.labelString:	Deshacer
*undo.mnemonic:	U
*undo.acceleratorText:	Ctrl+Z
*undo.documentationString:	Deshacer la acción previa
 
*redo.labelString:	Rehacer
*redo.mnemonic:	R
*redo.acceleratorText:	Ctrl+Y
*redo.documentationString:	Rehacer la acción siguiente
 
*cut.labelString:	Cortar
*cut.mnemonic:	t
*cut.acceleratorText:	Ctrl+X
*cut.documentationString: \
Cortar la selección y ponerla en el portapapeles
 
*copy.labelString:	Copiar
*copy.mnemonic:	C
*copy.acceleratorText:	Ctrl+C
*copy.documentationString: \
Copiar la selección y ponerla en el portapapeles
 
*paste.labelString:	Pegar
*paste.mnemonic:	P
*paste.acceleratorText:	Ctrl+V
*paste.documentationString:	Insertar contenido del portapapeles

*delete.labelString:	Borrar
*delete.mnemonic:	B
*delete.acceleratorText:	Ctrl+D
*delete.documentationString:	Borrar el texto seleccionado
! EditorFrame uses this one
*deleteItem.labelString:	Borrar
*deleteItem.mnemonic:	B
*deleteItem.acceleratorText:	Ctrl+D
*deleteItem.documentationString:	Borrar el texto seleccionado

*selectAll.labelString:	Seleccionar todos
*selectAllCmdString:	Seleccionar todos
*selectAllInFrameCmdString:	Seleccionar todo el marco
*selectAll.mnemonic:	t
*selectAll.acceleratorText:	Ctrl+A
*selectAll.documentationString:	Seleccionar todo el documento
! Thread Window Edit/Select pullaside menu
*MailThread*selectAll.labelString:	Todo
*MailThread*selectAllCmdString:	Todo
*MailThread*selectAllInFrameCmdString:	Todo el marco

*menuBar*findInObject.labelString:	Buscar en la página...
*Composition*menuBar*findInObject.labelString:	Buscar en el mensaje...
*MailMsg*menuBar*findInObject.labelString:	Buscar en el mensaje...
*MailThread*menuBar*findInObject.labelString:	Buscar en el mensaje...
*findInObjectCmdString:	Buscar en la página...
*findInFrameCmdString:	Buscar en el marco...

*menuBar*findInObject.mnemonic:	F
*menuBar*findInObject.acceleratorText:	Ctrl+F
*findInObject.documentationString: \
Buscar texto en esta página

*menuBar*findAgain.labelString:	Buscar otra vez
*menuBar*findAgain.mnemonic:	g
*menuBar*findAgain.acceleratorText:	Ctrl+G
*findAgain.documentationString:	Repetir la última operación de búsqueda

*Navigator*menuBar*search.labelString:	Buscar en Internet
*Navigator*menuBar*search.mnemonic:	I
*Navigator*search.documentationString: \
Buscar información en Internet

*menuBar*searchAddress.labelString:	Buscar en Directorio
*menuBar*searchAddress.mnemonic:	y
*searchAddress.documentationString: \
Buscar una entrada de Directorio

*menuBar*editPreferences.labelString:	Preferencias...
*menuBar*editPreferences.mnemonic:	P
*editPreferences.documentationString: \
Cambiar la preferencias del usuario para la aplicación

!===========================
! Edit Menu - Page Composer
!===========================
 
*deleteTableMenu.labelString:	Borrar tabla
*deleteTableMenu.mnemonic:	B

! Edit/Delete Table Submenu

*deleteTable.labelString:	Tabla
*deleteTable.mnemonic:	T
*deleteTable.documentationString: \
Borrar la tabla en el punto de inserción actual

! new
*deleteTableRow.labelString:	Fila
*deleteTableRow.mnemonic:	F
*deleteTableRow.documentationString: \
Borrar una fila de la tabla

*deleteTableColumn.labelString:	Columna
*deleteTableColumn.mnemonic:	n
*deleteTableColumn.documentationString:	\
Borrar una columna de la tabla

*deleteTableCell.labelString:	Celda
*deleteTableCell.mnemonic:	C
*deleteTableCell.documentationString: \
Borrar una celda (fila y columna) de la tabla

! end Edit/Delete Table Submenu

*removeLink.labelString:	Borrar enlace
*removeLinks.labelString:	Borrar enlaces
*menuBar*removeLinks.mnemonic:	R
*removeLinks.documentationString: \
Borrar enlace enlace en el punto de inserción o todos los enlaces de la zona seleccionada 

*selectTable.labelString:	Seleccionar tabla
*selectTable.mnemonic:	l
*selectTable.documentationString: \
Seleccionar toda la tabla

*menuBar*editPageSource.labelString:	Fuente HTML
*editPageSource.documentationString: \
Modificar el archivo fuente HTML de la página

!=============================
! Edit Menu - Compose Message
!=============================

*menuBar*pasteAsQuoted.labelString:	Pegar como cita
*menuBar*pasteAsQuoted.mnemonic:	Q
*pasteAsQuoted.documentationString: \
Pegar el contenido del portapaleles como cita

!============================
! Edit Menu - Message Center
!============================

*menuBar*search.labelString:	Buscar mensajes
*menuBar*search.mnemonic:	M
*menuBar*search.acceleratorText:        Alt+Shift+F
*search.documentationString:	Buscar en los mensajes de correo y noticias

*menuBar*editConfiguration.labelString:	Administrar cuenta de correo
*menuBar*editConfiguration.mnemonic:	n

*menuBar*moderateDiscussion.labelString:	Organizar grupos de noticias
*menuBar*moderateDiscussion.mnemonic:	O

*menuBar*editMailFilterRules.labelString:	Filtros de correo...
*menuBar*editMailFilterRules.mnemonic:    i
*editMailFilterRules.documentationString: \
Definir las reglas de filtrado de correo en las carpetas

*popup*deleteNewsgroup.labelString:       Borrar servidor de noticias
*popup*addNewsgroup.labelString:          Suscribir a un grupo de noticias...
*newsServerPropsCmdString:	Propiedades del servidor de grupos de noticias
*newsgroupPropsCmdString:	Propiedades del grupo de noticias
*folderPropsCmdString:	        Propiedades
*mailServerPropsCmdString:	Propiedades del servidor de correo
*menuBar*viewProperties.labelString:	Propiedades...
*menuBar*viewProperties.mnemonic:	P
*viewProperties.documentationString: \
Ver las propiedades de la carpeta de correo o de los grupos de noticias

! text generated dynamically
*menuBar*deleteFolder.mnemonic: D
*menuBar*deleteFolder.acceleratorText: Ctrl+D

!=============================
! Edit Menu - Message Threads
!=============================

*deleteAny.labelString:		Borrar mensaje
*deleteAny.mnemonic:		B
*deleteAny.acceleratorText:	Ctrl+D

*selectSubmenu.labelString:	Seleccionar
*selectSubmenu.mnemonic:                l

! Edit/Select Submenu

*selectThread.labelString:	Tema
*selectThread.mnemonic:	T
*selectThread.acceleratorText:	Alt+Shift+A

*selectCategory.labelString:	Categoría
*selectCategory.mnemonic:	C

*selectFlaggedMessages.labelString:	Mensajes marcados
*selectFlaggedMessages.mnemonic:	M

*selectAllMessages.labelString:	Todos los mensajes
*selectAllMessages.mnemonic:	T

! end Edit/Select Submenu

!==========================
! Edit Menu - Address Book
!==========================

*menuBar*abDelete.labelString:	Borrar
*menuBar*abDelete.mnemonic:        B
*menuBar*abDelete.acceleratorText: Del
*abDelete.documentationString: \
Borrar las entradas seleccionadas del libro de direcciones

*menuBar*abDeleteAllEntries.labelString:        Borrar todas las Occurrencias
*menuBar*abDeleteAllEntries.mnemonic: O

*menuBar*abSearchFor.labelString:     Buscar...
*menuBar*abSearchFor.mnemonic:        f

*menuBar*displayHTMLDomainsDialog.labelString:	Dominios HTML...
*menuBar*displayHTMLDomainsDialog.mnemonic:	H
*displayHTMLDomainsDialog.documentationString: \
Modificar la lista de dominios que pueden recibir mensajes HTML.

*AddressBook*menuBar*viewProperties.labelString:	Propiedades
*menuBar*viewProperties.mnemonic:	e

*viewProperties.documentationString: \
Ver las propiedades de la carpeta de correo o de los grupos de noticias

*AddressBook**menuBar*selectAll.acceleratorText:

!=======================
! Edit Menu - Bookmarks
!=======================

*bookmarks*menuBar*findInObject.labelString:	Buscar en los marcadores...
*bookmarks*findInObject.documentationString: \
Buscar un marcador en la lista

*bookmarkProperties.labelString:	Propiedades del marcador
*menuBar*bookmarkProperties.mnemonic:	P
*bookmarkProperties.documentationString: \
Ver las propiedades del marcador seleccionado
!=======================
! Edit Menu - History
!=======================

*history*menuBar*search.labelString:	Buscar en la lista de historial
*history*menuBar*search.mnemonic:	h
*history*search.documentationString: \
Buscar una o más entradas en la lista de historial

!=======================
! View Menu - Navigator
!=======================

*menuBar*toggleNavigationToolbar.labelString:	Barra de navegación
*menuBar*toggleNavigationToolbar.mnemonic:	n
*menuBar*toggleNavigationToolbar.mnemonic:	n
*menuBar*toggleNavigationToolbar.documentationString:	Mostrar u ocultar la barra Navegación

*menuBar*toggleLocationToolbar.labelString:	Barra de direcciones
*menuBar*toggleLocationToolbar.mnemonic:	d
*menuBar*toggleLocationToolbar.documentationString:	Mostrar u ocultar la barra de direcciones

*menuBar*togglePersonalToolbar.labelString:	Barra personalizada
*menuBar*togglePersonalToolbar.mnemonic:	p
*menuBar*togglePersonalToolbar.documentationString:	Mostrar u ocultar la barra personalizada

*menuBar*increaseFont.labelString:	Aumentar tamaño de letra
*menuBar*increaseFont.mnemonic:	A
*menuBar*increaseFont.acceleratorText:	Alt++
*increaseFont.documentationString:	\
Aumentar el tamaño de la letra para ver esta página

*menuBar*decreaseFont.labelString:	Reducir tamaño de letra
*menuBar*decreaseFont.mnemonic:	e
*menuBar*decreaseFont.acceleratorText:	Alt+-
*decreaseFont.documentationString:	\
Reducir el tamaño de la letra para ver esta página

*reload.labelString:	Recargar
*reload.mnemonic:	R
*reload.acceleratorText:	Alt+R
! In mail and news reply to sender uses this accelerator
*MailThread*menuBar*reload.acceleratorText:	
*MailMsg*menuBar*reload.acceleratorText:	
*News*menuBar*reload.acceleratorText:	
*reload.documentationString:	Recargar la página actual

*showImages.labelString:	Mostrar imágenes
*showImages.mnemonic:	g
*showImages.acceleratorText:	Alt+I
*showImages.documentationString:	Mostrar las imágenes de la página actual

*refresh.labelString:	Renovar
*refresh.mnemonic:	f
*refresh.documentationString:	Renovar la pantalla

*stopAnimationsCmdString:	Parar animaciones
*stopLoadingCmdString:		Parar la carga
*stopLoading.labelString:	Parar la carga
*stopLoading.mnemonic:	S
*stopLoading.acceleratorText:		ESC
*stopLoading.documentationString:	Parar la carga actual
!xxx need separate doc string for stop animations

*viewPageSource.labelString:	Código fuente de la página
*viewPageSource.mnemonic:	u
*viewPageSource.acceleratorText:    Alt+U
*viewPageSource.documentationString:	Ver el código HTML de la página actual

*viewPageInfo.labelString:	Información de la página
*viewPageInfo.mnemonic:	I
*viewPageInfo.documentationString:	Ver información acerca de esta página

*pageServices.labelString:	Servicios de página
*pageServices.mnemonic:	v
!*pageServices.documentationString:

*menuBar*encodingSubmenu.labelString:	Codificación
*menuBar*encodingSubmenu.mnemonic:	E
*encodingSubmenu.documentationString:	\
Cambiar la codificación de la página actual

! View/Encoding Submenu

*latin1EncCmdString:	Occidental (ISO-8859-1)
*latin2EncCmdString:	Centroeuropeo (ISO-8859-2)
*Win1250EncCmdString:	Centroeuropeo (Windows-1250)
*jaAutoEncCmdString:	Japonés (Auto-Detección)
*jaSJISEncCmdString:	Japonés (Shift_JIS)
*jaEUCEncCmdString:	Japonés (EUC-JP)
*twBig5EncCmdString:	Chino tradicional (Big5)
*twEUCEncCmdString:	Chino tradicional (EUC-TW)
*gbEUCEncCmdString:	Chino simplificado (GB2312)
*krEUCEncCmdString:	Coreano (Auto-Detección)
*2022krEncCmdString:	Coreano (ISO-2022-KR)
*koi8rEncCmdString:	Cirílico (KOI8-R)
*88595EncCmdString:	Cirílico (ISO-8859-5)
*Win1251EncCmdString:	Cirílico (Windows-1251)
*cp866EncCmdString:	Cirílico (CP-866)
*greekEncCmdString:	Griego (ISO-8859-7)
*Win1253EncCmdString:	Griego (Windows-1253)
*88599EncCmdString:	Turco (ISO-8859-9)
*unicode_utf8EncCmdString:	Unicode (UTF-8)
*unicode_utf7EncCmdString:	Unicode (UTF-7)
*otherEncCmdString:	Definido por el usuario
*setDefaultDocCSID:	Asignar codificación por omisión
*setDefaultDocumentEncoding.documentationString: \
Definir la codificación predeterminada del documento

! end View/Encoding Submenu

!==============================
! View Menu - Page Composer
!==============================

*toggleMenubar.labelString:		Barra de menú
*toggleMenubar.documentationString: \
Mostrar u ocultar la barra de menú

*Editor*toggleNavigationToolbar.labelString: Barra de redacción
*Editor*toggleNavigationToolbar.documentationString: \
Mostrar u ocultar la barra de redacción

*toggleFormatToolbar.labelString:	Barra de formato
*toggleFormatToolbar.documentationString: \
Mostrar u ocultar la barra de formato

*menuBar*toggleParagraphMarks.labelString:	Marcas de párrafo
*menuBar*toggleParagraphMarks.mnemonic:	p
*toggleParagraphMarks.documentationString: \
Mostrar u ocultar las marcas de párrafo

!=============================
! View Menu - Compose Message
!=============================

*Composition*menuBar*toggleNavigationToolbar.labelString: Barra de mensaje
*Composition*toggleAddressArea.documentationString:	\
Mostrar u ocultar la zona de dirección

*Composition*toggleAddressArea.tipString:	Zona de dirección
*Composition*toggleAddressArea.mnemonic:	A
*Composition*toggleAddressArea.labelString:	Zona de dirección

*Composition*toggleNavigationToolbar.labelString: Barra de mensaje
*Composition*toggleNavigationToolbar.documentationString:	\
Mostrar u ocultar barra de mensaje
*Composition*toggleNavigationToolbar.mnemonic:  T

!xxx add Show/Hide Addressing Area

*Composition*menuBar*viewAddresses.labelString:	Panel de direcciones
*Composition*menuBar*viewAddresses.mnemonic:	A
*Composition*viewAddresses.documentationString:	\
Ver las direcciones de los destinatarios

*Composition*menuBar*viewAttachments.labelString:	Panel de archivos adjuntos
*Composition*menuBar*viewAttachments.mnemonic:	t
*viewAttachments.documentationString:	\
Ver los archivos adjuntos

!
! shared with History Window
*menuBar*sortAscending.labelString:	Ascendente
*menuBar*sortAscending.mnemonic:	A

! shared with History Window
*menuBar*sortDescending.labelString:	Descendente
*menuBar*sortDescending.mnemonic:	D

*Composition*menuBar*viewOptions.labelString:	Panel de opciones
*Composition*menuBar*viewOptions.mnemonic:	O
*Composition*viewOptions.documentationString:	Ver opciones del mensaje

!xxx no longer in spec (viewMessageBodyOnly)
*Composition*menuBar*viewMessageBodyOnly.labelString:	Sólo cuerpo del mensaje
*Composition*menuBar*viewMessageBodyOnly.mnemonic:	B
*Composition*viewMessageBodyOnly.documentationString:	\
Ver el cuerpo del mensaje y ocultar las direccioens

*Composition*menuBar*wrapLongLines.labelString:	Ajustar líneas largas
*Composition*menuBar*wrapLongLines.mnemonic:	l
*Composition*wrapLongLines.documentationString:	\
Ajustar líneas largas cuando se envía el mensaje

!============================
! View Menu - Message Center
!============================

*MailFolder*menuBar*toggleNavigationToolbar.labelString: Barra del centro de mensajes
*MailFolder*menuBar*toggleNavigationToolbar.mnemonic:   M
*MailFolder*menuBar*toggleNavigationToolbar.documentationString: \
Mostrar u ocultar la barra del centro de mensajes

*menuBar*showSubmenu.labelString:   Ver
*menuBar*showSubmenu.mnemonic:   V

*MailFolder*toggleNavigationToolbar.documentationString:
Mostrar u ocultar la barra del centro de mensajes
*MailFolder*toggleNavigationToolbar.mnemonic:   M

*menuBar*moveSubmenu.labelString:	Mover carpeta

!=============================
! View Menu - Message Threads
!=============================

*MailThread*menuBar*toggleNavigationToolbar.labelString: Barra de mensaje
*MailThread*menuBar*toggleNavigationToolbar.documentationString: \
Mostrar u ocultar barra de mensaje
*MailThread*toggleNavigationToolbar.mnemonic:   M

*menuBar*toggleMessageExpansion.labelString: Mensaje
*menuBar*toggleMessageExpansion.mnemonic: j
*menuBar*toggleMessageExpansion.documentationString: \
Mostrar u ocultar el mensaje

*menuBar*toggleFolderExpansion.labelString: Carpetas
*menuBar*toggleFolderExpansion.mnemonic: F
*menuBar*toggleFolderExpansion.documentationString: \
Mostrar u ocultar la lista de carpetas

*menuBar*sortSubmenu.labelString:	Ordenar
*menuBar*sortSubmenu.mnemonic:	O

! View/Sort Submenu
*menuBar*sortBySubject.labelString:	Por asunto
*menuBar*sortBySubject.mnemonic:	a
*menuBar*sortBySender.labelString:	Por remitente
*menuBar*sortBySender.mnemonic:	r
*menuBar*sortByDate.labelString:	Por fecha
*menuBar*sortByDate.mnemonic:	f
*menuBar*sortByFlag.labelString:	Por señal
*menuBar*sortByFlag.mnemonic:	s
*menuBar*sortByPriority.labelString:	Por prioridad
*menuBar*sortByPriority.mnemonic:	p
*menuBar*sortByThread.labelString:	Por tema
*menuBar*sortByThread.mnemonic:	m
*menuBar*sortBySize.labelString:	Por tamaño
*menuBar*sortBySize.mnemonic:	t
*menuBar*sortByStatus.labelString:	Por estado
*menuBar*sortByStatus.mnemonic:	e
*menuBar*sortByUnread.labelString:	Por no leído
*menuBar*sortByUnread.mnemonic:	n
*menuBar*sortByMessageNumber.labelString:	En el orden recibido
*menuBar*sortByMessageNumber.mnemonic:	o
*menuBar*sortForward.labelString:	Ascendente
*menuBar*sortForward.mnemonic:	s
*menuBar*sortBackward.labelString:	Descendente
*menuBar*sortBackward.mnemonic:	D
! end View/Sort Submenu

*menuBar*expandCollapseSubmenu.labelString:	Expandir/Contraer
*menuBar*expandCollapseSubmenu.mnemonic:	x

! View/Expand/Collapse Submenu
*menuBar*expand.labelString:	Expandir
*menuBar*expand.mnemonic:	x
*menuBar*expand.acceleratorText:	+
*menuBar*expandAll.labelString:	Expandir todo
*menuBar*expandAll.mnemonic:	t
*menuBar*expandAll.acceleratorText:	*
*menuBar*collapse.labelString:	Contraer
*menuBar*collapse.mnemonic:	C
*menuBar*collapse.acceleratorText:	-
*menuBar*collapseAll.labelString:	Contraer todos
*menuBar*collapseAll.mnemonic:	o
*menuBar*collapseAll.acceleratorText:	/
! end View/Expand/Collapse Submenu

*menuBar*threadSubmenu.labelString:	Mensajes
*menuBar*threadSubmenu.mnemonic:	M

! View/Messages Submenu
*menuBar*viewNew.labelString:	No leídos
*menuBar*viewNew.mnemonic:	N
*viewNew.documentationString: \
Ver solo los mensajes no leídos

*menuBar*viewThreadsWithNew.labelString:	Cadenas con mensajes no leídos
*menuBar*viewThreadsWithNew.mnemonic:	o
*viewThreadsWithNew.documentationString: \
Mostrar temas que contienen mensajes nuevos

*menuBar*viewWatchedThreadsWithNew.labelString:	Cadenas leídas con mensajes no leídos
*menuBar*viewWatchedThreadsWithNew.mnemonic:	l
*viewWatchedThreadsWithNew.documentationString:	\
Mostrar temas observadas que contienen mensajes nuevos

*menuBar*viewAllThreads.labelString:	Todo
*menuBar*viewAllThreads.mnemonic:	T
*viewAllThreads.documentationString:	Mostrar todos los mensajes
! end View/Messages Submenu

*menuBar*headersSubmenu.labelString:	Encabezados
*menuBar*headersSubmenu.mnemonic:	E

! View/Headers Submenu
*menuBar*showAllHeaders.labelString:	Todo
*menuBar*showAllHeaders.mnemonic:	T
*showAllHeaders.documentationString:	Mostrar todos los encabezados

*menuBar*showNormalHeaders.labelString:	Normal
*menuBar*showNormalHeaders.mnemonic:	N
*showNormalHeaders.documentationString:	Mostrar encabezados normales
*showBriefHeaders.labelString:	Breve
*menuBar*showBriefHeaders.mnemonic:	B
*menuBar*showBriefHeaders.documentationString:	Mostrar encabezados breves
! end View/Headers Submenu

!xxx nolonger an attachments submenu
*menuBar*attachmentsSubmenu.labelString:	Archivos adjuntos
*menuBar*attachmentsSubmenu.mnemonic:	a

*menuBar*viewAttachmentsInline.labelString:	Incorporados
*menuBar*viewAttachmentsInline.mnemonic:	I
*viewAttachmentsInline.documentationString:	\
Mostrar los archivos adjuntos en el mensaje como objetos incorporados o enlaces
*menuBar*viewAttachmentsAsLinks.labelString:	Como enlaces
*menuBar*viewAttachmentsAsLinks.mnemonic:	l
*viewAttachmentsAsLinks.documentationString:	\
Mostrar los archivos adjuntos en el mensaje como objetos incorporados o enlaces
! end View/Attachments Submenu

*rot13Message.labelString:	Descifrar (ROT13)
*rot13Message.mnemonic:	U
*rot13Message.documentationString:	\
Descifrar el mensaje codificado con ROT13

*wrapLongLines.labelString:	Ajustar líneas largas
*wrapLongLines.mnemonic:	p
*wrapLongLines.documentationString:	\
Ajustar líneas largas para que quepan en pantalla

!============================
! View Menu - Message Window
!============================

*MailMsg*hideNavToolbarCmdString:	Ocultar la barra de mensaje
*MailMsg*showNavToolbarCmdString:	Mostrar la barra de mensaje

!==========================
! View Menu - Address Book
!==========================

*AddressBook*toggleNavigationToolbar.documentationString:	\
Mostrar u ocultar la barra del libro de direcciones
*AddressBook*toggleNavigationToolbar.mnemonic:	l

*menuBar*abByType.labelString:	por tipo
*menuBar*abByType.mnemonic:	t
*abByType.documentationString:	\
Ordenar las entradas del libro de direcciones por tipo

*menuBar*abByName.labelString:	por nombre
*menuBar*abByName.mnemonic:	n
*abByName.documentationString:	\
Ordenar las entradas del libro de direcciones por nombre

*menuBar*abByEmailAddress.labelString:	por dirección de correo
*menuBar*abByEmailAddress.mnemonic:	d
*abByEmailAddress.documentationString:	\
Ordenar las entradas del libro de direcciones por dirección de correo electrónico

*menuBar*abByNickName.labelString:	por apodo
*menuBar*abByNickName.mnemonic:	a
*abByNickName.documentationString:	\
Ordenar las entradas del libro de direcciones por apodo

*menuBar*abByCompany.labelString:	por organización
!*menuBar*abByCompany.mnemonic:			o
*abByCompany.documentationString:	\
Ordenar las entradas del libro de direcciones por organización

*menuBar*abByLocality.labelString:	por ciudad
*menuBar*abByLocality.mnemonic:	c
*abByLocality.documentationString:	\
Ordenar las entradas del libro de direcciones por ciudad

! shared with other windows
*menuBar*sortAscending.labelString:	Ascendente
*menuBar*sortAscending.mnemonic:	A
*menuBar*sortAscending.documentationString: \	
Orden ascendente
*AddressBook*menuBar*sortAscending.documentationString: \
Orden ascendente

*menuBar*sortDescending.labelString:	Descendente
*menuBar*sortDescending.mnemonic:	D
*sortDescending.documentationString:	\
Orden descendente
*AddressBook*sortDescending.documentationString:	\
Orden descendente

*menuBar*abVCard.labelString:	Mi tarjeta del libro de direcciones...
*menuBar*abVCard.mnemonic:	M
*abVCard.documentationString:	\
Crear y modificar la tarjeta propia del libro de direcciones

*menuBar*abStopSearch.labelString:     Parar la búqueda
*menuBar*abStopSearch.mnemonic: S
*menuBar*abStopSearch.acceleratorText: Esc

!=======================
! View Menu - Bookmarks 
!=======================

bookmarks*menuBar*sortByTitle.labelString:	por nombre
bookmarks*menuBar*sortByTitle.mnemonic:		T
bookmarks*sortByTitle.documentationString:	\
Ordenar marcadores por nombre

*menuBar*sortByLocation.labelString:	por dirección
*menuBar*sortByLocation.mnemonic:	d
*sortByLocation.documentationString:	\
Ordenar marcadores por dirección

*sortByDateLastVisited.labelString:	por última visita
*sortByDateLastVisited.mnemonic:	v
*sortByDateLastVisited.documentationString:	\
Ordenar marcadores por fecha de la última visita

*menuBar*sortByDateCreated.labelString:	por fecha de creación
*menuBar*sortByDateCreated.mnemonic:	f
*sortByDateCreated.documentationString:	\
Ordenar marcadores por fecha de creación

*menuBar*moveBookmarkUp.labelString:	Mover arriba
*menuBar*moveBookmarkUp.mnemonic:	a
*menuBar*moveBookmarkUp.acceleratorText:	Shift+Up
*moveBookmarkUp.documentationString:	\
Mover el marcador hacia arriba en la lista

*menuBar*moveBookmarkDown.labelString:	Mover abajo
*menuBar*moveBookmarkDown.mnemonic:	b
*menuBar*moveBookmarkDown.acceleratorText:	Shift+Down
*moveBookmarkDown.documentationString:	\
Mover el marcador hacia abajo en la lista

*menuBar*bookmarksWhatsNew.labelString:	Actualizar marcadores
*menuBar*bookmarksWhatsNew.mnemonic:	c
*bookmarksWhatsNew.documentationString:	\
Buscar los elementos que han cambiado desde la última visita

*setToolbarFolder.labelString:	Definir como carpeta Barra de herramientas
*setToolbarFolder.mnemonic:	F
*setToolbarFolder.documentationString:	\
Definir la carpeta seleccionada como carpeta de la barra de herramientas Personal

*setNewBookmarkFolder.labelString:	Definir como carpeta Nuevos marcadores
*setNewBookmarkFolder.mnemonic:	N
*setNewBookmarkFolder.documentationString:	\
Definir la carpeta seleccionada como carpeta para añadir nuevos marcadores

*setBookmarkMenuFolder.labelString:	Añadir al menú Marcadores
*setBookmarkMenuFolder.mnemonic:	M
*setBookmarkMenuFolder.documentationString:	\
Definir la carpeta seleccionada como la carpeta del menú de marcadores

!=====================
! View Menu - History
!=====================

*menuBar*sortByTitle.labelString:	por título
*menuBar*sortByTitle.mnemonic:	T
*sortByTitle.documentationString:	\
Ordenar por título

*menuBar*sortByDateFirstVisited.labelString:	por primera visita
*menuBar*sortByDateFirstVisited.mnemonic:	F
*sortByDateFirstVisited.documentationString:	\
Ordenar por fecha de la primera visita

*menuBar*sortByExpirationDate.labelString:	por caducidad
*menuBar*sortByExpirationDate.mnemonic:	E
*sortByExpirationDate.documentationString:	\
Ordenar por fecha de caducidad

*menuBar*sortByVisitCount.labelString:	por cómputo de visitas
*menuBar*sortByVisitCount.mnemonic:	C
*sortByVisitCount.documentationString:	\
Ordenar por el número de visitas

!=====================
! Go Menu - Navigator
!=====================

*back.labelString:	Anterior
*back.mnemonic:	B
*back.acceleratorText:	Alt+Left
*back.documentationString:	Vuelve al documento anterior del historial

*forward.labelString:	Siguiente
*forward.mnemonic:	F
*forward.acceleratorText:	Alt+Right
*forward.documentationString:	Pasa al siguiente documento del historial

*menuBar*home.labelString:	Inicio
*menuBar*home.mnemonic:	H
!xxx dynamic *home.documentationString:

!===========================
! Go Menu - Message Threads
!===========================

*menuBar*nextSubmenu.labelString:                               Siguiente
*menuBar*nextSubmenu.mnemonic:                                  N
*menuBar*prevSubmenu.labelString:                               Anterior
*menuBar*prevSubmenu.mnemonic:                                  P

*menuBar*nextMessage.labelString:	Siguiente mensaje
*menuBar*nextMessage.mnemonic:	m
*menuBar*nextMessage.acceleratorText:	Alt+Down
*nextMessage.documentationString:	\
Ir al mensaje siguiente

*menuBar*nextUnreadMessage.labelString:	Siguiente mensaje no leído
*menuBar*nextUnreadMessage.mnemonic:	U
*menuBar*nextUnreadMessage.acceleratorText:	Alt+Shift+Down
*nextUnreadMessage.documentationString:	\
Ir al siguiente mensaje no leído

*menuBar*nextFlaggedMessage.labelString:	Siguiente mensaje marcado
*menuBar*nextFlaggedMessage.mnemonic:	F
*nextFlaggedMessage.documentationString:	\
Ir al siguiente mensaje señalado

*menuBar*nextUnreadThread.labelString:	Siguiente tema no leído
*menuBar*nextUnreadThread.mnemonic:	T
menuBar*nextUnreadThread.acceleratorText:              T
*nextUnreadThread.documentationString:	\
Ir al siguiente tema no leído

*menuBar*nextCategory.labelString:	Siguiente categoría
*menuBar*nextCategory.mnemonic:	c
*nextCategory.documentationString:	\
Ir a la siguiente categoría.

*menuBar*nextUnreadCategory.labelString:	Siguiente categoría no leída
*menuBar*nextUnreadCategory.mnemonic:	i
*nextUnreadCategory.documentationString:	\
Ir a la siguiente categoría no leída

*nextCollection.labelString:	Siguiente colección
*nextDiscussionCmdString:	Siguiente grupo de noticias
*nextFolderCmdString:	Siguiente carpeta
*menuBar*nextCollection.mnemonic:	l
*nextCollection.documentationString:	\
Ir a la siguiente carpeta o grupo

*menuBar*nextUnreadCollection.labelString:	Siguiente colección no leída
*nextUnreadDiscussionCmdString:	Siguiente grupo no leído
*nextUnreadFolderCmdString:	Siguiente carpeta no leída
*menuBar*nextUnreadCollection.mnemonic:	d
*menuBar*nextUnreadCollection.acceleratorText: G
*nextUnreadCollection.documentationString:	\
Ir a la siguiente carpeta o grupo no leído.

*menuBar*previousMessage.labelString:	Mensaje anterior
*menuBar*previousMessage.mnemonic:	P
*menuBar*previousMessage.acceleratorText:	Alt+Up
*previousMessage.documentationString:	\
Ir al mensaje anterior

*menuBar*previousUnreadMessage.labelString:	Anterior mensaje no leído
*menuBar*previousUnreadMessage.mnemonic:	r
*menuBar*previousUnreadMessage.acceleratorText:	Alt+Shift+Up
*previousUnreadMessage.documentationString:	\
Ir al anterior mensaje no leído

*menuBar*previousFlaggedMessage.labelString:	Mensaje marcado
*menuBar*previousFlaggedMessage.mnemonic:	m
*previousFlaggedMessage.documentationString:	\
Ir al anterior mensaje señalado

*menuBar*firstFlaggedMessage.labelString:	Primer mensaje señalado
*menuBar*firstFlaggedMessage.mnemonic:	e
*firstFlaggedMessage.documentationString:	\
Ir al primer mensaje señalado

*MailThread*back.acceleratorText:	Alt+Left
*MailMsg*back.acceleratorText:	Alt+Left
*MailThread*back.documentationString:	\
Volver al último mensaje
*MailMsg*back.documentationString:	\
Volver al último mensaje

*MailThread*forward.mnemonic:	w
*MailMsg*forward.mnemonic:	w
*MailThread*forward.acceleratorText:	Alt+Right
*MailMsg*forward.acceleratorText:	Alt+Right
*MailThread*forward.documentationString:	Ir al siguiente mensaje
*MailMsg*forward.documentationString:	Ir al siguiente mensaje

!================================
! Message Menu - Message Threads
!================================

*menuBar*replySubmenu.labelString:	Responder
*menuBar*replySubmenu.mnemonic:	R
*replySubmenu.documentationString:	\
Responder a uno o más destinatarios

*menuBar*replyAllSubmenu.labelString:	Responder a todos
*menuBar*replyAllSubmenu.mnemonic:	t

! Message/Reply Submenu
*replyToSender.labelString:	Responder al remitente
*replyToSender.mnemonic:	S
*replyToSender.acceleratorText:	Alt+R
*replyToSender.documentationString:	\
Enviar una respuesta al remitente del mensaje seleccionado

*replyToAll.labelString:	Responder a todos
*replyToAll.mnemonic:	t
*replyToAll.acceleratorText:	Alt+Shift+R
*replyToAll.documentationString:	\
Responder a todos los destinatarios del mensaje seleccionado

*replyToNewsgroup.labelString:	al grupo de noticias
*replyToNewsgroup.mnemonic:	n
!*replyToNewsgroup.acceleratorText:		Alt+D
*replyToNewsgroup.documentationString:	\
Enviar una respuesta al grupo de noticias

*replyToSenderAndNewsgroup.labelString:	al remitente y al grupo de noticias
*replyToSenderAndNewsgroup.mnemonic:	r
!*replyToSenderAndNewsgroup.acceleratorText:	Alt+Shift+D
*replyToSenderAndNewsgroup.documentationString:	\
Enviar una respuesta al grupo de noticias y remitirsela por correo al autor
! end Message/Reply Submenu

!
*cleanUpDisk.labelString:	Limpiar disco
*cleanUpDisk.mnemonic:                  a
*cleanUpDisk.documentationString:	Borrar noticias viejas
*cleanUpDisk.tipString:	Borrar noticias viejas

*menuBar*forwardSubmenu.labelString: Reenviar como
*menuBar*forwardSubmenu.mnemonic: o

*menuBar*forwardMessage.labelString:	Reenviar
*menuBar*forwardMessage.mnemonic:	F
*menuBar*forwardMessage.acceleratorText:	Alt+L
*forwardMessage.documentationString:	\
Reenviar el mensaje seleccionado

*menuBar*forwardMessageAttachment.labelString: Reenviar adjunto
*menuBar*forwardMessageAttachment.mnemonic:   a
*menuBar*forwardMessageAttachment.documentationString: \
Reenviar el mensaje seleccionado como archivo adjunto

*menuBar*forwardMessageQuoted.labelString:	Reenviar citado
*menuBar*forwardMessageQuoted.mnemonic:	Q
*menuBar*forwardMessageQuoted.acceleratorText:	Alt+Shift+L
*forwardMessageQuoted.documentationString:	\
Reenviar el mensaje seleccionado como texto en forma de cita

*menuBar*forwardMessageInLine.labelString:      Reenviar incorporado
*menuBar*forwardMessageInLine.mnemonic:                 i
*forwardMessageInLine.documentationString:      \
Reenviar el mensaje seleccionado de manera incorporada

*menuBar*fileSubmenu.labelString:	Mover mensaje
*menuBar*fileSubmenu.mnemonic:	M
*fileSubmenu.documentationString:	\
Archivar el mensaje seleccionado en una carpeta

*menuBar*copySubmenu.labelString:	Copiar mensaje
*menuBar*copySubmenu.mnemonic:	C
*copySubmenu.documentationString:	\
Copiar el mensaje seleccionado en una carpeta

*menuBar*addToABSubmenu.labelString:	Añadir al libro de direcciones
*menuBar*addToABSubmenu.mnemonic:	A

! Message/Add to Address Book Submenu
*addSenderToAddressBook.labelString:	Remitente
*addSenderToAddressBook.mnemonic:	S
*addSenderToAddressBook.documentationString:	\
Añadir al remitente al libro de direcciones
*addAllToAddressBook.labelString:	Todo
*addAllToAddressBook.mnemonic:	A
*addAllToAddressBook.documentationString:	\
Añadir a todos los destinatarios al libro de direcciones
! end Message/Add to Address Book Submenu

*menuBar*markSubmenu.labelString:	Marcar
*menuBar*markSubmenu.mnemonic:	M

! Message/Mark Submenu

*markMessage.labelString:	Marcar
*markMessage.mnemonic:	M
*markMessage.documentationString:	\
Marcar los mensajes seleccionados

*markMessageRead.labelString:	como leídos
*markMessageRead.mnemonic:                              R
*markMessageRead.acceleratorText:               M
*markMessageRead.documentationString: Marcar los mensajes seleccionados como leídos
*markMessageRead.tipString:	Marcar mensajes

*markThreadRead.labelString:	Cadena como leída
*markThreadRead.mnemonic:	C
*markThreadRead.acceleratorText:	T
*markThreadRead.documentationString:	\
Marcar los mensajes sobre el mismo asunto como leídos

*markAllMessagesRead.labelString:	Todos como leídos
*markAllMessagesRead.mnemonic:	T
*markAllMessagesRead.acceleratorText:	Alt+Shift+C
*markAllMessagesRead.documentationString:	\
Marcar todos los mensajes como leídos

*markMessageByDate.labelString:	por fecha
*markMessageByDate.mnemonic:	f
*markMessageByDate.acceleratorText:	C
*markMessageByDate.documentationString:	\
Ponerse al día con determinada fecha

*markMessageForLater.labelString:	para luego
*markMessageForLater.mnemonic:	l
*markMessageForLater.acceleratorText:	L
*markMessageForLater.documentationString:	\
Marcar mensaje temporalmente como leídos
! end Message/Mark Submenu

*menuBar*flagMessage.labelString:	Marcar
*menuBar*flagMessage.mnemonic:	F
*flagMessage.documentationString:	Marcar el mensaje actual

*menuBar*ignoreThread.labelString:	Omitir tema
*menuBar*ignoreThread.mnemonic:	O
*menuBar*ignoreThread.acceleratorText:	K
*ignoreThread.documentationString:	\
Omitir el tema seleccionado

*menuBar*ignoreCategory.labelString:	Omitir categoría
*ignoreCategory.documentationString:	Omitir la categoría seleccionada

*menuBar*watchThread.labelString:	Observar tema
*menuBar*watchThread.mnemonic:	W
*menuBar*watchThread.acceleratorText:	W
*watchThread.documentationString:	\
Mostrar cuándo llegan nuevos mensajes al tema

! override shared resources
*MailThread*mommy.tipString:	Centro de mensajes
*MailMsg*mommy.tipString:	Abrir carpeta

*MailThread*menuBar*composeMessage.labelString: Nuevo Mensaje
*MailThread*menuBar*composeMessage.mnemonic: N
*MailThread*menuBar*composeMessage.acceleratorText: Alt+M

!=============================
! Insert Menu - Page Composer
!=============================

*menuBar*insert.labelString:	Insertar
*menuBar*insertLink.labelString:	Enlace...
*menuBar*insertLink.mnemonic:	L
*insertLink.documentationString:	Insertar un enlace

*menuBar*insertTarget.labelString:	Destino...
*menuBar*insertTarget.mnemonic:	T
*insertTarget.documentationString:	Insertar un destino

*menuBar*insertImage.labelString:	Imagen...
*menuBar*insertImage.mnemonic:	I
*insertImage.documentationString:	Insertar una imagen

*insertTableMenu.labelString:	Tabla
*insertTableMenu.mnemonic:	e
*insertTableMenu.documentationString:	\
Insertar una tabla en la posición actual del cursor

*menuBar*insertHorizontalLine.labelString:	Línea horizontal...
*menuBar*insertHorizontalLine.mnemonic:	o
*insertHorizontalLine.documentationString:	\
Insertar una línea horizontal en la posición actual del cursor

*menuBar*insertHtmlTag.labelString:	Etiqueta HTML...
*menuBar*insertHtmlTag.mnemonic:	H
*insertHtmlTag.documentationString:	\
Insertar una etiqueta HTML

*menuBar*insertNewLineBreak.labelString:	Nuevo salto de línea
*menuBar*insertNewLineBreak.mnemonic:	N
*menuBar*insertNewLineBreak.acceleratorText:    Shift+Return
*insertNewLineBreak.documentationString:	\
Insertar un nuevo salto de línea en la posición del cursor

*menuBar*insertBreakBelow.labelString:	Salto debajo de imagen
*menuBar*insertBreakBelow.mnemonic:	b
*insertBreakBelow.documentationString:	\
Insertar un salto para continuar el texto bajo las imágenes a izquierda y derecha

*menuBar*insertNonBreaking.labelString:	Espacio sin separación
*menuBar*insertNonBreaking.mnemonic:	s
*menuBar*insertNonBreaking.acceleratorText:	Shift+Space
*insertNonBreaking.documentationString:	\
Insertar un espacio sin separación en la posición actual del cursor

!=============================
! Format Menu - Page Composer
!=============================

*menuBar*formatMenu.labelString:	Formato
*menuBar*fontStyleMenu.labelString:	Formato
*menuBar*fontStyleMenu.mnemonic:	F
*fontStyleMenu.documentationString:	Cambiar el tipo de letra

*menuBar*characterSizeMenu.labelString:	Tamaño
*menuBar*characterSizeMenu.mnemonic:	z

! Format/Size Submenu
*setFontSizeMinusTwo.labelString:	-2
*setFontSizeMinusTwo.documentationString:	\
Poner el tamaño relativo de la letra a -2
*setFontSizeMinusOne.labelString:	-1
*setFontSizeMinusOne.documentationString:	\
Poner el tamaño relativa de la letra a -1
*setFontSizeZero.labelString:	+0
*setFontSizeZero.documentationString:	\
Poner el tamaño relativo de la letra a +0
*setFontSizePlusOne.labelString:	+1
*setFontSizePlusOne.documentationString:	\
Poner el tamaño relativo de la letra a +1
*setFontSizePlusTwo.labelString:	+2
*setFontSizePlusTwo.documentationString:	\
Poner el tamaño relativo de la letra a +2
*setFontSizePlusThree.labelString:	+3
*setFontSizePlusThree.documentationString:	\
Poner el tamaño relativo de la letra a +3
*setFontSizePlusFour.labelString:	+4
*setFontSizePlusFour.documentationString:	\
Poner el tamaño relativo de la letra a +4
*setFontSize.labelString:	Valor predeterminado
*setFontSize.documentationString:	\
Poner el tamaño relativo de la letra por defecto
! end Format/Size Submenu

*menuBar*characterStyleMenu.labelString:	Estilo
*menuBar*characterStyleMenu.mnemonic:	S

! Format/Style Submenu
*toggleCharacterStyleBold.labelString:	Negrita
*toggleCharacterStyleBold.documentationString:	\
Aplicar estilo Negrita <Alt+B>
*toggleCharacterStyleItalic.labelString:	Cursiva
*toggleCharacterStyleItalic.documentationString:	\
Aplicar estilo Cursiva <Alt+I>
*toggleCharacterStyleUnderline.labelString:	Subrayado
*toggleCharacterStyleUnderline.documentationString:	\
Aplicar estilo Subrayado <Alt+U>
*toggleCharacterStyleFixed.labelString:	Fijo
*toggleCharacterStyleFixed.documentationString:	\
Aplicar estilo Fijo
*toggleCharacterStyleSuperscript.labelString:	Superíndice
*toggleCharacterStyleSuperscript.documentationString:	\
Aplicar estilo Superíndice
*toggleCharacterStyleSubscript.labelString:	Subíndice
*toggleCharacterStyleSubscript.documentationString:	\
Aplicar estilo Subíndice
*toggleCharacterStyleStrikethrough.labelString:	Tachado
*toggleCharacterStyleStrikethrough.documentationString:	 \
Aplicar estilo Tachado
*toggleCharacterStyleBlink.labelString:	Intermitente
*toggleCharacterStyleBlink.documentationString:	\
Aplicar estilo Intermitente
! end Format/Style Submenu

*menuBar*characterColorMenu.labelString:	Color
*menuBar*characterColorMenu.mnemonic:	C

*menuBar*setCharacterColor.labelString:	Color...
*menuBar*setCharacterColor.mnemonic:	C

*menuBar*clearAllStyles.labelString:	Borrar todos los estilos
*menuBar*clearAllStyles.mnemonic:	B
*clearAllStyles.documentationString:	Borrar todos los estilos de carácter y atributo de enlace

*menuBar*setTableProperties.labelString:	Propiedades de la tabla
*menuBar*setTableProperties.mnemonic:	t
*setTableProperties.documentationString:	Cambiar las propiedades de la tabla

*menuBar*headingStyleMenu.labelString:	Encabezamiento
*menuBar*headingStyleMenu.mnemonic:	E

! Format/Heading Submenu
*setParagraphStyleNormal.labelString:	Normal
*setParagraphStyleNormal.documentationString:	\
Aplicar estilo Normal
*setParagraphStyleHeadingOne.labelString:	Encabezamiento 1
*setParagraphStyleHeadingOne.documentationString:	\
Aplicar estilo Encabezamiento 1
*setParagraphStyleHeadingTwo.labelString:	Encabezamiento 2
*setParagraphStyleHeadingTwo.documentationString:	\
Aplicar estilo Encabezamiento 2
*setParagraphStyleHeadingThree.labelString:	Encabezamiento 3
*setParagraphStyleHeadingThree.documentationString:	\
Aplicar estilo Encabezamiento 3
*setParagraphStyleHeadingFour.labelString:	Encabezamiento 4
*setParagraphStyleHeadingFour.documentationString:	\
Aplicar estilo Encabezamiento 4
*setParagraphStyleHeadingFive.labelString:	Encabezamiento 5
*setParagraphStyleHeadingFive.documentationString:	\
Aplicar estilo Encabezamiento 5
*setParagraphStyleHeadingSix.labelString:	Encabezamiento 6
*setParagraphStyleHeadingSix.documentationString:	\
Aplicar estilo Encabezamiento 6
! end Format/Heading Submenu

*menuBar*paragraphStyleMenu.labelString:	Párrafo
*menuBar*paragraphStyleMenu.mnemonic:	P

! Format/Paragraph Style Submenu
*setParagraphStyleAddress.labelString:	Dirección
*setParagraphStyleAddress.documentationString:	\
Aplicar al párrafo el estilo Dirección
*setParagraphStyleFormatted.labelString:	Con formato
*setParagraphStyleFormatted.documentationString:	\
Aplicar al párrafo el estilo Formato previo
*setParagraphStyleDescriptionTitle.labelString:	Título de descripción
*setParagraphStyleDescriptionTitle.documentationString:	\
Aplicar al párrafo el estilo Título de descripción
*setParagraphStyleDescriptionText.labelString:	Texto descriptivo
*setParagraphStyleDescriptionText.documentationString:	\
Aplicar al párrafo el estilo Texto descriptivo
! end Format/Paragraph Style Submenu

*menuBar*listStyleMenu.labelString:	Lista
*menuBar*listStyleMenu.mnemonic:	L

! Format/List Submenu
*setListStyleNone.labelString:	Ninguno
*setListStyleNone.documentationString:	\
Borrar el estilo de la lista
*setListStyleBulleted.labelString:	De viñetas
*setListStyleBulleted.documentationString:	\
Iniciar, borrar o cambiar una lista no numerada (de viñetas)
*setListStyleNumbered.labelString:	Numerada
*setListStyleNumbered.documentationString:	\
Iniciar, borrar o cambiar una lista numerada
! end Format/List Submenu

*menuBar*indent.labelString:	Aumentar sangría
*menuBar*indent.mnemonic:	A
*indent.documentationString:	\
Aumentar la sangría del párrafo en un nivel

*menuBar*outdent.labelString:	Reducir sangría
*menuBar*outdent.mnemonic:	R
*outdent.documentationString:	\
Reducir la sangría del párrafo en un nivel

*menuBar*setObjectProperties.labelString:	Propiedades del objeto
*menuBar*setObjectProperties.mnemonic:	o
*setObjectProperties.documentationString:	\
Modificar las propiedades del objeto o texto seleccionado

*setPageProperties.labelString:	Colores y propiedades de la página
*setPageProperties.mnemonic:	g
*setPageProperties.documentationString:	\
Modificar propiedades de la página

*setSaveEncrypted.labelString:	Guardar cifrado
*setSaveEncrypted.mnemonic:	E
*setSaveEncrypted.documentationString:	\
Guardar esta página como archivo pre-cifrado

*menuBar*alignmentStyleMenu.labelString:	Alinear
*menuBar*alignmentStyleMenu.mnemonic:	A

*setAlignmentStyleLeft.labelString:	Izquierda
*setAlignmentStyleLeft.documentationString:	\
Alinear el párrafo con el margen izquierdo
*setAlignmentStyleCenter.labelString:	Centro
*setAlignmentStyleCenter.documentationString:	\
Centrar el párrafo entre márgenes
*setAlignmentStyleRight.labelString:	Derecha
*setAlignmentStyleRight.documentationString:	\
Alinear el párrafo con el margen derecho

!============================
! Tools Menu - Page Composer
!============================

*menuBar*toolsMenu.labelString:	Herramientas
*spellCheck.labelString:	Revisar ortografía...
*spellCheck.acceleratorText:            Alt+K
*spellCheck.mnemonic:                   S
*spellCheck.tipString:	Revisar la ortografía
*spellCheck.documentationString:	\
Corregir los errores ortográficos de la página
*Composition*spellCheck.documentationString:	\
Corregir los errores ortográficos del mensaje

!===================
! Communicator Menu
!===================

*menuBar*openOrBringUpBrowser.labelString:	Navegador
*menuBar*openOrBringUpBrowser.mnemonic:	N
*menuBar*openOrBringUpBrowser.acceleratorText:	Alt+1
*openOrBringUpBrowser.documentationString:	\
Abrir una nueva ventana de navegación para ver páginas web

*menuBar*openInbox.labelString:	Buzón de correo
*menuBar*openInbox.mnemonic:	c
*menuBar*openInbox.acceleratorText:	Alt+2
*openInbox.documentationString:	\
Abrir la ventana de correo y obtener nuevos mensajes

*menuBar*openNewsgroups.labelString:	Grupos de noticias
*menuBar*openNewsgroups.mnemonic:	C
!*menuBar*openNewsgroups.acceleratorText:	Alt+3
*openNewsgroups.documentationString:	\
Abrir la lista de grupos de noticias

*menuBar*openEditor.labelString:	Editor de páginas Web
*menuBar*openEditor.mnemonic:	P
*menuBar*openEditor.acceleratorText:	Alt+3
*openEditor.documentationString:	\
Abrir el editor de páginas web

*menuBar*openConference.labelString:	Conferencias
*menuBar*openConference.mnemonic:	o
*menuBar*openConference.acceleratorText:	Alt+5
*openConference.documentationString:	\
Abrir la aplicación de tele-conferencia

*menuBar*openCalendar.labelString:	Calendario
*menuBar*openCalendar.mnemonic:	r
*menuBar*openCalendar.acceleratorText:	Alt+4
*openCalendar.documentationString:	\
Abrir la ventana del calendario personal

*menuBar*openRadio.labelString:                        Radio
*menuBar*openRadio.mnemonic:                           d
*menuBar*openRadio.acceleratorText:                    Alt+7
*openRadio.documentationString:        \
Abrir la radio

*menuBar*toggleTaskbarShowing.labelString:     Barra de componentes flotante
*menuBar*toggleTaskbarShowing.mnemonic: C
*toggleTaskbarShowing.documentationString:      \
Ver u ocultar la barra de componentes flotante

*menuBar*openFolders.labelString:	Centro de mensajes
*menuBar*openFolders.mnemonic:	m
*menuBar*openFolders.acceleratorText:	Alt+Shift+1
*openFolders.documentationString:	\
Abrir la ventana de las carpetas de correo y grupos de noticias

*menuBar*openAddrBook.labelString:	Libro de direcciones
*menuBar*openAddrBook.mnemonic:	A
*menuBar*openAddrBook.acceleratorText:	Alt+Shift+2
*openAddrBook.documentationString:	\
Abrir el libro de direcciones

*menuBar*bookmarksSubmenu.labelString:	Marcadores
*menuBar*bookmarksSubmenu.mnemonic:	B

*menuBar*toolsSubmenu.labelString:             Herramientas
*menuBar*toolsSubmenu.mnemonic:                H

*menuBar*serverToolsSubmenu.labelString:       Herramientas servidores
*menuBar*serverToolsSubmenu.mnemonic:          S


! Communicator/Bookmarks Submenu
*addBookmark.labelString:	Añadir marcador
*addBookmark.mnemonic:	A
!*addBookmark.acceleratorText:	Alt+K
*addBookmark.documentationString:	\
Añadir la dirección de la página actual a la lista de marcadores

*menuBar*openBookmarks.labelString:	Modificar marcadores...
*menuBar*openBookmarks.mnemonic:	E
!*menuBar*openBookmarks.acceleratorText:	Alt+B
*openBookmarks.documentationString:	\
Modificar la lista de marcadores

*menuBar*fileBookmarksSubmenu.labelString:	Archivar marcador
*menuBar*fileBookmarksSubmenu.mnemonic:	F
*fileBookmarksSubmenu.documentationString:	\
Archivar la dirección de la página actual en una carpeta de marcadores

*menuBar*placesSubmenu.labelString:	Lugares
*menuBar*placesSubmenu.mnemonic:	L

! Communicator/Bookmarks/Guide Submenu
*menuBar*inetIndex.labelString:	Internet
*menuBar*inetIndex.mnemonic:	I

*menuBar*inetWhite.labelString:	Ajenos
*menuBar*inetWhite.mnemonic:	P

*menuBar*inetYellow.labelString:	Páginas Amarillas
*menuBar*inetYellow.mnemonic:	Y

*menuBar*whatsNew.labelString:	¿Hay novedades?
*menuBar*whatsNew.mnemonic:	N

*menuBar*whatsCool.labelString:	¿Algo interesante?
*menuBar*whatsCool.mnemonic:	C
! end Communicator/Bookmarks/Guide Submenu

! end Communicator/Bookmarks Submenu

*menuBar*openHistory.labelString:	Historial
*menuBar*openHistory.mnemonic:	H
!*menuBar*openHistory.acceleratorText:	Alt+H
*openHistory.documentationString:	Abrir la ventana del historial

*menuBar*javaConsole.labelString:	Consola de Java
*menuBar*javaConsole.mnemonic:	J
*javaConsole.documentationString:	Abrir la consola de Java

*menuBar*viewSecurity.labelString:	Información sobre seguridad
*menuBar*viewSecurity.mnemonic:	S
!*menuBar*viewSecurity.acceleratorText:	Alt+Shift+I
*viewSecurity.documentationString:	\
Ver la información sobre seguridad de esta página

! Communicator/Server Tools Submenu
*menuBar*manageMailingList.labelString:         Listas de difusión
*menuBar*manageMailingList.mnemonic:            L

*managePublicFolders.labelString:       Permisos carpeta
*managePublicFolders.mnemonic:          F

! end Communicator/Bookmarks Submenu

!===========
! Help Menu
!===========

*menuBar*manual.labelString:	Índice de la Ayuda
*menuBar*manual.mnemonic:	H
*manual.documentationString:	Manual de uso de la Ayuda

*menuBar*relnotes.labelString:	Notas sobre la versión
*menuBar*relnotes.mnemonic:	R
*relnotes.documentationString:	\
Información sobre la versión de Mozilla que está ejecutando

*menuBar*productInfo.labelString:	Información sobre el producto y asistencia
*productInfo.documentationString:	\
Información sobre el producto y asistencia

*menuBar*feedback.labelString:	Cómo enviar comentarios
*menuBar*feedback.mnemonic:	G
*feedback.documentationString:	\
Instrucciones para enviar comentarios y sugerencias sobre este programa

*menuBar*intl.labelString:	Usuarios internacionales
*intl.documentationString:	\
Información sobre la ejecución de Mozilla para usuarios internacionales

*menuBar*aboutSecurity.labelString:	Seguridad
*menuBar*aboutSecurity.mnemonic:	O
*aboutSecurity.documentationString:	\
Información sobre seguridad en Internet

*menuBar*registration.labelString:	Regístrese
*menuBar*registration.mnemonic:	I
*registration.documentationString:	\
Registro del producto

*menuBar*upgrade.labelString:	Actualizaciones
*menuBar*upgrade.mnemonic:	t
*upgrade.documentationString:	\
Cómo recibir software y actualizaciones desde las páginas del Proyecto NAVE

*menuBar*services.labelString:	Línea directa

*menuBar*aboutUsenet.labelString:	Netiqueta

*menuBar*aboutplugins.labelString:	Acerca de los plug-ins
*menuBar*aboutplugins.mnemonic:	P
*aboutplugins.documentationString:	\
Información sobre los plug-ins instalados

*menuBar*aboutfonts.labelString:	Acerca de los visualizadores de tipos de letra
*menuBar*aboutfonts.mnemonic:	D

*menuBar*about.labelString:	Acerca de Mozilla
*menuBar*aboutLite.labelString:	Información sobre Mozilla
*menuBar*about.mnemonic:	A
*about.documentationString:	\
Mostrar información, número de versión y derechos de autor de este producto

!==============
! end of menus
!==============

! Leftovers, old, and duplicates...

*viewMailFilter.labelString:	Filtros de correo

! Mail filter stuff

*filterDialog.dialogTitle:			Filtros de mensajes
*filterDialog*form*orderBox*orderLabel.labelString:	Filtro\norden
*filterDialog*form*newFilter.labelString:	Nuevo filtro...
*filterDialog*form*newFilter.mnemonic:          N 
*filterDialog*form*editFilter.labelString:	Modificar filtro...
*filterDialog*form*editFilter.mnemonic:         E
*filterDialog*form*delFilter.labelString:	Borrar filtro
*filterDialog*form*delFilter.mnemonic:          B
*filterDialog*form*javaScript.labelString:	Java Script
*filterDialog*form*logbtn.labelString:	Registrar filtrado
*filterDialog*form*logbtn.mnemonic:                             L
*filterDialog*form*viewLog.labelString:	Ver registro
*filterDialog*form*viewLog.mnemonic:                    V
*filterDialog*form*okbtn.labelString:	Aceptar
*filterDialog*form*cancelbtn.labelString:	Cancelar
*filterDialog*form*onserver.labelString:        Filtros en servidor...
*filterDialog*form*dropdownLabel.labelString:   Filtros para:
*filterDialog*form*outlinerLabel.labelString:\
Los filtros serán aplicados en el óden siguiente:
*filterDialog*form*frameTitle.labelString:	Descripción

*editFilterDialog.dialogTitle:			Reglas de los filtros
*editFilterDialog*filterLabel.labelString:	Nombre del filtro:
*editFilterDialog*criteriaFrameTitle.labelString:       Criterio de filtrado
*editFilterDialog*actionFrameTitle.labelString: Acción del filtro

*editFilterDialog*scriptokbtn.labelString:	Aceptar
*editFilterDialog*scriptokbtn.alignment:	ALIGNMENT_CENTER
*editFilterDialog*scriptcancelbtn.labelString:	Cancelar
*editFilterDialog*scriptcancelbtn.alignment:	ALIGNMENT_CENTER
*editFilterDialog*scripteditbtn.labelString:	Modificar script
*editFilterDialog*scripteditbtn.alignment:	ALIGNMENT_CENTER

*editFilterDialog*editContainer*commandGrp*more.labelString:	Más
*editFilterDialog*editContainer*commandGrp*more.mnemonic:	+
*editFilterDialog*editContainer*commandGrp*fewer.labelString:	Menos
*editFilterDialog*editContainer*commandGrp*fewer.mnemonic:	-
*editFilterDialog*editContainer*thenLabel.labelString:	entonces
*editFilterDialog*editContainer*despLabel.labelString:	Descripción:
*editFilterDialog*editContainer*okbtn.labelString:	Aceptar
*editFilterDialog*editContainer*cancelbtn.labelString:	Cancelar
*editFilterDialog*newFolder.labelString:	Nueva carpeta...
*editFilterDialog*newFolder.mnemonic:		N
*editFilterDialog*editContainer*btnForm*statusLabel.labelString:	\
EL filtro está 
*editHdrBtn.labelString:	Encabezados personalizados...

! The Edit headers dialog, for search and filter:
*editHdrDialog.title: 		Personalizar encabezados
*editHdrDialog*editHdrLabel.labelString: \
Personalizar los encabezados que los filtros\npueden utilizar para búsquedas.
*editHdrDialog*new.labelString: Nuevo
*editHdrDialog*edit.labelString: Modificar
*editHdrDialog*delete.labelString: Borrar

! The New Folder dialog:
*newFolderDialog*dialogTitle: Nueva carpeta
*newFolderDialog*name.labelString: Nombre:
*newFolderDialog*subFolderOf.labelString: Crer una subcarpeta de:
*newFolderDialog*folderTypeLabel.labelString: \
Este servidor limita el contenido de las carpetas.\n\
¿Qué contendrá esta carpeta?
*newFolderDialog*foldersOnly.labelString: Sólo carpetas.
*newFolderDialog*messagesOnly.labelString: Sólo mensajes.


!=============================================================================
! MailCompose menubar
!=============================================================================

! Don't limit these to just menubars or else they won't show up
! in popups.
*setPriority.labelString:	Prioridad	
*setPriorityHighest.labelString:	Máxima
*setPriorityHigh.labelString:	Alta
*setPriorityNormal.labelString:	Normal
*setPriorityLow.labelString:	Baja
*setPriorityLowest.labelString:	Mínima
*setPriorityNone.labelString:	Ninguna

*messageActionAskUser.labelString:              Preguntar
*messageActionText.labelString:                 Texto
*messageActionHTML.labelString:                 HTML
*messageActionTextAndHTML.labelString:          Texto y HTML

*attachFile.labelString:	Archivo...
*attachFile.mnemonic:	A
*attachWebPage.labelString:	Página web...
*attachWebPage.mnemonic:	P
*deleteAttachment.labelString:	Borrar archivo adjunto
*deleteAttachment.mnemonic:	B
*attachAddressBookCard.labelString:	Tarjeta personal
*attachAddressBookCard.mnemonic:	T

! Edit Menu
*menuBar*undoNull.labelString:	Nada que deshacer
*menuBar*undoTyping.labelString:	Deshacer escritura
*menuBar*undoAddText.labelString:	Deshacer Añadir texto
*menuBar*undoDeleteText.labelString:	Deshacer Borrar texto
*menuBar*undoCut.labelString:	Deshacer Cortar
*menuBar*undoPasteText.labelString:	Deshacer Pegar Texto
*menuBar*undoPasteHTML.labelString:	Deshacer Pegar HTML
*menuBar*undoPasteHREF.labelString:	Deshacer Pegar HREF
*menuBar*undoChangeAttributes.labelString:	Deshacer Modificar atributos
*menuBar*undoIndent.labelString:	Deshacer Indentar
*menuBar*undoParagraphAlign.labelString:	Deshacer Justificar párrafo
*menuBar*undoMorphContainer.labelString:	Deshacer Cambiar estilo párrafo
*menuBar*undoInsertHorizRule.labelString:	Deshacer Insertar línea horizontal
*menuBar*undoSetHorizRuleData.labelString:	Deshacer Establecer propiedades línea horizontal
*menuBar*undoInsertImage.labelString:	Deshacer Insertar imagen
*menuBar*undoSetImageData.labelString:	Deshacer Establecer propiedades imagen
*menuBar*undoInsertBreak.labelString:	Deshacer Insertar salto
*menuBar*undoChangePageData.labelString:	Deshacer Establecer propiedades página
*menuBar*undoSetMetaData.labelString:	Deshacer Establecer metadatos
*menuBar*undoDeleteMetaData.labelString:	Deshacer Borrar metadatos
*menuBar*undoInsertTarget.labelString:	Deshacer Insertar destino
*menuBar*undoSetTargetData.labelString:	Deshacer Establecer propiedades destino
*menuBar*undoInsertUnknownTag.labelString:	Deshacer Etiqueta desconocida
*menuBar*undoSetUnknownTagData.labelString:	Deshacer Establecer propiedades etiqueta desconocida
*menuBar*undoGroupOfChanges.labelString:	Deshacer Cambios
*menuBar*undoSetListData.labelString:	Deshacer Establecer propiedades de la lista
*menuBar*undoInsertTable.labelString:	Deshacer Insertar tabla
*menuBar*undoDeleteTable.labelString:	Deshacer Borrar tabla
*menuBar*undoSetTableData.labelString:	Deshacer Establecer propiedades tabla
*menuBar*undoInsertTableCaption.labelString:	Deshacer Insertar rótulo
*menuBar*undoSetTableCaptionData.labelString:	Deshacer Establecer propiedades rótulo
*menuBar*undoDeleteTableCaption.labelString:	Deshacer Borrar rótulo
*menuBar*undoInsertTableRow.labelString:	Deshacer Insertar fila
*menuBar*undoSetTableRowData.labelString:	Deshacer Establecer propiedades fila
*menuBar*undoDeleteTableRow.labelString:	Deshacer Borrar fila
*menuBar*undoInsertTableColumn.labelString:	Deshacer Insertar columna
*menuBar*undoSetTableCellData.labelString:	Deshacer Establecer propiedades celda
*menuBar*undoDeleteTableColumn.labelString:	Deshacer Borrar columna
*menuBar*undoInsertTableCell.labelString:	Deshacer Insertar celda
*menuBar*undoDeleteTableCell.labelString:	Deshacer Borrar celda

*menuBar*redoNull.labelString:	Nada que rehacer
*menuBar*redoTyping.labelString:	Rehacer escritura
*menuBar*redoAddText.labelString:	Rehacer Añadir Texto
*menuBar*redoDeleteText.labelString:	Rehacer Borrar texto
*menuBar*redoCut.labelString:	Rehacer Cortar
*menuBar*redoPasteText.labelString:	Rehacer Pegar texto
*menuBar*redoPasteHTML.labelString:	Rehacer Pegar HTML
*menuBar*redoPasteHREF.labelString:	Rehacer Pegar HREF
*menuBar*redoChangeAttributes.labelString:	Rehacer Modificar atributos
*menuBar*redoIndent.labelString:	Rehacer Indentar
*menuBar*redoParagraphAlign.labelString:	Rehacer Justificar párrafo
*menuBar*redoMorphContainer.labelString:	Rehacer Cambiar estilo párrafo
*menuBar*redoInsertHorizRule.labelString:	Rehacer Insertar línea horizontal
*menuBar*redoSetHorizRuleData.labelString:	Rehacer Establecer propiedades línea horizontal
*menuBar*redoInsertImage.labelString:	Rehacer Insertar imagen
*menuBar*redoSetImageData.labelString:	Deshacer Establecer propiedades imagen
*menuBar*redoInsertBreak.labelString:	Deshacer Insertar salto
*menuBar*redoChangePageData.labelString:	Deshacer Establecer propiedades página
*menuBar*redoSetMetaData.labelString:	Deshacer Establecer metadatos
*menuBar*redoDeleteMetaData.labelString:	Deshacer Borrar metadatos
*menuBar*redoInsertTarget.labelString:	Deshacer Insertar destino
*menuBar*redoSetTargetData.labelString:	Deshacer Establecer propiedades destino
*menuBar*redoInsertUnknownTag.labelString:	Deshacer Etiqueta desconocida
*menuBar*redoSetUnknownTagData.labelString:	Deshacer Establecer propiedades etiqueta desconocida
*menuBar*redoGroupOfChanges.labelString:	Deshacer Cambios
*menuBar*redoSetListData.labelString:	Deshacer Establecer propiedades de la lista
*menuBar*redoInsertTable.labelString:	Deshacer Insertar tabla
*menuBar*redoDeleteTable.labelString:	Deshacer Borrar tabla
*menuBar*redoSetTableData.labelString:	Deshacer Establecer propiedades tabla
*menuBar*redoInsertTableCaption.labelString:	Deshacer Insertar rótulo
*menuBar*redoSetTableCaptionData.labelString:	Deshacer Establecer propiedades rótulo
*menuBar*redoDeleteTableCaption.labelString:	Deshacer Borrar rótulo
*menuBar*redoInsertTableRow.labelString:	Deshacer Insertar fila
*menuBar*redoSetTableRowData.labelString:	Deshacer Establecer propiedades fila
*menuBar*redoDeleteTableRow.labelString:	Deshacer Borrar fila
*menuBar*redoInsertTableColumn.labelString:	Deshacer Insertar columna
*menuBar*redoSetTableCellData.labelString:	Deshacer Establecer propiedades celda
*menuBar*redoDeleteTableColumn.labelString:	Deshacer Borrar columna
*menuBar*redoInsertTableCell.labelString:	Deshacer Insertar celda
*menuBar*redoDeleteTableCell.labelString:	Rehacer Borrar celda
! new


! View Menu
*Editor*menuBar*source.labelString:	Ver el código del documento
*Editor*menuBar*source.mnemonic:	S
*menuBar*editSource.labelString:	Editar el código de esta página
*menuBar*editSource.mnemonic:	E
*menuBar*paragraphMarks.labelString:	Mostrar las marcas de párrafo
*menuBar*paragraphMarks.mnemonic:	P
!*displayTableBoundaries.labelString:           Display Table Boundaries
*displayTables.labelString:	Mostrar tablas
*displayTables.mnemonic:	T
! new
*menuBar*toggleComposeToolbar.labelString:	Barra de composición
*menuBar*toggleComposeToolbar.mnemonic:	C
*menuBar*toggleFormatToolbar.mnemonic:	F
*menuBar*toggleTableBorders.labelString:	Bordes de tablas
*menuBar*toggleTableBorders.mnemonic:	B

! Insert Menu
! new
*menuBar*insertMenu.labelString:	Insertar
*menuBar*insertListMenu.labelString:	Lista
*menuBar*insertBulletedList.labelString:	Lista con viñetas
*menuBar*insertNumberedList.labelString:	Lista numerada
*insertTableRow.labelString:	Fila
*insertTableRow.mnemonic:	F
*insertTableRow.documentationString:	Inserta una nueva fila en la tabla
*insertTableColumn.labelString:	Columna
*insertTableColumn.mnemonic:	o
*insertTableColumn.documentationString:	Insertar una nueva columna en la tabla
*insertTableCell.labelString:	Celda
*insertTableCell.mnemonic:	C
*insertTableCell.documentationString:	Insertar una nueva celda en la tabla

*insertHtml.labelString:	Etiqueta HTML...
*insertHtml.mnemonic:	H
*insertHtml.documentationString:	Insertar una etiqueta HTML en la posición actual
*insertNonBreakingSpace.labelString:	Espacio sin separación
*insertNonBreakingSpace.mnemonic:	
*insertBreakBelowImage.labelString:	Salto debajo de imagen
*insertBreakBelowImage.mnemonic:	b
*insertLineBreak.labelString:	Nuevo salto de línea
*insertLineBreak.mnemonic:	l

! Insert/Tables pullaside.
*insertTable.labelString:	Tabla...
*insertTable.mnemonic:	T
*insertRow.labelString:	Fila
*insertRow.mnemonic:	F
*insertColumn.labelString:	Columna
*insertColumn.mnemonic:	o
*insertCell.labelString:	Celda
*insertCell.mnemonic:	C

! new
! Format Menu
! Properties Menu
*menuBar*properties.labelString:	Propiedades
*menuBar*textProperties.labelString:	Propiedades del texto
*menuBar*textProperties.mnemonic:	t
*menuBar*linkProperties.labelString:	Propiedades del enlace...
*menuBar*linkProperties.mnemonic:	e
*menuBar*imageProperties.labelString:	Propiedades de la imagen
*menuBar*imageProperties.mnemonic:	i
*menuBar*targetProperties.labelString:	Propiedades del destino
*menuBar*targetProperties.mnemonic:	d
*menuBar*tableProperties.labelString:	Propiedades de la tabla
*menuBar*tableProperties.mnemonic:	t
*menuBar*hruleProperties.labelString:	Propiedades de la línea horizontal
*menuBar*hruleProperties.mnemonic:	l
*menuBar*tagProperties.labelString:	Propiedades de la etiqueta...
*menuBar*tagProperties.mnemonic:	u
*menuBar*documentProperties.labelString:	Propiedades de la página
*menuBar*documentProperties.mnemonic:	p

! Properties Character Pullaside
*charProperties.labelString:	Carácter
*charProperties.mnemonic:	C
*charProperties.bold.labelString:	Negrita
*charProperties.bold.acceleratorText:	Alt+B
*charProperties.bold.mnemonic:	N
*charProperties.underline.labelString:	Subrayado
*charProperties.underline.acceleratorText:	Alt+U
*charProperties.underline.mnemonic:	S
*charProperties.italic.labelString:	Cursiva
*charProperties.italic.acceleratorText:	Alt+I
*charProperties.italic.mnemonic:	u
*charProperties.fixed.labelString:	Anchura fija
*charProperties.fixed.acceleratorText:	Alt+T
*charProperties.fixed.mnemonic:	A
*charProperties.superscript.labelString:	Superíndice
*charProperties.superscript.mnemonic:	u
*charProperties.subscript.labelString:	Subíndice
*charProperties.subscript.mnemonic:	b
*charProperties.strikethrough.labelString:	Tachado
*charProperties.strikethrough.mnemonic:	T
*charProperties.blink.labelString:	Intermitente
*charProperties.blink.mnemonic:	I
*charProperties.textColor.labelString:	Color del texto...
*charProperties.textColor.mnemonic:	l
*charProperties.defaultColor.labelString:	Color predeterminado
*charProperties.defaultColor.mnemonic:	r
*charProperties.serverJavaScript.labelString:	JavaScript (Servidor)
*charProperties.serverJavaScript.mnemonic:	J
*charProperties.clientJavaScript.labelString:	JavaScript (Cliente)
*charProperties.clientJavaScript.mnemonic:	v
*menuBar*charProperties.clearAllStyles.labelString:	Borrar todos los estilos <Alt+K>
*menuBar*charProperties.clearAllStyles.acceleratorText:	Alt+K
*menuBar*charProperties.clearAllStyles.mnemonic:	B
*menuBar*fontSize.labelString:	Tamaño de la letra
*menuBar*fontSize.mnemonic:	m
*menuBar*paragraphProperties.labelString:	Párrafo
*menuBar*paragraphProperties.mnemonic:	P
*menuBar*paragraphProperties.indent.labelString:	Indentar un nivel
*menuBar*paragraphProperties.indent.acceleratorText:	Tab
*menuBar*paragraphProperties.indent.mnemonic:	I
*menuBar*paragraphProperties.outdent.labelString:	Borrar un nivel de indentación
*menuBar*paragraphProperties.outdent.acceleratorText:	Shift+Tab
*menuBar*paragraphProperties.outdent.mnemonic:	e

! Properties Font Size PullAside/Toolbar Font Size Popup.
*characterToolbar*fontSize.marginWidth:	0
*characterToolbar*fontSize.marginHeight:	0
*composeToolbar*fontSize.marginWidth:	0
*composeToolbar*fontSize.marginHeight:	0
*fontSize.XmPushButtonGadget.labelType:	STRING
*fontSize.minusTwo.labelString:	-2
*fontSize.minusOne.labelString:	-1
*fontSize.plusZero.labelString:	+0
*fontSize.plusZero.mnemonic:	0
*fontSize.plusOne.labelString:	+1
*fontSize.plusOne.mnemonic:	1
*fontSize.plusTwo.labelString:	+2 
*fontSize.plusTwo.mnemonic:	2
*fontSize.plusThree.labelString:	+3
*fontSize.plusThree.mnemonic:	3
*fontSize.plusFour.labelString:	+4
*fontSize.plusFour.mnemonic:	4

! Properties Paragraph PullAside/Toolbar Properties Popup.
*composeToolbar*paragraphProperties.marginWidth:	0
*composeToolbar*paragraphProperties.marginHeight:	0
*paragraphProperties.XmPushButtonGadget.labelType:	STRING
*normal.labelString:	Normal
*normal.mnemonic:	N
*headingOne.labelString:	Encabezamiento 1
*headingOne.mnemonic:	1
*headingTwo.labelString:	Encabezamiento 2
*headingTwo.mnemonic:	2
*headingThree.labelString:	Encabezamiento 3
*headingThree.mnemonic:	3
*headingFour.labelString:	Encabezamiento 4
*headingFour.mnemonic:	4
*headingFive.labelString:	Encabezamiento 5
*headingFive.mnemonic:	5
*headingSix.labelString:	Encabezamiento 6
*headingSix.mnemonic:	6
*address.labelString:	Dirección
*address.mnemonic:	A
*formatted.labelString:	Con formato
*formatted.mnemonic:	F
*listItem.labelString:	Elemento de la lista
*listItem.mnemonic:	L
*descriptionItem.labelString:	Título de descripción
*descriptionItem.mnemonic:	T
*descriptionText.labelString:	Texto descriptivo
*descriptionText.mnemonic:	x

! Tools menu
! Options Menu
*menuBar*editorPrefs.labelString:	Preferencias del editor...
*menuBar*editorPrefs.mnemonic:	E
*Editor*menuBar*showToolbar.labelString:	Mostrar barra Archivo/Editar
*Editor*menuBar*showToolbar.mnemonic:	T
*menuBar*showCharacter.labelString:	Mostrar barra Carácter
*menuBar*showCharacter.mnemonic:	C
*menuBar*showParagraph.labelString:	Mostrar barra Párrafo
*menuBar*showParagraph.mnemonic:	P

! Windows Menu
*menuBar*netBrowser.labelString:	Navegador Mozilla

!=============
! Popup Menus
!=============

*popup*composeMessage.labelString:	Mensaje de correo nuevo
*popup*composeMessage.mnemonic:	M
!*popup*composeMessage.acceleratorText:	Alt+M
!
*popup*viewProperties.labelString:	Propiedades
*popup*viewProperties.mnemonic:	s
!
*popup*abDeleteEntry.labelString:	Borrar
*popup*abDeleteEntry.mnemonic:	D
*popup*abDeleteEntry.acceleratorText:	Ctrl+D
!
*popup*addToAddressBook.labelString:	Tarjeta nueva...
*popup*addToAddressBook.mnemonic:	w
*popup*abNewList.labelString:	Lista nueva...
*popup*abNewList.mnemonic:	L
!
*popup*saveMessagesAs.labelString:	Guardar como...
*popup*saveMessagesAs.mnemonic:	S
*popup*saveMessagesAs.acceleratorText:	Alt+S

! These are std Mail folder names.
*popup*sentMail.labelString:	Enviado
*popup*sentMail.mnemonic:	S

*popup*inbox.labelString:	Buzón de entrada
*popup*inbox.mnemonic:	I

*popup*trash.labelString:	Papelera
*popup*trash.mnemonic:	T

*popup*newFolder.labelString:	Nuevo...
*popup*newFolder.mnemonic:	N

! A few Message Center popups:
*popup*openFolder.labelString:  Abrir
*popup*openFolderInNew.labelString:  Abrir en una nueva ventana
*popup*deleteFolder.labelString:         Borrar
*popup*renameFolder.labelString:         Cambiar de nombre...
*popup*compactFolder.labelString:        Compactar
*popup*subscribeFolder.labelString:      Suscribir...
*popup*unsubscribeFolder.labelString:    Desuscribir

*popup*search.labelString:	Buscar mensajes
*popup*openNewsgroups.labelString:	Abrir grupo de noticias
*popup*markNewsgroupsRead.labelString:	Marcar el grupo de noticias como leído
*popup*updateMessageCount.labelString:	Actualizar cómputo de mensajes

! These are only in the threads window popup:
*popup*ignoreThread.labelString:	Omitir tema
*popup*ignoreThread.mnemonic:	I
*popup*watchThread.labelString:	Observar tema
*popup*watchThread.mnemonic:	W
*popup*changePriority.labelString:	Cambiar prioridad
*popup*openSelected.labelString:	Abrir mensaje
*popup*openMsgInNew.labelString:	Abrir mensaje en una ventana nueva
*popup*editMsg.labelString:		Modificar mensaje
*popup*addSenderToAddressBook.labelString:	Añadir al libro de direcciones

! the Mail Message window popup:
! many of these don't actually get there because they're
! overridden by the backend's allxpstr.h defs.
*popup*replyToSender.labelString:	Responder sólo al remitente
*popup*replyToSender.mnemonic:	R
*popup*replyToAll.labelString:	Responder al remitente y a todos los destinatarios
*popup*replyToAll.mnemonic:	A
*popup*replyToNewsgroup.labelString:	Responder al grupo de noticias

*toolBar*popup_PopupMenu.PopupMenu.replyToSender.labelString: Responder sólo al remitente
*toolBar*popup_PopupMenu.PopupMenu.replyToNewsgroup.labelString: responer sólo al grupo de noticias

*popup*replyToSenderAndNewsgroup.labelString:	Responder al remitente y al grupo de noticias

*popup*forwardMessage.labelString:	Siguiente
*popup*forwardMessage.mnemonic:	a
*popup*forwardMessageQuoted.labelString:	Reenviar citado
*popup*forwardMessage.mnemonic:	Q
! "Recipients"?  What does that do?  It's in the spec.

*popup*addToAddrBkSubmenu.labelString:	Añadir al libro de direcciones
*popup*addToABSubmenu.labelString:	Añadir al libro de direcciones
*popup*addSenderToAddrBk.labelString:	Remitente
*popup*addAllToAddrBk.labelString:	Todo

*popup*fileSubmenu.labelString:	Mover mensaje
*popup*deleteMessage.labelString:	Borrar mensaje
*popup*deleteMessage.mnemonic:	D
*popup*saveMessage.labelString:	Guardar mensaje
*popup*saveMessage.mnemonic:	v
*popup*print.labelString:	Imprimir el mensaje...
*popup*print.mnemonic:	P

! Editor Popup Menu
*popup*textProperties.labelString:	Propiedades del texto
*popup*textProperties.mnemonic:	x
*popup*targetProperties.labelString:	Propiedades del destino
*popup*targetProperties.mnemonic:	a
*popup*imageProperties.labelString:	Propiedades de la imagen
*popup*imageProperties.mnemonic:	I
*popup*tableProperties.labelString:	Propiedades de la tabla
*popup*tableProperties.mnemonic:	T
*popup*hruleProperties.labelString:	Propiedades de la línea horizontal
*popup*hruleProperties.mnemonic:	o
*popup*tagProperties.labelString:	Propiedades de la etiqueta...
*popup*tagProperties.mnemonic:	H
*popup*paragraphProperties.labelString:	Propiedades del párrafo
*popup*paragraphProperties.mnemonic:	g
*popup*documentProperties.labelString:	Propiedades de la página
*popup*documentProperties.mnemonic:	D
*popup*insert.labelString:	Insertar
*popup*insert.mnemonic:	s
*popup*insertLink.labelString:	Insertar enlace...
*popup*insertLink.mnemonic:	n
*popup*linkProperties.labelString:	Propiedades del enlace...
*popup*linkProperties.mnemonic:	n
*popup*browseLink.labelString:	Abrir enlace en el navegador...
*popup*browseLink.mnemonic:	w
*popup*browseToLink.labelString:	Ir a: (%s)
*popup*editLink.labelString:	Abrir enlace en el editor...
*popup*editLink.mnemonic:	E
*popup*bookmarkLink.labelString:	Añadir enlace a los marcadores
*popup*bookmarkLink.mnemonic:	B
*popup*copyLink.labelString:	Copiar la dirección del enlace
*popup*copyLink.mnemonic:	k
*popup*removeLink.labelString:	Borrar enlace
*popup*removeLink.mnemonic:	R

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (submenu).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*toolBar*newBlank.labelString:          Página en blanco
*toolBar*newTemplate.labelString:       Nuevo a partir de un patrón
*toolBar*newWizard.labelString:         Nuevo con un asistente
*toolBar*openPage.labelString:          abrir página...
*toolBar*save.labelString:              Guardar
*toolBar*saveAs.labelString:            Guardar como...
*toolBar*publish.labelString:           Publicar
*toolBar*sendPage.labelString:          Enviar página

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor toolbar (text only).
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*toolBar.editDocument.labelString:	Modificar
*toolBar.editorNewBlank.labelString:	Nuevo
*toolBar.editorOpenFile.labelString:	Abrir...
*toolBar.save.labelString:	Guardar
*toolBar.editorBrowse.labelString:	Ir a
*toolBar.cut.labelString:	Cortar
*toolBar.copy.labelString:	Copiar
*toolBar.paste.labelString:	Pegar
*toolBar.publish.labelString:	Publicar
! new
*toolBar.newBlank.labelString:	Nuevo
*newBlank.tipString:	Nueva página
*toolBar.openPage.labelString:	Abrir
*toolBar.browsePage.labelString:	Ir a
*toolBar.findInObject.labelString:	Buscar
*toolBar.insertLink.labelString:	Enlace
*toolBar.insertTarget.labelString:	Destino
*toolBar.insertImage.labelString:	Imagen
*toolBar.insertHorizontalLine.labelString:	Línea
*toolBar.insertTable.labelString:	Tabla
*toolBar.spellCheck.labelString:	Ortog.

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor dialogs.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*textPropertiesDialog_popup.title:	Mozilla: Propiedades
*textPropertiesDialog.folder.XmForm.marginHeight:	10
*textPropertiesDialog.folder.XmForm.marginWidth:	10
*textPropertiesDialog*XmFrame.marginHeight:	2
*textPropertiesDialog*XmFrame.marginWidth:	2
*imagePropertiesDialog_popup.title:	Mozilla: Propiedades
*imagePropertiesDialog.folder.XmForm.marginHeight:	10
*imagePropertiesDialog.folder.XmForm.marginWidth:	10
*imagePropertiesDialog*XmFrame.marginHeight:	2
*imagePropertiesDialog*XmFrame.marginWidth:	2

! Properties/Link properties.
*linkProperties.tabLabelString:	Enlace
*linkSourceTitle.labelString:	Origen del enlace
*linkSourceLabel.labelString:	Introducir el texto del enlace:
*linkToTitle.labelString:	Enlazar con
*linkToLabel.labelString:	Introducir enlace con una página o archivo local:
*browseFile.labelString:	Ver archivo...
*linkTarget.labelString:	\
Enlazar con un destino conocido en la página indicada(opcional)
*showTargets.labelString:	Mostrar destinos en:
*currentDocument.labelString:	Página actual
*selectedFile.labelString:	Archivo seleccionado
*linkProperties*targetText.height:	100

! Properties/Character properties:
*characterProperties.tabLabelString:	Carácter
*colorTitle.labelString:	Color
*colorLabel.labelString:	Colo actual:
*default.labelString:	Color predeterminado de la página
*custom.labelString:	Color personalizado
*chooseColor.labelString:	Elegir color...
*colorText.labelString:	El texto seleccionado se mostrará en el color elegido.
*sizeTitle.labelString:	Tamaño
*sizeText.labelString:	Cada estilo de párrafo tiene\nsu propio tamaño predeterminado.
*styleTitle.labelString:	Estilo
*clearStyles.labelString:	Borrar propiedades del estilo
*characterProperties*clearStyles.marginWidth:	10
*characterProperties*clearStyles.marginHeight:	5
*characterProperties*clearStyles.leftOffset:	30
*characterProperties*clearStyles.rightOffset:	30
*characterProperties*clearStyles.bottomAttachment:	ATTACH_FORM
*characterProperties*clearStyles.bottomOffset:	5
*characterProperties*javaFrame.leftOffset:	10
*characterProperties*sizeFrame.leftOffset:	10
*javaTitle.labelString:	Java Script
*java*client.labelString:	Cliente
*java*server.labelString:	Servidor
*clearAll.labelString:	Borrar todas las propiedades
*characterProperties*clearAll.marginWidth:	10
*characterProperties*clearAll.marginHeight:	5
*characterProperties*clearAll.topOffset:	20
*characterProperties*clearAll.leftOffset:	15
*characterProperties*clearAll.rightOffset:	15

! Properties/Paragraph properties:
*paragraphProperties.tabLabelString:	Párrafo
*styleLabel.labelString:	Estilo del párrafo:
*additionalLabel.labelString:	Estilo adicional:
*additional*default.labelString:	Valor predeterminado
*additional*list.labelString:	Lista
*additional*blockQuote.labelString:	Cita
*listTitle.labelString:	Lista
*listLabel.labelString:	Estilo:
*numbered.labelString:	Numerada
*unnumbered.labelString:	Sin numerar (viñetas)
*directory.labelString:	Directorio
*menu.labelString:	Menú
*description.labelString:	Descripción
*automatic.labelString:	Automático
*digital.labelString:	1,2,3,4,5..
*lowerRoman.labelString:	i,ii,iii,iv,v..
*upperRoman.labelString:	I,II,III,IV,V..
*lowerAlpha.labelString:	a,b,c,d,e..
*upperAlpha.labelString:	A,B,C,D,E..
*solidCircle.labelString:	Círculo sólido
*openCircle.labelString:	Círculo abierto
*openSquare.labelString:	Cuadrado abierto
*startLabel.labelString:	Número inicial
*startText.columns:	4
*spaceAvailable.labelString:	Espacio disponible
*paragraphProperties*spaceAvailable.topOffset:	40
*paragraphProperties*spaceAvailable.leftOffset:	150

! Properties/Image properties:
*imageProperties.tabLabelString:	Imagen
*imageFileTitle.labelString:	Origen de la imagen - introducir una URL remota o archivo local:
*chooseFile.labelString:	Elegir archivo...
*browse.labelString:	Examinar
*alternativeImageTitle.labelString:	Representaciones alternativas (opcional):
*alternativeImageLabel.labelString:	Imagen:
*alternativeTextLabel.labelString:	Texto:
*alignmentRowColumn*XmToggleButtonGadget.shadowThickness:	2
*alignmentTitle.labelString:	Alineación del texto o ajuste alrededor de las imágenes
*alignmentInfoLabel.labelString:	Para ver el texto ajustado, visualicela página en la ventana del navegador.
*imageSpaceTitle.labelString:	Espacio alrededor de la imagen
*imageProperties.imageSpaceFrame.leftOffset:	10
*leftRightLabel.labelString:	Izq. y dcha.:
*topBottomLabel.labelString:	Arriba y abajo:
*solidBorderLabel.labelString:	Borde sólido:
*originalSize.labelString:	Tamaño original
*customSize.labelString:	Tamaño personalizado
*constrain.labelString:	Confinar
*copyImage.labelString:	Copiar la imagen en esta posición de la página
*leaveImage.labelString:	Dejar la imagen en su dirección original
*useAsBackground.labelString:	Usar como fondo
*removeImageMap.labelString:	Borrar mapa
*editImage.labelString:	Modificar imagen

! Horizontal Line Properties
*horizontalLineProperties_popup.title:	Mozilla: Línea Horizontal
*dimensionsTitle.labelString:	Dimensiones
*horizontalLineProperties*XmFrame.marginWidth:	10
*horizontalLineProperties*XmFrame.marginHeight:	10
*heightLabel.labelString:	H Altura:
*heightText.columns:	4
*pixels.labelString:	píxeles
*widthLabel.labelString:	Ancho:
*widthText.columns:	4
*percent.labelString:	% de ventana
*alignTitle.labelString:	Alinear
*left.labelString:	Izquierda
*center.labelString:	Centro
*right.labelString:	Derecha
*threeDShading.labelString:	Sombreado tridimensional

! Document Properties & Editor Preferences/Appearance
*appearanceProperties.tabLabelString:	Colores y fondo
*documentPropertiesDialog_popup.title:	Mozilla: Propiedades de la página
*editorPreferencesDialog_popup.title:	Mozilla: Propiedades del editor
*folder*appearance.marginHeight:	10
*folder*appearance.marginWidth:	10
*folder*appearance*XmFrame.marginHeight:	2
*folder*appearance*XmFrame.marginWidth:	2
*appearance*custom.labelString:	Usar colores personalizados
*appearance*browser.labelString:	Usar las propiedades de color del navegador
*schemesTitle.labelString:	Esquemas de color
*save.labelString:	Guardar
*remove.labelString:	Borrar
*documentColorsTitle.labelString:	Colores de la página
*documentPropertiesDialog*previewFrame.marginHeight:	0
*documentPropertiesDialog*previewFrame.marginWidth:	0
*appearance*normal.labelString:	Texto normal...
*appearance*link.labelString:	Texto de enlace...
*appearance*active.labelString:	Texto de enlace activo...
*appearance*followed.labelString:	Texto de enlace visitado...
*appearance*background.labelString:	Fondo...
*appearance*backgroundInfo.labelString:	La imagen del fondo sustituirá al color.
*appearance*preview.normal.labelString:	Texto normal
*appearance*preview.link.labelString:	Texto del enlace
*appearance*preview.active.labelString:	Enlace activo (seleccionado)
*appearance*preview.followed.labelString:	Enlace seguido (visitado)
*appearance*preview*normalLabelString:	Texto normal
*appearance*preview*linkLabelString:	Texto del enlace
*appearance*preview*activeLabelString:	Enlace activo (seleccionado)
*appearance*preview*followedLabelString:	Enlace seguido (visitado)
*backgroundImageTitle.labelString:	Imagen de fondo
*browseImageFile.labelString:	Buscar el archivo...
*solid.labelString:	Colores sólidos
*useImage.labelString:	Usar imagen
*choose.labelString:	Elegir color...
*documentPropertiesDialog*appearance*infoLabel.labelString:	Estas propiedades se aplicarán a la página actual.
*editorAppearance*appearance*infoLabel.labelString:	Estas propiedades se aplicarán a las páginas nuevas, no a la actual.

! Document Properties/General
*generalProperties.tabLabelString:	General
*folder*general.marginHeight:	10
*folder*general.marginWidth:	10
*locationLabel.labelString:	Dirección:
*titleLabel.labelString:	Título:
*authorLabel.labelString:	Autor:
*descriptionLabel.labelString:	Descripción:
*createdLabel.labelString:	Fecha de creación:
*updatedLabel.labelString:	Ultima modificación:
*otherAttributesTitle.labelString:	Otros atributos
*infoLabel.labelString:	Si utiliza varias palabras o frases, sepárelas con comas.
*keywordsLabel.labelString:	Palabras clave:
*classificationLabel.labelString:	Clasificación:

! Document Properties/Advanced
*advanced.tabLabelString:	Avanzado
*folder*advanced.marginHeight:	10
*folder*advanced.marginWidth:	10
*systemLabel.labelString:	Mozilla: variables de sistema (HTTP-EQUIV):
*userLabel.labelString:	Variables del usuario (META):
*nameLabel.labelString:	Nombre:
*valueLabel.labelString:	Valor:
*delete.labelString:	Borrar
*set.labelString:	Definir
*new.labelString:	Nuevo

! Target Properties
*targetPropertiesDialog_popup.title:	Mozilla: Propiedades del destino
*targetLabel.labelString:	Introduzca un nombre para este destino:

! Html Properties
*htmlPropertiesDialog_popup.title:	Mozilla: Etiqueta HTML
*htmlPropertiesInfo.labelString:	Introduzca el nombre de la etiqueta y cualquier atributo o parámetro para una sóla etiqueta.
*htmlPropertiesDialog.Apply.labelString:	Verificar
*htmlPropertiesDialog.ApplyLabelString:	Verificar

! Editor Preferences/General
*generalPreferences.tabLabelString:	General
*authorTitle.labelString:	Nombre del autor
*externalTitle.labelString:	Editores externos
*htmlLabel.labelString:		Fuente HTML:
*imageLabel.labelString:	Imagen:
*templateTitle.labelString:	Nueva plantilla de página
*templateInfo.labelString:	Esta página se abrirá cuando escoga el menú:\nArchivo/Nueva Página/Como Plantilla.
*restoreDefault.labelString:	Reestablecer predeterminado
*autosaveTitle.labelString:	Autoguardar
*autosaveEnable.labelString:	Guardar la página automáticamente cada:
*minutes.labelString:	minutos

! Editor/Tables Properties&Create
*table.tabLabelString:	Tabla
*row.tabLabelString:	Fila
*cell.tabLabelString:	Celda
*tableCreateDialog_popup.title:	Mozilla: Propiedades de las tablas nuevas
*tablePropertiesDialog_popup.title:	Mozilla: Propiedades de las tablas
*tableRowsLabel.labelString:	Número de filas:
*tableColumnsLabel.labelString:	Número de columnas:
*attributesTitle.labelString:	Atributos
*tableAlignmentTitle.labelString:	Justificación tabla
*borderLineWidthLabel.labelString:	Ancho del borde
*borderLineWidthUnits.labelString:	píxeles
*cellSpacingLabel.labelString:	Espaciado de las celdas
*cellSpacingUnits.labelString:	píxeles entre celdas
*cellPaddingLabel.labelString:	Relleno de celdas
*cellPaddingUnits.labelString:	píxeles entre celdas
*tableWidthToggle.labelString:	Ancho tabla
*tableHeightToggle.labelString:	Altura mín. tabla
*tableColorToggle.labelString:	Color tabla
*captionToggle.labelString:	Incluir descripción
*above.labelString:	sobre
*below.labelString:	debajo tabla
*tableWidthUnits.marginWidth:	0
*tableWidthUnits.marginHeight:	0
*tableHeightUnits.marginWidth:	0
*tableHeightUnits.marginHeight:	0
*captionUnits.marginWidth:	0
*captionUnits.marginHeight:	0
*textAlignmentTitle.labelString:	Justificación texto
*horizontalLabel.labelString:	Horizontal
*verticalLabel.labelString:	Vertical
*textAlignment*default.labelString:	Valor predeterminado
*textAlignment*left.labelString:	Izquierda
*textAlignment*right.labelString:	Derecha
*textAlignment*center.labelString:	Centro
*textAlignment*top.labelString:	Superior
*textAlignment*bottom.labelString:	Inferior
*textAlignment*baselines.labelString:	Líneas de base
*tableAlignmentBox*left.labelString:	Izquierda
*tableAlignmentBox*right.labelString:	Derecha
*tableAlignmentBox*center.labelString:	Centro
*rowColorToggle.labelString:	Color fila
*textOtherTitle.labelString:	Texto
*headerStyle.labelString:	Estilo del encabezado
*nonBreaking.labelString:	Inseparable
*cellRowsLabel.labelString:	Extensión celda
*cellColumnsLabel.labelString:	fila(s), y 
*cellColumnsUnits.labelString:	columna(s)
*cellWidthToggle.labelString:	Ancho celda
*cellHeightToggle.labelString:	Altura mín. celda
*cellColorToggle.labelString:	Color celda
*percentOfCell.labelString:	% de la celda superior
*percentOfWindow.labelString:	% de ventana
*cancel.cancelLabelString:	Cancelar
*cancel.closeLabelString:	Cerrar
*Cancel.cancelLabelString:	Cancelar
*Cancel.closeLabelString:	Cerrar
*borderLineWidth.labelString:	Ancho del borde
*equalColumnWidth.labelString:	Anchos de columna iguales
*backgroundTitle.labelString:	Fondo de la tabla
*backgroundAttributes.useColor.labelString:	Usar color:
*backgroundAttributes.useImage.labelString:	Usar Imagen:
*backgroundAttributes.chooseImage.labelString:	Elegir imagen...

! Editor Preferences/Publish
*publishPreferences.tabLabelString:	Publicar
*folder*publish.marginHeight:	10
*folder*publish.marginWidth:	10
*linksAndImagesTitle.labelString:	Enlaces e imágenes
*linksAndImagesLabel.labelString:	Cuando se guardan páginas remotas y, cuando se insertan imágenes y enlaces:
*linksToggle.labelString:	Mantener enlaces
*linksInfo.labelString:	Ajustar los enlaces para que funcionen desde la dirección de la página. (Los enlaces\na páginas locales funcionarán cuando existan versiones locales).
*imagesToggle.labelString:	Mantener las imágenes con la página
*imagesInfo.labelString:	Guardar copias de las imágenes en la dirección de la página.\nLas imágenes siempre aparecerán en la versiones locales de la página\ny cuando se publique la página.
*linksAndImagesTip.labelString:	Pista: Active ambas opciones si va a realizar una publicación remota.
*publishTitle.labelString:	Dirección de publicación predeterminada
*publishLabel.labelString:	Publicar en (FTP o HTTP):
*browseLabel.labelString:	Ir a (HTTP):
*usernameLabel.labelString:	Nombre del usuario:
*passwordLabel.labelString:	Contraseña:
*savePassword.labelString:	Guardar contraseña

! Publish Files dialog box
*publishFilesDialog_popup.title:	Mozilla: Publicar archivos
*localFilesTitle.labelString:	Archivos locales
*localFiles.publishLabel.labelString:	Publicar:
*includeLabel.labelString:	Incluir archivos:
*includeImages.labelString:	Archivos asociados a esta página
*includeAll.labelString:	Todos los archivos del directorio
*selectNone.labelString:	No seleccionar ninguno
!
!
*titleFrameTitle.labelString:	Título de la página
*publishLocationTitle.labelString:	Dirección de publicación
*publishLocation.publishLabel.labelString:	Enviar archivos a esta dirección (FTP o HTTP):
*useDefault.labelString:	Usar dirección predeterminada
! bogus url alert default button:
*publishFilesDialog_popup.question_popup.dialog.defaultButtonType:	dialog_cancel_button

*hintDialog_popup.title:	Mozilla: Ayuda
*dontDisplayAgain.labelString:	No volver a mostrar este mensaje.
*hintDialog.dontDisplayAgainRow.marginWidth:	9

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Editor popups.
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Color Picker
*setColors_popup.title:	Mozilla: Establecer colores
*standardColorsTitle.labelString:	Colores estándar
*colorPicker*oldSample.labelString:	Viejo
*colorPicker*newSample.labelString:	Nuevo
*colorPicker*swatches.tabLabelString:	Selectores
*colorPicker*rgb.tabLabelString:	RGB
*colorPicker*rgb*unitsMenu.decimal.labelString:	Decimal
*colorPicker*rgb*unitsMenu.hex.labelString:	Hexadecimal
*colorPicker*rgb*unitsMenu.percent.labelString:	%
*colorPicker*defaultColor.labelString:	Color predeterminado
*colorPicker*otherColor.labelString:	Otro color...

! Save Remote Dialog.
*saveRemote.marginHeight:	10
*saveRemote.marginWidth:	10
! These don't seem to get set by above two lines.
*saveRemote*infoIcon.marginWidth:	15
*saveRemote*infoIcon.marginHeight:	15
*saveRemote_popup.title:	Mozilla: Guardar página remota
*saveRemote*infoText.labelString:	Este documento está en un servidor remoto.\nDebe guardarlo localmente primero antes\nde realizar cambios.
*saveRemote*linksTitle.labelString:	Enlaces
*saveRemote*linksToggle.labelString:	Ajustar los enlaces para permitir su publicación remota
*saveRemote*linksText.labelString:	Los enlaces a otras páginas en la misma dirección (directorio)\nfuncionarán localmente y cuando se publiquen las páginas.\n\nLos enlaces a servidores remotos no serán modificados.
*saveRemote*imagesTitle.labelString:	Imágenes
*saveRemote*imagesToggle.labelString:	Guardar las imágenes con la página
*saveRemote*imagesText.labelString:	Las imágenes aparecerán en las versión locales de la página.
*saveRemote*save.labelString:	Guardar
*saveRemote*cancel.labelString:	Cancelar
*saveRemote*help.labelString:	Ayuda

! Confirm Save File(s) Dialog.
*confirmSaveFiles_popup.title:	Mozilla: Confirmar guardar archivo
*confirmSaveFiles.marginHeight:	0
*confirmSaveFiles.marginWidth:	0
*yes.labelString:	Yes
*confirmSaveFiles*yesToAll.labelString:	Sí a todo
*no.labelString:	No
*confirmSaveFiles*noToAll.labelString:	No a todo
*confirmSaveFiles*cancel.labelString:	Cancelar
*confirmSaveFiles*help.labelString:	Ayuda
*confirmSaveFiles*defaultButtonShadowThickness:	0

! Save/Upload files message dialogs.
*saveMessageDialog_popup.title:	Guardando archivos
*uploadMessageDialog_popup.title:	Enviando archivos
*imageLoadMessageDialog_popup.title:	Cargando imagen
*saveMessageDialog.width:	400
*uploadMessageDialog.width:	400
*imageLoadMessageDialog.width:	400

!=============================================================================
! Mail/News column titles
!=============================================================================
*mailNewsColumns.folderlist.Name:	Nombre
*mailNewsColumns.folderlist.Unread:	No leído
*mailNewsColumns.folderlist.Total:	Total
*mailNewsColumns.messagelist.Thread:	Tema
*mailNewsColumns.messagelist.Sender:	Remitente
*mailNewsColumns.messagelist.Subject:	Asunto
*mailNewsColumns.messagelist.Date:	Fecha


!=============================================================================
*toolBar*spacer.marginWidth:	4

*urlBar*whatsNew.labelString:	¿Novedades?
*whatsNew.documentationString:	Qué hay de nuevo en la Red
*urlBar*whatsCool.labelString:	¿Interesante?
*whatsCool.documentationString:	Direcciones intersantes en la Red
*urlBar*inetIndex.labelString:	Internet
*inetIndex.documentationString:	Explorando la Red
*urlBar*inetSearch.labelString:	Buscar en la Red
*inetSearch.documentationString:	Buscar en Internet
*urlBar*inetWhite.labelString:	Ajenos
*inetWhite.documentationString:	Gente y Lugares
*urlBar*inetYellow.labelString:	Páginas Amarillas
*urlBar*upgrade.labelString:	Actualizaciones
*urlBar*welcome.labelString:	Bienvenido
*urlBar*newsgroups.labelString:	Grupos
*inetAbout.documentationString:	Acerca de Internet

*toolBar.getNewMail.labelString:	Recibir Correo
*toolBar.deleteMessage.labelString:	Borrar
*toolBar.mailNew.labelString:	Nuevo mensaje de correo
*toolBar.postNew.labelString:	Nuevo
*toolBar.replyToSender.labelString:	Responder
*toolBar.replyToAll.labelString:	Resp.todos
*toolBar.postReply.labelString:	Enviar
*toolBar.postAndMailReply.labelString:	Responder
*toolBar.forwardMessage.labelString:	Siguiente
*toolBar.previousUnreadMessage.labelString:	Anterior
*toolBar.nextUnreadMessage.labelString:	Siguiente
*toolBar.markThreadRead.labelString:	Tema
*toolBar.markAllRead.labelString:	Todo

*msgViewAttachPopup*open.labelString:	Abrir...
*msgViewAttachPopup*open.mnemonic:	O
*msgViewAttachPopup*save.labelString:	Guardar...
*msgViewAttachPopup*save.mnemonic:	S
*msgViewAttachPopup*properties.labelString:	Properties...
*msgViewAttachPopup*properties.mnemonic:	P

*attachmentProps.dialogTitle:	Adjunto
Netscape*attachmentProps*XmLabelGadget.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-1

*attachmentProps.okLabelString:	Aceptar
*attachmentProps*nameLabel.labelString:	Nombre:
*attachmentProps*typeLabel.labelString:	Tipo:
*attachmentProps*encLabel.labelString:	Codificación:
*attachmentProps*descLabel.labelString:	Descripción:

!=============================================================================
! Toolbar for addressbook
!
*toolBar.addToAddressBook.labelString:	Nueva tarjeta
*toolBar.abNewList.labelString:	Nueva lista
*toolBar.deleteABEntry.labelString:	Borrar
*toolBar.toAB.labelString:	Para:
*toolBar.ccAB.labelString:	CC:
*toolBar.bccAB.labelString:	BCC:
*toolBar.directoryAB.labelString:	Directorio

!
*Properties*showSecurBtn.labelString:	Mostrar certificado
*filterBoxForm.filterPrompt.labelString:	Escriba el nombre que está buscando:
*filterBoxForm.filterInLabel.labelString:	en:
*filterBoxForm.filterSearchBtn.labelString:	Buscar


!=============================================================================
! Toolbar for mail compose
*toolBar.SendOrSendLater.labelString:	Enviar
*toolBar.quoteMessage.labelString:	Citar
*toolBar.attach.labelString:	Adjuntar
*toolBar.openAddrBook.labelString:	Dirección

!=============================================================================
! Turn off beeping on name completion in the address outliner:
*addressText*verifyBell:	False

!=============================================================================
*noDocumentLoadedMessage:	No se ha cargado ninguna página en esta ventana.
*optionsSavedMessage:	Las opciones han sido guardadas.
*clickToSaveMessage:	Haga clic sobre el enlace para guardar.
*clickToSaveCancelledMessage:	Se ha cancelado el guardar enlace en archivo.
*noPreviousURLMessage:	No hay página anterior.
*noNextURLMessage:	No hay página siguiente.
*noHomeURLMessage:	No se ha especificado una página de inicio.
*notOverImageMessage:	No está sobre una imagen.
*notOverLinkMessage:	No está sobre un enlace.
*noSearchStringMessage:	No hay nada que buscar.
*wrapSearchMessage:	Se ha alcanzado el final de la página; ¿continuar desde el principio?
*wrapSearchBackwardMessage:	Se ha alcanzado el principio de la página; ¿continuar desde el final?
*wrapSearchNotFoundMessage:	No se ha encontrado el texto buscado.
*noAddressesMessage:	No se han indicado destinatarios.
*noFileMessage:	No se ha indicado un archivo de salida.
*noPrintCommandMessage:	No se ha indicado un comando de impresión.
*overwriteFileMessage:	¿Sobreescribir el archivo existente %s?
*bookmarksChangedMessage:	El archivo de marcadores en el discos ha cambiado: ¿quiere sobreescribirlo?
*bookmarkConflictMessage:	\
No se ha guardado la lista de marcadores.\n¿Recargar ahora la versión del disco?
*bookmarksNoFormsMessage:	\
No se pudo añadir el resultado del envío de un formulario a la lista de marcadores.
*reallyQuitMessage:	¿Cerrar todas las ventanas y salir de Mozilla?
*doubleInclusionMessage:	\n\
El documento ya ha sido incluido como cita.\n\
 \n\
¿Está seguro de que quiere citarlo de nuevo?

*expireNowMessage:	\
Esto marcará todos sus enlaces como no visitados.\n¿Proceder?
*clearMemCacheMessage:	\
Esto borrará todos los archivos que están actualmente en la memoria caché. ¿Continuar?
*clearDiskCacheMessage:	\
Esto borrará todos los archivos que están actualmente en el caché de disco. ¿Continuar?

*createCacheDirErrorMessage:	\
Error: ha sido imposible crear un directorio caché permanente:\n\
 \n\
            %s: %s.\n\
 \n\
Por favor, indique un nuevo directorio caché en la sección Avanzado/Caché\n\
del diálogo `Editar|Preferencias...'.\n

*createdCacheDirMessage:	\
Se ha credo un directorio para su uso como caché de disco:\n\
 \n\
            %s/\n\
 \n\
Puede cambiar el directorio caché en la sección Avanzado/Caché\n\
del diálogo `Editar|Preferencias...'.\n

*cacheNotDirMessage:	\
Error: el directorio configurado como caché de disco\n\
existe, pero no es un directorio:\n\
 \n\
            %s\n\
 \n\
Por favor, indique un nuevo directorio caché en la sección Avanzado/Caché\n\
del diálogo `Editar|Preferencias...'.\n

*cacheSuffixMessage:	\
 \n\
Debería haber un caché de disco por usuario, por tanto,\n\
el uso de un directorio compartido (como /tmp) no es aconsejable.\n\
 \n\
El tamaño máximo del caché de disco es actualmente %d Kb.\n\
Puede modificar el tamaño del caché en la Avanzado/Caché\n\
del diálogo `Editar|Preferencias...'.\n\
 \n\
Si desea desactivar el caché de disco, ponga su tamaño a 0.\n\
Si hace esto, las páginas seguiran siendo almacenadas\n\
en la memoria de acuerdo con el tamaño de Memoria Caché que haya establecido,\n\
pero no seguirán siendo almacenadas en el disco. Este significa que\n\
el caché no se podrá ver de una sesión a otra de Mozilla.

*cubeTooSmallMessage:	\
Sólo se han podido asignar %d celdas para el cubo\n\
de color al cual se reducirán las imágenes.  Como resultado, la\n\
calidad de las imágenes puede ser pobre.\n\
 \n\
Una forma de mejorar la calidad de las imágenes es salir de cualquier\n\
otra aplicación que haga un uso intensivo de los colores y\n\
arrancar de nuevo Mozilla.\n\
 \n\
Otra forma es ejecutar Mozilla con la opción `-install'\n\
en la línea de comandos, que causará la utilización de un\n\
mapa de colores privado.  El inconveniente de esto es que en\n\
algunos sistemas, esto resultará en el parpadeo del mapa de colores\n\
al pasar el foco a otras ventanas.

*renameInitFilesMessage:	\
Existen archivos de preferencias de versiones antiguas de Mozilla;\n\
Esta versión de Mozilla utiliza el mismo formato de archivo, pero ha\n\
cambiado el nombre de los archivos. ¿Quiere renombrar\n\
estos archivos ahora?

*unsentMailMessage:	\
Existen mensajes de correo sin enviar, ¿de verdad quiere salir sin enviarlos?

*binaryDocumentMessage:	\
Esta página contiene datos binarios; no se puede ver el origen.

! For Helper App Editor - Delete
*helperAppDeleteMessage:	\
¿Está seguro de que quiere borrar este tipo de archivo MIME? Cualquier\n\
otro archivo de este tipo que encuentre en el futuro no podrá ser\n\
reconocido por los plug-ins o aplicaciones de ayuda de Mozilla.

!=============================================================================
!*preeditType:				root
!*Netscape.preeditType:			overthespot

! default titles for the TopLevelShell widgets.
! note that the title and icon title of Navigator windows are
! changed at runtime; these resources won't override that.
*title:	Mozilla
*iconName:	Mozilla
*Navigator.title:	Navegador Mozilla[es] 4.79
*MailThread.title:	Correo y grupos de noticias
*MailThread.iconName:	Correo y grupos de noticias


*Download.title:	Mozilla: Recibir
*Download.iconName:	Recibir
*Composition.title:	Mozilla: Composición de mensajes
*Composition.iconName:	Composición de mensajes
*bookmarks.title:	Mozilla: Marcadores
*bookmarks.iconName:	Marcadores
*AddressBook.title:	Mozilla: Libro de direcciones
*AddressBook.iconName:	Libro de direcciones
*Editor.title:	Mozilla: Editor de páginas Web
*Editor.iconName:	Editor de páginas Web
*MailFolder.title:	Mozilla: Centro de mensajes
*MailFolder.iconName:	Centro de mensajes
*AWTapp.iconName:	Consola de Java
*history.iconName:	Historial
*MailMsg.iconName:	Mensaje

!========================
! Popup Menu - Navigator
!========================

*popup.title.labelString:	Comandos de Mozilla:
*popup.openURLNewWindow.labelString:	Abrir el enlace en una ventana nueva
*popup.openURLNewWindow.mnemonic:	O
*popup*openURLNewWindow.acceleratorText:	Button2
*popup.openFrameNew.labelString:	Abrir el marco en una ventana nueva
*popup.openFrameNew.mnemonic:	w
*popup.editLink.labelString:	Abrir enlace en el editor
*popup.editLink.mnemonic:	e
!                                       ------------------------
! back
! forward
*reloadNonFrameCmdString:	Recargar
*reloadWithFrameCmdString:	Recargar marco
*popup.frameReload.mnemonic:	R
*popup.showImage.labelString:	Mostrar imagen
*popup.showImage.mnemonic:	g
! stopLoading
!                                       ------------------------
*pageSourceNonFrameCmdString:	Ver la fuente HTML de la página
*pageSourceWithFrameCmdString:	Ver la fuente HTML del marco
*popup.framePageSource.mnemonic:	u
*pageInfoNonFrameCmdString:	Ver información de la página
*pageInfoWithFrameCmdString:	Ver información del marco
*popup.framePageInfo.mnemonic:	V
*openImageCmdString:	Ver imagen
*popup.openImage.mnemonic:	m
!                                       ------------------------
*popup.addLinkBookmark.labelString:	Añadir marcador para el enlace
*popup.addLinkBookmark.mnemonic:	k
*popup.addFrameBookmark.labelString:	Añadir marcador para el marco
*popup.addFrameBookmark.mnemonic:	k
! sendPage
!                                       ------------------------
*popup.saveURL.labelString:	Guardar enlace como...
*popup.saveURL.mnemonic:	G
*popup.saveURL.acceleratorText:	Shift+Button1
*popup.saveImage.labelString:	Guardar imagen como...
*popup.saveImage.mnemonic:	i
*popup.saveBGImage.labelString:	Guardar fondo como...
*popup.saveBGImage.mnemonic:	d
!                                       ------------------------
! 'copy' command defined in editor popup above
! 'copyLink' command defined in editor popup above
*popup.copyImage.labelString:	Copiar la dirección de la imagen
*popup.copyImage.mnemonic:	y


!
! Convert from old version file formats
*convertQuestion_popup*OK.labelString:	Borrar archivos de configuración viejos
*convertQuestion_popup*Cancel.labelString:	Conservar los archivos de configuración viejos

!
! Convert from old version file formats
*sendNow_popup*OK.labelString:	Yes
*sendNow_popup*Cancel.labelString:	No


! Mail/News popup menus
!
*Mail*popup.title.labelString:	Aplicación de correo de Mozilla
*News*popup.title.labelString:	Grupos de noticias de Mozilla

! News open News host dialog
!
*News*openNewsHost.title:	Mozilla: Abrir servidor de Grupos de noticias
*News*openNewsHost*selectionLabelString:					Introduzca el nombre y el puerto del servidor de noticias a usar:
*News*openNewsHost*hostLabel.labelString:	Servidor de grupos noticias:
*News*openNewsHost*hostLabel.alignment:	ALIGNMENT_END
*News*openNewsHost*portLabel.labelString:	Puerto:
*News*openNewsHost*portLabel.leftOffset:	10
*News*openNewsHost*portLabel.alignment:	ALIGNMENT_END
*News*openNewsHost*secure.labelString:	Seguro
*News*openNewsHost*secure.topOffset:	10
*News*openNewsHost*portText.columns:	5

*history_popup.title:	Mozilla: Historial
*history_popup*listLabelString:	Donde ha estado...
*history_popup*OK.labelString:	Ir a
*history_popup*OkLabelString:	Ir a
*history_popup*Cancel.labelString:	Cerrar
*history_popup*CancelLabelString:	Cerrar
*history_popup*Apply.labelString:	Crear marcadores
*history_popup*ApplyLabelString:	Crear marcadores

*source_popup.title:	Mozilla: Ver código fuente
*source_popup*save.labelString:	Guardar...
*source_popup*OK.labelString:	Aceptar
*source_popup*text.editable:	False
*source_popup*text.cursorPositionVisible:	False
*source_popup*text.wordWrap:	True
*source_popup*text.scrollHorizontal:	False
*source_popup*urlLabel.labelString:	Dirección:
*source_popup*titleLabel.labelString:	Título:
*source_popup*titleLabel.leftOffset:	0
*source_popup*titleLabel.rightOffset:	4
*source_popup*titleLabel.alignment:	ALIGNMENT_END
*source_popup*urlLabel.topOffset:	0
*source_popup*urlLabel.leftOffset:	0
*source_popup*urlLabel.rightOffset:	4
*source_popup*urlLabel.alignment:	ALIGNMENT_END
*source_popup*titleText.leftOffset:	0
*source_popup*titleText.rightOffset:	0
*source_popup*urlText.leftOffset:	0
*source_popup*urlText.rightOffset:	0
*source_popup*text.leftOffset:	0
*source_popup*text.rightOffset:	0
*source_popup*XmScrolledWindow.topOffset:	8
*source_popup*text.columns:	80
*source_popup*text.rows:	20

*docinfo_popup.title:	Mozilla: Información de la página
*docinfo_popup*OK.labelString:	Aceptar
*docinfo_popup*titleLabel.labelString:	Título:
*docinfo_popup*urlLabel.labelString:	Dirección:
*docinfo_popup*modifiedLabel.labelString:	Fecha de la última modificación:
*docinfo_popup*sourceLabel.labelString:	Código fuente:
*docinfo_popup*charsetLabel.labelString:	Codificación:
*docinfo_popup*dpyLabel.labelString:	Visual:
*docinfo_popup*securityFrame.label.labelString:	Información sobre seguridad
*docinfo_popup*certificateLabel.labelString:	Certificado del servidor:
*docinfo_popup*certificateText.columns:	60
*docinfo_popup*certificateText.rows:	6
*docinfo_popup*certificateText.wordWrap:	True
*docinfo_popup*certificateText.scrollHorizontal:	False
*docinfo_popup*scrollBarDisplayPolicy:	AS_NEEDED
*docinfo_popup*scrollingPolicy:	Automático
*docinfo_popup*securityText.wordWrap:	True
*docinfo_popup*securityText.scrollHorizontal:	False
*docinfo_popup*urlLabel.topOffset:	0
*docinfo_popup*urlLabel.leftOffset:	0
*docinfo_popup*urlLabel.rightOffset:	4
*docinfo_popup*urlLabel.alignment:	ALIGNMENT_END
*docinfo_popup*titleLabel.leftOffset:	0
*docinfo_popup*titleLabel.rightOffset:	4
*docinfo_popup*titleLabel.alignment:	ALIGNMENT_END
*docinfo_popup*modifiedLabel.topOffset:	0
*docinfo_popup*modifiedLabel.leftOffset:	0
*docinfo_popup*modifiedLabel.rightOffset:	4
*docinfo_popup*modifiedLabel.alignment:	ALIGNMENT_END
*docinfo_popup*charsetLabel.topOffset:	0
*docinfo_popup*charsetLabel.leftOffset:	0
*docinfo_popup*charsetLabel.rightOffset:	4
*docinfo_popup*charsetLabel.alignment:	ALIGNMENT_END
*docinfo_popup*sourceLabel.topOffset:	0
*docinfo_popup*sourceLabel.leftOffset:	0
*docinfo_popup*sourceLabel.rightOffset:	4
*docinfo_popup*sourceLabel.alignment:	ALIGNMENT_END
! add 5 to dpyLabel.topOffset to align label with text baseline (gag)
*docinfo_popup*dpyLabel.topOffset:	5
*docinfo_popup*dpyLabel.leftOffset:	0
*docinfo_popup*dpyLabel.rightOffset:	4
*docinfo_popup*dpyLabel.alignment:	ALIGNMENT_END
*docinfo_popup*dpyText.rows:	3
*docinfo_popup*dpyText.columns:	48
*invalidLangTagFormatMsg:	\
Formato inválido de etiqueta de Idioma/País.\n\
\n\
El formato es: 'Aaaaa/Bbbbb [xx-YY]' donde:	\n\
    'Aaaa/Bbbb' es el Idioma/País (opcional, no usado)\n\
    '[' y ']' entre corchetes la etiqueta (requerida, sin espacios)\n\
    'xx' especifica el lenguaje (requerida)\n\
    '-YY' especifica el país (opcional)

*invalidLangTagFormatDialogTitle:	Formato de Etiqueta Inválido

*docinfo_popup*titleText.columns:	40
*docinfo_popup*securityFrame.topOffset:	10
*docinfo_popup*keyDescLabel.leftOffset:	14
*docinfo_popup*keyDescLabel.rightOffset:	14
*docinfo_popup*keyDescLabel.alignment:	ALIGNMENT_BEGINNING
*docinfo_popup*certificateLabel.leftOffset:	10
*docinfo_popup*certificateLabel.rightOffset:	10
*docinfo_popup*certificateLabel.alignment:	ALIGNMENT_BEGINNING
*docinfo_popup*securityLabel.leftOffset:	14
*docinfo_popup*securityLabel.rightOffset:	14
*docinfo_popup*securityLabel.alignment:	ALIGNMENT_BEGINNING
*docinfo_popup*XmScrolledWindow.leftOffset:	10
*docinfo_popup*XmScrolledWindow.rightOffset:	10

*docinfo*noSecurityMessage:	\
Esta versión de Mozilla no tiene instalada la opción de seguridad.

*docinfo*securityLabel.labelString:	\
La opción de seguridad permite proteger las páginas que recibe\n\
y la información que envía mediante la autentificación del servidor,\n\
el cifrado de los datos que garantiza su seguridad e integridad.\n\
Puede comprobar el estado de la seguridad de un página utilizando el icono\n\
en forma de llave/llave rota que aparece en la barra de estado\n\
o la barra de color situada sobre el área de contenidos (azul para\n\
página segura; gris para insegura).\n\
Consulte el manual o la página &quot;Sobre seguridad&quot; para más detalles.



*bmPreferences_popup.title:	Mozilla: Marcadores
*bmPreferences_popup*frame1label.labelString:	Añadir marcador
*bmPreferences_popup*frame2label.labelString:	Menú de marcadores
*bmPreferences_popup*addbm_option.labelString:							Add bookmarks to this header
*bmPreferences_popup*bmmenu_option.labelString:						  View this header in bookmarks menu
*bmPreferences_popup*addbm_default.labelString:	Añadir al nivel superior
*bmPreferences_popup*bmmenu_default.labelString:	Cabecera de nivel superior

*bookmarksWhatsChanged*button_0.labelString:	Todos los marcadores
*bookmarksWhatsChanged*button_1.labelString:	Marcadores seleccionados
*bookmarksWhatsChanged*Apply.labelString:	Empezar
*bookmarksWhatsChanged*ApplyLabelString:	Empezar
*bookmarksWhatsChanged*title.labelString:	¿Qué ha cambiado?
*bookmarksWhatsChanged.width:	400
*bookmarksWhatsChanged.minWidth:	400
*bookmarksWhatsChanged.maxWidth:	400
!*bookmarksWhatsChanged.height: 300
!*bookmarksWhatsChanged.minHeight: 300
!*bookmarksWhatsChanged.maxHeight: 300

*composeFolder.height:	650
*composeFolder.shadowThickness:	2
*composeFolder.bottomOffset:	3
*composeFolder.leftOffset:	3
*composeFolder.rightOffset:	3
*composeFolder.topOffset:	5
*composeFolder.spacing:	1
*composeFolder.autoSelect:	False


*mailto_field*fromLabel.labelString:	De:
*mailto_field*replyToLabel.labelString:	Responder a:
*mailto_field*toLabel.labelString:	Enviar a:
*mailto_field*ccLabel.labelString:	Correo CC:
*mailto_field*bccLabel.labelString:	Correo BCC:
*mailto_field*fccLabel.labelString:	Archivo CC:
*mailto_field*newsgroupsLabel.labelString:	Grupos de noticias:
*mailto_field*followupToLabel.labelString:	Seguimiento a:
*mailto_field*attachmentsLabel.labelString:	Adjunto:
*mailto_field*attachButton.labelString:	Adjuntar...
*mailto_field*browseButton.labelString:	Examinar
*mailto_field*secureToggle.labelString:	Seguro
*mailto_bodyText.wordWrap:	True
*mailto_bodyText.scrollHorizontal:	False
*mailto_field*attachButton.marginWidth:	10
*mailto_field*fromLabel.alignment:	ALIGNMENT_END
*mailto_field*replyToLabel.alignment:	ALIGNMENT_END
*mailto_field*toLabel.alignment:	ALIGNMENT_END
*mailto_field*ccLabel.alignment:	ALIGNMENT_END
*mailto_field*bccLabel.alignment:	ALIGNMENT_END
*mailto_field*fccLabel.alignment:	ALIGNMENT_END
*mailto_field*newsgroupsLabel.alignment:	ALIGNMENT_END
*mailto_field*followupToLabel.alignment:	ALIGNMENT_END
*mailto_field*subjectLabel.alignment:	ALIGNMENT_END
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
*mailto_bodyText.columns:	72
! This resource will change the size of the compose tab
*mailto_bodyText.rows:	25
*composeViewBaseWidget*composeViewEditFormWidget.leftOffset:	3 
*composeViewBaseWidget*composeViewEditFormWidget.bottomOffset:	3  
*composeViewBaseWidget*subject.topOffset:	3 
*composeViewBaseWidget*subject.bottomOffset:	3 
*composeViewBaseWidget*addReceipient.topOffset:	20 
*composeViewBaseWidget*removeReceipient.topOffset:	15
*composeViewBaseWidget*selectReceipient.topOffset:	15
*composeViewBaseWidget*addReceipient.leftOffset:	5
*composeViewBaseWidget*removeReceipient.leftOffset:	5
*composeViewBaseWidget*selectReceipient.leftOffset:	5


! Some people just aren't too hip.
!*defaultMailtoText:			Hey, check out this cool URL:\n\n

*attachForm*attachWebPage.labelString:	Adjuntar página web...
*attachForm*attachWebPage.mnemonic:	p
*attachForm*attachFile.labelString:	Adjuntar archivo...
*attachForm*attachFile.mnemonic:	a
*attachForm*deleteAttachment.labelString:	Borrar archivo adjunto
*attachForm*deleteAttachment.mnemonic:	B
*attachForm*attachAddressBookCard.labelString:	Adjuntar tarjeta personal (vCard)
*attachForm*attachAddressBookCard.mnemonic:	t

*location_popup.dialogTitle:	Mozilla: Adjuntar Página Web
*location_popup*label.labelString:	Por favor, especifique una página web para adjuntar:
*location_popup*locationLabel.labelString:	Página web (URL):
*location_popup*locationText.columns:	40
*location_popup*locationText.leftOffset:	20
*location_popup*okLabelString:	Adjuntar
*location_popup*cancelLabelString:	Cancelar
*location_popup*clear.labelString:	Borrar

*attachForm*fileBrowser_popup.title:	Mozilla: Adjuntar archivo
*attachForm*fileBrowser.OkLabelString:	Adjuntar

*formatType*none.labelString:	No hay archivos adjuntos
*formatType*text.labelString:	Texto
*formatType*formattedText.labelString:	Texto con formato
*formatType*html.labelString:	Fuente
*formatType*tree.labelString:	Fuente e imágenes
*formatType*ps.labelString:	PostScript
*formatType*url.labelString:	Sólo URL


! Helper Editor stuff
*helperEditor_popup.title:	Mozilla: Ayuda
*helperEditor.width:	400
*helperEditor*mimeTypesDescriptionLabel.labelString:	Descripción
*helperEditor*mimeTypesDescriptionLabel.leftOffset:	3
*helperEditor*mimeTypesLabel.labelString:	Tipo
*helperEditor*mimeTypesLabel.leftOffset:	3
*helperEditor*mimeTypesSuffixLabel.labelString:	Sufijo
*helperEditor*mimeTypesSuffixLabel.leftOffset:	3
*helperEditor*helperEditForm.XmTextField.rightOffset:	3
*helperEditor*helperEditFrameLabel.labelString:	Editado por
*helperEditor*helperEditNavigator.labelString:	Mozilla 
*helperEditor*helperEditPlugin.labelString:	Plug-in
*helperEditor*helperEditApp.labelString:	Aplicación
*helperEditor*helperEditSave.labelString:	Guardar en disco
*helperEditor*helperEditUnknown.labelString:	Desconocido: preguntar al usuario
*helperEditor*helperEditAppBrowse.labelString:	Examinar
*helperEditor*helperEditNavigator.leftOffset:	20
*helperEditor*helperEditAppText.columns:	40


! Preferences: Styles 2
!


*enteringSecureDialog_popup.title:	Mozilla: Página segura
*enteringSecureDialog*toggle.labelString:	\
Mostrar este aviso la próxima vez
*enteringSecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*enteringSecureDialog*toggle.leftOffset:	100
*enteringSecureDialog.selectionLabelString:	\
Ha solicitado un documento seguro. El documento y cualquier otra información\n\
que envíe estará cifrada para garantizar la privacidad durante su tránsito.\n\
Para obtener más información sobre seguridad elija Información de la página en el menú Ver.

*leavingSecureDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*leavingSecureDialog*toggle.labelString:	Mostrar este aviso la próxima vez
*leavingSecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*leavingSecureDialog.OkLabelString:	Continuar la carga
*leavingSecureDialog.CancelLabelString:	Cancelar la carga
*leavingSecureDialog*toggle.leftOffset:	100
*leavingSecureDialog.selectionLabelString:	\
Ha solicitado un documento inseguro. El documento y cualquier información\n\
que envíe podría ser observada por una tercera persona durante su tránsito.\n\
Para más información sobre seguridad escoja Información de la página en el menú Ver.

*mixedSecurityDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*mixedSecurityDialog*toggle.labelString:	\
Mostrar este aviso la próxima vez
*mixedSecurityDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*mixedSecurityDialog*toggle.leftOffset:	100
*mixedSecurityDialog.selectionLabelString:	\
Ha solicitado un documento seguro que contiene alguna información insegura.\n\
 \n\
La información insegura no se mostrará.\n\
Para más información sobre seguridad escoja Información de la página en el menú Ver.

*redirectionToInsecureDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*redirectionToInsecureDialog*toggle.labelString:	Mostrar este aviso la próxima vez
*redirectionToInsecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToInsecureDialog.OkLabelString:	Continuar la carga
*redirectionToInsecureDialog.CancelLabelString:	Cancelar la carga
*redirectionToInsecureDialog*toggle.leftOffset:	100
*redirectionToInsecureDialog.selectionLabelString:	\
¡Aviso! Ha solicitado un documento inseguro que originalmente\n\
fue designado como documento seguro (la dirección ha sido\n\
redirigida desde un documento seguro a un documento inseguro). El documento\n\
y cualquier otra información que envíe podría ser observada por una tercera\n\
persona durante su tránsito.

*redirectionToSecureDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*redirectionToSecureDialog*toggle.labelString:	\
Mostrar este aviso la próxima vez
*redirectionToSecureDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*redirectionToSecureDialog.OkLabelString:	Continuar la carga
*redirectionToSecureDialog.CancelLabelString:	Cancelar la carga
*redirectionToSecureDialog*toggle.leftOffset:	100
*redirectionToSecureDialog.selectionLabelString:	\
!Aviso! Su conexión ha sido redirigida a un servidor\n\
diferente. Podría no estar conectado al servidor que originalmente quería ver.

*insecurePostFromSecureDocDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*insecurePostFromSecureDocDialog*toggle.labelString:	Mostrar este aviso la próxima vez
*insecurePostFromSecureDocDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*insecurePostFromSecureDocDialog.OkLabelString:	Continuar el envío
*insecurePostFromSecureDocDialog.CancelLabelString:	Cancelar el envío
*insecurePostFromSecureDocDialog*toggle.leftOffset:	100
*insecurePostFromSecureDocDialog.selectionLabelString:	\
!Aviso! Aunque este documento es seguro, cualquier información que\n\
envíe será insegura y podría ser observada por una tercera persona durante\n\
su tránsito. Si está enviando contraseñas, números de tarjetas de crédito\n\
u otra información que desee mantener en privado, sería más\n\
seguro cancelar el envío.

*insecurePostFromInsecureDocDialog_popup.title:	Mozilla: Aviso sobre Seguridad
*insecurePostFromInsecureDocDialog.OkLabelString:	Continuar el envío
*insecurePostFromInsecureDocDialog.CancelLabelString:	Cancelar el envío
*insecurePostFromInsecureDocDialog*toggle.labelString:	Mostrar este aviso la próxima vez
*insecurePostFromInsecureDocDialog*toggle.alignment:	ALIGNMENT_BEGINNING
*insecurePostFromInsecureDocDialog*toggle.leftOffset:	100
*insecurePostFromInsecureDocDialog.selectionLabelString:	La información que va a enviar es insegura y podría ser observada\npor una tercera persona durante su tránsito. Si está enviando contraseñas,\nnúmeros de tarjetas de crédito u otra información que desee\nmantener en privado, sería más seguro cancelar el envío.


*licenseDialog_popup.title:	Contrato de licencia de uso de Mozilla
*licenseDialog*label1.labelString:	\n Mozilla es software bajo licencia.  Su uso está sujeto a los\ntérminos y condiciones del acuerdo de licencia que se indica más abajo.\n
*licenseDialog*label2.labelString:	\n Si usted acepta los términos de este acuerdo de licencia,\npulse `Aceptar.'  En cualquier otro caso pulse `No aceptar.'\n
*licenseDialog*text.columns:	72
*licenseDialog*text.rows:	23
*licenseDialog*text.wordWrap:	True
*licenseDialog*text.scrollHorizontal:	False
V>	*licenseDialog.accept.labelString:	Aceptar
*licenseDialog.reject.labelString:	No aceptar

*printSetup_popup.title:	Mozilla: Imprimir
*printSetup*printToLabel.labelString:	Imprimir en:
*printSetup*toPrinterToggle.labelString:	Impresora
*printSetup*toFileToggle.labelString:	Archivo
*printSetup*printCommandLabel.labelString:	Comando de impresión:
*printSetup*fileNameLabel.labelString:	Nombre de archivo:
*printSetup*browseButton.labelString:	Examinar
*printSetup*printLabel.labelString:	Imprimir:
*printSetup*firstFirstToggle.labelString:	Primera página primero
*printSetup*lastFirstToggle.labelString:	Ultima página primero
*printSetup*orientationLabel.labelString:	Orientación:
*printSetup*portraitToggle.labelString:	Vertical
*printSetup*landscapeToggle.labelString:	Horizontal
*printSetup*printColorLabel.labelString:	Imprimir:
*printSetup*greyscaleToggle.labelString:	Escala de grises
*printSetup*colorToggle.labelString:	Color
LEV>	*printSetup*paperSizeLabel.labelString:	Tamaño del papel:
*printSetup*letterToggle.labelString:	Letter (8 1/2 x 11 in.)
*printSetup*legalToggle.labelString:	Legal (8 1/2 x 14 in.)
*printSetup*executiveToggle.labelString:	Executive (7 1/2 x 10 in.)
*printSetup*a4Toggle.labelString:	A4 (210 x 297 mm)
*printSetup*OK.labelString:	Imprimir
*printSetup*OkLabelString:	Imprimir
*printSetup*CancelLabelString:	Cancelar
*printSetup*XmLabel.alignment:	ALIGNMENT_END
*printSetup*XmLabelGadget.alignment:	ALIGNMENT_END
*printSetup*XmToggleButtonGadget.alignment:	ALIGNMENT_BEGINNING
*printSetup*XmToggleButtonGadget.indicatorType:	ONE_OF_MANY
*printSetup*lastFirstToggle.leftOffset:	10
*printSetup*landscapeToggle.leftOffset:	10
*printSetup*colorToggle.leftOffset:	10
*printSetup*legalToggle.leftOffset:	10
*printSetup*a4Toggle.leftOffset:	10
*printSetup*XmLabel.rightOffset:	10
*printSetup*XmLabelGadget.rightOffset:	10
*printSetup*browseButton.marginHeight:	3
*printSetup*browseButton.marginWidth:	4
*printSetup*line.topOffset:	4
*printSetup*printLabel.topOffset:	4
*printSetup*firstFirstToggle.topOffset:	10
*printSetup*portraitToggle.topOffset:	10
*printSetup*greyscaleToggle.topOffset:	10
*printSetup*letterToggle.topOffset:	10
!*printSetup_popup*preeditType:			none

*findDialog_popup.title:	Mozilla: Buscar
*findDialog*findInLabel.labelString:	Buscar en:
*findDialog*msgHeaders.labelString:	Cabeceras de los mensajes de esta carpeta
*findDialog*msgBody.labelString:	Cuerpo de este mensaje
*findDialog*msgHeaders.indicatorType:	ONE_OF_MANY
*findDialog*msgBody.indicatorType:	ONE_OF_MANY
*findDialog*findLabel.labelString:	Buscar:
*findDialog*findLabel.alignment:	ALIGNMENT_END
*findDialog*caseSensitive.labelString:	Coincidir mayúsculas/minúsculas
*findDialog*backwards.labelString:	Buscar hacia atrás
*findDialog*backwards.leftOffset:	20
*findDialog*caseSensitive.alignment:	ALIGNMENT_BEGINNING
*findDialog*backwards.alignment:	ALIGNMENT_BEGINNING
*findDialog*XmToggleButtonGadget.indicatorType:	N_OF_MANY
*findDialog*XmToggleButtonGadget.visibleWhenOff:	True
*findDialog*OK.labelString:	Buscar
*findDialog*OkLabelString:	Buscar
*findDialog*Apply.labelString:	Borrar
*findDialog*ApplyLabelString:	Borrar
*findDialog*Cancel.labelString:	Cerrar
*findDialog*CancelLabelString:	Cerrar
!*findDialog_popup*preeditType:			overthespot
! Bookmark Find dialog shares resources with the main find dialog
! Extra resources specific to bookmark find dialog
*findDialog*lookinLabel.labelString:	Mirar en:
*findDialog*nameToggle.labelString:	Nombre
*findDialog*locationToggle.labelString:	Dirección
*findDialog*descriptionToggle.labelString:	Descripción
*findDialog*wordToggle.labelString:	Palabra completa
*findDialog*helptext.labelString:	Use 'Buscar otra vez' para seguir buscando.

! More resources for the Addressbook find dialog
*findDialog*nicknameToggle.labelString:	Apodo


*openURLDialog_popup.title:	Mozilla: Abrir Página
!*openURLDialog_popup*preeditType:		none
*openURLDialog*label.labelString:	Introduzca la dirección de la página web (URL) o especifique\nel archivo local que quiere abrir:
*openURLDialog*choose.labelString:	Elegir archivo...
*openURLDialog*toolLabel.labelString:	Abrir dirección o archivo en:
*openURLDialog*browserToggle.labelString:	Navegador
*openURLDialog*editorToggle.labelString:	Editor de páginas Web
*openURLDialog*OK.labelString:	Abrir
*openURLDialog*OkLabelString:	Abrir
*openURLDialog*Apply.labelString:	Borrar
*openURLDialog*ApplyLabelString:	Borrar
*openURLDialog*Cancel.labelString:	Cancelar
*openURLDialog*CancelLabelString:	Cancelar
*openURLDialog*label.alignment:	ALIGNMENT_BEGINNING
*openURLDialog*XmToggleButtonGadget.indicatorType:	ONE_OF_MANY
*openURLDialog*XmRowColumn.orientation:	Vertical
*openURLDialog*browserToggle.set:	True
*openURLDialog*XmTextField.columns:	45
!*openURLDialog.width:				500
*openURLDialog*openInEditor.labelString:	Abrir en el editor
*openURLDialog*openInBrowser.labelString:	Abrir en el navegador

*message_popup.title:	Mozilla
*message_popup*OK.labelString:	Aceptar
*message_popup*OkLabelString:	Aceptar

*error_popup.title:	Mozilla: Error

*question_popup.title:	Mozilla: Pregunta
*question_popup*OK.labelString:	Aceptar
*question_popup*Cancel.labelString:	Cancelar

*prompt_popup.title:	Mozilla: Pregunta
*password_popup.title:	Mozilla: Contraseña
*promptSubject_popup.title:	Mozilla: Entrada del asunto
*stdout_popup.title:	Mozilla: diagnósticos del subproceso (stdout)
*stderr_popup.title:	Mozilla: diagnósticos del subproceso (stderr)
*stdout_stderr_popup.title:	Mozilla: diagnósticos del subproceso (stdout/stderr)

*citing_popup.title:	Mozilla
*citing_popup*messageString:	\nCitando...\n

*printing_popup.title:	Mozilla
*printing_popup*messageString:	\nImprimiendo...\n

*deliveringMessage_popup.title:	Mozilla
*deliveringMessage_popup*messageString:	\nEnviando mensaje...\n

*saving_popup.title:	Mozilla
*saving_popup*messageString:	\nGuardando en disco...\n

*visual_popup.title:	Mozilla: Modificar Visual X
*visual_popup*listLabelString:	Visuales disponibles:

*autoSaveNew.title:	Mozilla: Guardar automáticamente nuevo documento
*saveFile_popup.title:	Mozilla: Guardar documento
*saveNewFile_popup.title:	Mozilla: Guardar nuevo documento 
*markMessagesRead_popup.title:	Marcar mensajes como leídos

*promptSubject_popup*messageString:	\
No ha indicado el asunto de este mensaje.\n\
Si quiere dar uno, por favor escríbalo ahora.

*dialog*OK.labelString:	Aceptar
*dialog*clear.labelString:	Borrar
*dialog*Cancel.labelString:	Cancelar
*dialog*userLabel.labelString:	ID del usuario:
*dialog*passwdLabel.labelString:	Contraseña:

*dialog*userLabel.alignment:	ALIGNMENT_END
*dialog*passwdLabel.alignment:	ALIGNMENT_END
*dialog*dialogform*text.columns:	40
*dialog*dialogform*pwtext.columns:	40

*clear.labelString:	Borrar
*cancel.labelString:	Cancelar
*OK.labelString:	Aceptar

*citationQuery_popup.title:	Pregunta sobre el estilo de citación
*citationQuery.selectionLabelString:	\n\
Ha citado un documento entero en vez de adjuntarlo.\n\
 \n\
Podría, en vez de ello, adjuntar el documento y este sería\n\
añadido al mensaje, sin el '>' al principio\n\
de cada línea. Esto haría más sencillo a los destinatarios\n\
el guardar y usar este documento\n\
 \n\
¿Quiere enviar este documento como archivo adjunto?\n

*citationQuery*OK.labelString:	Enviar como\nTexto Adjunto
*citationQuery*OkLabelString:	Enviar como\nTexto Adjunto
*citationQuery*Apply.labelString:	Enviar como\nCita
*citationQuery*ApplyLabelString:	Enviar como\nCita
*citationQuery*Cancel.labelString:	Cancelar
*citationQuery*CancelLabelString:	Cancelar

*doubleCitationQuery_popup.title:	Pregunta sobre el estilo de citación
*doubleCitationQuery.selectionLabelString:	\n\
Ha incluido (probablemente de forma inadvertida) dos veces el mismo documento:\n\
primero como una cita (es decir: con un `>' al principio de cada línea) y\n\
luego como archivo adjunto (es decir: como una segunda parte del mensaje,\n\
añadida después del nuevo texto.)\n\
 \n\
¿Quiere enviar el documento como un archivo adjunto o como cita?

*doubleCitationQuery*OK.labelString:	Enviar como\nTexto Adjunto
*doubleCitationQuery*OkLabelString:	Enviar como\nTexto Adjunto
*doubleCitationQuery*Apply.labelString:	Enviar como\nCita
*doubleCitationQuery*ApplyLabelString:	Enviar como\nCita
*doubleCitationQuery*Cancel.labelString:	Cancelar
*doubleCitationQuery*CancelLabelString:	Cancelar

*streamingAudioQuery_popup.title:	Pregunta sobre sonido
*streamingAudioQuery.selectionLabelString:	\
¿Quiere reproducir los datos con la aplicación externa a medida que llegan\n\
desde la red, o guardarlos en un archivo para reproducirlos luego desde el archivo?
*streamingAudioQuery*OK.labelString:	Reproducir desde la red
*streamingAudioQuery*OkLabelString:	Reproducir desde la red
*streamingAudioQuery*Apply.labelString:	Guardar primero
*streamingAudioQuery*ApplyLabelString:	Guardar primero
*streamingAudioQuery*Cancel.labelString:	Cancelar
*streamingAudioQuery*CancelLabelString:	Cancelar

*fileSelector*filterLabelString:	Filtro
*fileSelector*dirListLabelString:	Directorios
*fileSelector*fileListLabelString:	Archivos
*fileSelector*OkLabelString:	Aceptar
*fileSelector*ApplyLabelString:	Filtro
*fileSelector*CancelLabelString:	Cancelar
*fileSelector.Selection.labelString:	Selección
*fileSelector.pattern:	*.html
*fileSelector*fileTypeMask:	FILE_ANY_TYPE
*fileSelector*saveTypeBox.orientation:	Horizontal
*fileSelector*formatType.labelString:	Formato para el documento guardado:
!*fileSelector_popup*preeditType:	overthespot

*fileBrowser_popup.title:	Mozilla: Administrador de archivos
*fileBrowser*filterLabelString:	Filtro
*fileBrowser*dirListLabelString:	Directorios
*fileBrowser*fileListLabelString:	Archivos
*fileBrowser*Selection.labelString:	Selección
*fileBrowser*OkLabelString:	Aceptar
*fileBrowser*ApplyLabelString:	Filtro
*fileBrowser*CancelLabelString:	Cancelar
*fileBrowser*HelpLabelString:	Ayuda
*fileBrowser*encodingFrame*optionMenu.labelString:	Tipo de archivo:
*fileBrowser*encodingFrame*attachAutoDetect.labelString:	Detectar automáticamente
*fileBrowser*encodingFrame*attachBinary.labelString:	Binario


*formSubmitButton.labelString:	Enviar
*formResetButton.labelString:	Restablecer
*formButton.labelString:	Sesos de mono
*formFileBrowseButton.labelString:	Examinar

! Bookmarks popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*bookmarks*popup.title.labelString:	Marcadores
*bookmarks*popup*newFolder.labelString:	Carpeta nueva...
*bookmarks*popup.saveURL.acceleratorText:	

*titleSeparator.separatorType:	XmDOUBLE_LINE

! Bookmarks edit properties window.
!
*bookmarkProps_popup*title:	Mozilla: Propiedades de los marcadores
*bookmarkProps*nameLabel.labelString:	Nombre:
*bookmarkProps*nameLabel.alignment:	ALIGNMENT_END
*bookmarkProps*locationLabel.labelString:	Dirección:
*bookmarkProps*locationLabel.alignment:	ALIGNMENT_END
*bookmarkProps*descriptionLabel.labelString:	Descripción:
*bookmarkProps*descriptionLabel.alignment:	ALIGNMENT_END
*bookmarkProps*lastvisitedLabel.labelString:	Ultima visita:
*bookmarkProps*lastvisitedLabel.alignment:	ALIGNMENT_END
*bookmarkProps*addedonLabel.labelString:	Añadido el:
*bookmarkProps*addedonLabel.alignment:	ALIGNMENT_END
*bookmarkProps*descriptionText.topOffset:	8
*bookmarkProps*descriptionText.columns:	40
*bookmarkProps*descriptionText.rows:	5
*bookmarkProps*aliasButton.labelString:	Seleccionar alias

!
! Address Book
!
*AddressBook*mainform.width:	760
*AddressBook*mainform.height:	400
*AddressBook*menuBar.Item.labelString:	Elemento
*AddressBook*addUser.labelString:	Añadir usuario...
*AddressBook*addUser.mnemonic:	U
*AddressBook*addList.labelString:	Añadir lista...
*AddressBook*addList.mnemonic:	L
*AddressBook*properties.labelString:	Properties...
*AddressBook*properties.mnemonic:	P
*AddressBook*queryLabel.labelString:	Ecriba el nombre que está buscando:
*AddreMsgWin*toBtn.labelString:	Para:
!*AddreMsgWin*toBtn.mnemonic:					T
*AddreMsgWin*ccBtn.labelString:	CC:
!*AddreMsgWin*ccBtn.mnemonic:					C
*AddreMsgWin*bccBtn.labelString:	BCC:
!*AddreMsgWin*bccBtn.mnemonic:					B
*AddreMsgWin*removeBtn.labelString:	Borrar
*AddreMsgWin*addToAddressBtn.labelString:	Añadir al libro de direcciones
!*AddreMsgWin*addToAddressBtn.mnemonic:       	A
*AddressBook*dirLabel.labelString:	en:
*AddressBook*searchBtn.labelString:	Buscar
*AddressBook*helpBar.height:	10
*AddressBook*outline.Name:	Nombre
*AddressBook*outline.Nick:	Apodo
*AddressBook*outline.Secure:	Seguro
*AddressBook*outline.HTML:	HTML
*AddressBook*mainform.fontList:	-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-1

! The mail compose window part of addr book
*mc_queryLabel.labelString:	Ecriba el nombre que está buscando:
*mc_dirLabel.labelString:	en:
*mc_searchBtn.labelString:	Buscar
*mc_tobtn.labelString:	Para:
*mc_ccbtn.labelString:	CC:
*mc_bccbtn.labelString:	BCC:
*mc_okbtn.labelString:	Aceptar
*mc_cancelbtn.labelString:	Cancelar

! Address Book popup menu. It has the same name as the main popup menu
! and hence shares the rest of the resources.
*AddressBook*popup.title.labelString:	Libro de direcciones
*AddressBook*popup.titleSeparator.separatorType:	XmDOUBLE_LINE


!
! Download
!
*Download*downloadURLLabel.labelString:	Origen:
*Download*downloadFileLabel.labelString:	Destino:
*Download*stopLoading.labelString:	Parar
*Download*downloadURLLabel.alignment:	ALIGNMENT_END
*Download*downloadFileLabel.alignment:	ALIGNMENT_END

*Download*downloadURLLabel.topOffset:	10
*Download*downloadURLLabel.leftOffset:	10
*Download*downloadURLValue.columns:	45
*Download*downloadURLValue.editable:	False
*Download*downloadURLValue.cursorPositionVisible:	False
*Download*downloadURLValue.leftOffset:	10
*Download*downloadURLValue.rightOffset:	10

*Download*downloadFileLabel.topOffset:	5
*Download*downloadFileLabel.leftOffset:	10
*Download*downloadFileLabel.bottomOffset:	15
*Download*downloadFileValue.columns:	45
*Download*downloadFileValue.editable:	False
*Download*downloadFileValue.cursorPositionVisible:	False
*Download*downloadFileValue.leftOffset:	10
*Download*downloadFileValue.rightOffset:	10

*Download*logo.topOffset:	15
*Download*logo.rightOffset:	10
*Download*cancel.marginWidth:	15
*Download*cancel.marginHeight:	10
*Download*cancel.topOffset:	20
*Download*cancel.bottomOffset:	10


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

*textBackground:	#FFFFFF

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
*logo.animationInterval:	150
*logo.marginBottom:	0
*logo.marginLeft:	0
*logo.marginRight:	0
*logo.marginTop:	0
*logo.shadowThickness:	1
*logo.documentationString:	Página principal de Netscape Communications Corporation
*logo.tipString:	Go to Netscape

*historyMenuBox.marginHeight:	0
*historyMenuBox.marginWidth:	0

*characterToolbarFrame.leftOffset:	2
*paragraphToolbarFrame.leftOffset:	2
*composeToolbarFrame.leftOffset:	2

*topPane.shadowThickness:	2
*bottomPane.shadowThickness:	2
*topPane.shadowType:	SHADOW_IN
*bottomPane.shadowType:	SHADOW_IN

! Go ahead, try and figure out why some of these need to be on the
! _popup version, and some need to be one level deeper.  I dare you.
!*dialog.width:				500
!*history.width:			500
!*mailto.width:				500
!*cache_popup.width:			500
*userConfig_popup.width:	500
*userConfig.width:	500
*fileSelector.width:	500
*fileBrowser.width:	500

! I had to hardcode this in the C code - doesn't work from here...
!*history_popup.allowShellResize:	False

! Get rid of all navigation; it's totally broken for Paned windows,
! and for the form widgets under the drawingArea.
*highlightThickness:	0
*navigationType:	NONE

! Uh, but turn it back on in the popups (really I'd like to turn it off
! in all non-popups, but I don't think there's a way to specify that...)
*XmDialogShell*highlightThickness:	2
*XmDialogShell*navigationType:	TAB_GROUP

! Mail compose needs TAB_GROUP
!*Composition*form.navigationType:       TAB_GROUP
*mailcompose_container*XmText.navigationType:	TAB_GROUP
*mailcompose_container*XmTextField.navigationType:	TAB_GROUP

! Uh, and turn it on only in text fields of forms.
! But of course this doesn't work quite right.
*drawingArea*XmText.navigationType:	TAB_GROUP
*drawingArea*XmTextField.navigationType:	TAB_GROUP

! Sorry, things don't display properly if you configure Netscape to put its
! scrollbars on the left or top of the document area.
Netscape*scroller.scrollBarPlacement:	BOTTOM_RIGHT

! Put scrollbars right next to text fields in forms (and lists).
*drawingArea*XmScrolledWindow.spacing:	0

! Do not under any circumstances change the following line:
Netscape.version: 		4.79


! ============================================================================
! Fonts in the widgets.
! These fonts are all down in Motif land, and thus are not controlled by the
! font selector on the Preferences dialog.  That applies only to fonts in
! the document display area.
! ============================================================================
!
*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-1

*XmTextField.fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1
*XmText.fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1
*XmList*fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1

! SGI default:
!*menuBar*fontList:		-*-helvetica-bold-o-*-*-*-120-*-*-*-*-iso8859-*
! Sensible default:
!*menuBar*fontList:		-*-lucida-medium-r-normal-*-*-120-*-*-*-*-iso8859-*

*menuBar*historyTruncated.fontList:					-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-1
*popup*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-1

!*topArea*fontList:		-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
!*topArea*XmTextField.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*
!*topArea*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*

!*bookmark*fontList:	      -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
!*bookmark*fontList:	        -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
!*bookmark*selectedLabel.fontList:\
			      -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
!*bookmark*XmTextField.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*
!*bookmark*XmText.fontList:	-*-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*

*docinfoButton.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
*mailto*urlLabel.fontList:	-*-helvetica-medium-r-*-*-*-140-*-*-*-*-iso8859-*

*licenseDialog*text.fontList:	-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*

! These are the fonts used in the outline lists used in Mail, News, Bookmarks,
! and Address Book windows.  (Note that there can't be any whitespace after
! the commas.)

! For non-SUN platforms, user can accept font size to be 10 pt on the message list
Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-*,\
-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-*=BOLD,\
-*-helvetica-medium-o-*-*-*-100-*-*-*-*-iso8859-*=ITALIC

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*XmLGrid*fontList:\
-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*,\
-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*=BOLD,\
-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-*=ITALIC

! Font for the Mail/News banner
! For non-SUN platforms, user can accept font size to be 10 pt to be default on the message list
Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-*
Netscape*banner*folderDropdown*fontList:\
-adobe-courier-medium-r-*-*-*-100-*-*-*-*-iso8859-*,\
-adobe-courier-bold-r-*-*-*-100-*-*-*-*-iso8859-*=BOLD

Netscape*banner*title.fontList:                -*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-*
Netscape*banner*subtitle.fontList:     -*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-*
Netscape*banner*info.fontList: -*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-*

! For SUN platforms, user wants default font size to be 12 pt on the message list to be readable
!Netscape*banner*folderDropdown*XmLabel.fontList: -adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-*
!Netscape*banner*folderDropdown*.fontList:\
-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-*,\
-adobe-courier-bold-r-*-*-*-120-*-*-*-*-iso8859-*=BOLD

!Netscape*banner*title.fontList:               -*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
!Netscape*banner*subtitle.fontList:    -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
!Netscape*banner*info.fontList:        -*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

! Font for the Thread window expando flippy label
*arrowlabel.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

! Font for the attachment panel icon label
! need class name to defeat *sgiMode
Netscape*attachItemLabel*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

! This is the default charset for the View | Character Set menu.
! The following values have special meanings:
!   iso-2022-jp: Japanese (Auto-Detect)
!   iso-2022-kr: Korean (Auto-Detect)
!

*defaultCharset:	iso-8859-1
!*defaultCharset:	iso-8859-2
!*defaultCharset:	iso-2022-jp
!*defaultCharset:	shift_jis
!*defaultCharset:	euc-jp
!*defaultCharset:	big5
!*defaultCharset:	x-euc-tw
!*defaultCharset:	gb2312
!*defaultCharset:	iso-2022-kr
!*defaultCharset:	koi8-r
!*defaultCharset:	iso-8859-5
!*defaultCharset:	iso-8859-7
!*defaultCharset:	iso-8859-9
!*defaultCharset:      utf-8
!*defaultCharset:      utf-7



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
*documentFonts.defaultFont*iso-8859-1.prop:	adobe-times-120-scale
*documentFonts.defaultFont*iso-8859-1.fixed:	adobe-courier-100-scale

*documentFonts.defaultFont*UTF-8.prop: nsPseudoFont-times-120-scale
*documentFonts.defaultFont*UTF-8.fixed:        nsPseudoFont-courier-100-scale


! This table maps weight/slant pairs to bold/italic/boldItalic/normal
!
*documentFonts.face*-:	normal
*documentFonts.face*bold-i:	boldItalic
*documentFonts.face*bold-o:	boldItalic
*documentFonts.face*bold-r:	bold
*documentFonts.face*book-o:	italic
*documentFonts.face*book-r:	normal
*documentFonts.face*demi-i:	boldItalic
*documentFonts.face*demi-o:	boldItalic
*documentFonts.face*demi-r:	bold
*documentFonts.face*demibold-i:	boldItalic
*documentFonts.face*demibold-r:	bold
*documentFonts.face*light-i:	italic
*documentFonts.face*light-r:	normal
*documentFonts.face*medium-i:	italic
*documentFonts.face*medium-o:	italic
*documentFonts.face*medium-r:	normal
*documentFonts.face*medium-roman:	normal
*documentFonts.face*normal-i:	italic
*documentFonts.face*normal-r:	normal
*documentFonts.face*regular-i:	italic
*documentFonts.face*regular-r:	normal
*documentFonts.face*roman-r:	normal
*documentFonts.face*w3-r:	normal
*documentFonts.face*w3h-r:	normal
*documentFonts.face*w4-r:	normal
*documentFonts.face*w5-r:	normal
*documentFonts.face*w9-r:	normal


! This table maps XLFD family names to nice family names
!
*documentFonts.family*djb:	DJB
*documentFonts.family*haebfix:	Haeberli Fixed
*documentFonts.family*itc avant garde gothic:	ITC Avant Garde Gothic
*documentFonts.family*itc bookman:	ITC Bookman
*documentFonts.family*itc zapf chancery:	ITC Zapf Chancery
*documentFonts.family*itc zapf dingbats:	ITC Zapf Dingbats
*documentFonts.family*lucidatypewriter:	Lucida Typewriter


! This table maps XLFD foundry names to nice foundry names
!
*documentFonts.foundry*b&h:	B&H
*documentFonts.foundry*dec:	DEC
*documentFonts.foundry*hku:	HKU
*documentFonts.foundry*sgi:	SGI
*documentFonts.foundry*nsPseudoFont:	NSPseudoFonts


! This table maps MIME charsets to language groups
!
*documentFonts.charsetlang*gb_2312-80:	Chino simplificado
*documentFonts.charsetlang*iso-8859-1:	Occidental
*documentFonts.charsetlang*iso-8859-2:	Centroeuropeo
*documentFonts.charsetlang*iso-8859-5:	Cirílico
*documentFonts.charsetlang*iso-8859-7:	Griego
*documentFonts.charsetlang*iso-8859-9:	Turco
*documentFonts.charsetlang*jis_x0201:	Japonés
*documentFonts.charsetlang*jis_x0208-1983:	Japonés
*documentFonts.charsetlang*jis_x0212-1990:	Japonés
*documentFonts.charsetlang*koi8-r:	Cirílico
*documentFonts.charsetlang*ks_c_5601-1987:	Coreano
*documentFonts.charsetlang*x-cns11643-1110:	Chino tradicional
*documentFonts.charsetlang*x-cns11643-1:	Chino tradicional
*documentFonts.charsetlang*x-cns11643-2:	Chino tradicional
*documentFonts.charsetlang*x-gb2312-11:	Chino simplificado
*documentFonts.charsetlang*x-jisx0208-11:	Japonés
*documentFonts.charsetlang*x-ksc5601-11:	Coreano
*documentFonts.charsetlang*x-x-big5:	Chino tradicional
*documentFonts.charsetlang*unicode-2-0:	Unicode


! This table maps X11 font charsets to MIME charsets
!
*documentFonts.charset*-:	x-ignore
*documentFonts.charset*-ascii:	x-ignore
*documentFonts.charset*-dingbats:	x-ignore
*documentFonts.charset*-hiragana:	x-ignore
*documentFonts.charset*-ibm pc:	x-ignore
*documentFonts.charset*-katakana:	x-ignore
*documentFonts.charset*-roman:	x-ignore
*documentFonts.charset*-symbol:	x-ignore
*documentFonts.charset*78-h:	x-ignore
*documentFonts.charset*78.euc-h:	x-ignore
*documentFonts.charset*add-h:	x-ignore
*documentFonts.charset*adobe.cns1-0:	x-ignore
*documentFonts.charset*adobe.gb1-0:	x-ignore
*documentFonts.charset*adobe.japan1-0:	x-ignore
*documentFonts.charset*adobe.japan1-1:	x-ignore
*documentFonts.charset*adobe.japan1-2:	x-ignore
*documentFonts.charset*adobe.japan2-0:	x-ignore
*documentFonts.charset*adobe.korea1-0:	x-ignore
*documentFonts.charset*big5-0:	x-x-big5
*documentFonts.charset*big5.et-0:	x-x-big5
*documentFonts.charset*big5.et.ext-0:	x-x-big5
*documentFonts.charset*big5.etext-0:	x-x-big5
*documentFonts.charset*big5.hku-0:	x-x-big5
*documentFonts.charset*big5.hku-1:	x-x-big5
*documentFonts.charset*big5.pc-0:	x-x-big5
*documentFonts.charset*big5.shift-0:	x-x-big5
*documentFonts.charset*cmr.sun-fontspecific:	x-ignore
*documentFonts.charset*cns11643-0:	x-cns11643-1
*documentFonts.charset*cns11643-1:	x-cns11643-2
*documentFonts.charset*cns11643.1986-1:	x-cns11643-1
*documentFonts.charset*cns11643.1986-2:	x-cns11643-2
*documentFonts.charset*cns11643.1992-1:	x-cns11643-1
*documentFonts.charset*cns11643.1992-2:	x-cns11643-2
*documentFonts.charset*cns11643.1992.1-0:	x-cns11643-1
*documentFonts.charset*cns11643.1992.2-0:	x-cns11643-2
*documentFonts.charset*dec-decctrl:	x-ignore
*documentFonts.charset*dec-decksroman:	x-ignore
*documentFonts.charset*dec-decmath_extension:	x-ignore
*documentFonts.charset*dec-decmath_italic:	x-ignore
*documentFonts.charset*dec-decmath_symbol:	x-ignore
*documentFonts.charset*dec-decsuppl:	x-ignore
*documentFonts.charset*dec-dectech:	x-ignore
*documentFonts.charset*dec-drcs:	x-ignore
*documentFonts.charset*dec-fontspecific:	x-ignore
*documentFonts.charset*dec.cns11643.1986-2:	x-cns11643-1110
*documentFonts.charset*dec.cns11643.1986-udc:	x-ignore
*documentFonts.charset*dec.dtscs.1990-2:	x-ignore
*documentFonts.charset*euc-h:	x-ignore
*documentFonts.charset*ext-h:	x-ignore
*documentFonts.charset*gb2312.1980-0:	gb_2312-80
*documentFonts.charset*gb2312.1980-1:	x-gb2312-11
*documentFonts.charset*gb2312.1980-udc:	x-ignore
*documentFonts.charset*hojo-h:	x-ignore
*documentFonts.charset*hp-japanese15:	x-ignore
*documentFonts.charset*hp-japaneseeuc:	x-ignore
*documentFonts.charset*hp-roman8:	x-ignore
*documentFonts.charset*hpbig5-:	x-x-big5
*documentFonts.charset*ibm-850:	x-ignore
*documentFonts.charset*ibm-fontspecific:	x-ignore
*documentFonts.charset*ibm-ibmcs01007ext:	x-ignore
*documentFonts.charset*ibm-special:	x-ignore
*documentFonts.charset*ibm-udcjp:	x-ignore
*documentFonts.charset*iso646.1991-irv:	x-ignore
*documentFonts.charset*iso8859-1:	iso-8859-1
*documentFonts.charset*iso8859-2:	iso-8859-2
*documentFonts.charset*iso8859-3:	x-ignore
*documentFonts.charset*iso8859-4:	x-ignore
*documentFonts.charset*iso8859-5:	iso-8859-5
*documentFonts.charset*iso8859-6:	x-ignore
*documentFonts.charset*iso8859-7:	iso-8859-7
*documentFonts.charset*iso8859-8:	x-ignore
*documentFonts.charset*iso8859-9:	iso-8859-9
*documentFonts.charset*iso8859-adobe:	x-ignore
*documentFonts.charset*itc zapf dingbats.adobe-fontspecific:	x-ignore
*documentFonts.charset*itc zapfdingbats.sun-fontspecific:	x-ignore
*documentFonts.charset*jisx0201-romankana:	x-ignore
*documentFonts.charset*jisx0201.1976-0:	jis_x0201
*documentFonts.charset*jisx0201.1976-1:	jis_x0201
*documentFonts.charset*jisx0208-kanji00:	x-ignore
*documentFonts.charset*jisx0208-kanji11:	x-ignore
*documentFonts.charset*jisx0208.1983-0:	jis_x0208-1983
*documentFonts.charset*jisx0208.1983-1:	x-jisx0208-11
*documentFonts.charset*jisx0208.1990-0:	jis_x0208-1983
*documentFonts.charset*jisx0212.1990-0:	jis_x0212-1990
*documentFonts.charset*jisx0212.1990-ocmp.1992:	jis_x0212-1990
*documentFonts.charset*koi8-1:	koi8-r
*documentFonts.charset*koi8-r:	koi8-r
*documentFonts.charset*ks-roman:	x-ignore
*documentFonts.charset*ksc5601.1987-0:	ks_c_5601-1987
*documentFonts.charset*ksc5601.1987-1:	x-ksc5601-11
*documentFonts.charset*misc-fontspecific:	x-ignore
*documentFonts.charset*necjisx0208.1983-0:	x-ignore
*documentFonts.charset*novanet-1:	x-ignore
*documentFonts.charset*nwp-h:	x-ignore
*documentFonts.charset*pimai.adobe-fontspecific:	x-ignore
*documentFonts.charset*rksj-h:	x-ignore
*documentFonts.charset*screen.sun-fontspecific:	x-ignore
*documentFonts.charset*sgi-fontspecific:	x-ignore
*documentFonts.charset*shiftjis-0:	x-ignore
*documentFonts.charset*sunolcursor-1:	x-ignore
*documentFonts.charset*sunolglyph-1:	x-ignore
*documentFonts.charset*symbol.adobe-fontspecific:	x-ignore
*documentFonts.charset*symbol.sun-fontspecific:	x-ignore
*documentFonts.charset*tis620.2533-1:	x-ignore
*documentFonts.charset*ucs2.cjk-rest:	x-ignore
*documentFonts.charset*ucs2.cns11643.1986-1:	x-ignore
*documentFonts.charset*ucs2.cns11643.1986-2:	x-ignore
*documentFonts.charset*ucs2.gb2312.1980-0:	x-ignore
*documentFonts.charset*ucs2.ibm-udccn:	x-ignore
*documentFonts.charset*wp-symbol:	x-ignore
*documentFonts.charset*zapfdingbats.adobe-fontspecific:	x-ignore


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
*documentFonts.euc-jp*psname:	Ryumin-Light-RKSJ-H
*documentFonts.euc-jp*pscode:	shift_jis
*documentFonts.euc-jp*pswidth:	1000
*documentFonts.euc-jp*psascent:	950

*documentFonts.shift_jis*psname:	Ryumin-Light-RKSJ-H
*documentFonts.shift_jis*pscode:	shift_jis
*documentFonts.shift_jis*pswidth:	1000
*documentFonts.shift_jis*psascent:	950

*documentFonts.EUC-KR*psname:	Munhwa-Regular-KSC-EUC-H
*documentFonts.EUC-KR*pscode:	euc-kr
*documentFonts.EUC-KR*pswidth:	1000
*documentFonts.EUC-KR*psascent:	950

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
*unicodeFont.helvetica*jis_x0208-1983:	gothic
*unicodeFont.helvetica*jis_x0201:	gothic
*unicodeFont.times*jis_x0208-1983:	mincho
*unicodeFont.times*jis_x0201:	mincho
*unicodeFont.courier*jis_x0208-1983:	fixed
*unicodeFont.courier*jis_x0201:	fixed
*unicodeFont.lucida*jis_x0208-1983:	gothic
*unicodeFont.lucida*jis_x0201:	gothic
*unicodeFont.lucidatypewriter*jis_x0208-1983:	gothic
*unicodeFont.lucidatypewriter*jis_x0201:	gothic
*unicodeFont.allowHPScaling:	False
!*unicodeFont.screenDpi:                       100
!*javaFont.usePointSizing:                     false
!*javaFont.screenDpi:                          100


*scrollerX*VertScrollBar.width:	10
*scrollerX*VertScrollBar.height:	100

! Mail search dialog...
*MNSearch.title:	Mozilla: Buscar
*MNSearch.iconName:	Buscar
*MNSearch*SearchBtn.labelString:	Buscar
*MNSearch*NewBtn.labelString:	Borrar 
*MNSearch*MiscBtn.labelString:  Opciones...
*MNSearch*HelpBtn.labelString:  Ayuda
*MNSearch*MiscBtn.labelString:	Guardar como... 
*MNSearch*CloseBtn.labelString:	Cerrar
*matchAll.labelString:  Correspondiente a todos los patrones siguientes
*matchAny.labelString:  Correspondiente a cualquiera de los patrones siguientes
*MNSearch*SaveAsDialogTextLabel.labelString:	Nombre del grupo de noticias:
*searchSaveAsPromptDialog.dialogTitle:	Mozilla: Guardar como un grupo virtual
*MNSearch*SaveAsDialogInfo.labelString:	\
Guardar el criterio de búsqueda creará un grupo de noticias virtual\n\
basado en ese criterio. El grupo virtual será disponible a partir\n\
de la lista de carpetas de la ventana del Messenger.

*where.labelString:	donde
*MNSearch*searchFolderLabel.labelString:	Buscar mensajes en
*MNSearch*itemsLabelTitle.labelString:	Número de objetos encontrados:
*MNSearch.width:	650
! needs to match up with XFE_SEARCH_DATE_FORMAT in ns/cmd/xfe/xfe_err.h
*MNSearch*labelValueField.labelString:	mm/dd/aa
*MNSearch*moreBtn.labelString:          Más
*MNSearch*lessBtn.labelString:		Menos
*MNSearch*searchContent.marginWidth:	5
*MNSearch*searchContent.marginHeight:	5
*MNSearch*resultComment.topOffset:	4
*MNSearch*goToMessageFolder.labelString:	Abrir carpeta de mensajes
*MNSearch*fileMsg.labelString:            Archivar en:
*MNSearch*fileMsg.buttonLayout:           button_label_only
*MNSearch*deleteMsg.labelString:          Borrar mensaje
*popup*copySubmenu.labelString:                  Copiar mensaje

! Advanced mail search (Options) dialog
*advancedSearch*subfolderToggle.labelString:   Buscar subcarpetas
*advancedSearch*whenOnlineSearch.labelString:  \
Al estar conectado, buscar los mensajes:
*advancedSearch*searchLocalToggle.labelString:  en su sistema local
*advancedSearch*searchServerToggle.labelString: en el servidor especificado

! Ldap Search
*Ldap.title:	Mozilla: Buscar directorios
*Ldap.iconName:	Buscar directorios
*Ldap*A_the1.labelString:	
*Ldap*A_the2.labelString:	y
*Ldap*SearchBtn.labelString:	Buscar
*Ldap*NewBtn.labelString:	Borrar
*Ldap*MiscBtn.labelString:	Ayuda
*Ldap*CloseBtn.labelString:	Cerrar
*Ldap*ldapSearchFolderLabel.labelString:	Buscar en 
*Ldap*itemsLabelTitle.labelString:	Número de objetos encontrados:
*Ldap.width:	650
*Ldap.height:	250
*Ldap*labelValueField.labelString:	mm/dd/aa
*Ldap*searchContent.marginWidth:	5
*Ldap*searchContent.marginHeight:	5
*Ldap*resultComment.topOffset:	4
*Ldap*ldapCommands.marginWidth:	10
*Ldap*ldapCommands.spacing:	20	
*Ldap*toAddrBook.labelString:	Añadir al libro de direcciones
*Ldap*toCompose.labelString:	Redactar mensaje

!
! Navigator mouse documentation.
!
*tipLabel.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
Netscape*tipLabel.background:  #FFFFCC
Netscape*tipLabel.foreground:  Black
Netscape*tipShell.borderColor: Black
Netscape*tipShell.borderWidth: 1

!
! Browser documentation and tip strings
!

! Navigator/Toolbar (tip strings and special documentation strings)
*back.tipString:	Ir a la página anterior
*forward.tipString:	Ir a la página siguiente
*home.tipString:	Ir a la página inicial
*home.documentationString:	Ir a la página inicial
*search.tipString:	Buscar en Internet
*search.documentationString:	Buscar información en Internet
*MailThread*search.documentationString:	Buscar mensajes de correo y noticias
*MailMsg*search.documentationString:	Buscar mensajes de correo y noticias
*MailFolder*search.documentationString:	Buscar mensajes de correo y noticias
*destinations.tipString:	Su página de inicio personal
*destinations.documentationString:	Ir a su página de inicio personal
*guide.tipString:	Lugares interesantes en Internet
*guide.documentationString:	Ir a lugares interesantes en Internet
*myshopping.tipString:             Ir al Shop@Netscape
*myshopping.documentationString:   Ir al Shop@Netscape
*showImages.tipString:	Mostrar las imágenes de esta página
*reload.tipString:	Recargar esta página desde el servidor
*stopLoading.tipString:	Parar la carga actual

!
! Some mail/news documentation and tip strings
!
!*MailFolder*stopLoading.tipString:  Stop downloading messages
!*MailFolder*search.documentationString:       Search mail and newsgroup messages
!*MailThread*search.documentationString:       Search mail and newsgroup messages
!*MailMsg*search.documentationString:  Search mail and newsgroup messages

!!
!! *urlBarItem
!!
*urlBarItem.shadowType:                                        shadow_out
*urlBarItem.shadowThickness:                   1
*urlBarItem.marginLeft:                                        1
*urlBarItem.marginRight:                               1
*urlBarItem.marginTop:                                 1
*urlBarItem.marginBottom:                              1

!!
!! *bookmarkQuickfile
!!
*bookmarkQuickfile.labelString:	Marcadores
*bookmarkQuickfile.tipString:	Lista de marcadores
*bookmarkQuickfile.documentationString:	Lista de marcadores
*bookmarkQuickfile.topOffset:	2
*bookmarkQuickfile.leftOffset:	2
*bookmarkQuickfile.buttonLayout:	button_label_on_right
*bookmarkQuickfile.mappingDelay:               0

!!
!! *relatedItems
!!
*relatedItems.labelString:	Sitios parecidos
*relatedItems.tipString:	Sitios parecidos
*relatedItems.documentationString:	Sitios parecidos
*relatedItems.topOffset:	2
*relatedItems.leftOffset:	2
*relatedItems.buttonLayout:	button_label_on_right

!!
!! *urlLocationProxyIcon
!!
*urlLocationProxyIcon.tipString:	\
Arrastre este símbolo para crear un enlace a esta página
*urlLocationProxyIcon.documentationString:	\
Arrastre este símbolo para crear un enlace a esta página
*urlLocationProxyIcon.topOffset:	3
*urlLocationProxyIcon.leftOffset:	3
*urlLocationProxyIcon.cursor:	hand2

*urlLocationProxyIcon.shadowThickness:                 0
*urlLocationProxyIcon.raiseBorderThickness:            0
*urlLocationProxyIcon.fillOnArm:                       false
*urlLocationProxyIcon.buttonLayout:                    button_pixmap_only

!!
!! *urlLocationLabel
!!
*urlLocationLabel.alignment:	alignment_end
*urlLocationLabel.recomputeSize:	False
*urlLocationLabel.marginHeight:	0
*urlLocationLabel.leftOffset:	4


*urlLocationLabel.netsiteLabelString:	Sitio:
*urlLocationLabel.uneditedLabelString:	Dirección:
*urlLocationLabel.editedLabelString:	Ir a:

! this must be the longer of the two...
*urlLocationLabel.labelString:	Dirección:

!!
!! Fixed Quickfile items
!!
*bookmarkQuickfile*addBookmark.labelString:	Añadir marcador
*bookmarkQuickfile*addBookmark.mnemonic:	A
*bookmarkQuickfile*addBookmark.acceleratorText:	Alt+K

*bookmarkQuickfile*openBookmarks.labelString:	Modificar marcadores...
*bookmarkQuickfile*openBookmarks.mnemonic:	E
*bookmarkQuickfile*openBookmarks.acceleratorText:	Alt+B

*bookmarkQuickfile*fileBookmarksSubmenu.labelString:	Archivar marcador
*bookmarkQuickfile*fileBookmarksSubmenu.mnemonic:	F

!!
!! *personalToolbarItem
!!
*personalToolbarItem.shadowType:                               shadow_out
*personalToolbarItem.shadowThickness:                  1
*personalToolbarItem.marginLeft:                               1
*personalToolbarItem.marginRight:                              1
*personalToolbarItem.marginTop:                                        1
*personalToolbarItem.marginBottom:                             1

*personalToolbar.shadowThickness:                              0
*personalToolbar.marginLeft:                                   0
*personalToolbar.marginRight:                                  0
*personalToolbar.marginTop:                                            0
*personalToolbar.marginBottom:                                 0

*personalToolbar.spacing:                                              1
*personalToolbar.raiseBorderThickness:                 2

*personalToolbar*XfeButton.marginBottom:               1
*personalToolbar*XfeButton.marginLeft:                 1
*personalToolbar*XfeButton.marginRight:                        1
*personalToolbar*XfeButton.marginTop:                  1
*personalToolbar*XfeButton.shadowThickness:            1

*personalToolbar*XfeCascade.marginBottom:              1
*personalToolbar*XfeCascade.marginLeft:                        1
*personalToolbar*XfeCascade.marginRight:               1
*personalToolbar*XfeCascade.marginTop:                 1
*personalToolbar*XfeCascade.shadowThickness:   1
*personalToolbar*XfeCascade.mappingDelay:              0

*personalToolbar*toolBarSeparator.shadowThickness:             0
*personalToolbar*toolBarSeparator.width:                               20
*personalToolbar*toolBarSeparator.height:                              2
*personalToolbar*toolBarSeparator.orientation:                 horizontal

! Navigator/Dashboard
*docinfoLabel.documentationString:	\
Indicador de seguridad, el documento es seguro cuando la llave está completa
*docinfoLabel.tipString:	Indicador de seguridad
*biffButton.documentationString:	\
Abrir la ventana de correo y comprobar si hay mensajes nuevos
*biffButton.tipString:	Comprobar el correo

! Editor/Toolbar
*editorNewBlank.tipString:	Nuevo documento
*editorOpenFile.tipString:	Abrir archivo
*save.tipString:	Guardar
*browsePage.tipString:	Ver en el navegador
*editorBrowse.tipString:	Ver en el navegador
*cut.tipString:	Cortar
*copy.tipString:	Copiar
*paste.tipString:	Pegar
*publish.tipString:	Publicar documento
*findInObject.tipString:	Buscar en página <Ctrl+F>
*Editor*openPage.tipString:	Abrir archivo

*editorFormattingToolbar*buttonLayout:  button_pixmap_only
*editorFormattingToolbar*buttonLayout:  button_pixmap_only
*editorFormattingToolbar*mappingDelay:  0

*charSizeShrink.documentationString:	Reducir en una unidad el tamaño de la letra
*charSizeShrink.tipString:	Reducir el tamaño de la letra
*charSizeGrow.documentationString:	Aumentar en una unidad el tamaño de la letra
*charSizeGrow.tipString:	Aumentar el tamaño de letra
*fontSize.documentationString:	Establecer el tamaño de la letra
*fontSize.tipString:	Establecer el tamaño de la letra
!*bold.documentationString:         Set the style to Bold <Alt+B>
*bold.tipString:	Negrita
!*italic.documentationString:       Set the style to Italic <Alt+I>
*italic.tipString:	Cursiva
!*fixed.documentationString:        Set the style to Fixed Width <Alt+T>
*fixed.tipString:	Anchura fija
!*textColor.documentationString:    Change or edit current font color
*textColor.tipString:	Color de letra
*makeLink.documentationString:	Crear un enlace al texto realzado, modificar los enlaces existentes o insertar un nuevo enlace
*makeLink.tipString:	Crear enlace
*insertLink.tipString:	Insertar o crear un enlace
*clearAllStyles.tipString:	Borrar todos los estilos <Alt+K>
*insertTarget.documentationString:	Insertar un destino
*insertTarget.tipString:	Insertar destino (Anclaje Nominal)
*insertImage.documentationString:	Insertar una imagen
*insertImage.tipString:	Insertar imagen
*insertHorizontalLine.documentationString:	Insertar una línea horizontal en la posición actual del cursor
*insertHorizontalLine.tipString:	Insertar una línea horizontal en la posición actual del cursor
*insertTable.documentationString:	Insertar tabla en la posición del cursor
*insertTable.tipString:	Insertar Tabla
*objectProperties.documentationString:	Modificar las propiedades del objeto
*objectProperties.tipString:	Propiedades del objeto

*paragraphProperties.documentationString:	Modificar el estilo del párrafo o encabezado
*paragraphProperties.tipString:	Modificar el estilo del párrafo
*insertBulleted.documentationString:	Comenzar, cambiar a, o borrar una lista no numerada (con viñetas)
*insertBulleted.tipString:	Lista con viñetas
*insertNumbered.documentationString:	Comenzar, cambiar a, o borrar una lista numerada
*insertNumbered.tipString:	Lista numerada
*indent.documentationString:	Aumentar la sangría del párrafo en un nivel
*indent.tipString:	Aumentar sangría
*outdent.documentationString:	Reducir la sangría del párrafo en un nivel
*outdent.tipString:	Reducir sangría
*alignLeft.documentationString:	Alinear con el margen izquierdo
*setAligmentStyleLeft.documentationString:	Alinear con el margen izquierdo
*alignLeft.tipString:	Alinear a la izquierda
*alignCenter.documentationString:	Centrar entre márgenes
*setAligmentStyleCenter.documentationString:	Centrar entre márgenes
*alignCenter.tipString:	Centrar
*alignRight.documentationString:	Alinear con el margen derecho
*setAligmentStyleRight.documentationString:	Alinear con el margen derecho
*alignRight.tipString:	Alinear a la derecha

! Formatting toolbar
*setParagraphStyle*documentationString:	Modificar el estilo del párrafo o encabezado
*setParagraphStyle*tipString:	Estilo párrafo
*setFontFace*documentationString:	Modificar el tipo de letra
*setFontFace*tipString:	Formato
*setFontSize*documentationString:	Modificar el tamaño de la letra
*setFontSize*tipString:	Tamaño de la letra
*setFontColor*documentationString:	Modificar el color de la letra
*setFontColor*tipString:	Color de letra
*setFontColor*documentationString:	Modificar el color de la letra
*setFontColor*tipString:	Color de letra
*toggleCharacterStyleBold.tipString:	Negrita <Alt+B>
*toggleCharacterStyleItalic.tipString:	Cursiva <Alt+I>
*toggleCharacterStyleUnderline.tipString:	Subrayado <Alt+U>
*insertNumberedList.tipString:	Lista numerada
*insertNumberedList.documentationString:	Comenzar, cambiar, o borrar una lista numerada
*insertBulletedList.tipString:	Lista con viñetas
*insertBulletedList.documentationString:	Comenzar, cambiar, o borrar una lista con viñetas
*setAlignmentStyle.tipString:	Alinear
*setAlignmentStyle.documentationString:	Elegir alineación horizontal
*insertLineBreak.documentationString:	Insertar un salto para continuar el texto en la siguiente línea
*insertBreakBelowImage.documentationString:	Insertar un salto para continuar el texto bajo las imágenes de izquierda y derecha
*setCharacterColor.documentationString:	Modificar el color de texto actual
*editorGoodiesMenu.tipString:	Insertar objeto
*editorGoodiesMenu.documentationString:	Insertar objeto

! Editor/Popups (additional items)
*browseLink.documentationString:	Ver este enlace
*editLink.documentationString:	Abrir este enlace en una nueva ventana del editor
*bookmarkLink.documentationString:	Añadir este enlace a la lista de marcadores
*copyLink.documentationString:	Copiar este enlace en el portapapeles
*removeLink.documentationString:	Borrar el enlace donde está el cursor o todos los enlaces dentro de la región seleccionada

! Mail/Toolbar
*getNewMail.tipString:	Recibir el correo nuevo
*deleteMessage.tipString:	Borrar el mensaje seleccionado
*mailNew.tipString:	Componer un nuevo mensaje
*replyToSender.tipString:	Responder al mensaje
*replyToAll.tipString:	Responder a todos los destinatarios
*forwardMessage.tipString:	Reenviar el mensaje seleccionado
*previousUnreadMessage.tipString:	Anterior mensaje no leído
*nextUnreadMessage.tipString:	Siguiente mensaje no leído

! Composition/Edit menu (additional items)
*pasteQuote.documentationString:	Insertar el contenido del portapapeles entre comillas
*clear.documentationString:	Borrar la selección
*clearAllText.documentationString:	Borrar todo
*selectAllText.documentationString:	Seleccionar todo el documento
*rot13.documentationString:	Rotar el texto del mensaje 13 caracteres

! Composition/View menu (additional items)
*showFrom.documentationString:	Mostrar el campo Enviado desde
*showReplyTo.documentationString:	Mostrar el campo Responder a
*showTo.documentationString:	Mostrar el campo Enviar a
*showCC.documentationString:	Mostrar el campo Con Copia
*showBCC.documentationString:	Mostrar el campo Con Copia Ciega
*showFCC.documentationString:	Mostrar el campo Situación archivo copia
*showPostTo.documentationString:	Mostrar el campo Publicar en grupo de noticias
*showFollowupTo.documentationString:	Mostrar el campo Enviar seguimiento a
*showSubject.documentationString:	Mostrar el campo Asunto
*showAttachments.documentationString:	Mostrar el campo Adjuntos
*wrapLines.documentationString:	Recortar líneas con más de 72 caracteres

! Composition/Options menu (additional items)
*deliverNow.documentationString:	Enviar los mensaje inmediatamente
*deliverLater.documentationString:	Enviar los mensajes más tarde

! Compose/Toolbar
*sendOrSendLater.documentationString:	Enviar el mensaje actual
*sendOrSendLater.tipString:	Enviar mensaje
*quoteMessage.documentationString:	Pegar el texto del documento original como cita
*quoteMessage.tipString:	Citar original

*attach.tipString:	Incluir un archivo adjunto
*attachFile.documentationString:	Adjuntar un archivo a este mensaje
*attachFile.tipString:	Adjuntar archivo
*attachWebPage.documentationString:	Adjuntar una página web a este mensaje
*attachWebPage.tipString:	Adjuntar página web
*deleteAttachment.documentationString:	Borrar el archivo adjunto seleccionado
*deleteAttachment.tipString:	Borrar archivo adjunto

*attachAddressBookCard.documentationString:	Adjuntar su tarjeta personal como vCard a este mensaje
*attachAddressBookCard.tipString:	Adjuntar mi tarjeta
*attachForm.documentationString:	Mover un documento hasta aquí para adjuntarlo a este mensaje.
*attachForm.tipString:	Mover documento aquí para adjuntar

!*editAddressBook.documentationString: Abrir el libro de direcciones
*editAddressBook.tipString:	Direcciones

*formattingToolbar*buttonLayout:        button_pixmap_only
*formattingToolbar*buttonLayout:        button_pixmap_only
*formattingToolbar*mappingDelay:        0

! News/Toolbar
*postNew.tipString:	Enviar mensaje nuevo
*postReply.tipString:	Enviar
*postAndMailReply.tipString:	Enviar respuesta al grupo y al remitente
*markThreadRead.tipString:	Marcar tema como leido
*markAllRead.tipString:	Marcar todo como leido

! Preferences dialog
!
*prefs*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*prefs_popup.title:	Mozilla: Preferencias
*pref.category:		Categoría

*prefs.form.leftPane.topOffset:	8
*prefs.form.leftPane.leftOffset:	8
*prefs.form.leftPane.bottomOffset:	8

*prefs.form.rightPane.leftOffset:	8
*prefs.form.rightPane.rightOffset:	8
*prefs.form.rightPane.bottomOffset:	8

*prefs*pageTitle.alignment:	ALIGNMENT_BEGINNING
*prefs*pageTitle.fontList:	\
-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*=NORMAL,\
-*-helvetica-bold-r-*-*-*-140-*-*-*-*-iso8859-*=BOLD,\
-*-helvetica-medium-o-normal-*-*-120-*-*-*-*-iso8859-*=ITALIC

*prefs*categoryList*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*

*prefs*pageForm.topOffset:	4
*prefs*XmFrame.marginWidth:	8
*prefs*XmFrame.marginHeight:	4
*prefs*XmPushButtonGadget.marginWidth:	8

! Preferences dialog - Appearance

*prefs*appearance*launchBoxLabel.labelString:	Al arrancar el programa, ejecutar
*prefs*appearance*navigator.labelString:	Navegador
*prefs*appearance*messenger.labelString:	Buzón de Correo
*prefs*appearance*collabra.labelString:	Grupos de noticias
*prefs*appearance*composer.labelString:	Editor de páginas Web
*prefs*appearance*conference.labelString:	Conferencias
*prefs*appearance*netcaster.labelString:	Gestor de canales
*prefs*appearance*calendar.labelString:	Calendario
*prefs*appearance*radio.labelString:	Radio
*prefs*appearance*frame2*toolbarBoxLabel.labelString:	Mostrar Barra de herramientas como
*prefs*appearance*frame2*picAndText.labelString:	Imágenes y texto
*prefs*appearance*frame2*picOnly.labelString:	Sólo imágenes
*prefs*appearance*frame2*textOnly.labelString:	Sólo texto
*prefs*appearance*frame2*showTooltips.labelString:	Mostrar pistas
*prefs*appearance*frame2*showTooltips.tipString:	Mostrar/Ocultar pistas
*prefs*appearance*underline.labelString:	Subrayar enlaces

! Preferences dialog - General/Fonts

*prefs*fontsFrame*fontsBoxLabel.labelString:	Tipos de letra y codificaciones
*prefs*fontsFrame*encodingLabel.labelString:	Para la codificación:
*prefs*fontsFrame*proportionalLabel.labelString:	Letra de anchura variable:
*prefs*fontsFrame*propSizeLabel.labelString:	Tamaño:
*prefs*fontsFrame*propSizeToggle.labelString:	Permitir escalado
*prefs*fontsFrame*fixedLabel.labelString:	Letra de anchura fija:
*prefs*fontsFrame*fixedSizeLabel.labelString:	Tamaño:
*prefs*fontsFrame*fixedSizeToggle.labelString:	Permitir escalado
*prefs*fontsFrame*0.labelString:	Cualquiera
*prefs*webFontFrame*useFontLabel.labelString:	En ocasiones, un documento puede proporcionar sus propios tipos de letra.
*prefs*webFontFrame*dynaFont.labelString:	Tipos de letra dinámicos
*prefs*webFontFrame*useMyFont.labelString:	Usar mis tipos de letra predeterminados, prevaleciendo sobre los especificados en el documento
*prefs*webFontFrame*useDocFontSelective.labelString:	Usar los tipos de letra especificados en el documento, pero desactivando los tipos de letra dinámicos
*prefs*webFontFrame*useDocFontWhenever.labelString:	Usar los tipos de letra especificados en el documento, incluyendo los tipos de letra dinámicos

! Preferences dialog - General/Colors

*prefs*colors*colorBoxLabel.labelString:	Colores
*prefs*colors*textColorLabel.labelString:	Texto:
*prefs*colors*bgColorLabel.labelString:	Fondo:
*prefs*colors*useDefColors.labelString:	Colores predeterminados
*prefs*colors*linksBoxLabel.labelString:	Enlaces
*prefs*colors*linksLabel.labelString:	Enlaces no visitados:
*prefs*colors*vlinksLabel.labelString:	Enlaces visitados:
*prefs*colors*underline.labelString:	Subrayar enlaces
*prefs*colors*useColor.labelString:	En ocasiones el documento propociona sus propios colores de texto y de fondo
*prefs*colors*useMyColor.labelString:	Usar siempre mis colores, prevaleciendo sobre los del documento

! Preferences dialog - Browser/Languages - Add

*prefsLang*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*prefsLang_popup.title:	Mozilla: Todos los idiomas
*prefsLang*langLabel.labelString:	Seleccione el idioma que desee añadir.\n\nIdiomas
*prefsLang*langList.visibleItemCount:	15
*prefsLang*otherLabel.labelString:	Otros:

! Preferences dialog - Smart Browsing
*prefs*relatedFrame*relatedBoxLabel.labelString:	Sitios parecidos
*prefs*relatedFrame*enableRelated.labelString:	Activar Sitios parecidos

*prefs*relatedFrame*autoloadLabel.labelString:	Cargar automáticamente Sitios parecidos

*prefs*relatedFrame*autoloadAlways.labelString:	Siempre
*prefs*relatedFrame*autoloadAdaptive.labelString:	Tras su primer uso
*prefs*relatedFrame*autoloadNever.labelString:	Nunca

*prefs*relatedFrame*excludedLabel.labelString:	\
Introducir una lista separada por comas de nombres de dominios para\n\
cuyos sitios nunca se cargarán sitios parecidos

*prefs*keywordFrame*keywordBoxLabel.labelString:	Palabras clave de Internet
*prefs*keywordFrame*enableKeywords.labelString:	Activar Palabras clave de Internet

! Preferences dialog - Advanced

*prefs*advanced*showImage.labelString:	Cargar imágenes y otros tipos de datos automáticamente\n(Si no, pulse el botón Imágenes cuando necesite cargarlas)
*prefs*advanced*enableJava.labelString:	Activar Java
*prefs*advanced*enableJs.labelString:	Activar JavaScript
*prefs*advanced*enableStyleSheet.labelString:	Activar hojas de estilo
*prefs*advanced*autoInstall.labelString:	Activar AutoInstall
*prefs*advanced*emailAnonFtp.labelString:	Enviar dirección electrónica como contraseña para FTP anónimo
*prefs*cookieFrame*cookieBoxLabel.labelString:	Cookies
*prefs*cookieFrame*alwaysAcceptCookie.labelString:	Aceptar cookies siempre
*prefs*cookieFrame*noForeignCookie.labelString:	Aceptar sólo cookies cuando proceden del mismo servidor que\nla página que estoy viendo
*prefs*cookieFrame*neverAcceptCookie.labelString:	No aceptar ni enviar cookies
*prefs*cookieFrame*warnCookie.labelString:	Advertirme antes de aceptar una cookie

*prefs*alertFrame*submDoc.labelString:	enviando un documento seguro
*prefs*alertFrame*dpyDoc.labelString:	viendo un documento seguro
*prefs*alertFrame*viewMixed.labelString:	viendo un documento mezcla seguro/inseguro
*prefs*alertFrame*submForm.labelString:	enviando un formulario inseguro
*prefs*alertFrame*submMixedForm.labelString:	enviando un formulario mezcla seguro/inseguro

! Preferences dialog - Browser/Applications

*prefs*applFrame*newButton.labelString:	Nuevo...
*prefs*applFrame*editButton.labelString:	Modificar...
*prefs*applFrame*deleteButton.labelString:	Borrar
*prefs*appl*folderLabel.labelString:	Recibir archivos en:
*prefs*appl*browseButton.labelString:	Elegir...

! Preferences dialog - General - Applications - Edit

*prefsApplEdit*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*prefsApplEdit_popup.title:	Mozilla: Aplicación
*prefsApplEdit*mimeTypesDescriptionLabel.labelString:	Descripción:
*prefsApplEdit*mimeTypesLabel.labelString:	Tipo MIME:
*prefsApplEdit*mimeTypesSuffixLabel.labelString:	Sufijos:
*prefsApplEdit*applEditFrameLabel.labelString:	Manipulado por
*prefsApplEdit*applEditNavigator.labelString:	Mozilla 
*prefsApplEdit*applEditPlugin.labelString:	Plug-in:
*prefsApplEdit*applEditApp.labelString:	Aplicación:
*prefsApplEdit*applEditSave.labelString:	Guardar en disco
*prefsApplEdit*applEditUnknown.labelString:	Desconocido: preguntar al usuario
*prefsApplEdit*applEditAppBrowse.labelString:	Elegir...

! Preferences dialog - General/Cache

*prefs*cache*cacheLabel.labelString:	El caché se usa para guardar copias locales de los documentos que se\nvisitan a menudo y, por tanto, reduce el tiempo de conexión a la red. El botón recargar\nsiempre comparará el documento guardado en el caché con el documento de la red\ny mostrará el más reciente. Para cargar páginas e imágenes\ndesde la red en vez del caché, pulse la tecla Shift y pulse el botón Recargar.
*prefs*cache*cacheDirLabel.labelString:	Carpeta del caché de disco:
*prefs*cache*memoryLabel.labelString:	Caché de memoria:
*prefs*cache*memoryK.labelString:	kBytes
*prefs*cache*diskLabel.labelString:	Caché de disco:
*prefs*cache*diskK.labelString:	kBytes
*prefs*cache*verifyLabel.labelString:	El documento en el caché se compara con el de la red
*prefs*cache*verifyRc*once.labelString:	Una vez por sesión
*prefs*cache*verifyRc*every.labelString:	Siempre
*prefs*cache*verifyRc*never.labelString:	Nunca
*prefs*cache*browse.labelString:	Elegir...
*prefs*cache*clearDisk.labelString:	Vaciar caché de disco
*prefs*cache*clearMem.labelString:	Vaciar caché de memoria

! Preferences dialog - General/Proxies

*prefs*proxies*proxiesLabel.labelString:	Un servidor proxy (alterno) aporta un grado de seguridad adicional entre\nsu sistema e Internet (generalmente en combinación con un cortafuegos\no firewall), y aumenta el rendimiento de flujo de datos entre ambos, al\nreducir el tráfico usando un caché.
*prefs*proxies*direct.labelString:	Conexión directa con Internet
*prefs*proxies*manual.labelString:	Configuración manual del proxy
*prefs*proxies*auto.labelString:	Configuración automática del proxy
*prefs*proxies*config.labelString:	Lugar de la configuración (URL)
*prefs*proxies*view.labelString:	Ver...
*prefs*proxies*reload.labelString:	Recargar

! Preferences dialog - General - Proxies - View

*prefsProxiesView*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*prefsProxiesView_popup.title:	Mozilla: Ver configuración manual del proxy
*prefsProxiesView*proxyViewLabel1.labelString:	\
Puede configurar un servidor proxy y un puerto para cada protocolo\n\
de Internet soportado por Mozilla.
*prefsProxiesView*proxyViewLabel2.labelString:	\
Puede suministrar una lista de dominios a los que Mozilla accederá\n\
directamente, sin utilizar el servidor proxy:
*prefsProxiesView*ftpProxyLabel.labelString:	FTP:
*prefsProxiesView*gopherProxyLabel.labelString:	Gopher:
*prefsProxiesView*httpProxyLabel.labelString:	HTTP:
*prefsProxiesView*httpsProxyLabel.labelString:	Seguridad:
*prefsProxiesView*waisProxyLabel.labelString:	WAIS:
*prefsProxiesView*noProxyLabel.labelString:	No usar servidores proxy para dominios que empiecen por:
*prefsProxiesView*socksHostLabel.labelString:	SOCKS:
*prefsProxiesView*ftpPortLabel.labelString:	Puerto:
*prefsProxiesView*gopherPortLabel.labelString:	Puerto:
*prefsProxiesView*httpPortLabel.labelString:	Puerto:
*prefsProxiesView*httpsPortLabel.labelString:	Puerto:
*prefsProxiesView*waisPortLabel.labelString:	Puerto:
*prefsProxiesView*socksPortLabel.labelString:	Puerto:

! Roaming Access Conflict Dialog
*liConflict*queryLabel.labelString:	¿Qué desea hacer?
*liConflict*alwaysToggle.labelString:	Aplicar esta decisión a los restantes.

! Preferences dialog - Roaming Access: General Prefs
!*prefs*liGeneral*topTitle.labelString:	Preferencias Generales
*prefs*liGeneral*hint.labelString: \
Use Acceso en Roaming para recoger su perfil de usuario desde\n\
cualquier punto de la red.\n\
\n\
Su perfil de usuario será recogido desde su servidor\n\
de Acceso en Roaming a cada inicio, y enviado al servidor al cerrar la sesión.

*prefs*liGeneral*enableToggle.labelString: Activar Acceso en Roaming para este perfil de usuario
*prefs*liGeneral*syncToggle.labelString: Sincronización en tarea de fondo cada
*prefs*liGeneral*unitLabel.labelString: minutos.
*prefs*liLoginAdvancedButton.labelString: Opciones

*prefs*liGeneral*bottomTitle.labelString: Información Usuario
*prefs*liGeneral*bottomFrame.topOffset: 20
*prefs*liGeneral*userInfoLabel.labelString: \
Entre su identificador de usuario a usar para recoger su perfil\n\
de usuario de su servidor de Acceso en Roaming.
*prefs*liGeneral*userLabel.labelString: Nombre de Usuario:
*prefs*liGeneral*passwordLabel.labelString: Contraseña:
*prefs*liGeneral*passwordText.maxLength: 256
*prefs*liGeneral*savePasswordToggle.labelString: Recordar mi contraseña de Acceso en Roaming

! Preferences dialog - Roaming Access: Server Prefs
*prefs*liServer*frameLabel.labelString: Información Servidor

*prefs*liServer*serverLabel.labelString: \
La información siguiente es necesaria para conectarse a su servidor\n\
de Acceso en Roaming. Si Vd. no sabe la información pedida, contacte\n\
su adminsitrador de sistema.

*prefs*liServer*bottomFrame.topOffset: 20
*prefs*liServer*ldapToggle.labelString: LDAP Directory Server
*prefs*liServer*ldapAddrLabel.labelString: Dirección:
*prefs*liServer*ldapBaseLabel.labelString: DN Usuario:
*prefs*liServer*httpToggle.labelString: Servidor HTTP
*prefs*liServer*httpBaseLabel.labelString: URL de base:
! Preferences dialog - Roaming Access: File Prefs
*prefs*liFiles*fileLabel.labelString: \
Los elementos del perfil de usario seleccionados serán recogidos de\n\
su servidor de Acceso en Roaming al inicio de sesión; y enviados\n\
al servidor al terminar la sesión.
*prefs*liFiles*frameLabel.labelString: Elementos
*prefs*liFiles*bookmarkToggle.labelString: Marcadores
*prefs*liFiles*cookiesToggle.labelString: Cookies
*prefs*liFiles*filterToggle.labelString: Filtros de correo
*prefs*liFiles*addrbookToggle.labelString: Libro de direcciones
*prefs*liFiles*historyToggle.labelString: Historial
*prefs*liFiles*prefsToggle.labelString: Preferencias Usuario
*prefs*liFiles*javasecToggle.labelString: Seguridad Java
*prefs*liFiles*certToggle.labelString: Certificados y Claves Privadas


! Preferences dialog - Advanced/Disk space

*prefs*diskSpace*allMsgsBoxLabel.labelString:	Todos los mensajes
*prefs*diskSpace*maxMsgSize.labelString:	No guardar localmente los mensaje de más de
*prefs*diskSpace*k.labelString:	KB
*prefs*diskSpace*askThreshold.labelString:	Comprimir las carpetas cuando esto permita ahorrar más de
*prefs*diskSpace*k2.labelString:	KB

*prefs*diskSpace*newsMsgsBoxLabel.labelString:	Sólo mensajes de los grupos de discusión
*prefs*diskSpace*newsMsgsLabel.labelString:	Cuando sea el momento de borrar mensajes:
*prefs*diskSpace*keepNewsByAge.labelString:	Conservar los mensajes que han llegado durante los últimos
*prefs*diskSpace*keepAllNews.labelString:	Conservar todos los mensajes
*prefs*diskSpace*keepNewsByCount.labelString:	Conservar los
*prefs*diskSpace*keepUnreadNews.labelString:	Conservar sólo mensajes no leídos
*prefs*diskSpace*daysLabel.labelString:	días
*prefs*diskSpace*msgsLabel.labelString:	mensajes más recientes
*prefs*diskSpace*more.labelString:	Más opciones...
*prefs*diskSpace*rmMsgBodyToggle.labelString: \
Borrar solamente el contenido de los mensajes anteriores a

! Preferences dialog - Advanced/Help Files

*prefs*helpFiles*helpLabel.labelString:	Los archivos de ayuda proceden de:
*prefs*helpFiles*netscapeToggle.labelString:	Servidor de Ayuda de Mozilla
*prefs*helpFiles*installToggle.labelString:	Archivos de Ayuda instalados
*prefs*helpFiles*customToggle.labelString:	Página personalizada:
*prefs*helpFiles*browse.labelString:	Elegir...

! Preferences dialog - Advanced/SmartUpdate
*prefs*smartUpdate*enableToggle.labelString:   Activar SmartUpdate
*prefs*smartUpdate*confirmToggle.labelString:  Confirmación manual de cada instalación

*prefs*smartUpdate*uninstallLabel.labelString: \
Para desinstalr, seleccione en la lista siguiente y cliquee el boton Desinstalar
*prefs*smartUpdate*uninstallButton.labelString: Desinstalar

! Preferences dialog - Browser

*prefs*browser*indicatorType:	ONE_OF_MANY
*prefs*browser*XmLabelGadget.alignment:	ALIGNMENT_BEGINNING
*prefs*browser*browserBoxLabel.labelString:	Iniciar Mozilla con
*prefs*browser*blankPage.labelString:	Página en blanco
*prefs*browser*homePage.labelString:	Página principal
*prefs*browser*lastPage.labelString:	Última página visitada
*prefs*browser*homePageBoxLabel.labelString:	Página principal
*prefs*browser*homePageLabel.labelString:	Si pulsa el botón Inicio, accederá a esta página.
*prefs*browser*locLabel.labelString:	Dirección:
*prefs*browser*browse.labelString:	Elegir...
*prefs*browser*useCurrent.labelString:	Usar página actual
*prefs*browser*historyBoxLabel.labelString:	Historial
*prefs*browser*expireLabel.labelString:	El historial caduca después de
*prefs*browser*daysLabel.labelString:	días
*prefs*browser*expireNow.labelString:	Borrar Historial

! Preferences dialog - Browser/Languages

*prefs*lang*langLabel.alignment:	ALIGNMENT_BEGINNING
*prefs*lang*langLabel.labelString:	\
Seleccione el orden de preferencia de los idiomas en los que prefiere\n\
ver las páginas Web. Algunas páginas están disponibles en varios idiomas.\n\
Mozilla puede presentarlas en el idioma que prefiera entre los disponibles:
*prefs*lang*addButton.labelString:	Añadir...
*prefs*lang*deleteButton.labelString:	Borrar

! Preferences dialog - Mail News

*prefs.quotedTextStyle.plain:	Normal
*prefs.quotedTextStyle.bold:	Negrita
*prefs.quotedTextStyle.italic:	Cursiva
*prefs.quotedTextStyle.boldItalic:	Negrita Cursiva
*prefs.quotedTextSize.normal:	Normal
*prefs.quotedTextSize.bigger:	Más grande
*prefs.quotedTextSize.smaller:	Más pequeño
*prefs*mailnews*quotedTextLabel.labelString:	Mostrar el texto normal que comience con '>' con
*prefs*mailnews*quotedTextStyleLabel.labelString:	Estilo:
*prefs*mailnews*quotedTextSizeLabel.labelString:	Tamaño:
*prefs*mailnews*quotedTextColorLabel.labelString:	Color:
*prefs*mailnews*msgArticleLabel.labelString:	\
Mostrar mensajes y artículos con
*prefs*mailnews*fixedWidthFont.labelString:	Letra de anchura fija
*prefs*mailnews*varWidthFont.labelString:	Letra de anchura variable
*prefs*mailnews*rememberSelected.labelString:	\
Recordar el último mensaje seleccionado.
*prefs*mailnews*reuseThread.labelString:	Reusar la ventana de lista de mensajes (cadena)\n(Todas las listas de mensajes aparecerán en la misma ventana)
*prefs*mailnews*reuseMsg.labelString:	Reusar la ventana de mensajes\n(Todos los mensajes aparecerán en la misma ventana)
*prefs*mailnews*confirmFolderTrash.labelString:	\
Confirmar al enviar carpetas a la papelera.

*prefs*mailnews*newsBehaviorLabel.labelString: El menú o botón Grupos de noticias:
*prefs*mailnews*newsInThreePaneToggle.labelString: Abrir grupos de noticias en una ventana Messenger.
*prefs*mailnews*newsInMessageCenterToggle.labelString: Abre el centro de mesnajes.

! Preferences dialog - Mail News/Messages
*prefs*mailnewsMessages*replyLabel.labelString: Reenviar y Responder a los mensajes:
*prefs*mailnewsMessages*forwardLabel.labelString: Por omisión, reenviar mensajes:
*prefs*mailnewsMessages*autoquoteToggle.labelString: Citar automatiquemanete el mensaje original al responder
*prefs*mailnewsMessages*autoquoteMyReplyLabel.labelString: Luego,
*prefs*mailnewsMessages*autoquoteSepLabel.labelString: Separar la respuesta y la citación por
*prefs*mailnewsMessages*autoquoteSepLinesLabel.labelString: líneas
*prefs*mailnewsMessages*spellToggle.labelString: Verificación ortográfica antes de enviar
*prefs*mailnewsMessages*wrapLabel.labelString: Ancho de líneas:
*prefs*mailnewsMessages*wrapToggle.labelString: Adaptar los mensajes entrantes, de solo texto, al ancho de la ventana 
*prefs*mailnewsMessages*wrapLengthLabel.labelString: Reformatear los mensajes en salida, de solo texto, a:
*prefs*mailnewsMessages*wrapLengthAfterLabel.labelString: letras por línea
*prefs*mailnewsMessages*eightbitLabel.labelString: Enviar los mensajes con carácteres 8bits:
*prefs*mailnewsMessages*eightbitAsIsToggle.labelString: Tal cual (no funciona bien con ciertos servidores de correo)
*prefs*mailnewsMessages*eightbitQuotedToggle.labelString: \
Usar la codificación MIME "quoted printable"\n\
(no funciona bien con ciertos lectores de correo o de grupos de noticias)

! Preferences dialog - Mail News/Identity

*prefs*mailnewsIdentity*idLabel.labelString:	\
Esta información es necesaria para enviar correo.\n\
Si la desconoce, póngase en contacto con el administrador del sistema\n\
o con su proveedor de acceso a Internet.
*prefs*mailnewsIdentity*nameLabel.labelString:	Su nombre:
*prefs*mailnewsIdentity*emailAddrLabel.labelString:	Dirección de correo electrónicoEmailAddress:
*prefs*mailnewsIdentity*replyToAddrLabel.labelString:	Dirección de respuesta (sólo es necesaria si varía\nrespecto a la dirección electrónica):
*prefs*mailnewsIdentity*orgLabel.labelString:	Organización:
*prefs*mailnewsIdentity*sigFileLabel.labelString:	Archivo de firma:
*prefs*mailnewsIdentity*browse.labelString:	Elegir...
*prefs*mailnewsIdentity*attachCard.labelString:	Adjuntar siempre mi tarjeta a los mensajes
*prefs*mailnewsIdentity*editCard.labelString:	Modificar tarjeta...

! Preferences dialog - Mail News/Mail Server

*prefs*mailnewsMserver*iServerFrame*incomingServerLabel.labelString: \
Servidores de correo entrante
*prefs*mailnewsMserver*oServerFrame*outgoingServerLabel.labelString: \
Servidores de correo saliente
*prefs*mailnewsMserver*localFrame*localMailDirLabel.labelString:	\
Directorio de correo local
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*newButton.labelString: \
Añadir...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*editButton.labelString: \
Editar...
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*deleteButton.labelString: \
Borrar
*prefs*mailnewsMserver*iServerFrame*iServerBox*ButtonForm*defaultButton.labelString: \
Definir por omisión
*prefs*mailnewsMserver*iServerFrame*iServerBox*incomingServerLabel.labelString:\
Para configurar las propriedades de un servidor (como si debe\n\
buscar los nuevos mensajes automáticamente), seleccione un servidor\n\
y cliquee Editar.
*SubUpgradeDialog*paragraphLabel.labelString: \
Messenger detectó que Vd. ha actualizado a partir de una versión anterior.\n\
Para leer su correo Messenger necesitará saber cuales carpetas desea suscribir.\n\
 \n\
Sólo las carpetas que haya suscrito aparecerán en la vista de carpetas.\n\
Toda carpeta que no haya suscrito será indisponible (nota: Vd podrá siempre\n\
cambiar cuales carpetas ha suscrito a partir de la opción Suscribir del menu Archivo).
*SubUpgradeDialog*customToggle.labelString: \
Dejeme ahora elegir cuales carpetas suscribir

! Preferences dialog - incoming mail server - new server pop up

*MailServerInfo.title: Netscape: Mail server info
*MailServerInfo*form1*ServerName.labelString: \
Nombre del servidor:
*MailServerInfo*form1*ServerType.labelString: \
tipo del servidor:
*MailServerInfo*form1*ServerUser.labelString: \
nombre de usuario:
*MailServerInfo*form1*RememberPass.labelString: \
Recordar contraseña.
*MailServerInfo*form1*CheckMail.labelString: \
Recoger el correo cada
*MailServerInfo*form1*MinuteLabel.labelString: \
minutos.
*MailServerInfo*form1*downloadToggle.labelString: \
Bajar automáticamente los mensajes nuevos.
*MailServerInfo*form1*imapOption.labelString: IMAP
*MailServerInfo*form1*popOption.labelString: POP
*MailServerInfo*form1*movemailOption.labelString: MoveMail

! Imap tab

*prefs_popup*MailServerInfo*xmlFolder*form2*imapImap.labelString: IMAP
*prefs_popup*MailServerInfo*xmlFolder*form2*deleteLabel.labelString: \
Al borrar un mensaje:
*prefs_popup*MailServerInfo*xmlFolder*form2*trashToggle.labelString: \
Desplazarlo a la carpeta de la papelera.\n\
(Será realmente borrado al seleccionar 'Vaciar Papelera')
*prefs_popup*MailServerInfo*xmlFolder*form2*markToggle.labelString: \
Marcarlo como borrado\n\
(Será realmente borrado al seleccionar 'Compactar esta carpeta')
*prefs_popup*MailServerInfo*xmlFolder*form2*removeToggle.labelString: \
Borrarlo enseguida.\n\
(Podrá ser recuperado selecceionando 'Deshacer')
*prefs_popup*MailServerInfo*xmlFolder*form2*trashExitToggle.labelString:\
Vaciar la papelera al salir.
*prefs_popup*MailServerInfo*xmlFolder*form2*expungeExitToggle.labelString:\
Limpiar ("Expunguir") el correo entrante al salir.
*prefs_popup*MailServerInfo*xmlFolder*form2*UseSSL.labelString: \
Usar una connexión segura. (SSL)

! Advanced tab 

*MailServerInfo*form3*PathPrefsLabel.labelString: \
Estas preferencias especifican los diferentes espacios\n\
de nombres en su servidor IMAP.
*MailServerInfo*form3*PersonalDir.labelString: \
Espacio de nombres personal
*MailServerInfo*form3*PublicDir.labelString: \
Público (compartido)
*MailServerInfo*form3*OtherUsers.labelString: \
Otros usuarios
*MailServerInfo*form3*AllowServer.labelString: \
Permitir que el servidor reemplaze estos espacios de nombres
*MailServerInfo*form3*imapDirLabel.labelString: \
Directorio del servidor IMAP:
*MailServerInfo*form3*subfolderMessageToggle.labelString: \
El servidor soporta carpetas que continen subcarpetas y mensajes.
*MailServerInfo*form3*useSubscriptions.labelString: \
Ver solamente carpetas suscritas.

! pop server - general tab

*MailServerInfo*form4*LeaveMessages.labelString: \
Dejar los mensajes en el servidor
*MailServerInfo*form4*deleteOnPopServer.labelString: \
Al borrar un mensaje localmente, borrarlo también del servidor.

! Movemail tab

*MailServerInfo*form5*builtinToggle.labelString: Usar movemail incluido
*MailServerInfo*form5*externalToggle.labelString: Usar un programa externo:
*MailServerInfo*form5*appChoose.labelString: Elegir...
! Preferences dialog - outgoing mail server
*prefs*mailnewsMserver*oServerFrame*oServerBox*outgoingServerLabel.labelString: \
Servidor de correo saliente (SMTP):
*prefs*mailnewsMserver*oServerFrame*oServerBox*serverUsernameLabel.labelString:\
Nombre de usuario en el servidor de correo saliente:
*prefs*mailnewsMserver*oServerFrame*oServerBox*chooseSSLLabel.labelString: \
Usar connexión segura (SSL) o TLS para los mensajes salientes:
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslNever.labelString: \
Nunca
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslIfPossible.labelString: \
Si posible
*prefs*mailnewsMserver*oServerFrame*oServerBox*sslAlways.labelString: \
Siempre

! Preferences dialog - mail server - local mail directory

*prefs*mailnewsMserver*localFrame*localBox*localMailDir.labelString: \
Directorio:
*prefs*mailnewsMserver*localFrame*localBox*chooseButton.labelString: \
Elegir...

! Preferences dialog - Mail News/News Server

*prefs*mailnewsNServer*serverLabel.labelString:
*prefs*mailnewsNServer*serverAddButton.labelString: Añadir...
*prefs*mailnewsNServer*serverEditButton.labelString: Editar...
*prefs*mailnewsNServer*serverDeleteButton.labelString: Borrar
*prefs*mailnewsNServer*serverDefaultButton.labelString: Definir por omisión
*prefs*mailnewsNServer*localLabel.labelString: Directorio grupo de noticias:
*prefs*mailnewsNServer*dirLabel.labelString: Carpeta grupo de noticias:
*prefs*mailnewsNServer*chooseButton.labelString: Elegir...
*prefs*mailnewsNServer*sizeLimitToggle.labelString: \
Preguntarme antes de recibir más de
*prefs*mailnewsNServer*sizeLimit2.labelString: mensajes.

! Preferences dialog - Mail News/News Server popup

*NewsServerInfo*serverLabel.labelString: Servidor:
*NewsServerInfo*portLabel.labelString: Puerto:
*NewsServerInfo*sslToggle.labelString: \
Soporte conexiones seguras (SSL)
*NewsServerInfo*passwordToggle.labelString: \
Siempre usar nombre y contraseña

! Preferences dialog - Mail News/Address Book

*prefs*mailnewsAddrBook*addrBookLabel.labelString:	\
Al buscar en directorios, recorrer los siguientes\n\
por este orden:
*prefs*mailnewsAddrBook*newButton.labelString:	Nuevo...
*prefs*mailnewsAddrBook*editButton.labelString:	Modificar...
*prefs*mailnewsAddrBook*deleteButton.labelString:	Borrar
*prefs*mailnewsAddrBook*fullNameLabel.labelString:	Mostrar nombres completos como
*prefs*mailnewsAddrBook*firstLastToggle.labelString:	(Nombre) (Apellidos)
*prefs*mailnewsAddrBook*lastFirstToggle.labelString:	(Apellidos), (Nombre)
*prefs*mailnewsAddrBook*firstLastLabel.labelString:	(Javier Gómez Marín)
*prefs*mailnewsAddrBook*lastFirstLabel.labelString:	(Gómez Marín, Javier)

*prefs*mailnewsAddress*messageLabel.labelString: Direcciones Pinpoint:
*prefs*mailnewsAddress*completeLabel.labelString: \
Buscar direcciones el los siguientes:
*prefs*mailnewsAddress*completeABToggle.labelString: Libros de direcciones.
*prefs*mailnewsAddress*completeDirToggle.labelString: Servidor de diorectorios:
*prefs*mailnewsAddress*conflictLabel.labelString: \
Cuando se encuentra más de una dirección:
*prefs*mailnewsAddress*conflictShowToggle.labelString: \
Muestreme una lista con las diferentes posibilidades
*prefs*mailnewsAddress*conflictAcceptToggle.labelString: \
Aceptar lo que tecleé
*prefs*mailnewsAddress*onlyMatchLabel.labelString: \
Si hay sólo una ocurrencia en su libro de direccioens personal:
*prefs*mailnewsAddress*onlyMatchToggle.labelString: \
Usar la dirección y no buscar en el directorio
*prefs*mailnewsAddress*sortLabel.labelString: Al mostrar los nombres completos:
*prefs*mailnewsAddress*sortFirstToggle.labelString: \
Mostrar los nombres usando el formato de afichage (de la tarjeta del libro de direcciones)
*prefs*mailnewsAddress*sortLastToggle.labelString: \
Mostrar los nombres en el formato «Apellidos, Nombre».

! Preferences dialog - Mail News/Directory - New/Edit

*prefsLdapProp*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*prefsLdapProp_popup.title:	Mozilla: Preferencias del servidor LDAP
*prefsLdapProp*descLabel.labelString:	Descripción:	
*prefsLdapProp*serverLabel.labelString:	Servidor LDAP:
*prefsLdapProp*rootLabel.labelString:	Buscar en raíz:
*prefsLdapProp*portNumberLabel.labelString:	Número de puerto:
*prefsLdapProp*numHitLabel.labelString:	Número máximo de resultados:
*prefsLdapProp*secure.labelString:	Seguro
*prefsLdapProp*savePasswd.labelString:	Guardar contraseña

! Preferences dialog - Mail News/Message Copies

*prefs*mailnewsCopies*newsCopies.labelString: Al enviar un mensaje a un grupo de noticias, automáticamente
*prefs*mailnewsCopies*newsOtherToggle.labelString: BCC a otras direcciones:
*prefs*mailnewsCopies*newsChooseButton.labelString: Elegir carpeta...
*prefs*mailnewsCopies*newsFccToggle.labelString: Carpeta %s en %s
*prefs*mailnewsCopies*mailCopies.labelString: Al enviar un correo electrónico, automáticamente
*prefs*mailnewsCopies*mailOtherToggle.labelString: BCC a otras direcciones:
*prefs*mailnewsCopies*mailChooseButton.labelString: Elegir carpeta...
*prefs*mailnewsCopies*mailFccToggle.labelString: Carpeta%s en %s
*prefs*mailnewsCopies*dtCopies.labelString: Almanacenar Borradores y Patrones
*prefs*mailnewsCopies*dSaveToggle.labelString: Guardar los borradoes de '%s' en %s
*prefs*mailnewsCopies*tSaveToggle.labelString: Guardar los patrones de '%s' en %s
*prefs*mailnewsCopies*dFccButton.labelString: Elegir carpeta...
*prefs*mailnewsCopies*tFccButton.labelString: Elegir carpeta...

*prefsMailFolderDialog*specificFolder.labelString: Otro:

! Preferences dialog - HTML Formatting
*prefs*mailnewsHTML*useHTML.labelString: Formato del mensaje
*prefs*mailnewsHTML*useHTMLToggle.labelString: Usar el editor HTML para componer los mensajes.
*prefs*mailnewsHTML*usePlainToggle.labelString: Use el editor de texto para componer los mensajes.
*prefs*mailnewsHTML*noHTML.labelString: \
Al enviar mensajes en HTML a los destinatarios que no\n
no están listados como queriendo recibir en HTML:
*prefs*mailnewsHTML*noHTMLoverride.labelString: \
Puede cambiar esas definicionas para cada mensaje a través de\n\
el panel de opciones de la ventana de composición de mensajes.
*prefs*mailnewsHTML*noHTMLAsk.labelString: \
Preguntarme lo que hacer si el mensaje tiene código HTML\n\
sino enviarlo como solo texto.
*prefs*mailnewsHTML*noHTMLText.labelString: \
Convertir el mensaje a solo texto.\n(puede perder la apariencia)
*prefs*mailnewsHTML*noHTMLHTML.labelString: \
Enviar el mensaje en HTML igual\n(ciertos destinatarios no podrán leerlo)
*prefs*mailnewsHTML*noHTMLBoth.labelString: \
Enviar el mensaje en solo texto y en HTML\n(usa más espacio disco y ancho de banda)

! Preferences dialog - Editor

*prefs*editor*authorLabel.labelString:	Nombre del autor:
*prefs*editor*externalFrameTitle.labelString:	Editores externos
*prefs*editor*htmlLabel.labelString:	Fuente HTML:
*prefs*editor*imageLabel.labelString:	Imágenes:
*prefs*editor*locationLabel.labelString:	Plantilla para páginas nuevas:
*prefs*editor*restoreDefault.labelString:	Colores predeterminados
*prefs*editor*browseTemplate.labelString:	Elegir...
*prefs*editor*autosaveEnable.labelString:	Guardar automáticamente la página cada
*prefs*editor*minutes.labelString:	minutos
*prefs*editor*browse.labelString:	Elegir...

! Preferences dialog - Read Receipts
*prefs*mailnewsReceipts*requestReceiptsLabel.labelString: Si pido un recivo al enviar un mensaje, quiero
*prefs*mailnewsReceipts*dsn.labelString: Un noitificación de recepción del servidor de destino (DSN)
*prefs*mailnewsReceipts*mdn.labelString: Una notrificación de lectura cuando el destinatario vea este mensaje (MDN)
*prefs*mailnewsReceipts*both.labelString: Ambos tipos de recibos
*prefs*mailnewsReceipts*receiptsArriveLabel.labelString: Cuando llega un recibo
*prefs*mailnewsReceipts*inbox.labelString: Dejarlo en mi casilla de correo entrante
*prefs*mailnewsReceipts*sentmail.labelString: Moverlo a la carpeta de mensajes enviados
*prefs*mailnewsReceipts*receiveReceiptsLabel.labelString: Cuando recibo un mensaje y el remitente pidió un recibo (MDN)
*prefs*mailnewsReceipts*never.labelString: Nunca enviar un recibo
*prefs*mailnewsReceipts*some.labelString: Enviar un recibo para ciertos mensajes
*prefs*mailnewsReceipts*customizeButton.labelString: Personalizar...

! make sure these are multi-line, otherwise the widgets line up funny
*prefsDialogReceipts.title: Personalizar envio de recibos
*prefsDialogReceipts*instructLabel.labelString:\
Cuando recibo un mensaje y el remitente pidió un recibo\n\
(MDN), enviarlo en los casos siguientes:
*prefsDialogReceipts*mailingLabel.labelString:\
Si no estoy en los cabezales To o Cc del mensaje\n\
(como con los mensajes a listas de difusión):
*prefsDialogReceipts*outsideLabel.labelString:\
Si el mensaje proviene de fuera del\n\
dominio local (el dominio local aquí):
*prefsDialogReceipts*otherLabel.labelString:\
En todos los demás casos:

! Preferences dialog - Editor/Publish

*prefs*editor*linksAndImagesTitle.labelString:	Enlaces e imágenes
*prefs*editor*linksAndImagesLabel.labelString:	\
Al guardar páginas remotas e insertar imágenes y enlaces
*prefs*editor*linksToggle.labelString:	Mantener enlaces
*prefs*editor*linksInfo.labelString:	\
Ajustar los enlaces para que funcionen desde el lugar donde se\n\
encuentre la página. (Los enlaces con páginas locales\n\
funcionarán cunado existan versiones locales)
*prefs*editor*imagesToggle.labelString:	Mantener las imágenes con la página
*prefs*editor*imagesInfo.labelString:	\
Guardar copias de las imágenes en el lugar donde se encuentre\n\
la página. Las imágenes aparecerán en la versión local de la página\n\
y cuando esta sea publicada.
*prefs*editor*linksAndImagesTip.labelString:	\
Pista: Active ambas opciones si va a realizar una publicación remota.
*prefs*editor*publishTitle.labelString:	Dirección de publicación predeterminada
*prefs*editor*publishLabel.labelString:	Publish to (FTP or HTTP):	
*prefs*editor*browseLabel.labelString:	Ir a (HTTP):


! Preferences dialog - Offline

*prefs*offline*startupBoxLabel.labelString:	Arrancar Mozilla en
*prefs*offline*online.labelString:	Modo de trabajo conectado
*prefs*offline*offline.labelString:	Modo de trabajo desconectado
*prefs*offline*ask.labelString:	Preguntarme
*prefs*offline*onlineDesc.labelString:	\
Elija esto si está en una red y conectado a \n\
Internet continuamente.
*prefs*offline*offlineDesc.labelString:	\
Elija esto si usa módem y/o quiere tener el control\n\
en las conexiones a la red.
*prefs*offline*askDesc.labelString:	\
Elija esto si no está seguro de tener acceso\n\
a la red cuando use Mozilla. En el arranque\n\
se le preguntará su elección.

! Preferences dialog - Offline/News

*prefs*offlineNews*downloadBoxLabel.labelString:	Mensaje recibido.
*prefs*offlineNews*downloadMsgs.labelString:	Recibir
*prefs*offlineNews*downloadByDate.labelString:	Recibir por fecha
*prefs*offlineNews*downloadDateFrom.labelString:	de
*prefs*offlineNews*downloadDateSince.labelString:	desde hace
*prefs*offlineNews*msgsLabel.labelString:	Mensajes
*prefs*offlineNews*daysAgoLabel.labelString:	días
*prefs*offlineNews*discussionLabel.labelString:	\
Para leer los grupos de noticias en modo desconectado, ha de elegirlos\n\
primero para recibirlos. Use el botón Seleccionar grupos de discusión...\n\
para elegir los elementos a recibir.
*prefs*offlineNews*selectDiscussion.labelString:	Seleccionar grupos de noticias...
*prefs*offlineNews*discussionLabel2.labelString:	(12 grupos seleccionados)

! Preferences dialog - page labels

*pref.category:	Categoría
*pref.appearance:	Apariencia
*pref.fonts:	Tipos de letra
*pref.colors:	Colores
*pref.browser:	Navegador
*pref.lang:	Idiomas
*pref.smart:	Navegación Inteligente
*pref.applications:	Aplicaciones
*pref.mailNews:	Correo y Grupos de noticias
*pref.identity:	Identidad
*pref.composition:	Mensajes
*pref.mailServer:	Servidores de Correo
*pref.newsServer:	Servidores de Noticias
*pref.addressBook:	Directorio
*pref.editor:	Editor de páginas Web
*pref.editorAppearance:	Colores de las páginas nuevas
*pref.editorPublish:	Publicar
*pref.offline:	Desconectado
*pref.offlineNews:	Grupos
*pref.diskSpace:	Espacio en disco
*pref.helpFiles:	Archivos de Ayuda
*pref.advanced:	Avanzado
*pref.cache:	Caché
*pref.proxies:	Proxys

*prefDesc.appearance:	Modificar la apariencia de la pantalla
*prefDesc.fonts:	Cambiar fuentes tipográficas en su pantalla
*prefDesc.colors:	Cambiar colores en su pantalla
*prefDesc.browser:	Indicar la dirección de la página inicial
*prefDesc.lang:	Ver páginas web en diferentes idiomas
*prefDesc.smart:	Navegación Inteligente
*prefDesc.applications:	Especificar aplicaciones auxiliares para diferentes tipos de archivos
*prefDesc.mailNews:	Configuración del Correo y los Grupos de Noticias
*prefDesc.identity:	Indicar su nombre, correo electrónico y archivo de firma
*prefDesc.composition:	Elegir parámetros para los mensajes de correo a enviar
*prefDesc.mailServer:	Especificar servidores para el correo
*prefDesc.newsServer:	Especificar servidores para los grupos de noticias
*prefDesc.addressBook:	Elegir directorios para la búsqueda de direcciones
*prefDesc.editor:	Preferencias generales para la creación de páginas web
*prefDesc.editorAppearance:	Elegir la apariencia por defecto de las nuevas páginas web
*prefDesc.editorPublish:	Designar la dirección de publicación predefinida
*prefDesc.offline:	Elegir el modo de arranque del producto
*prefDesc.offlineNews:	Seleccionar opciones para la lectura de mensajes sin conexión
*prefDesc.diskSpace:	Manejar la cantidad de espacio del disco que ocupan los mensajes
*prefDesc.helpFiles:	Elegir archivos de ayuda
*prefDesc.advanced:	Cambiar las preferencias que afectan a todo el producto
*prefDesc.cache:	Asignar el tamaño de la caché
*prefDesc.proxies:	Configurar los proxy de acceso a internet
*prefDesc.liGeneral:	Entre su información de conexión al servidor
*prefDesc.liServer:     Especificar la información del servidor de Acceso en Roaming
*prefDesc.liFiles:      Especificar cuales elementos a transferir
*prefDesc.smartUpdate:  Configurar la instalació nde programas

! Preferences dialog - TODOs


*prefs*mailnewsMserver*inboxToggle.sensitive:	false


! Color picker

*colorDialog_popup.title:	Mozilla: Selector de colores

! Mail/News banners
*bannerItem.shadowType:	shadow_out
*bannerItem.shadowThickness:	1
*bannerItem.marginLeft:                         1
*bannerItem.marginRight:                        1
*bannerItem.marginTop:                          1
*bannerItem.marginBottom:                       1

*banner*mommy.buttonLayout:                     button_pixmap_only


! Subscribe UI

*subscribeFolder*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*subscribeFolder*toggleSubscribe.labelString:	Suscribirse
*subscribeFolder*expandAll.labelString:	Expandir todo
*subscribeFolder*collapseAll.labelString:	Contraer todos
*subscribeFolder*fetchGroupList.labelString:	Obtener grupos de noticias
*subscribeFolder*stopLoading.labelString:	Parar
*subscribeFolder*getNewGroups.labelString:	Coger mensaje
*subscribeFolder*clearNewGroups.labelString:	Borrar mensaje
*subscribeFolder*search.labelString:	Buscar ahora
*subscribeFolder*addNewsServer.labelString:	Añadir servidor...
*subscribeFolder*subNewInfoLabel.labelString:	\
Esta lista muestra todos los nuevos grupos de noticias desde que limpió la lista por última vez.
*subscribeFolder*searchLabel.labelString:	Buscar:
*subscribeFolder*onserverLabel.labelString:	En el servidor:
*subscribeFolder*serverLabel.labelString:	Servidor:
*subscribeFolder*newsgroupLabel.labelString:	Grupo de noticias:
*subscribeFolder*subNewInfoLabel.alignment:	ALIGNMENT_BEGINNING

! The Add server dialog
*serverDialog*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
*serverDialogForm*serverLabel.labelString:	Nombre del servidor:
*serverDialogForm*portLabel.labelString:	Puerto del servidor:
*serverDialogForm*secureLabel.labelString:	Seguro:
*serverDialogForm*secureToggle.labelString:	

! Compose Window attachment panel resources
*newComposeFolder*attachItemImage.highlightThickness:	2
*newComposeFolder*attachItemImage.navigationType:	NONE

*addressFolderBaseWidget*addressBook.labelString:	Libro de direcciones
*addressBook.documentationString:	\
Adjuntar una dirección de la agenda al mensaje actual

*subjectFormW*subjectLabel.labelString:	Asunto:
*PriorityOption.labelString:	Prioridad:
*optionForm*returnReceipt.labelString:	Acuso de recibo
*optionForm*encrypted.labelString:	Cifrado
*optionForm*signed.labelString:	Firmado
*optionForm*leftMargin:		40
*optionForm*rightMargin:	40	

*TextEncodingOption.labelString:        \
Usar 8bits en vez de codificación MIME para el texto del mensaje
*AttachmentEncodingOption.labelString:  \
Usar uuencode en vez de codificación MIME para los archivos adjuntos

!!
!! *menuBar
!!
*menuBar.shadowThickness:	1
*menuBar.marginHeight:	0
*menuBar.marginWidth:	0

!!
!! *toolBox
!!
*Navigator*toolBox*Tab0.tipString:	Barra de navegación
*Navigator*toolBox*Tab1.tipString:	Barra de direcciones
*Navigator*toolBox*Tab2.tipString:	Barra personalizada

*Editor*toolBox*Tab0.tipString:	Archivo / Herramientas de edición
*Editor*toolBox*Tab1.tipString:	Propiedades del carácter

*Composition*toolBox*Tab0.tipString:	Barra de mensaje
*Composition*toolBox*Tab1.tipString:	Zona de dirección
*Composition*subjectFormW.toolBox*Tab0.tipString:	Propiedades del carácter

*MailFolder*toolBox*Tab0.tipString:	Barra del Centro de mensajes
*MailFolder*toolBox*Tab1.tipString:	Barra de direcciones

*MailThread*toolBox*Tab0.tipString:	Barra de mensaje
*MailThread*toolBox*Tab1.tipString:	Barra de direcciones

*MailMsg*toolBox*Tab0.tipString:	Barra de mensaje
*MailMsg*toolBox*Tab1.tipString:	Barra de direcciones

*toolBox*Tab0.tipString:	Barra de navegación
*toolBox*Tab1.tipString:	Barra de direcciones

*Navigator*toolBox*Tab0.documentationString:	Barra de navegación
*Navigator*toolBox*Tab1.documentationString:	Barra de direcciones
*Navigator*toolBox*Tab2.documentationString:	Barra personalizada

*Editor*toolBox*Tab0.documentationString:	Archivo / Herramientas de edición
*Editor*toolBox*Tab1.documentationString:	Propiedades del carácter

*Composition*toolBox*Tab0.documentationString:	Barra de mensaje
*Composition*toolBox*Tab1.documentationString:	Zona de dirección
*Composition*subjectFormW.toolBox*Tab0.documentationString:	Propiedades del carácter

*MailFolder*toolBox*Tab0.documentationString:	Barra del Centro de mensajes
*MailFolder*toolBox*Tab1.documentationString:	Barra de direcciones

*MailThread*toolBox*Tab0.documentationString:	Barra de mensaje
*MailThread*toolBox*Tab1.documentationString:	Barra de direcciones

*MailMsg*toolBox*Tab0.documentationString:	Barra de mensaje
*MailMsg*toolBox*Tab1.documentationString:	Barra de direcciones

*toolBox*Tab0.documentationString:	Barra de navegación
*toolBox*Tab1.documentationString:	Barra de direcciones

!! Number of pixels to move an item before swapping
*toolBox.swapThreshold:	10

!! Maximum number of pixels an item can be dragged (for one mouse motion)
*toolBox.dragThreshold:	10

*toolBox.marginLeft:                   	0
*toolBox.marginRight:                   0
*toolBox.marginTop:                     0
*toolBox.marginBottom:  		0 

!!
!! *toolBar
!!
*toolBarItem.shadowType:                	shadow_out
*toolBarItem.shadowThickness:                  	1
*toolBarItem.marginLeft:                       	1
*toolBarItem.marginRight:                      	1
*toolBarItem.marginTop:                        	1
*toolBarItem.marginBottom:                     	1

*toolBar*XfeButton.marginBottom:		1
*toolBar*XfeButton.marginLeft:			1
*toolBar*XfeButton.marginRight:			1
*toolBar*XfeButton.marginTop:			1
*toolBar*XfeButton.shadowThickness:		1

*toolBar*XfeCascade.marginBottom:		1
*toolBar*XfeCascade.marginLeft:			1
*toolBar*XfeCascade.marginRight:		1
*toolBar*XfeCascade.marginTop:			1
*toolBar*XfeCascade.shadowThickness:		1

*toolBar*XmSeparator.shadowThickness:		0
*toolBar*XmSeparator.width:            	 	20
*toolBar*XmSeparator.height:                   	2
*toolBar*XmSeparator.orientation:             	horizontal

*toolBar*armOffset:	1
*toolBar*fillOnEnter:	false
*toolBar*raiseForeground:	Blue
*toolBar*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

*toolBar.spacing:                             	0
*toolBar.shadowThickness:                       0
*toolBar.marginLeft:                            0
*toolBar.marginRight:                           0
*toolBar.marginTop:                             0
*toolBar.marginBottom:				0


!!
!! Browser Toolbar destinations
!!
*toolBar*destinations.mapingDelay:	1
*toolBar*destinations*whatsNew.labelString:	¿Hay novedades?
*toolBar*destinations*whatsCool.labelString:	¿Algo interesante?
*toolBar*destinations*inetIndex.labelString:	Internet
*toolBar*destinations*inetSearch.labelString:	Buscar en la Red
*toolBar*destinations*inetWhite.labelString:	Ajenos
*toolBar*destinations*inetYellow.labelString:	Páginas Amarillas
*toolBar*destinations*upgrade.labelString:	Actualizaciones
*toolBar*destinations*welcome.labelString:	Bienvenido
*toolBar*destinations*newsgroups.labelString:	Grupos

!!
!! *dashBoard
!!
*dashBoard.shadowThickness:	1
*dashBoard.shadowType:	shadow_out
*dashBoard.bottomOffset:	0
*dashBoard.leftOffset:	0
*dashBoard.rightOffset:	0
*dashBoard.topOffset:	0
*dashBoard.marginBottom:	2
*dashBoard.marginLeft:	2
*dashBoard.marginRight:	2
*dashBoard.marginTop:	2

!!
!! *dashBoard*securityBar
!!
*dashBoard*securityBar.marginBottom:                            0
*dashBoard*securityBar.marginLeft:                                      0
*dashBoard*securityBar.marginRight:                                     0
*dashBoard*securityBar.marginTop:                                       0
*dashBoard*securityBar.buttonLayout:                            button_pixmap_only

!!
!! *dashBoard*viewSecurity
!!
*dashBoard*viewSecurity.shadowType:	shadow_in
*dashBoard*viewSecurity.shadowThickness:	1
*dashBoard*viewSecurity.raiseOnEnter:                           false
*dashBoard*viewSecurity.buttonType:                                     button_none
*dashBoard*viewSecurity.marginTop:                                      1
*dashBoard*viewSecurity.marginBottom:                           1

!!
!! *dashBoard*statusBar
!!
*dashBoard*statusBar.shadowType:	shadow_in
*dashBoard*statusBar.shadowThickness:	1
*dashBoard*statusBar.truncateLabel:	false
*dashBoard*statusBar.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
*dashBoard*statusBar.labelAlignment:                            alignment_beginning

! initial value for the status bar
*dashBoard*statusBar.labelString:	Netscape

!!
!! *dashBoard*progressBar
!!
*dashBoard*progressBar.shadowType:	shadow_in
*dashBoard*progressBar.shadowThickness:	1
*dashBoard*progressBar.fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
*dashBoard*progressBar.width:	100

!! The color of the progress bar
*dashBoard*progressBar.barColor:	Gray60

!! The about the cylon moves on each tick
*dashBoard*progressBar.cylonOffset:	2

!! The interval in msec between cylon ticks
*dashBoard*progressBar.cylonInterval:	100

!! The cylon width (percent of total)
*dashBoard*progressBar.cylonWidth:	20

!!
!! *dockedTaskBar
!!
*dockedTaskBar.shadowType:                         shadow_out
*dockedTaskBar.shadowThickness:                         1
*dockedTaskBar.spacing:                           0
*dockedTaskBar.buttonLayout:                     button_pixmap_only
*dockedTaskBar*fontList:          *-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

*dockedTaskBar*openOrBringUpBrowser.labelString:        Navegador
*dockedTaskBar*openInboxAndGetNewMessages.labelString: Buzón de correo
*dockedTaskBar*openNewsgroups.labelString:             Grupos de noticias
*dockedTaskBar*openAddrBook.labelString:              Libro de direcciones
*dockedTaskBar*openEditor.labelString:                Editor de páginas Web

*dockedTaskBar*openOrBringUpBrowser.tipString:        \
Abrir una nueva ventana de navegación para ver páginas web
*dockedTaskBar*openInboxAndGetNewMessages.tipString:  \
Abrir la ventana de correo y obtener nuevos mensajes
*dockedTaskBar*openNewsgroups.tipString:              Abrir la lista de grupos de noticias
*dockedTaskBar*openAddrBook.tipString:                Abrir el libro de direcciones 
*dockedTaskBar*openEditor.tipString:                  Abrir el editor de páginas web

*openInboxAndGetNewMessages.documentationString:      \
Abrir la ventana de correo y obtener nuevos mensajes

*dockedTaskBar*XfeButton.marginBottom:                          1
*dockedTaskBar*XfeButton.marginLeft:                            1
*dockedTaskBar*XfeButton.marginRight:                           1
*dockedTaskBar*XfeButton.marginTop:                                     1
*dockedTaskBar*XfeButton.shadowThickness:                       1

!!
!! *floatingTaskBar
!!
*floatingTaskBar.shadowType:	shadow_out
*floatingTaskBar.shadowThickness:	1
*floatingTaskBar.spacing:		0
*floatingTaskBar*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*

*floatingTaskBar*openOrBringUpBrowser.labelString:	Navegador
*floatingTaskBar*openInboxAndGetNewMessages.labelString:	Buzón de correo
*floatingTaskBar*openNewsgroups.labelString:	Grupos de noticias
*floatingTaskBar*openAddrBook.labelString:	Libro de direcciones
*floatingTaskBar*openEditor.labelString:	Editor de páginas Web

*floatingTaskBar*openOrBringUpBrowser.tipString:	Abrir una nueva ventana de navegación para ver páginas web
*floatingTaskBar*openInboxAndGetNewMessages.tipString:	Abrir la ventana de correo y obtener nuevos mensajes
*floatingTaskBar*openNewsgroups.tipString:	Abrir la lista de grupos de noticias
*floatingTaskBar*openAddrBook.tipString:	\
Abrir el libro de direcciones
*floatingTaskBar*openEditor.tipString:	Abrir el editor de páginas web

*openInboxAndGetNewMessages.documentationString:	Abrir la ventana de correo y obtener nuevos mensajes

*floatingTaskBar*XfeButton.marginBottom:                       2
*floatingTaskBar*XfeButton.marginLeft:                         2
*floatingTaskBar*XfeButton.marginRight:                        2
*floatingTaskBar*XfeButton.marginTop:                          2
*floatingTaskBar*XfeButton.shadowThickness:                    1

!!
!! *taskBarContextMenu
!!
*taskBarContextMenu*floatingTaskBarAlwaysOnTop.labelString:	Siempre visible
*taskBarContextMenu*floatingTaskBarClose.labelString: 	Cerrar
*floatingTaskBarVerticalCmdString:	Vertical
*floatingTaskBarHorizontalCmdString:	Horizontal

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! buttons for compose/post  message pulldown on the toolbar
*toolBar*composeMessagePlain.labelString:	en texto plano
*toolBar*composeMessageHTML.labelString:	en HTML

*toolBar*composeArticlePlain.labelString:	en texto plano
*toolBar*composeArticleHTML.labelString:	en HTML

! buttons specific to the folder frame.
*toolBar*getNewMessages.labelString:	Obtener
*toolBar*composeMessage.labelString:	Nuevo
*composeMessage.tipString:	Mensaje de correo nuevo
*toolBar*newFolder.labelString:	Carpeta nueva
*toolBar*addNewsgroup.labelString:	Suscribir
*toolBar*deleteFolder.labelString:	Borrar
*toolBar*deleteAny.labelString:         Borrar
*toolBar*deleteAny.tipString:     	Borrar el mensaje seleccionado
*toolBar*deleteAny.documentationString:	Borrar el mensaje seleccionado


*unsubscribeNewsgroupCmdString:	Suspender suscripción
!
*getNewMessages.tipString:	Obtener mensajes
*getNewMessages.documentationString:	Obtener el correo y los mensajes de los grupos de noticias
*getNewMessages.labelString:  	Obtener mensajes
*getNewMessages.mnemonic:       M

*newFolder.tipString:	Carpeta de correo nueva
*addNewsgroup.tipString:	Añadir grupo de noticias
*deleteFolder.tipString:	Borrar carpeta de correo

! buttons specific to the thread/message frame.
*toolBar*composeArticle.labelString:	Nuevo
*toolBar*replyToNewsgroup.labelString:	Responder
*toolBar*replyToSender.labelString:	Responder
*toolBar*nextMessage.labelString:	Siguiente
*toolBar*nextUnreadMessage.labelString:	Siguiente mensaje no leído
*toolBar*nextUnreadThread.labelString:	Siguiente tema no leído
*toolBar*nextFlaggedMessage.labelString:	Siguiente mensaje marcado
*toolBar*nextCategory.labelString:	Siguiente categoría
*toolBar*nextUnreadCategory.labelString:	Siguiente categoría no leída
*toolBar*nextUnreadCollection.labelString:	Siguiente colección no leída
*toolBar*forwardMessage.labelString:	Siguiente
*toolBar*deleteMessage.labelString:	Borrar
*toolBar*previousUnreadMessage.labelString:	Anterior
*toolBar*previousMessage.labelString:	Anterior
*previousMessage.tipString:	Mensaje anterior
*toolBar*moveMessage.labelString:	Archivo
*toolBar*copyMessage.labelString:	Archivo
*toolBar*composeArticle.tipString:	Enviar un mensaje nuevo a este grupo de noticias
*toolBar*replyToNewsgroup.tipString:	Responder al mensaje
*toolBar*nextMessage.tipString:	Siguiente mensaje no leído


*toolBar*moveMessage.tipString:	Archivar el mensaje seleccionado
*toolBar*copyMessage.tipString:	Archivar el mensaje seleccionado
*toolBar*moveMessage.documentationString:	Archivar el mensaje seleccionado en una carpeta
*toolBar*copyMessage.documentationString:	Copiar el mensaje seleccionado en una carpeta

! buttons specific to the browser frame.
*toolBar*back.labelString:	Anterior
*toolBar*forward.labelString:	Siguiente
*toolBar*home.labelString:	Inicio
*toolBar*search.labelString:	Buscar
*toolBar*destinations.labelString:	Mozilla
*toolBar*guide.labelString:	Lugares
*toolBar*myshopping.labelString:	Compras
*toolBar*showImages.labelString:	Imágenes
*toolBar*loadImages.labelString:	Cargar imágenes
*toolBar*print.labelString:	Imprimir
*print.tipString:	Imprimir esta página
*MailThread*print.tipString:	Imprimir el mensaje seleccionado
*MailMsg*print.tipString:	Imprimir el mensaje seleccionado
*toolBar*reload.labelString:	Recargar
*toolBar*stopReload.labelString:	Recargar
*reloadCmdString:	Recargar
*stopCmdString:	Parar

! buttons specific to the compose frame.
*toolBar*sendMessageNow.labelString:	Enviar ahora
*toolBar*quote.labelString:	Citar
*toolBar*addresseePicker.labelString:	Dirección
*toolBar*saveDraft.labelString:	Guardar
*toolBar*viewAddresses.labelString:	Dirección
*toolBar*viewDirectories.labelString:	Directorio
!
*sendMessageNow.tipString:	Enviar este mensaje
*saveDraft.tipString:	Enviar un borrador de este mensaje
*quote.tipString:	Citar el documento previo
*viewDirectories.tipString:	Buscar una dirección
*viewSecurity.tipString:	Mostrar información sobre seguridad
!
*addressBook.tipString:	
!
*quote.documentationString:	Pegar texto de la página original en forma de cita
*viewDirectories.documentationString:	Buscar una dirección en un directorio LDAP
!
! buttons specific to the Addressbook frame. documentationString
*toolBar*abEditEntry.labelString:	Propiedades
*toolBar*abDeleteEntry.labelString:	Borrar
*toolBar*searchAddress.labelString:	Directorio
*toolBar*abCall.labelString:	Llamar
!
*addToAddressBook.tipString:	Crear una nueva entrada
*abNewList.tipString:	Crear una nueva lista de correo 
*abEditEntry.tipString:	Editar la entrada seleccionada
*abDeleteEntry.tipString:	Borrar la entrada seleccionada
*abCall.tipString:	Comenzar conferencia
*searchAddress.tipString:	Buscar una dirección
!

*abEditEntry.documentationString:	\
Ver y editar propiedades de la entrada de la agenda de direcciones
*viewProperties.documentationString:	\
Ver y editar propiedades de la entrada de la agenda de direcciones
*displayHTMLDomainsDialog.documentationString:	\
Modificar la lista de dominios que pueden recibir mensajes HTML.
*abVCard.documentationString:	\
Crear y modificar la tarjeta propia del libro de direcciones

*abDeleteEntry.documentationString:	\
Borrar las entradas seleccionadas del libro de direcciones

*searchAddress.documentationString:	Buscar una dirección en un directorio LDAP

!*AddressBook*toggleNavigationToolbar.documentationString: 
!
*toBtn.documentationString:	Redactar un mensaje para la entrada seleccionada
*ccBtn.documentationString:	Redactar un mensaje y hacer una copia a la entrada seleccionada
*bccBtn.documentationString:	Redactar una mensaje y hacer una copia ciega a la entrada seleccionada
!
! buttons used everywhere (it seems.)
*toolBar*viewSecurity.labelString:	Seguridad
*toolBar*stopLoading.labelString:	Parar

*changeDocumentEncoding.documentationString:	Indicar codificación de la documentación


*MailFolder.width:	280
*MailFolder.height:	400
!
*abCardProperties*strip.topOffset:	3
*abCardProperties*strip.leftOffset:	15
*abCardProperties*strip.bottomOffset:	3
*abCardProperties*strip.rightOffset:	15

!
! For the mail message download dialog
!
Netscape*MessageDownload*label.alignment: ALIGNMENT_BEGINNING
Netscape*MessageDownload*stopButtonForm*stopLoading.labelString: Cancelar

Netscape*NewsDownload*fontList:				-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*
Netscape*NewsDownload_popup.title:			Mozilla: Recibir encabezados

Netscape*NewsDownload*allToggle.labelString: Recibir todos los encabezados
Netscape*NewsDownload*numMessagesToggle.labelString: Recibir
Netscape*NewsDownload*numMessagesCaption.labelString: encabezados
Netscape*NewsDownload*markOthersRead.labelString: Marcar los encabezados restantes como leídos.

!
! For the news group property dialog
!
*NewsgroupProps*name_label.labelString:	Nombre:
*NewsgroupProps*location_label.labelString:	Dirección:
*NewsgroupProps*unread_label.labelString:	Mensajes no leídos:
*NewsgroupProps*total_label.labelString:	Nº total de mensajes:
*NewsgroupProps*space_label.labelString:	Espacio total usado:
*NewsgroupProps*html_toggle.labelString:	Se pueden recibir mensajes en HTML

!
! For the mail folder property dialog
!
*MailFolderProps*name_label.labelString:	Nombre:
*MailFolderProps*name_value.columns:	20
*MailFolderProps*location_label.labelString:	Dirección:
*MailFolderProps*unread_label.labelString:	Mensajes no leídos:
*MailFolderProps*total_label.labelString:	Nº total de mensajes:
*MailFolderProps*wasted_label.labelString:	Espacio de disco consumido:
*MailFolderProps*space_label.labelString:	Espacio total usado:
*MailFolderProps*sharePrivilegesLabel.labelString: \
Compartir esta y otras carptas con usuarios a través de la red\n\
y mostrar y definir privilegios de acceso

!
! For the news server property dialog
!
*NewsServerProps*name_label.labelString:	Nombre:
*NewsServerProps*port_label.labelString:	No. de Puerto:
*NewsServerProps*security_label.labelString:	Seguridad:
*NewsServerProps*desc_label.labelString:	Descripción:
*NewsServerProps*prompt_toggle.labelString:	Pedir siempre mi nombre de usuario y contraseña
*NewsServerProps*anonymous_toggle.labelString:	\
Preguntarme por mi nombre de usuario y clave sólo\n\
cuando sea necesario
*NewsServerProps*html_toggle.labelString:	Se pueden recibir mensajes en HTML

!
! For the splash screen
!
Netscape*splashShell*background:	Black
Netscape*splashShell*foreground:	White
Netscape*splashShell*fontList:	-*-helvetica-medium-r-normal-*-*-120-*-*-*-*-iso8859-*

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
*Composition*navigationType:	TAB_GROUP
*Composition*XmTextField.highlightThickness:	2
*Composition*XmText.highlightThickness:	2

! Plain Text Compose Popup
*popup*pasteAsQuoted.labelString:	Pegar como cita
*popup*pasteAsQuoted.mnemonic:	Q
*popup*quoteOriginalText.labelString:	Citar el texto original

!
! Special for SpellHandler...
!
*spellDialog*right_rc.entryAlignment:	ALIGNMENT_CENTER

*spellDialog*replace.labelString:	Reemplazar
*spellDialog*replace_all.labelString:	Reemplazar todo
*spellDialog*check.labelString:	Comprobar
*spellDialog*ignore.labelString:	Ignorar
*spellDialog*ignore_all.labelString:	Ignorar todo
*spellDialog*learn.labelString:	Añadir al diccionario
*spellDialog*stop.labelString:	Parar
*spellDialog*text_label.labelString:	Palabra:
*spellDialog*list_label.labelString:	Sugerencias:

*spellDialog*done.labelString:	Terminado
*spellDialog*msgFinished.labelString:	[ fin de la verificación ]
*spellDialog*msgNoSuggestions.labelString:	[ no hay sugerencias ]
*spellDialog*msgUnRecognized.labelString:	[ palabra no reconocida ]
*spellDialog*msgCorrect.labelString:	[ ortografía correcta ]
*spellDialog*msgNull.labelString:	[ ]

*spellDialog*text_label.fontList:	-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
*spellDialog*list_label.fontList:	-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
*spellDialog*right_rc*fontList:	-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*
*spellDialog*combo_frame*fontList:	-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*
*spellDialog*langCzech.labelString:	Checo
*spellDialog*langRussian.labelString:	Ruso
*spellDialog*langCatalan.labelString:	Catalán
*spellDialog*langHungarian.labelString:	Húngaro
*spellDialog*langFrench.labelString:	Francés
*spellDialog*langGerman.labelString:	Alemán
*spellDialog*langSwedish.labelString:	Sueco
*spellDialog*langSpanish.labelString:	Español
*spellDialog*langItalian.labelString:	Italiano
*spellDialog*langDanish.labelString:	Danés
*spellDialog*langDutch.labelString:	Holandés
*spellDialog*langPortugueseBrazilian.labelString:	Portugués (Brasileño)
*spellDialog*langPortugueseEuropean.labelString:	Portugués (Portugal)
*spellDialog*langNorwegianBokmal.labelString:	Noruego (Bokmal)
*spellDialog*langNorwegianNynorsk.labelString:	Noruego (Nynorsk)
*spellDialog*langNorwegian.labelString:	Noruego
*spellDialog*langFinnish.labelString:	Finés
*spellDialog*langGreek.labelString:	Griego
*spellDialog*langEnglishUS.labelString:	Inglés (EEUU)
*spellDialog*langEnglishUK.labelString:	Inglés (R.Unido)
*spellDialog*langEnglish.labelString:	Inglés
*spellDialog*langAfrikaans.labelString:	Afrikaans
*spellDialog*langPolish.labelString:	Polaco

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

*selector*background:                  gray70
*selector*shadowThickness:             1
*selector.orientation:                 vertical

*selector*ToolBar.buttonLayout:                        button_label_on_top

*selector.leftAttachment:                      attach_form
*selector.rightAttachment:                     attach_none
*selector.topAttachment:                       attach_form
*selector.bottomAttachment:                    attach_form


*selector.leftOffset:                          10
*selector.rightOffset:                         10
*selector.topOffset:                           10 
*selector.bottomOffset:                                10

!*selector.usePreferredWidth:          false
*selector.usePreferredHeight:          false

*selector.clipShadowThickness:         1
*selector.clipShadowType:                      shadow_in


!*selector.marginLeft:                                 0
!*selector.marginRight:                                        0
!*selector.marginTop:                                  0
!*selector.marginBottom:                               0

!*selector.marginLeft:                         0
!*selector.marginRight:                                0
!*selector.marginTop:                          0
!*selector.marginBottom:                               0

!*selector.spacing:                                    10

*selector*ToolBar.radioBehavior:                               true


!*selector*XfeButton.buttonType:                       button_toggle

*selector*XfeButton.buttonTrigger:                     button_trigger_either
*selector*XfeButton.marginLeft:                        4
*selector*XfeButton.marginRight:                       4
*selector*XfeButton.marginTop:                         4
*selector*XfeButton.marginBottom:                      4

*selector*XfeButton.raiseOnEnter:                      true
*selector*XfeButton.shadowThickness:           0
!*selector*XfeButton.fillOnEnter:                      true
*selector*XfeButton.armOffset:                         0

*selector*XfeButton.transparentCursor:         cross
!*selector*XfeButton.cursor:                           hand2



!Netscape*AddressOutlinerPopup*fontList:\
-*-helvetica-medium-r-*-*-*-120-*-*-*-*-iso8859-*,\
-*-helvetica-bold-r-*-*-*-120-*-*-*-*-iso8859-*=BOLD,\
-*-helvetica-medium-o-*-*-*-120-*-*-*-*-iso8859-*=ITALIC

Netscape*AddressOutlinerPopup*fontList:\
-*-helvetica-medium-r-*-*-*-100-*-*-*-*-iso8859-*,\
-*-helvetica-bold-r-*-*-*-100-*-*-*-*-iso8859-*=BOLD,\
-*-helvetica-medium-o-*-*-*-100-*-*-*-*-iso8859-*=ITALIC

! This table maps the host's locale names to MIME charsets
!
*localeCharset*C:	iso-8859-1
*localeCharset*chinese:	gb2312
*localeCharset*de_DE:	iso-8859-1
*localeCharset*fr_FR.iso8859:	iso-8859-1
*localeCharset*ja_JP.mscode:	x-sjis
*localeCharset*ja_JP.ujis:	x-euc-jp
*localeCharset*japanese:	x-euc-jp
*localeCharset*ko_KR.euc:	euc-kr
*localeCharset*korean:	euc-kr
*localeCharset*zh_CN.ugb:	gb2312
*localeCharset*zh_TW.big5:	big5


*strings.6796:	Ocurrió un error de comunicación. \n(Error de TCP: %s)\n\nIntente la conexión otra vez.

*strings.6795:	Mozilla no puede conectarse con este servidor en\nla dirección que ha especificado. El servidor puede\nestar fuera de servicio u ocupado.\n\nVuelva a intentar la conexión más tarde.

*strings.6794:	Ocurrió un error de comunicación. \n(Error de TCP: %s)\n\nIntente la conexión otra vez.

*strings.6793:	Mozilla no tiene memoria.\n\nIntente cerrar otras aplicaciones o\nalgunas ventanas.

*strings.6791:	Esta dirección (URL) no se reconoce:\n%.200s\n\nRevise la dirección y vuelva a intentarlo.

*strings.6789:	No se puede usar FTP en el modo pasivo

*strings.6788:	Mozilla no puede definir el modo de transferencia FTP\ncon este servidor FTP. No podrá transferir archivos.\n\nConsulte al administrador de este servidor\no intente la conexión más tarde.

*strings.6787:	Mozilla no puede enviar un comando cambiar directorio (cd) \nal servidor FTP. No puede ver otro directorio.\n\nConsulte al administrador de este servidor o\nintente la conexión más tarde.

*strings.6786:	Mozilla no puede enviar un comando de puerto al\nservidor FTP para establecer una conexión de datos.\n\nPóngase en contacto con el administrador del servidor\no inténtelo más tarde.

*strings.6785:	Mozilla no encuentra el archivo o directorio llamado:\n  %.200s\n\nVerifique el nombre y vuelva a intentarlo.

*strings.6784:	Ocurrió un error de noticias: conexión NNTP no válida\n\nVuelva a intentar la conexión.

*strings.6783:	Ocurrió un error con el servidor de noticias.\n\nSi no puede conectarse otra vez, consulte al\nadministrador de este servidor.

*strings.6782:	No hubo respuesta. El servidor puede estar fuera de servicio o\nno está respondiendo.\n\nSi no puede conectarse más tarde, consulte al\nadministrador del servidor.

*strings.6781:	Mozilla no encuentra el servidor:\n%.200s.\nNo existe una entrada DNS para este servidor.\n\nRevise el nombre del servidor en la dirección (URL)\ny vuelva a intentarlo.

*strings.6780:	El servidor se ha desconectado.\nEl servidor puede estar fuera de servicio o debe\nexistir un problema en la red.\n\nIntente la conexión otra vez.

*strings.6779:	El elemento de noticias no está disponible. Puede haber caducado.\n\nIntente recuperar otro elemento.

*strings.6778:	Mozilla no puede abrir el archivo de noticias (newsrc).\n\nRevise las preferencias de\nnoticias y vuelva a intentarlo.

*strings.6777:	Mozilla no puede abrir el archivo:\n%.200s\n\nRevise el nombre del archivo y vuelva a intentarlo.

*strings.6776:	(ningún nombre especificado)

*strings.6775:	Abortado por el usuario

*strings.6764:	Ocurrió un error en la red mientras Mozilla\nestaba enviando datos.\n(Error de red: %s)\n\nIntente la conexión otra vez.

*strings.6771:	Ocurrió un error durante el envío del correo:\nMozilla no pudo conectarse con el servidor SMTP.\nEl servidor puede estar fuera de servicio o configurado incorrectamente.\n\nRevise las preferencias de correo\ny vuelva a intentarlo.

*strings.6770:	Ocurrió un error durante el envío del correo.\nEl servidor de correo respondió:\n%s\nRevise su dirección de correo electrónico en Preferencias\ny vuelva a intentarlo.

*strings.6769:	Ocurrió un error durante el envío del correo.\nEl servidor de correo respondió:\n%s\nRevise los destinatarios del mensaje y vuelva a intentarlo.

*strings.6768:	Ocurrió un error de SMTP durante el envío del correo.\nEl\nservidor respondió: %s

*strings.6767:	Ocurrió un error durante el envío del correo.\nEl servidor de correo respondió:\n%s\nRevise el mensaje y vuelva a intentarlo.

*strings.6766:	Ocurrió un error durante el envío del correo:\nError del servidor SMTP.\nEl servidor respondió: \n %s.\nConsulte al administrador del correo.

*strings.6760:	Ocurrió un error en la red:\nNo se puede establecer la conexión con el servidor (Error de TCP: %s).\nPuede que el servidor esté fuera de servicio o no se puede establecer contacto.\n\nVuelva a intentar la conexión más tarde.

*strings.6759:	No hubo respuesta. El servidor puede estar fuera de servicio o\nno está respondiendo.\n\nSi no puede conectarse más tarde, consulte al\nadministrador del servidor.

*strings.6758:	El servidor %.200s rechazó la conexión de red de Mozilla\nEl servidor no está aceptando conexiones o\nestá ocupado.\n\nVuelva a intentar la conexión más tarde.

*strings.6757:	Mozilla fue incapaz de crear una conexión socket de red.\nPuede haber insuficientes recursos del sistema o la red\npuede haberse caído.  (Razón: %s)\n\nIntente conectar de nuevo más tarde o intente reiniciar Mozilla.

*strings.6755:	Mozilla es incapaz de completar una conexión de socket\ncon este servidor. Puede haber insuficientes recursos de \sistema.\n\nIntente reiniciar Mozilla.

*strings.6754:	Mozilla no puede conectarse con el servidor proxy.\nEl servidor puede estar fuera de servicio o configurado incorrectamente.\n\nRevise las preferencias del proxy\ny vuelva a intentarlo o consulte al administrador del servidor.

*strings.6753:	Mozilla no encuentra su servidor proxy.\nEl servidor puede estar fuera de servicio o estar configurado incorrectamente.\n\nVerifique las preferencias del proxy\ny vuelva a intentarlo o consulte al administrador del servidor.

*strings.6749:	El documento no contiene datos.

*strings.6748:	Ocurrió un error en la red mientras Mozilla\nestaba recibiendo datos.\n(Error de red: %s)\n\nVuelva a intentar la conexión.

*strings.6747:	Mozilla no puede abrir el archivo temporal:\n%.200s\n\nRevise el valor de configuración del `Directorio temporal'\ny vuelva a intentarlo.

*strings.6765:	Ocurrió un error durante el envío del correo:\nLa dirección de retorno no era una dirección válida.\n\nRevise su dirección de correo electrónico\nen Preferencias y vuelva a intentarlo.

*strings.6750:	El disco está lleno. Mozilla está cancelando la transferencia\ny borrando el archivo.\n\nBorre algunos archivos y vuelva a intentarlo.

*strings.6740:	Ocurrió un error de autorización:\n\n%s\n\nIntente introducir su nombre y/o contraseña otra vez.

*strings.6734:	No se especificó remitente.

*strings.6733:	No se especificaron destinatarios.

*strings.6732:	No se especificó el asunto.

*strings.6731:	Error al escribir el archivo temporal.

*strings.6725:	Este es un mensaje multipartes en formato MIME.

*strings.6722:	Impresión detenida.  Un problema apareció durante la recepción \ndel documento.  La transmisión puede haber sido interrumpida\no puede haber insuficiente espacio para escribir el archivo.\n\nIntente de nuevo. Compruebe que hay espacio disponible en el\ndirectorio temporal o reinicie Mozilla.

*strings.6721:	Su firma excede de las cuatro líneas recomendadas.

*strings.6720:	Su firma excede de las 79 columnas recomendadas.\nPara la mayoría de los lectores, las líneas aparecerán recortadas o\najustadas de manera poco atractiva.\n\nEdite la firma para que tenga menos de 80 caracteres.

*strings.6719:	Ocurrió un error en la red:\nno se puede establecer la conexión con el servidor\nEl servidor puede estar fuera  de servicio o no se \npuede establecer contacto.\n\nVuelva a intentar la conexión más tarde.

*strings.6718:	No se puede cargar el tema de ayuda seleccionado

*strings.6699:	Esta copia de Mozilla ha expirado.\nEsta copia de pre-lanzamiento de Mozilla ha expirado\ny sólo se puede usar para recibir una nueva versión de Mozilla.

*strings.6698:	Esta copia previa a la versión final de Mozilla ha caducado\ny sólo podrá utilizarse para transferir una versión nueva de Mozilla.

*strings.6697:	No hay proxy WAIS configurado.\n\nRevise las preferencias para servidores proxy y vuelva a intentarlo.

*strings.6696:	Ocurrió un error de noticias (NNTP) :\n %.100s

*strings.6695:	Ocurrió un error de noticias. La exploración de todos \nlos grupos de noticias está incompleta.\n\nIntente ver todos los grupos de noticias otra vez.

*strings.6694:	Mozilla no encontró el archivo de noticias (newsrc)\ny está creando uno nuevo.

*strings.6693:	No hay servidor NNTP configurado.\n\nRevise las preferencias de noticias y vuelva a intentarlo.

*strings.6692:	Excepción de comunicación(%d).

*strings.6691:	Mozilla no pudo conectar al servidor seguro de noticiasr\ndebido a un error del alterno (proxy)

*strings.6689:	Ocurrió un error con el servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6688:	Mozilla no puede utilizar el servidor de correo porque\nno ha suministrado un nombre de usuario.  Introduzca un nombre de usuario\nen preferencias y vuelva a intentarlo.

*strings.6687:	Error al obtener la contraseña de POP3.

*strings.6686:	Ocurrió un error al enviar el nombre de usuario al servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6685:	Ocurrió un error al enviar la contraseña al servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6684:	No hay mensajes nuevos en el servidor

*strings.6683:	Ocurrió un error al elaborar la lista de mensajes del servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6682:	Ocurrió un error al consultar al servidor POP3 acerca del\núltimo mensaje que se procesó.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6681:	Ocurrió un error al obtener los mensajes en el servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6680:	Ocurrió un error al eliminar los mensajes en el servidor POP3.\nConsulte al administrador de este servidor\no inténtelo más tarde.

*strings.6679:	No hay espacio suficiente en el disco local para transferir\nel correo desde el servidor POP3. Libere espacio y\nvuelva a intentarlo.   (Puede recuperar espacio utilizando los comandos\n`Vaciar carpeta Papelera' y `Comprimir esta carpeta'.)

*strings.6678:	Ocurrió un error al guardar los mensajes de correo.

*strings.6675:	No se pudo anunciar el archivo: %.80s.\nRazón:\n  %.200s\n\nPuede que no tenga permiso de escritura\nen este directorio.\nCompruebe sus permisos y vuelva a intentarlo.

*strings.6674:	Esta es una versión pre-lanzamiento de Mozilla que\nexpirará en %s.\n\nPara adquirir una nueva versión de pre-lanzamiento o completa de Mozilla\n(que no expirará) elija Software desde el menú Ayuda.

*strings.6673:	No se pudo borrar el archivo:\n	%s

*strings.6672:	No se pudo borrar el directorio:\n	%s

*strings.6671:	No se puede crear el directorio porque ya\nexiste un archivo o directorio con ese nombre:\n	%s

*strings.6670:	No se pudo crear el directorio:\n	%s

*strings.6669:	El objeto no es un directorio:\n     %s

*strings.6668:	Fallo de autorización

*strings.6667:	Esta versión de prueba de Mozilla ha expirado.\n\nPara adquirir una copia normal de Mozilla (que no expirará)\nelija Software desde el menú Ayuda.

*strings.6666:	Esta versión de prueba de Mozilla \nexpirará en %s.\n\nPara adquirir una copia normal de Mozilla\n(que no expirará) elija Software desde el menú Ayuda.

*strings.6665:	Se ha intentado redirigir una solicitud de url,\npero no ha sido permitido por el cliente.

*strings.6664:	Se ha detectado que el archivo comprimido con Gzip está corrupto.

*strings.6599:	Los mensajes no pueden moverse o copiarse en una carpeta que ya los contiene.

*strings.6598:	No se pueden copiar mensajes en la carpeta de salida:\nEsa carpeta sólo es para los mensajes cuya entrega\nha sido diferida.

*strings.6597:	No se pueden copiar mensajes en la carpeta `borradores no enviados':\nEsta carpeta sólo es para los mensajes que no han sido\ncolocados en la cola de entrega.

*strings.6596:	¡No se pudo crear la carpeta!

*strings.6595:	La carpeta ya existe.

*strings.6594:	No se puede borrar una carpeta sin borrar\nprimero los mensajes que contiene.

*strings.6593:	No se puede borrar una carpeta sin borrar\nprimero los mensajes que contiene.

*strings.6592:	¡No se pudo crear la carpeta predeterminada de entrada!

*strings.6591:	¡No se pudo crear un directorio de carpetas de correo.\nEl correo no funcionará!

*strings.6590:	No se ha especificado el sistema POP3 en las preferencias.

*strings.6586:	Mensaje cancelado.

*strings.6585:	No se ha podido abrir el archivo de correo enviado.\nVerifique que las preferencias de correo son correctas.

*strings.6584:	¿Existe esta carpeta?

*strings.6583:	¿Existe el archivo de resumen de carpetas?

*strings.6582:	No se pudo abrir el archivo de carpetas temporales para salida.

*strings.6581:	El identificador de mensaje suministrado no existe en la carpeta.

*strings.6580:	Existe un archivo newsrc pero no se puede analizar.

*strings.6579:	No ha especificado su dirección de correo electrónico.\nAntes de enviar mensajes de correo o de noticias, debe especificar\nuna dirección de retorno en las preferencias de correo y noticias.

*strings.6577:	La dirección de correo de retorno establecida en Preferencias es: %s\n\nEsto no parece estar completo (no contiene `@' ni un nombre de máquina.)\nUna dirección de correo válida será de la forma `USUARIO@MAQUINA', donde USUARIO es\nnormalmente su login ID, y MAQUINA es el nombre de la máquina.

*strings.6576:	la dirección de correo de retorno establecida en Preferencias es: %s\n\nEsto no parece estar completo (no contien `.' en el nombre de la máquina.)\nUna dirección de correo válida será de la forma `USUARIO@MAQUINA', donde USUARIO es\nnormalmente su login ID, y MAQUINA es el nombre de la máquina.

*strings.6575:	No se ha especificado un sistema SMTP en Preferencias de correo y noticias.

*strings.6574:	¿Está seguro de que desea cancelar este mensaje?

*strings.6573:	Este mensaje parece no ser suyo.\nSólo puede cancelar sus propios mensajes, no\nlos mensajes publicados por otros usuarios.

*strings.6572:	¡No se puede cancelar este mensaje!

*strings.6571:	Mensaje no cancelado.

*strings.6570:	¡Error de noticias!\nEl sistema de noticias respondió: %.512s\n

*strings.6569:	%.300s no parece ser un archivo de correo.\n¿Desea leer este archivo de todas maneras?

*strings.6568:	%.300s no parece ser un archivo de correo.\n¿Desea escribir en este archivo de todas maneras?

*strings.6567:	¡Error al guardar el archivo newsrc!

*strings.6566:	¡Error al escribir el archivo de correo!

*strings.6565:	Al menos una de sus carpetas de correo está\nutilizando mucho espacio en el disco. Si la comprime\nahora, puede recuperar %ld Kbytes de espacio.\nLa compresión de carpetas puede llevar cierto tiempo.\n\n¿Desea comprimir las carpetas ahora?

*strings.6564:	No se encontró.

*strings.6563:	No ha escrito nada ni hay datos adjuntos.\n¿Desea enviarlo de todas maneras?

*strings.6562:	Incluyó el mismo documento dos veces: primero como un documento citado\n(con '>' al comienzo de cada línea) y luego\ncomo un adjunto (como una segunda parte del mensaje\nincluida después del texto nuevo).\n\n¿Desea enviarlo de todas maneras

*strings.6561:	Ha fallado la entrega de 1 mensaje.\n\nEste mensaje permanece en la carpeta de salida.\nPara poder entregarlo, primero debe corregir\nel error.

*strings.6560:	Ha fallado la entrega de %d mensajes.\n\nEstos mensajes permanecen en la carpeta de salida.\nPara poder entregarlos, primero debe corregir\nlos errores.

*strings.6559:	El mensaje no tiene asunto. ¿Desea enviarlo así?

*strings.6558:	Será imposible enviar este mensaje cifrado a todos los\ndestinatarios. ¿Desea enviarlo así?

*strings.6557:	Sólo se pueden borrar carpetas de correo.

*strings.6556:	No se pueden copiar mensajes porque la carpeta de correo está siendo usada.\nEspere hasta que terminen otras\noperaciones de copia y vuelva a intentarlo.

*strings.6555:	No se puede borrar la carpeta de mensajes '%s' porque está viendo usted \nsus contenidos. Por favor, cierre esas ventanas e inténtelo de nuevo.

*strings.6554:	No se ha obtenido la lista completa de grupos de debate\nde este servidor. Las opciones no continuarán normalmente hasta que se hayan\n recuperado todos los grupos.\n\nHaga clic en la ficha "Todos los grupos" para continuar recuperándolos

*strings.6553:	Este mensaje IMAP no puede trasladarse mientras se encuentra online.  No tiene un cuerpo adjuntado.

*strings.6552:	No se ha copiado el mensaje IMAP. No se encontró el mensaje original.

*strings.6551:	No se ha pasado el mensaje IMAP.\nHa pasado una copia, pero no se pudo borrar el mensaje original.

*strings.6550:	Un problema a ocurrido mientras se estaba cargando un cambio offline.\n Continuar cargando los cambios offline restantes (OK) \n o intentar de nuevo más tarde (Cancel)

*strings.6549:	No se puede mover la carpeta Buzón de entrada.

*strings.6548:	No se encuentra la información de resumen\nde la carpeta IMAP %s.

*strings.6547:	No se puede deshacer ni rehacer una acción\nmientras se carga la carpeta.

*strings.6546:	La carpeta de destino no admite subcarpetas.

*strings.6545:	La carpeta superior no admite subcarpetas.\nSeleccione la carpeta del servidor y\nescriba 'parent/newFolder' para crear una nueva jerarquía.

*strings.6544:	La carpeta de destino no admite mensajes.

*strings.6543:	Este servidor de correo no puede deshacer borrado de carpetas, ¿desea borrar?

*strings.6542:	No se pueden copiar mensajes al Buzón de salida:\nla carpeta contiene mensajes programados\npara envío posterior únicamente.

*strings.6541:	No ha podido enviarse 1 mensaje.\n\nSe ha dejado en el buzón de salida.\nPara poder enviarlo, debe corregir los posibles errores.

*strings.6540:	No han podido enviarse %d mensajes.\n\nSe han dejado en el buzón de salida.\nPara poder enviarlos, debe corregir los posibles errores.

*strings.6539:	No puede pasar una carpeta de correo a un grupo de debate.

*strings.6538:	No puede pasar un grupo de debate a una carpeta de correo.

*strings.6537:	Problema del Servidor de Correo: Los UIDs de los mensajes en esta\n       carpeta no se incrementan. Contacte con el administrador de su sistema.

*strings.6536:	Este servidor de correo no es IMAP4.

*strings.6535:	<TITLE>Conectar IMAP</TITLE>\nNo se ha recibido del servidor el texto de este mensaje para leerlo\nen modo desconectado. Para leer este mensaje\ndeberá conectarse con el comando "Conectar" del menú Archivo y volver a ver el mensaje.

*strings.6534:	Compresión fallida.

*strings.6533:	Al menos 30 nuevas carpetas de correo IMAP se han encontrado.\n\nPresione <OK> para continuar o <cancel> para cambiar\nel directorio del servidor IMAP.

*strings.6532:	Introduzca el nombre del directorio del servidor IMAP.

*strings.6531:	No se admite el envío de mensajes a grupos de debate de otros sistemas centrales.

*strings.6530:	Este mensaje se pasó aquí en modo desconectado. Debe \nconectarse para volver a pasarlo.

*strings.6529:	Esta carpeta de correo IMAP está fuera de fecha.  Ábrala de nuevo para una búsqueda más completa.

*strings.6528:	La elección del nuevo directorio de correo\nserá efectiva la próxima vez\nque abra Mozilla.

*strings.6527:	No se puede guardar su mensaje como borrador.\n\Verifique que sus preferencias de correo están correctas\n\y reinténtelo.

*strings.6526:	No se puede guardar su mensaje como un patrón.\n\Verifique que sus preferencias de correo están correctas\n\y reinténtelo.

*strings.6525: Su servidor SMTP no pudo iniciar una conexión segura.\n\
Vd. pidio de enviar el correo SÓLO en modo seguro, consecuentemente la\n\
conexión ha sido cancelada. Verifique sus preferencias por favor.

*strings.6524:	Mensaje enviado con éxito, sin embargo ocurrió un error al copiar\n\
el mensaje a la carpeta de mensajes enviados. ¿Desea volver a la ventana\n\
de composició nde mensajes?

*strings.6523:	El carácter %s es reservado en un servidor imap. Elija otro nombre por favor.

*strings.-1192:	Ocurrió un error de E/S durante la autorización de seguridad.\nVuelva a intentar la conexión

*strings.-1191:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1190:	La biblioteca de seguridad ha recibido datos con errores.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1189:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1188:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1187:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1186:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1185:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1184:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1183:	La biblioteca de seguridad ha encontrado un mensaje codificado DER\ncon formato incorrecto.

*strings.-1182:	El certificado del servidor tiene una firma no válida.\nNo podrá conectarse con este sitio de manera segura.

*strings.-1181:	El certificado de este servidor ha caducado.\nVerifique la fecha y hora de su sistema.

*strings.-1180:	El certificado del servidor tiene una firma revocada.\nNo podrá conectarse con este sitio de manera segura.

*strings.-1179:	El emisor de este certificado no es reconocido por\nMozilla. El certificado de seguridad pudiera no ser válido.\n\nMozilla se niega a conectarse con este servidor.

*strings.-1178:	La clave pública del servidor no es válida.\nNo podrá conectarse con este sitio de manera segura.

*strings.-1177:	La contraseña de seguridad que introdujo es incorrecta

*strings.-1176:	No ha introducido la nueva contraseña correctamente. Vuelva a intentarlo.

*strings.-1175:	Ha ocurrido un error en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1174:	Ha ocurrido un error de base de datos en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1173:	Ha ocurrido un error de memoria insuficiente en la biblioteca de seguridad.\nVuelva a intentar la conexión.

*strings.-1172:	El emisor de certificado de este servidor ha sido marcado por el usuario como no fiable.\nMozilla se niega a conectarse con\neste servidor.

*strings.-1171:	El certificado de este servidor ha sido marcado \npor el usuario como no fiable. \nMozilla se niega a conectarse con\neste servidor.

*strings.-1170:	El certificado que intenta recibir ya\nexiste en su base de datos.

*strings.-1169:	Está intentando recibir un certificado cuyo nombre\nes igual al de uno ya existente en su base de datos.\nSi desea recibir el nuevo certificado, primero deberá\nborrar el antiguo.

*strings.-1168:	Error al añadir el certificado a la base de datos

*strings.-1167:	Error al rellenar la clave de este certificado

*strings.-1166:	La clave privada de este certificado no\nse encuentra en la base de datos de claves

*strings.-1165:	Este certificado es válido.

*strings.-1164:	Este certificado no es válido.

*strings.-1163:	No hay respuesta

*strings.-1162:	La autoridad de certificación que emitió el\ncertificado de este sitio ha caducado.\nCompruebe la fecha y hora de su sistema.

*strings.-1161:	La lista de revocaciones de certificados de esta autoridad\ncertificadora (que emitió el certificado de este sitio) ha caducado.\nRecargue una lista de revocaciones nueva o compruebe la hora y fecha de su equipo.

*strings.-1160:	La lista de revocaciones de certificados de esta autoridad\ncertificadora (que emitió el certificado de este sitio) tiene una firma incorrecta.\nRecargue una lista de revocaciones nueva.

*strings.-1159:	La lista de revocaciones de certificados que está cargando\ntiene un formato correcto.

*strings.-1158:	Extensión incorrecta.

*strings.-1157:	No tiene extensión.

*strings.-1156:	El certificado del emisor es incorrecto.

*strings.-1155:	La limitación de la longitud de la vía del certificado es incorrecta.

*strings.-1154:	Uso de certificado no válido.

*strings.-1153:	**Módulo sólo interno**

*strings.-1152:	El sistema ha intentado utilizar una clave que no admite\nla operación solicitada.

*strings.-1151:	El certificado contiene una extensión importante desconocida.

*strings.-1150:	La lista de revocaciones de certificados que está cargando\nno es posterior a la actual.

*strings.-1149:	No ha podido cifrarse ni firmarse este mensaje porque no tiene\nun certificado de correo electrónico. Haga clic en el icono 'Seguridad'\npara obtener más información sobre los certificados.

*strings.-1148:	No ha podido cifrarse este mensaje porque no tiene certificados\npara todos los destinatarios. Haga clic en el icono 'Seguridad'\npara obtener más información.\n\n¿Desea desactivar el cifrado y enviarlo de todos modos?

*strings.-1147:	No se han podido descifrar los datos porque usted no es el destinatario\no no iban dirigidos a usted, o no existe un certificado o clave\npública que coincidan en la base de datos local.

*strings.-1146:	No se han podido descifrar los datos porque el algoritmo\nde cifrado de claves empleado no coincide con el del certificado.

*strings.-1145:	No ha podido verificarse la firma porque no había firmante,\nhabía demasiados o los datos eran incorrectos o estaban alterados.

*strings.-1144:	No se puede completar esta operación:\nse ha encontrado un algoritmo de clave desconocido o incompatible.

*strings.-1143:	No se han podido descifrar los datos porque fueron cifrados con un tamaño\nde algoritmo o clave no admitidos en esta configuración.

*strings.-1134:	No se ha encontrado Lista de Llaves Autorizadas para el certificado de esta localización.\nDebe recibir la Lista de Llaves Autorizadas antes de continuar.

*strings.-1133:	La Lista de Llaves Autorizadas para certificado de esta localización ha expirado.\nVuelva a recibir una nueva lista de Llaves Autorizadas

*strings.-1132:	La Lista de Llaves Autorizadas para esta localización tiene una firma no válida.\nVuelva a recibir una nueva lista de Llaves Autorizadas

*strings.-1131:	La clave del certificado de este sitio ha sido revocada.\nNo podrá comunicarse con este sitio de manera segura.

*strings.-1130:	La Lista de Llaves Autorizadas que está tratando de recibir tiene\nun formato no válido.

*strings.-1129:	La biblioteca de seguridad no tiene suficientes datos aleatorios.

*strings.-1128:	La biblioteca de seguridad no ha podido encontrar un módulo\nde seguridad que pueda llevar a cabo la operación solicitada.

*strings.-1127:	La tarjeta o señal de seguridad no existe, necesita iniciarse\no ha sido borrada.

*strings.-1126:	Ha ocurrido un error de base de datos en la biblioteca de seguridad.\nProbablemente no pueda comunicarse con este sitio de manera segura.

*strings.-1125:	No hay señal ni canal seleccionado.

*strings.-1124:	Ya existe un certificado con ese nombre.

*strings.-1123:	Ya existe una clave con ese nombre.

*strings.-1122:	Se ha producido un error durante la creación del objeto seguro.

*strings.-1121:	Se ha producido un error durante la creación del objeto seguro.

*strings.-1120:	No se puede borrar al director

*strings.-1119:	No se puede borrar el privilegio

*strings.-1118:	Este director no tiene certificado

*strings.-1117:	No se puede llevar a cabo la operación porque el algoritmo\nnecesario no está permitido en esta configuración.

*strings.-1116:	No se pueden exportar certificados. Se ha producido un error al intentar\nexportar los certificados.

*strings.-1115:	Se ha producido un error durante la importación de certificados.

*strings.-1114:	No se pueden importar los certificados. El archivo especificado\nestá alterado o no es válido.

*strings.-1113:	No se pueden importar los certificados. La contraseña de\nintegridad es incorrecta o los datos del archivo especificado han sido\nalterados de alguna manera.

*strings.-1112:	No se pueden importar los certificados. El algoritmo empleado para generar\nla información de integridad del archivo no es compatible con esta aplicación.

*strings.-1111:	No se pueden importar los certificados. Mozilla sólo admite modos\nde confidencialidad e integridad por contraseña para la importación de certificados.

*strings.-1110:	No se pueden importar los certificados. El archivo que contiene los certificados\nestá alterado. Falta la información necesaria o es incorrecta.

*strings.-1109:	No se pueden importar los certificados. El algoritmo empleado para\ncifrar el contenido no es compatible con Mozilla.

*strings.-1108:	No se pueden importar los certificados. El archivo es una versión\nincompatible con Mozilla.

*strings.-1107:	No se pueden importar los certificados. La contraseña de confidencialidad\nno es correcta.

*strings.-1106:	No se pueden importar los certificados. Ya existe en la base de datos\nde Mozilla un certificado con el mismo\n apodo que el que se está importando.

*strings.-1105:	El usuario ha pulsado Cancelar.

*strings.-1104:	No se pueden importar los certificados porque ya están en su equipo.

*strings.-1102:	El certificado no está aprobado para la operación indicada.

*strings.-1101:	El certificado no está aprobado para la operación indicada.

*strings.-1100:	La dirección electrónica del certificado de firma no coincide\n con la de los encabezados del mensaje.\n Si estas dos direcciones no pertenecen a la misma persona,\npodría tratarse de una falsificación.

*strings.-1099:	No se pueden importar los certificados. Se ha producido un error\n al importar la clave privada asociada con el certificado importado.

*strings.-1098:	No se pueden importar los certificados. Se ha producido un error al importar\n la cadena de certificados asociada\n con el certificado importado.

*strings.-1097:	No se pueden exportar los certificados. Se ha producido un error al buscar\nun certificado o clave por su apodo.

*strings.-1096:	No se pueden exportar los certificados. No se encuentra la clave privada\n asociada con un certificado o no se ha podido exportar desde la\nbase de datos de claves.

*strings.-1095:	No se pueden exportar los certificados. Se ha producido un error al grabar\nel archivo de exportación. Asegúrese de que la unidad de destino\nno está llena, y vuelva a exportar.

*strings.-1094:	No se pueden exportar los certificados. Se ha producido un error al leer\nel archivo de importación. Asegúrese de que existe el archivo, que no está alterado,\ny vuelva a importar.

*strings.-1093:	No se pueden exportar los certificados. No se ha iniciado la base de datos\nque contiene las claves privadas.\nPuede haber sido borrada o estar alterada. No hay ninguna clave\n asociada con este certificado.

*strings.-1092:	No se puede generar la clave privada y la pública.

*strings.-1091:	La contraseña introducida es incorrecta. Elija otra.

*strings.-1090:	No ha introducido la antigua contraseña correctamente. Vuelva a intentarlo.

*strings.-1089:	El nombre de certificado introducido ya está utilizado por otro certificado

*strings.-1088:	La cadena del servidor FORTEZZA tiene un certificado que no es FORTEZZA. \nPosiblemente no pueda conectar con este sitio en modo seguro.

*strings.-1087:	Desconocido

*strings.-1086:	Nombre de módulo incorrecto

*strings.-1085:	Nombre de archivo o vía de acceso incorrecto

*strings.-1084:	No se puede añadir el módulo

*strings.-1083:	No se puede detectar el módulo

*strings.-1082:	La Lista de Llaves Autorizadas que está tratando de recibir no\nes posterior a la actual.

*strings.-1081:	El CKL que está intentando cargar tiene un emisor diferente que\nsu CKL actual.  Borre su CKL actual antes de cargar el nuevo.

*strings.-1080:	La Lista de Llaves Autorizadas para esta localización\nno es válida todavía. Reciba una nueva Lista de Llaves Autorizadas.

*strings.-1079:	La lista de revocación del certificado de este sitio\nes aún incorrecta.  Recargue una lista de revocación nueva.

*strings.23000:	<head>%-styleinfo-%</head><body bgcolor="#bbbbbb"><div><form name=theform action=internal-dialog-handler method=post><input type="hidden" %-cont-%

*strings.23001:	name="handle" value="%0%"><input type="hidden" name="xxxbuttonxxx"><font size=2>

*strings.23002:	</font></form></div></body>%0%

*strings.23008:	<HTML><HEAD>%-styleinfo-%<TITLE>%0%</TITLE><SCRIPT LANGUAGE="JavaScript">\nvar dlgstring ='

*strings.23009:	';\nvar butstring ='

*strings.23010:	';\nfunction drawdlg(win){\ncaptureEvents(Event.MOUSEDOWN);\nwith(win.frames[0]) {\ndocument.write(parent.dlgstring);document.close();\n}\nwith(win.frames[1]) {\nbutstring='<html><body bgcolor="#bbbbbb"><form>'%-cont-%

*strings.23011:	+butstring+'</form></body></html>';document.write(parent.butstring);document.close();\n}\nreturn false;\n}\nfunction clicker(but,win)\n{\nwith(win.frames[0].document.forms[0]) {\nxxxbuttonxxx.value=but.value;\nxxxbuttonxxx.name='button';\n%-cont-%

*strings.23012:	submit();\n}\n}\nfunction onMouseDown(e)\n{\nif ( e.which == 3 )\nreturn false;\nreturn true;\n}\n</SCRIPT></HEAD><FRAMESET ROWS="*,50"ONLOAD="drawdlg(window)" BORDER=0>\n%-cont-%

*strings.23013:	<FRAME SRC="about:blank" MARGINWIDTH=5 MARGINHEIGHT=3 NORESIZE BORDER=NO>\n<FRAME SRC="about:blank" MARGINWIDTH=5 MARGINHEIGHT=0 NORESIZE SCROLLING=NO BORDER=NO>\n</FRAMESET></HTML>\n

*strings.23014:	<div align=right><input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>

*strings.23015:	<div align=right><input type="button" name="button" value="%ok%" onclick="parent.clicker(this,window.parent)" width=80></div>

*strings.23016:	<div align=right><input type="button" name="button" value="%continue%" onclick="parent.clicker(this,window.parent)" width=80></div>

*strings.23017:	<div align=right><input type="button" value="%ok%" width=80 onclick="parent.clicker(this,window.parent)">&nbsp;&nbsp;<input type="button" value="%cancel%" width=80 onclick="parent.clicker(this,window.parent)"></div>

*strings.23018:	<div align=right><input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%continue%" onclick="parent.clicker(this,window.parent)" width

*strings.23019:	<head>%-styleinfo-%</head><body bgcolor="#bbbbbb"><form name=theform action=internal-panel-handler method=post><input type="hidden" %-cont-%

*strings.23020:	name="handle" value="%0%"><input type="hidden" name="xxxbuttonxxx"><font size=2>

*strings.23026:	<div align=right><input type="button" name="button" value="%next%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input %-cont-%

*strings.23027:	type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%

*strings.23028:	<div align=right><input type="button" name="button" value="%back%" onclick="parent.clicker(this,window.parent)" width=80><input type="button" name="button" value="%next%" %-cont-%

*strings.23029:	onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%

*strings.23030:	<dig align=right><input type="button" name="button" value="%back%" onclick="parent.clicker(this,window.parent)" width=80>%-cont-%

*strings.23031:	<input type="button" name="button" value="%finished%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%

*strings.23032:	%0%

*strings.23033:	<title>%0%</title><b>%1%</b><hr>%2%<hr>%3%

*strings.23034:	%0%%1%%2%

*strings.23035:	%sec-banner-begin%%0%%sec-banner-end%<b><div><font size=4>%1% es un sitio que usa encriptación para proteger la informatión transmitida. %-cont-%

*strings.23036:	Sin embargo, Mozilla no reconoce a la autoridad que firmó el certificado.</font></b></div><p><div>Aunque Mozilla no reconozca al %-cont-%

*strings.23037:	firmante de este certificado, usted puede aceptarlo y así conectarse con este sitio e intercambiar información.<p>Este %-cont-%

*strings.23038:	asistente le ayudará a decidir si quiere aceptar este certificado y hasta que punto, o no.%2%</div>

*strings.23044:	%sec-banner-begin%%0%%sec-banner-end%<div>Aquí está el certificado que se le ha presentado:</div><hr><table><tr><td valign=top><font %-cont-%

*strings.23045:	size=2>Certificado para: <br>Firmado por: <br>Cifrado: </font></td><td valign=top><font size=2>%1%<br>%2%<br>%3% Grado (%4% con clave secreta de %5% bits %-cont-%

*strings.23046:	key)</font></td><td valign=bottom><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr><div>El firmante de este %-cont-%

*strings.23047:	certificado promete que el poseedor de aquel es quién dicen ser. El nivel de cifrado indica la dificultad que supondrá a un extraño %-cont-%

*strings.23048:	ver su contenido o cualquier información transmitida entre usted y este servidor web.%6%</div>

*strings.23049:	%sec-banner-begin%%0%%sec-banner-end%<div>¿Está dispuesto a aceptar este certificado con el propósito de recibir información %-cont-%

*strings.23050:	cifrada de este sitio web?<p>De este modo podrá examinar el sitio y recibir documentos, así como enviarlos cifrados, de modo que no puedan ser  %-cont-%

*strings.23051:	observados por otras personas.<p><input type=radio name=accept value=session%1%>Aceptar este %-cont-%

*strings.23052:	certificado para esta sesión<br><input type=radio name=accept value=cancel%2%>No aceptar este certificado y no conectar<br><input type=radio name=accept %-cont-%

*strings.23053:	value=forever%3%>Aceptar siempre este certificado (hasta que caduque)</div><br>%4%

*strings.23064:	%sec-banner-begin%%0%%sec-banner-end%<div>Al aceptar este certificado se asegura que toda la información que intercambie con este sitio %-cont-%

*strings.23065:	estará cifrada; no obstante, el cifrado no le protegerá de posibles fraudes.<p>Para hacerlo, no envíe información %-cont-%

*strings.23066:	(especialmente información personal, números de tarjetas de crédito y contraseñas) a este sitio si no está seguro de la integrdidad.<p>Para su %-cont-%

*strings.23067:	seguridad, Mozilla puede recordarle esto en el momento adecuado.<p><center><input type=checkbox name=postwarn value=yes %1%>Advertir %-cont-%

*strings.23068:	antes de enviar información a este sitio</center><p></div>%2%

*strings.23069:	%sec-banner-begin%%0%%sec-banner-end%<b><div>Ha terminado de examinar el certificado presentado por:<br>%1%</b><p>Ha %-cont-%

*strings.23070:	decidido rechazar esta identificación. Si cambia de opinión en un futuro, vuelva a este sitio y el asistente volverá a %-cont-%

*strings.23071:	asesorarle.<p>Haga clic en el botón Terminar para volver al documento que estaba viendo antes de conectarse con este sitio.</div>%2%

*strings.23072:	%sec-banner-begin%%0%%sec-banner-end%<b><div>Ha terminado de examinar el certificado presentado por:<br>%1%</b></div><p><div>Ha %-cont-%

*strings.23073:	decidido aceptarlo y ha indicado que Mozilla le advierta antes de enviar información a este sitio.<p>Si %-cont-%

*strings.23074:	cambia de opinión, abra Información sobre seguridad en el menú Ventana y modifique los Certificados de sitios.<p>Haga clic en Terminar para empezar a recibir documentos.%2%

*strings.23080:	%sec-banner-begin%%0%%sec-banner-end%<b><div>Ha terminado de examinar el certificado presentado por:<br>%1%</div></b><p><div>Ha %-cont-%

*strings.23081:	decidido aceptarlo y ha indicado que Mozilla no le advierta antes de enviar información a este sitio.</div><p><div>Si %-cont-%

*strings.23082:	cambia de opinión, abra Información sobre seguridad en el menú Ventana y modifique los Certificados de sitios.<p>Haga clic en Terminar para empezar %-cont-%

*strings.23083:	a recibir los documentos.</div>%2%

*strings.23084:	%sec-banner-begin%%0%%sec-banner-end%<div>El certificado presentado por el sitio '%1%' no contiene el nombre del sitio %-cont-%

*strings.23085:	correcto. Es posible, aunque improbable, que alguien haya intentado interceptar la comunicación con este sitio. Si sospecha que este certificado %-cont-%

*strings.23086:	no pertenece al sitio al que se está conectado, cancele la conexión y notifíquelo al administrador del sitio. <p>%-cont-%

*strings.23087:	Aquí está el certificado que se le ha presentado:</div><hr><table><tr><td valign=top><font size=2>Certificado para: <br>Firmado por: <br>Cifrado: %-cont-%

*strings.23088:	</font></td><td valign=top><font size=2>%2%<br>%3%<br>%4% Grado (%5% con clave secreta de %6% bits)</font></td><td valign=bottom><input %-cont-%

*strings.23089:	type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>%7%

*strings.23100:	%sec-banner-begin%%0%%sec-banner-end%Introduzca su nueva contraseña. Las contraseñas más seguras son las que tienen %-cont-%

*strings.23101:	8 caracteres, combinan letras y números, y no contienen palabras del diccionario.<p>Contraseña: <input type=password name=password1><p>Escríbala %-cont-%

*strings.23102:	otra vez para confirmar:<p>Escriba la contraseña: <input type=password name=password2><p><b>No la olvide, pues %-cont-%

*strings.23103:	no podrá recuperarla. Si la olvida, deberá obtener nuevos certificados.</b>

*strings.23109:	%sec-banner-begin%%0%%sec-banner-end%No ha introducido la contraseña correctamente. Vuelva a intentarlo.<p>Contraseña: <input %-cont-%

*strings.23110:	type=password name=password1><p>Escríbala otra vez para verificar:<p>Escriba la contraseña: <input type=password name=password2><p>%-cont-%

*strings.23111:	<b>¡No olvide su contraseña!  Su contraseña no puede ser recuperada. Si la olvida, tendrá que obtener nuevos Certificados.</b> 

*strings.23112:	%sec-banner-begin%%0%%sec-banner-end%Se recomienda encarecidamente que proteja su Clave privada con una %-cont-%

*strings.23113:	Contrase&ntilde;a de Mozilla.  Si no quiere una contrase&ntilde;a, deje el campo de la contrase&ntilde;a en blanco.<P>Las contrase&ntilde;as m&aacute;s seguras tiene al menos 8 caracteres de longitud, incluya %-cont-%

*strings.23114:	tanto letras como n&uacute;meros, pero no palabras de un diccionario.<P><table><tr><td>Contrase&ntilde;a:</td><td><input type=password name=password1></td>%-cont-%

*strings.23115:	</td></tr><tr><td>Escríbalo de nuevo para confirmación:</td><td><input type=password name=password2></td><td valign=bottom></td></tr></table><B>Importante: %-cont-%

*strings.23116:	No se puede recuperar su contrase&ntilde;a.  Si la olvida, perder&aacute; todos sus certificados.</B><P>Si desea cambiar su contrase&ntilde;a u otras preferencias de seguridad, %-cont-%

*strings.23117:	elija Informaci&oacute;n sobre seguridad en el men&uacute; Ventana.

*strings.23128:	%sec-banner-begin%%0%%sec-banner-end%Ha optado por operar sin contraseña.<p>Si decide crear una contraseña para proteger sus claves privadas y certificados en un futuro, %-cont-%

*strings.23129:	puede definirla en Preferencias de seguridad.

*strings.23130:	%sec-banner-begin%%0%%sec-banner-end%Cambie la contraseña de %1%.<p>Escriba la antigua contraseña: <input type=password name=password value=%2%><P><P>Escriba la nueva. Deje %-cont-%

*strings.23131:	los campos de contraseña en blanco si no desea usar contraseña.<p><table><tr><td>Nueva contraseña:</td><td><input type=password name=password1></td></tr><tr>%-cont-%

*strings.23132:	<td>escríbala de nuevo para confirmar:</td><td><input type=password name=password2></td></tr></table><p><B>Importante: Su contraseña no puede ser recuperada.  %-cont-%

*strings.23133:	Si la olvida, perderá todos los certificados.</B>

*strings.23140:	%sec-banner-begin%%0%%sec-banner-end%No ha podido cambiarse la contraseña.<p>Es posible que la base de datos de clave sea inaccesible (puede suceder si ya había %-cont-%

*strings.23141:	otra sesión de Mozilla abierta cuando abrió esta), o por cualquier otro tipo de error.<p>Esto indica que la base de datos ha sido alterada, %-cont-%

*strings.23142:	en cuyo caso, debe intentar conseguir una copia de seguridad, si es posible. Como último recurso, tendrá que borrar la base de datos de claves y, después, %-cont-%

*strings.23143:	obtener los certificados personales.

*strings.23194:	<table border=0 cellpadding=0 cellspacing=0 width="100%%"><td><input type="button" value="%moreinfo%" width=80 onclick="parent.clicker(this,window.parent)"></td>%-cont-%

*strings.23195:	<td align="right" nowrap><input type="button" value="%ok%" width=80 onclick="parent.clicker(this,window.parent)">&nbsp;&nbsp;%-cont-%

*strings.23196:	<input type="button" value="%cancel%" width=80 onclick="parent.clicker(this,window.parent)"></td></table>

*strings.23199:	<div align=right><input type="button" name="button" value="%finished%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;%-cont-%

*strings.23200:	<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80></div>%0%

*strings.23211:	%sec-banner-begin%%0%%sec-banner-end%Esta función no está instalada:<br>%1%<br>Nombre del certificado:<br>%2%

*strings.23212:	%0%%1%

*strings.23213:	<b><FONT SIZE=4>ADVERTENCIA: si borra este certificado, no podrá leer ningún mensaje electrónico cifrado con él.</FONT></b><p>¿Desea borrar este certificado personal?<p>%0%

*strings.23214:	¿Desea borrar este certificado de sitio?<p>%0%

*strings.23215:	¿Desea borrar esta autoridad certificadora?<p>%0%

*strings.23216:	%0%<hr>Este certificado pertenece a un sitio con servidor SSL.<br><input type=radio name=allow value=sí %1%>Autorizar conexiones con este sitio<br>%-cont-%

*strings.23217:	<input type=radio name=allow value=no %2%>No autorizar conexiones con este sitio<hr><input type=checkbox name=postwarn value=sí %3%>Advertir %-cont-%

*strings.23218:	antes de enviar datos a este sitio

*strings.23224:	%0%<hr><div>Este Certificado pertenece a una Autoridad Certificadora<br> %-cont-%

*strings.23225:	%1%<br>%2%<br>%3%<hr><input %-cont-%

*strings.23226:	type=checkbox name=postwarn value=yes %4%>Cerciórese antes de enviar datos a lugares certificados por esta autoridad</div>

*strings.23232:	%sec-banner-begin%%0%%sec-banner-end%<b>Advertencia: va a enviar información cifrada al sitio %1%.</b><p>Es más %-cont-%

*strings.23233:	seguro no enviar información (en particular, información personal, números de tarjetas de crédito o contraseñas) a este sitio si duda de su %-cont-%

*strings.23234:	certificado o integridad.<br>Éste es el certificado del sitio:<hr><table><tr><td valign=top><font size=2>Certificado de: <br>Firmado por: %-cont-%

*strings.23235:	<br>Cifrado: </font></td><td valign=top><font size=2>%2%<br>%3%<br>%4% Grado (%5% con clave secreta de %6% bits)</font></td><td valign=bottom>%-cont-%

*strings.23236:	<font size=2><input type="submit" name="button" value="%moreinfo%"></font></td></tr></table><hr><input type=radio name=action %-cont-%

*strings.23237:	value=sendandwarn checked>Enviar esta información y volver a advertir la próxima vez<br><input type=radio name=action value=send>Enviar esta información %-cont-%

*strings.23238:	y no volver a advertir.<br><input type=radio name=action value=dontsend>No enviar la información<br>%7%

*strings.23239:	%sec-banner-begin%%0%%sec-banner-end%<div>Está a punto de %-cont-%

*strings.23240:	iniciar el proceso de aceptar una Autoridad Certificadora. Esto presenta graves implicaciones para la seguridad de futuros documentos cifrados usando %-cont-%

*strings.23241:	Mozilla. Este asistente le ayudará a decidir si debe aceptar esta Autoridad Certificadora o no.</div>

*strings.23252:	%sec-banner-begin%%0%%sec-banner-end%<div>Una Autoridad %-cont-%

*strings.23253:	Certificadora certifica la identidad de determinados sitios en Internet. Al aceptar esta Autoridad Certificadora, dejará que Mozilla conecte %-cont-%

*strings.23254:	y reciba información de cualquier sitio certificado por esta autoridad sin avisarle.</div><p><div>Si elige rechazar esta %-cont-%

*strings.23255:	Autoridad Certificadora, será avisado cada vez que conecte o reciba información de sitios certificados por esta autoridad.</div> 

*strings.23261:	%sec-banner-begin%%0%%sec-banner-end%<div>Aquí está el certificado de esta Autoridad Certificadora. Examínelo detalládamente. La %-cont-%

*strings.23262:	huella del certificado puede utilizarse para verificar que esta Autoridad es quien dice ser. Para hacerlo compare esta huella con la %-cont-%

*strings.23263:	huella publicada por esta autoridad en otros sitios.</div><hr><table><tr><td valign=top><font size=2>Certificado para: <br>Firmado por: </font></td>%-cont-%

*strings.23264:	<td valign=top><font size=2>%1%<br>%2%</font></td><td valign=bottom><font size=2><input type="submit" name="button" value="%moreinfo%%-cont-%

*strings.23265:	"></font></td></tr></table><hr>

*strings.23266:	%sec-banner-begin%%0%%sec-banner-end%<div>¿Está dispuesto a aceptar esta Autoridad Certificadora con el propósito de certificar %-cont-%

*strings.23267:	otros sitios en Internet, direcciones de correo electrónico, o creadores de programas?<p> %1%%2%%3%</div>

*strings.23275:	%sec-banner-begin%%0%%sec-banner-end%<div>Al aceptar esta Autoridad Certificadora le ha dicho a Mozilla que conecte %-cont-%

*strings.23276:	y reciba información de cualquier sitio certificado por dicha Autoridad certificadora, sin avisarle o preguntarle a usted.<p>Sin embargo, Mozilla puede avisarle antes %-cont-%

*strings.23277:	de que ud. envíe información a dichos sitios.</div><p><div><input type=checkbox name=postwarn value=yes %1%>Advertir antes de enviar información a sitios %-cont-%

*strings.23278:	certificados por esta Autoridad Certificadora</div>

*strings.23279:	%sec-banner-begin%%0%%sec-banner-end%<div>Ha aceptado esta Autoridad Certificadora.  Deba ahora elegir un apodo o alias con el que %-cont-%

*strings.23280:	la identificará a partir de ahora, por ejemplo,  <b>Grupo de certificación Mozilla</b>.<p>Apodo: <font size=4><input type=text %-cont-%

*strings.23281:	name=nickname></font></div>

*strings.23282:	%sec-banner-begin%%0%%sec-banner-end% Al rechazar esta Autoridad certificadora, le ha dicho a Mozilla  que no conecte o %-cont-%

*strings.23283:	reciba información de ningún sitio certificado por ella sin preguntarle antes.

*strings.23294:	%0%

*strings.23295:	%sec-banner-begin%%0%%sec-banner-end%El sitio '%1%' ha solicitado una autenticación de cliente.<p>Éste es el %-cont-%

*strings.23296:	certificado del sitio:<hr><table><tr><td valign=top><font size=2>Certificado de: <br>Firmado por: <br>Cifrado: </font></td><td valign=top><font %-cont-%

*strings.23297:	size=2>%2%<br>%3%<br>%4% Grado (%5% con clave secreta de %6% bits)</font></td><td valign=bottom><input type="submit" name="button" value="%moreinfo%%-cont-%

*strings.23298:	"></td></tr></table><hr>Elija su certificado:<select name=cert>%7%</select>%8%

*strings.23304:	%sec-banner-begin%%0%%sec-banner-end%El sitio '%1%' ha solicitado una autenticación de cliente, pero usted no tiene un certificado %-cont-%

*strings.23305:	personal con el que autenticarse. El sitio puede permitirle el acceso sin él.%2%

*strings.23306:	%sec-banner-begin%%0%%sec-banner-end%<B>Todos los archivos solicitados estaban cifrados.</B><p> Esto significa que recibe %-cont-%

*strings.23307:	cifrados los archivos que componen el documento para mayor confidencialidad durante la transmisión.<p> Si desea obtener más detalles sobre el cifrado de este %-cont-%

*strings.23308:	documento, abra Información de documento.<p> <center><input type="submit" name="button" value="%ok%"><input type="submit" name="button" %-cont-%

*strings.23309:	value="%showdocinfo%"></center>%1%

*strings.23315:	<img src=about:security?banner-mixed>%0%<br clear=all><p><B>Algunos de los archivos solicitados estaban cifrados.</B><p> Recibe algunos de estos archivos %-cont-%

*strings.23316:	cifrados para mayor confidencialidad durante la transmisión. Otros no lo están y pueden ser vistos por otras personas durante la transmisión.<p>Para %-cont-%

*strings.23317:	averiguar exactamente qué archivos estaban cifrados, abrir Información sobre el documento.<p> <center><input type="submit" name="button" %-cont-%

*strings.23318:	value="%ok%"><input type="submit" name="button" value="%showdocinfo%"></center>%1%

*strings.23319:	<img src=about:security?banner-insecure>%0%<br clear=all><p><B>Ninguno de los archivos solicitados estaba cifrado.</B><p>Los archivos no cifrados pueden %-cont-%

*strings.23320:	ser vistos por otras personas durante la transmisión.<p> <center><input type="submit" name="button" value="%ok%"></center>%1%

*strings.23336:	Cifrado RC2 en modo CBC con una clave de 40 bits.

*strings.23337:	Cifrado RC2 en modo CBC con una clave de 64 bits.

*strings.23338:	Cifrado RC2 en modo CBC con una clave de 128 bits.

*strings.23339:	Cifrado DES en modo CBC con una clave de 56 bits.

*strings.23340:	Cifrado DES ED3 en modo CBC con una clave de 168 bits.

*strings.23341:	Cifrado RC5 en modo CBC con una clave de 40 bits.

*strings.23342:	Cifrado RC5 en modo CBC con una clave de 40 bits.

*strings.23343:	Cifrado RC5 en modo CBC con una clave de 128 bits.

*strings.23351:	No se ha encontrado un archivo de sistema de cifrado válido para\nesta versión en español de Mozilla. No se dispondrá de cifrado ni descifrado.

*strings.23352:	(Cifrados no permitidos)

*strings.23353:	(Cuando estén permitidos)

*strings.23354:	%sec-banner-begin%%0%%sec-banner-end%<h3>Seleccionar cifrados para activarlos para S/MIME %1%</h3><ul>%2%</ul>%3%

*strings.23355:	%sec-banner-begin%%0%%sec-banner-end%<h3>Seleccionar cifrados para activarlos para SSL v2 %1%</h3><ul>%2%</ul>%3%

*strings.23356:	%sec-banner-begin%%0%%sec-banner-end%<h3>Seleccionar cifrados para activarlos para SSL v3 %1%</h3><ul>%2%</ul>%3%

*strings.23362:	%sec-banner-begin%%0%%sec-banner-end%<P>Ha recibido un certificado nuevo. Mozilla se referirá a él con este nombre. %1%<P>Haga clic en <B>Aceptar</B> para instalar el %-cont-%

*strings.23363:	certificado en Mozilla, o en <B>Cancelar</B> para rechazar el nuevo certificado.<HR>Nombre de certificado: %2%<P><table width=97%%><tr><td>Certificado %-cont-%

*strings.23364:	para: %3%<BR>Firmado: %4%</td><td align=right><input type=submit name=button %-cont-%

*strings.23365:	value="%showcert%"></td></tr></table><HR><P>%5%</font>

*strings.23371:	Puede utilizar el nombre ofrecido o escribir otro.

*strings.23372:	%sec-banner-begin%%0%%sec-banner-end%Está llegando un certificado de %0%.<p>Este certificado opera conjuntamente con la Clave privada que usted ha generado al %-cont-%

*strings.23373:	solicitarlo. Con ambos podrá identificarse en sitios web y por correo electrónico.<p>Los certificados y las claves privadas son mucho más seguros que %-cont-%

*strings.23374:	los métodos tradicionales de seguridad que solo usan nombre de usuario y palabras clave.  Para obtener más información sobre Certificados, elija <b>Información sobre seguridad</b> desde el menú Ventana.

*strings.23380:	%sec-banner-begin%%0%%sec-banner-end%Debería hacer una copia de su nuevo certificado.<p>Si lo pierde o extravía, dicho certificado <b>no podrá ser recuperado</b>.  Tan solo %-cont-%

*strings.23381:	usted posee su clave privada.  Sin ella, no podrá leer ningún mensaje que reciba usando ese certificado.<p>Para copiarlo, %-cont-%

*strings.23382:	haga clic en <b>Guardar como</b> y elija el lugar en el que desea guardarlo. Si es posible, guárdelo en un disquete para %-cont-%

*strings.23383:	mayor seguridad.<p><input type=submit name=button value="%saveas%" >

*strings.23384:	Guardar certificado de usuario

*strings.23392:	%sec-banner-begin%%0%%sec-banner-end%Cuando haga clic en Aceptar, Mozilla generará una clave privada para el certificado, operación que %-cont-%

*strings.23393:	puede demorarse unos minutos.<P><B>Importante: si  interrumpe el proceso, tendrá que volver a solicitar el certificado.</B>%1% %2% %3%<P>

*strings.23394:	Información sobre la generación de claves

*strings.23400:	Información sobre la recepción de certificados

*strings.23401:	%sec-banner-begin%%0%%sec-banner-end%%1% es un sitio que utiliza cifrado para proteger información transmitida. Sin embargo, el %-cont-%

*strings.23402:	certificado digital que identifica este sitio ha caducado. Puede que haya caducado realmente o que la fecha de su equipo %-cont-%

*strings.23403:	sea errónea.<p>El certificado caduca el %2%.<p>La fecha que marca su equipo es %3%; si es correcta, debe %-cont-%

*strings.23404:	volver a definir la fecha de su equipo.<p>Puede continuar o cancelar esta conexión.%4%

*strings.23410:	%sec-banner-begin%%0%%sec-banner-end%%1% es un sitio que utiliza cifrado para proteger información transmitida. Sin embargo, el %-cont-%

*strings.23411:	certificado digital que identifica este sitio aún no es válido. Puede que el administrador del sitio lo haya instalado demasiado pronto %-cont-%

*strings.23412:	o esté mal la fecha de su equipo.<p>El certificado es válido desde el %2%.<p>La fecha de su equipo es %-cont-%

*strings.23413:	%3%. Si la fecha es correcta, debe cambiar la hora de su equipo.<p>Puede continuar o cancelar esta conexión.%4%

*strings.23419:	%sec-banner-begin%%0%%sec-banner-end%%1% es un sitio que utiliza cifrado para proteger la información transmitida. Sin embargo, ha caducado una de las %-cont-%

*strings.23420:	Autoridades certificadoras que identifica este sitio. Esto puede deberse a una caducidad real o porque la fecha %-cont-%

*strings.23421:	de su equipo está mal. Pulse &quot;Más información&quot; para ver más detalles sobre la fecha de caducidad.<hr><table cellspacing=0 cellpadding=0><tr><td %-cont-%

*strings.23422:	valign=top><font size=2>Autoridad certificadora: <br>Fecha de caducidad: </font></td><td valign=top><font size=2>%2%<br>%3%</font></td><td %-cont-%

*strings.23423:	valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>La fecha de su equipo %-cont-%

*strings.23424:	es %4%. Si esta fecha es incorrecta, debe cambiar la de su equipo.<p>Puede continuar o cancelar la conexión.

*strings.23430:	%sec-banner-begin%%0%%sec-banner-end%%1% es un sitio que utiliza cifrado para proteger la información transmitida. Sin embargo, ha caducado una de las %-cont-%

*strings.23431:	Autoridades certificadoras que identifica este sitio. Puede que el administrador del sitio haya instalado demasiado pronto %-cont-%

*strings.23432:	el certificado o que esté mal la fecha de su equipo. Pulse &quot;Más información&quot; para ver detalles sobre el certificado caducado.<hr><table %-cont-%

*strings.23433:	cellspacing=0 cellpadding=0><tr><td valign=top><font size=2>Autoridad certificadora: <br>Certificado válido en: </font></td><td valign=top><font %-cont-%

*strings.23434:	size=2>%2%<br>%3%</font></td><td valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table>%-cont-%

*strings.23435:	<hr>La fecha de su equipo es %4%. Si es incorrecta, debe cambiar la fecha del equipo.<p>Puede continuar o cancelar %-cont-%

*strings.23436:	esta conexión.

*strings.23492:	Cancelar

*strings.23493:	Aceptar

*strings.23494:	Continuar

*strings.23495:	Siguiente&gt;

*strings.23496:	&lt;Atrás

*strings.23497:	Terminar

*strings.23498:	Más información...

*strings.23499:	Mostrar certificado

*strings.23500:	Mostrar orden

*strings.23501:	Mostrar información sobre el documento

*strings.23507:	Siguiente>

*strings.23508:	<Anterior

*strings.23509:	Guardar como...

*strings.23516:	Atención

*strings.23517:	Ver un certificado

*strings.23518:	Comprobación del nombre del certificado

*strings.23519:	Certificado caducado

*strings.23520:	El certificado ya no es válido

*strings.23521:	Autoridad certificadora caducada

*strings.23522:	La Autoridad certificadora ya no es válida

*strings.23523:	Información sobre el cifrado

*strings.23534:	Ver un certificado personal

*strings.23535:	Borrar un certificado personal

*strings.23536:	Borrar un certificado de sitio

*strings.23537:	Borrar una Autoridad certificadora

*strings.23538:	Modificar un certificado de sitio

*strings.23539:	Modificar una Autoridad certificadora

*strings.23540:	No hay certificado de usuario

*strings.23541:	Seleccionar un certificado

*strings.23542:	Información sobre seguridad

*strings.23543:	Generar una clave pública

*strings.23544:	Nuevo certificado de sitio

*strings.23545:	Nueva Autoridad certificadora

*strings.23546:	Nuevo certificado de usuario

*strings.23552:	Configurar la contrase&ntilde;a de Mozilla

*strings.23553:	Cambiar la contraseña de Mozilla

*strings.23554:	Activar la contraseña de Mozilla

*strings.23555:	Error de contraseña

*strings.23556:	Configurar cifrados

*strings.23557:	%sec-banner-begin%%0%%sec-banner-end%El certificado seleccionado ha caducado y puede %-cont-%

*strings.23558:	ser rechazado por el servidor. Pulse Continuar para enviarlo, o Cancelar para anular esta conexión.

*strings.23569:	%sec-banner-begin%%0%%sec-banner-end%<table><tr><td>El certificado seleccionado ha caducado y puede %-cont-%

*strings.23570:	ser rechazado por el servidor. Pulse %continue% para enviarlo, o %cancel% para anular esta conexión. Para renovar el %-cont-%

*strings.23571:	certificado, pulse el botón %renew%.</td><td><input type=submit name=button value=%renew%></td></tr></table>

*strings.23577:	Renovar

*strings.23578:	%sec-banner-begin%%0%%sec-banner-end%El certificado seleccionado ha caducado y puede ser rechazado por el servidor. Pulse Continuar para enviarlo, o Cancelar para anular esta conexión.

*strings.23579:	Su certificado ha caducado

*strings.23580:	Preguntar siempre

*strings.23581:	Dejar que Mozilla elija

*strings.23582:	1024 (grado alto)

*strings.23583:	768 (grado medio)

*strings.23584:	512 (grado bajo)

*strings.23640:	Ver el sistema de certificados

*strings.23641:	Comprobar el estado del certificado

*strings.23642:	Cifrado RC4 con una clave de 128 bits.

*strings.23643:	Cifrado RC2 con una clave de 128 bits.

*strings.23644:	Cifrado triple DES con una clave de 168 bits.

*strings.23645:	Cifrado DES con una clave de 56 bits.

*strings.23646:	Cifrado RC4 con una clave de 40 bits.

*strings.23647:	Cifrado RC2 con una clave de 40 bits.

*strings.23653:	Cifrado RC4 con una clave de 128 bits y un MD5 MAC.

*strings.23654:	Cifrado triple DES con una clave de 158 bits y un SHA-1 MAC.

*strings.23655:	Cifrado DES con una clave de 56 bits y un SHA-1 MAC

*strings.23656:	Cifrado RC4 con una clave de 40 bits y un MD5 MAC.

*strings.23657:	Cifrado RC2 con una clave de 40 bits y un MD5 MAC.

*strings.23658:	No cifrado y con un MD5 MAC.

*strings.23709:	<h2 align=center>Personalidades</h2><center><table><tr><td><select name=crl size=10>%0%</select></td><td valign="middle">%-cont-%

*strings.23710:	<input type="submit" name="button" value="%new%"></input><br>%-cont-%

*strings.23711:	<input type="submit" name="button" value="%reload%"></input><br>%-cont-%

*strings.23712:	<input type="submit" name="button" value="%moreinfo%"></input><br>%-cont-%

*strings.23713:	<input type="submit" name="button" value="%delete%"></input><br>%-cont-%

*strings.23714:	</td></tr></table></center>

*strings.23715:	Nuevo/Edición...

*strings.23716:	Recargar

*strings.23717:	Borrar

*strings.23718:	Cifrado triple DES compatible con FIPS 140-1 y SHA-1 MAC

*strings.23719:	Cifrado DES compatible con FIPS 140-1 y SHA-1 MAC

*strings.23727:	Modificar el módulo de seguridad

*strings.23728:	Crear un nuevo módulo de seguridad

*strings.23734:	Cifrado FORTEZZA con una clave de 80 bits y un SHA-1 MAC.

*strings.23735:	Autenticación FORTEZZA con una clave RC4 de 128 bits y un SHA-1 MAC.

*strings.23736:	Sin cifrado, con autenticación FORTEZZA y un SHA-1 MAC.

*strings.23742:	Introduzca la contraseña o el número de identificación para\n%s

*strings.23743:	%sec-banner-begin%%0%%sec-banner-end%No puede iniciar el %1% con un número secreto o contraseña de usuario. Para poder iniciar esta tarjeta, debe introducir la contraseña de seguridad del administrador %-cont-%

*strings.23744:	o del sitio. Si no la conoce, pulse <B>Cancelar</B> y entregue esta tarjeta al emisor para que la inicie.<p>Introduzca la contraseña de adminstración %-cont-%

*strings.23745:	para %2%:<input type=pasword name=ssopassword>.

*strings.23751:	%sec-banner-begin%%0%%sec-banner-end%La contraseña de administración introducida para %1% es incorrecta. Muchas tarjetas se desactivan si se introduce varias veces una contraseña incorrecta. %-cont-%

*strings.23752:	Si no conoce la contraseña, pulse <B>Cancelar</B> y entregue esta tarjeta al emisor para que la inicie.<p>Introduzca la contraseña de adminstración para %-cont-%

*strings.23753:	el %2%:<input type=pasword name=ssopassword>.

*strings.23754:	%sec-banner-begin%%0%%sec-banner-end%No se puede iniciar %1% debido al siguiente error:<p> %2%

*strings.23755:	Modificar valores predeterminados...

*strings.23756:	Iniciar sesión

*strings.23757:	Terminar sesión

*strings.23758:	%0%%1%%2%%3%%4%%5%

*strings.23759:	Información sobre seguridad

*strings.23760:	Definir contraseña...

*strings.23761:	Ni el canal ni la señal exigen un inicio de sesión.

*strings.23762:	Canal o señal ya conectados.

*strings.23763:	<p>Elija la tarjeta o base de datos en la que desee generar la clave:<SELECT name="tokenName">

*strings.23764:	La señal %s está protegida contra escritura; no pueden borrarse los certificados y claves.

*strings.23766:	No ha podido iniciarse el canal.

*strings.23767:	El usuario ha desactivado este canal a mano.

*strings.23768:	Pruebas de arranque fallidas para esta señal.

*strings.23769:	No existe una señal permanente.

*strings.23780:	Seguridad Java

*strings.23781:	Seguridad Java (eliminar privilegio)

*strings.23782:	Seguridad Java (modificar privilegios)

*strings.23783:	¿Desea eliminar todos los privilegios de los applets y scripts de <b>%0%</b>?

*strings.23784:	Autorizar applets y scripts de <b> %0% </b> a tener los siguientes accesos %-cont-%

*strings.23785:	<table><tr><td colspan=3>Siempre:</td></tr> <tr><td><select name=target multiple size=3> %1% </select></td> %-cont-%

*strings.23786:	<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%

*strings.23787:	<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>%-cont-%

*strings.23788:	<table><tr><td colspan=3>Sólo para esta sesión:</td></tr> <tr><td><select name=target multiple size=3> %2% </select></td> %-cont-%

*strings.23789:	<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%

*strings.23790:	<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>%-cont-%

*strings.23791:	<table><tr><td colspan=3>Never:</td></tr> <tr><td><select name=target multiple size=3> %3% </select></td> %-cont-%

*strings.23792:	<td></td><td> <input type="submit" name="button" value="%delete%"></input>%-cont-%

*strings.23793:	<input type="submit" name="button" value="%moreinfo%"></input></td></tr></table>

*strings.23804:	¿Desea eliminar los privilegios de <b>%0%</b> de todos los applets y scripts de <b>%1%</b>?

*strings.23805:	<b> %0% </b> es un acceso <b> %1% </b>.<br> <ul>Consta de:<br><select multiple size=6>%2% </select></ul>

*strings.23806:	<table BORDER=0><tr><td VALIGN=top><font SIZE=2><b>Pelgiro <SPACER TYPE=horizontal SIZE=7></B><br></td> %-cont-%

*strings.23807:	<td "100%%"><font SIZE=2>Un applet Java o un script JavaScript de <b>%0%</b> está solicitando un acceso anormal a su equipo o red. %-cont-%

*strings.23808:	No debe permitirle el acceso a menos que confíe en el proveedor o distribuidor.</td></tr><tr><td valign=top colspan=2><center> <input type="submit" name="button" value="%3%"></input> %-cont-%

*strings.23809:	</center><spacer type=vertical size=20></td></tr> <tr><td></td><td><font size=2>El acceso solicitado es a <b>%1%</b> y consta de:</td></tr> %-cont-%

*strings.23810:	<tr><td coldspan=2><center><table> <td><select multiple name=target size=4>%2%</select></td> <td><input type="submit" name="button" value="%moreinfo%"> </input></td></table></center></td></tr></table> %-cont-%

*strings.23811:	<br>¿Desea permitir el acceso solicitado? <br><spacer type=horizontal size=5><input type=radio name=perm value=sí> Sí, permitir el acceso a todos los applets y scripts de <b>%0%</b> durante esta sesión %-cont-%

*strings.23812:	<br><spacer type=horizontal size=5><input type=radio name=perm value=no checked> No, denegar el acceso (el applet o script no funcionará correctamente) %-cont-%

*strings.23813:	<br><input type=checkbox name=remember> Mantener esta decisión para todos los applets y scripts de  <b>%0%</b><br></td></table>

*strings.23824:	<table BORDER=0><tr><td VALIGN=top><font SIZE=2><b>Pelgiro <SPACER TYPE=horizontal SIZE=7></B><br></td> %-cont-%

*strings.23825:	<td "100%%"><font SIZE=2>Un applet Java o un script JavaScript del servidor *quot;<b>%0%</b>&QUOT; está solicitando un acceso anormal a su equipo o red. %-cont-%

*strings.23826:	No está <b>firmado digitalmente</b>. Tenga en cuenta que puede haber sido falsificado y causar daños a su equipo. </td></tr> <tr><td></td><td><font size=2>El acceso solicitado es <b>%1%</b> y consta de:</td></tr> %-cont-%

*strings.23827:	<tr><td coldspan=2><center><table> <td><select multiple name=target size=4>%2%</select></td> <td><input type="submit" name="button" value="%moreinfo%"> </input></td></table></center></td></tr></table> %-cont-%

*strings.23828:	<br>¿Desea permitir el acceso solicitado? <br><spacer type=horizontal size=5><input type=radio name=perm value=sí> Sí, permitir el acceso a todos los applets y scripts de "<b>%0%</b>" durante esta sesión %-cont-%

*strings.23829:	<br><spacer type=horizontal size=5><input type=radio name=perm value=no checked> No, denegar el acceso (el applet o script no funcionará correctamente) %-cont-%

*strings.23830:	<br><input type=checkbox name=remember> Mantener esta decisión para todos los applets y scripts del servidor "<b>%0%</b>"<br></td></table>

*strings.23841:	<b>Nombre del módulo de seguridad:</b> <input name="name"><br><b>Archivo de módulo de seguridad:</b> <input name="library"><br>

*strings.23842:	Debe especificar una biblioteca PKCS #11 versión 2.0 para cargar\n

*strings.23843:	<b>Descripción del canal:</b> %0%<br><b>Fabricante:</b> %1%<br><b>Número de la versión:</b> %2%<br><b>Versión firmware:</b> %3%<br>%-cont-%

*strings.23844:	%4%<b>Nombre de la señal:</b> %5%<br><b>Fabricante de la señal:</b>%6%<br><b>Modelo de señal:</b> %7%<br><b>Número de serie de la señal:</b>%8%<br>%-cont-%

*strings.23845:	<b>Versión de la señal:</b> %9%<br><b>Versión firmware de la señal:</b> %10%<br><b>Tipo de inicio de sesión:</b> %11%<br><b>Estado:</b>%12%%13%%14%

*strings.23846:	Información sobre Señal/Canal

*strings.23847:	Inicio de sesión necesario

*strings.23848:	Público (inicio de sesión no necesario)

*strings.23849:	Listo

*strings.23850:	<font color=red>No conectado</font>

*strings.23851:	<font color=red>No iniciado</font>

*strings.23852:	<font color=red>No existente</font>

*strings.23853:	<font color=red>Desactivado(

*strings.23854:	)</font>

*strings.23860:	Iniciar señal

*strings.23861:	Cambiar Contraseña 

*strings.23862:	Establecer Contraseña  

*strings.23863:	No Contraseña   

*strings.23864:	%sec-banner-begin%%0%%sec-banner-end%Está recibiendo el certificado de correo electrónico de otro usuario. Después de aceptarlo podrá enviar mensajes electrónicos cifrados a ese usuario. %-cont-%

*strings.23865:	Pulse el botón Más información para ver detalles del certificado de correo electrónico. %-cont-%

*strings.23866:	<hr><table cellspacing=0 cellpadding=0><tr><td valign=top><table cellspacing=0 cellpadding=0><tr><td><font size=2>Certificado para:%-cont-%

*strings.23867:	</font></td><td><font size=2>%1%</font></td></tr><tr><td><font size=2>Dirección electrónica:</font></td><td><font size=2>%2%</font></td></tr><tr><td>%-cont-%

*strings.23868:	<font size=2>Certificado por:</font></td><td><font size=2>%3%</font></td></tr></table></td><td valign=center align=right><input type="submit" name="button" value="%moreinfo%"></td></tr></table><hr>

*strings.23874:	Recibir un certificado de correo electrónico

*strings.23875:	Aceptar esta Autoridad certificadora para la certificación de sitios de red.

*strings.23876:	Aceptar esta Autoridad certificadora para la certificación de usuarios de correo electrónico.

*strings.23877:	Aceptar esta Autoridad certificadora para la certificación de programadores.

*strings.23878:	%0%<p>%1%

*strings.23879:	Seleccionar un certificado

*strings.23880:	Seleccione el certificado que desee modificar:<p>

*strings.23881:	Seleccione el certificado que desee borrar:<p>

*strings.23882:	Seleccione el certificado que desee ver:<p>

*strings.23883:	Seleccione el certificado que desee verificar:<p>

*strings.23884:	Borrar un certificado de correo electrónico

*strings.23885:	¿Desea borrar este certificado de correo electrónico?<p>%0%

*strings.23886:	<input type=checkbox name=useformail value=sí %s> Convertir este certificado en predeterminado para correo cifrado y firmado

*strings.23937:	Netscape Communications Corp    

*strings.23938:	Serv Cript internos de Mozilla

*strings.23939:	Serv Crip general de Mozilla

*strings.23940:	Communicator Certificate DB     

*strings.23946:	Communicator Internal Cryptographic Services Version 4.0        

*strings.23947:	Communicator User Private Key and Certificate Services          

*strings.23953:	Netscape Internal FIPS-140-1 Cryptographic Services             

*strings.23954:	Netscape FIPS-140-1 User Private Key Services                   

*strings.23955:	Ha fallado la verificación del certificado seleccionado por estos motivos:<p>%0%

*strings.23956:	Verificar un certificado

*strings.23962:	El certificado se verificado correctamente.

*strings.23963:	Certificado caducado.

*strings.23964:	No certificado para %s

*strings.23965:	Certificado no fiable

*strings.23966:	No se encuentra la Autoridad certificadora

*strings.23967:	Firma de certificado no válida.

*strings.23968:	La lista de revocación de certificados no es válida

*strings.23969:	El certificado ha sido revocado

*strings.23970:	No es una Autoridad certificadora válida

*strings.23971:	Error interno

*strings.23972:	Señalización digital

*strings.23973:	Cifrado

*strings.23974:	Firma de certificados

*strings.23975:	Uso desconocido

*strings.23976:	Certificación por correo electrónico

*strings.23977:	Certificación de sitios de Internet

*strings.23978:	Certificación de programador

*strings.23979:	Correo electrónico

*strings.23980:	Sitio interno

*strings.23981:	Programador

*strings.23987:	%0%

*strings.23988:	Esto reemplazará el módulo interno de Mozilla con el módulo criptográfico Netscape FIPS-140-1.\n\nEl módulo criptográfico FIPS-140-1 limita las 

*strings.23989:	seguridad a las aprobadas por las normas internales del Gobierno estadounidense.\n\n¿Desea borrar el módulo interno de todos modos?

*strings.23995:	Esto reemplazará el módulo criptográfico Netscape FIPS-140-1 con el módulo interno de Mozilla.\n\nEsto significa que Mozilla ya no soportará FIPS-140-1 (funciones de 

*strings.23996:	seguridad aprobadas por las normas internas del Gobierno estadounidense).\n\n¿Desea borrar el módulo FIPS-140 de todos modos?

*strings.23997:	Buscar

*strings.23998:	Buscar certificados en el Directorio

*strings.24004:	<div align=right><input type="button" name="button" value="%fetch%" onclick="parent.clicker(this,window.parent)" width=80>&nbsp;&nbsp;<input type="button" name="button" value="%cancel%" onclick="parent.clicker(this,window.parent)" width=80

*strings.24005:	Mozilla buscará en los directorios de la red los certificados de seguridad utilizados para enviar mensajes electrónicos cifrados a otras personas.<p>Escriba las direcciones electrónicas %-cont-%

*strings.24006:	exactas de la gente que desee buscar y pulse Buscar. <table border=0 cellspacing=0 cellpadding=5><tr><td><b>Directorio:</b></td><td><select name=dirmenu>%0%%-cont-%

*strings.24007:	</select></td></tr>%-cont-%

*strings.24008:	<tr><td><b>Direcciones electrónicas:</b></td><td><input type=text name=searchfor size=50></td></tr></table>

*strings.24014:	Todos los directorios

*strings.24015:	Resultados de la búsqueda

*strings.24016:	Pulse <b>%ok%</b> para guardar los certificados encontrados, o <b>%cancel%</b> para rechazarlos.<p>Se encontraron en el Directorio los certificados de los siguientes usuarios de correo:<br> %0%<p>%1%%2%

*strings.24017:	No se encontraron en el directorio los certificados de los siguientes usuarios de correo electrónico:<br>

*strings.24018:	Enviar el certificado propio de correo al directorio

*strings.24019:	Elija el directorio al que desee enviar el certificado:<p><select name=dirmenu>%0%</select><br>%-cont-%

*strings.24020:	Mozilla enviará el certificado de seguridad al directorio de la red para que otros usuarios puedan encontrarlo y enviarle mensajes cifrados.

*strings.24021:	%0%%1%%2%%3%%4%

*strings.24022:	Mozilla buscará en el directorio los certificados de seguridad necesarios para enviar este mensaje cifrado. %-cont-%

*strings.24023:	<input type=hidden name=searchfor value="%0%"><table border=0 cellspacing=0 cellpadding=5><tr><td><b>Elija un directorio:</b></td><td><select name=dirmenu>%1%%-cont-%

*strings.24024:	</select></td></tr><tr><td valign=top><b>Buscando:</b></td><td>%2%</td></tr></table>

*strings.24075:	Enviando al Directorio

*strings.24076:	Buscando en el Directorio

*strings.24077:	Introduzca la contraseña de Directorio

*strings.24078:	Se ha producido un error durante la comunicación con el Directorio

*strings.24079:	%sec-banner-begin%%0%%sec-banner-end%Mozilla va a crear la clave pública. Se utilizará con el certificado que está solicitando para identificarle en sitios Web %-cont-%

*strings.24080:	y a traves de correo electrónico.  Su clave privada nunca abandona su ordenador, y si usted elije, será protegida con una contraseña de Mozilla.<P>%-cont-%

*strings.24081:	Las contraseñas son especialmente importantes cuando se trabaja con un equipo que utilizan varias personas, tanto físicamente como desde la red. %-cont-%

*strings.24082:	No dé su contraseña a otras personas porque les permitiría usar su certificado y suplantarle.<P>%-cont-%

*strings.24083:	Mozilla utiliza una compleja operación matemática para generar la clave privada. Puede demorarse varios minutos en completarla. Si interrumpe %-cont-%

*strings.24084:	Mozilla durante el proceso, no creará la clave y tendrá que volver a pedir el certificado.

*strings.24090:	%sec-banner-begin%%0%%sec-banner-end%Las contraseñas son especialmente importantes cuando se trabaja con un equipo que utilizan varias personas, tanto físicamente como desde la red. %-cont-%

*strings.24091:	No dé su contraseña a otras personas porque les permitiría usar su certificado y suplantarle.<P>Las contraseñas más seguras son las que tienen %-cont-%

*strings.24092:	8 caracteres, combinan letras y números, y no contienen palabras del diccionario.

*strings.24098:	Seleccionar una tarjeta o una base de datos

*strings.24099:	Seleccionar la tarjeta o base de datos a la que quiere importar certificados: <BR> <SELECT NAME="tokenName" SIZE=10>%0%</SELECT>

*strings.24100:	La autoridad de certificado FORTEZZA es inválida

*strings.24101:	EL certificado no tiene una clave pública reconocida

*strings.24102:	Guardar este archivo encriptado [aceptar] o no encriptado [cancelar]

*strings.24103:	Continuos intentos de acceso fallidos pueden desactivar esta tarjeta o base de datos. La contraseña es incorrecta. ¿Intentarlo de nuevo?\n    %s\n

*strings.24104:	Se ha encontrado la Lista de Claves Válidas para el certificado.\nDebe cargar la Lista de Claves Válidas antes de continuar.

*strings.24105:	La Lista de Claves Válidas para este certificado ha caducado.\nRecargue una nueva Lista de Claves Válidas.

*strings.24106:	La Lista de Claves Válidas para este certificado tiene una firma incorrecta.\nRecargue una nueva Lista de Claves Válidas.

*strings.24107:	La clave para el certificado ha sido revocada.

*strings.24108:	La Lista de Claves Válidas tiene un formato incorrecto.

*strings.24109:	Mozilla es incapaz de comunicar de forma segura con este lugar\nporque el dominio al que intenta conectar\nno coincide con el nombre de dominio en el certificado del servidor.

*strings.24160:	Firma Digital

*strings.24161:	El servidor '%0%' requiere que firme el siguiente mensaje:<br><pre><dl><dd><tt>%1%</dl></tt></pre><br><b>Si acuerda firmar este mensaje, pulse %ok%, de otro modo pulse %cancel%.</b>

*strings.24200:	El servidor '%0%' requiere que firme el siguiente mensaje:<br><pre><dl><dd><tt>%1%</dl></tt></pre><br>Por favor, seleccione un certificado %-cont-%

*strings.24201:	para usar al firmar:<br><SELECT NAME=certname>%2%</SELECT><br><b>Si acuerda firmar este mensaje, pulse %ok%, de otro modo pulse %cancel%.</b>

*strings.24202:	Ver/Editar certificado personal

*strings.24203:	%0%<hr><div><b>Este certificado de correo del usuario no tiene un emisor confiable.</b> <br>Puedes decidir confiar directamente este certificadopara permitir el %-cont-%

*strings.24204:	intercambio de correo cifrado y firmado con este usuario.

*strings.24205:	Para estar seguro, antes de confiar en este certificado, debería ponerse en contacto con el usuario y verificar que la huella del certificado %-cont-%

*strings.24206:	listada arriba es la misma que él o ella tiene. <p><input type=radio name=dirtrust value=no %1%>No confíe en este certificado.<br> %-cont-%

*strings.24207:	<input type=radio name=dirtrust value=yes %2%>Confiar este certificado incluso aunque no tenga un emisor confiable.</div>

*strings.24213:	<font face="Impress BT, Verdana, Arial, Helvetica, sans-serif" point-size=16>

*strings.24214:	<STYLE TYPE="text/css"> DIV { FONT-FAMILY: "Prima Sans BT", Verdana, Arial, Helvetica, Lucida; FONT-SIZE: 10pt;} TD { FONT-FAMILY: "PrimaSans BT", Verdana, Arial, Helvetica, Lucida; %-cont-%

*strings.24215:	FONT-SIZE: 10pt;} BODY { FONT-FAMILY: "Prima Sans BT", Verdana, Arial, Helvetica, Lucida; FONT-SIZE: 10 pt;} %-cont-%

*strings.24216:	H1, H2, H3 { font-weight: 700;} H1 { FONT-SIZE: 16PT; } H2 {FONT-SIZE: 14PT;} </STYLE>

*strings.24500:	

*strings.24501:	Ver

*strings.24502:	Modificar

*strings.24503:	Verificar

*strings.24504:	Borrar

*strings.24505:	Exportar

*strings.24506:	Borrar los caducados

*strings.24507:	Borrar

*strings.24508:	Obtener un certificado...

*strings.24509:	Obtener certificados...

*strings.24510:	Importar un certificado...

*strings.24511:	Mostrar certificado

*strings.24512:	Modificar privilegios

*strings.24513:	Ver/Edición

*strings.24514:	Añadir

*strings.24515:	Terminar todas las sesiones

*strings.24516:	Aceptar

*strings.24517:	Cancelar

*strings.24518:	Ayuda

*strings.24519:	Buscar en Directorio

*strings.24520:	Enviar el certificado al directorio

*strings.24521:	Abrir la información  de la página

*strings.24522:	Información sobre seguridad

*strings.24523:	Contraseñas

*strings.24524:	Navegador

*strings.24525:	Correo

*strings.24526:	Java/JavaScript

*strings.24527:	Certificados

*strings.24528:	Propios

*strings.24529:	Ajenos

*strings.24530:	Sitios web

*strings.24531:	Programadores

*strings.24532:	Firmantes

*strings.24533:	Módulos criptográficos

*strings.24534:	Información sobre seguridad

*strings.24535:	Contraseñas

*strings.24536:	Navegador

*strings.24537:	Correo

*strings.24538:	Java/JavaScript

*strings.24539:	Certificados

*strings.24540:	Sus certificados

*strings.24541:	Certificados ajenos

*strings.24542:	Certificados de sitios web

*strings.24543:	Certificados de programadores

*strings.24544:	Certificados de firmantes de certificados

*strings.24545:	Módulos criptográficos

*strings.24546:	Entrando en un sitio cifrado

*strings.24547:	Saliendo de un sitio cifrado

*strings.24548:	Ver una página con una combinación de información cifrada y descifrada.

*strings.24549:	Enviando información no cifrada al sitio.

*strings.24550:	<B>Certificado para identificarle ante un sitio:</B>

*strings.24551:	Preguntar siempre

*strings.24552:	Seleccionar automáticamente

*strings.24553:	<B>Configuración de seguridad avanzada:</B>

*strings.24554:	Activar SSL (Capa de zócalos seguros) v2

*strings.24555:	Configurar SSL v2

*strings.24556:	Activar SSL (Capa de zócalos seguros) v3

*strings.24557:	Configurar SSL v3

*strings.24558:	<B>Certificado para sus mensajes cifrados y firmados:</B>

*strings.24559:	<B>(No tiene certificados de correo electrónico.)</B>

*strings.24560:	Seleccionar cifrados S/MIME

*strings.24561:	Cambiar contraseña

*strings.24562:	Definir contraseña

*strings.24563:	<B>Mozilla pedirá esta contraseña:</B>

*strings.24564:	La primera vez que se necesite el certificado

*strings.24565:	Cada vez que se necesite el certificado

*strings.24566:	Después de

*strings.24567:	minutos de inactividad

*strings.24568:	Cifrando el mensaje

*strings.24569:	Firmando el mensaje

*strings.24570:	Mensaje cifrado

*strings.24571:	Mensaje firmado

*strings.24572:	Este mensaje <B>puede cifrarse</B> para enviarlo.

*strings.24573:	Enviar un mensaje cifrado es como enviar una carta en lugar de una tarjeta postal; evita que los extraños puedan leerla.

*strings.24.75:	Cifrar este mensaje.

*strings.24575:	Enviar un mensaje cifrado es como enviar una carta en lugar de una tarjeta postal; evita que los extraños puedan leerla.

*strings.24576:	Debe elegir un destinatario como mínimo para este mensaje.

*strings.24577:	Este mensaje <B>no puede cifrarse</B> durante el envío porque

*strings.24578:	no tiene certificado de seguridad.

*strings.24579:	tiene un certificado de seguridad caducado.

*strings.24580:	tiene un certificado de seguridad revocado.

*strings.24581:	no tiene certificado de seguridad en el alias.

*strings.24582:	es un grupo de debate.

*strings.24583:	tiene un certificado de seguridad no válido.

*strings.24584:	tiene un certificado de seguridad marcado como No fiable.

*strings.24585:	tiene un emisor de certificado de seguridad marcado como No fiable.

*strings.24586:	tiene un emisor de certificado de seguridad desconocido.

*strings.24587:	se ha producido un error de certificado desconocido.

*strings.24588:	Para obtener certificados de seguridad válidos desde un servidor de directorios, pulse <I>Obtener  certificados.</I> En caso contrario, el destinatario debe primero obtener un certificado para él mismo y entonces 

*strings.24589:	a usted en un mensaje electrónico firmado. Este certificado de seguridad será recordado automáticamente una vez recibido. <P>Los grupos de debate no pueden recibir mensajes cifrados.

*strings.24590:	Este mensaje <B>puede firmarse</B> para enviarlo.

*strings.24591:	Este mensaje <B>no puede firmarse</B> para enviarlo.

*strings.24592:	Esto es debido a que usted no tiene un certificado de seguridad válido. Cuando incluya su certificado de seguridad en un mensaje, su 

*strings.24593:	firma digital se incluye también en dicho mensaje. De este modo, se puede verificar que el mensaje fue enviado realmente por usted.

*strings.24594:	Cuando se firma digitalmente un mensaje, también se incluye el certificado de seguridad. De este modo, puede verificar que el mensaje fue enviado realmente por usted.

*strings.24595:	En algunos lugares, la firma digital es considerada legalmente válida, como la firma manuscrita.

*strings.24596:	Incluir mi Certificado de Seguridad en este mensaje y usar una firma digital para firmar este mensaje 

*strings.24597:	Este mensaje <B>estaba cifrado</B> cuando se envió. <P>Eso significa que era improbable que nadie pudiera ver su contenido durante la transmisión.

*strings.24598:	Este mensaje <B>no estaba cifrado</B> cuando se envió. <P>Eso significa que otras personas pueden llegar a ver su contenido durante su transmisión.

*strings.24599:	No puede leer este mensaje porque no tiene el certificado de seguridad necesario para descifrarlo. Esto podría deberse a que su 

*strings.24600:	certificado de seguridad está en otro equipo o porque el mensaje fue cifrado con el certificado de seguridad de otra persona.

*strings.24601:	El algoritmo usado fue 

*strings.24602:	Este mensaje <B>fue firmado digitalmente</B> por 

*strings.24603:	Este mensaje incluía el Certificado de Seguridad para 

*strings.24604:	en 

*strings.24605:	, y fue firmado en 

*strings.24606:	Para ver el certificado, pulse el botón ``Ver/Editar''. <P>Este certificado ha sido automáticamente añadido a su lista de 

*strings.24607:	certificados ajenos para que pueda enviar mensajes seguros a esta persona.

*strings.24608:	Este mensaje <B>no fue firmado digitalmente</B>. <P>Es imposible comprobar si el mensaje procede realmente de ese remitente.

*strings.24609:	<B>El certificado empleado para firmar digitalmente este mensaje es incorrecto</B>.<P>Es imposible comprobar si el mensaje procede realmente de ese remitente.

*strings.24610:	<B>Este mensaje no se puede descifrar.</B> 

*strings.24611:	El error era: 

*strings.24612:	¡Atención! Parece ser que este mensaje ha sido alterado durante el tiempo entre que el remitente se lo envió y que usted lo recibió. Todo o parte del 

*strings.24613:	contenido de este mensaje ha sido cambiado. Debe consultar al remitente o al administrador del sistema.

*strings.24614:	Parece que este mensaje fue enviado desde la dirección electrónica <TT><B>

*strings.24615:	</B></TT>, pero el certificado empleado para firmarlo pertenece a la dirección electrónica <TT><B>

*strings.24616:	</B></TT>. Si estas dos direcciones no pertenecen a la misma persona, podría tratarse de una falsificación.

*strings.24617:	Seguridad en las noticias de Usenet

*strings.24618:	La conexión a este servidor de noticias <B>está cifrada</B>. Esto significa que los mensajes que lee están cifrados cuando 

*strings.24619:	le son enviados. Esto hace difícil para otras personas leer los mensajes mientras usted los lee. 

*strings.24620:	La conexión con este servidor de noticias <B>no es cifrada</B>. Eso significa que otras personas pueden leer los mensajes al mismo tiempo que usted.

*strings.24621:	Cifrado

*strings.24622:	Verificación

*strings.24623:	Esta página <B>no ha sido encriptada</B>. Esto significa que es posible que otras personas puedan ver dicha página mientras se cargaba. También

*strings.24624:	significa que no puede verificar la identidad del sitio web. Si desea ver más información sobre todos los archivos de esta página, haga clic en <B>Abrir información de la página</B>.

*strings.24625:	Esta página <B>estaba cifrada</B>. Eso significa que era difícil que otras personas pudieran verla mientras la cargaba. También

*strings.24626:	Puede examinar su copia del certificado de esta página y comprobar la identidad del sitio.

*strings.24627:	de este sitio web, haga clic en <B>Ver certificado</B>. Si desea ver más información sobre todos los archivos de esta página y sus certificados, haga clic en <B>Abrir información sobre la página</B>.

*strings.24628:	Esta página <B>no ha sido encriptada</B>, pero algunos de los archivos que contiene sí fueron encriptados. Esto significa que era dificil para 

*strings.24629:	otras personas el ver los archivos encriptados cuando se cargó la página. También significa que no puede verificar la 

*strings.24630:	identidad del sitio web de esta página.<P>Si desea más información sobre todos los archivos de esta página, haga clic en <B>Abrir información de la página</B>.

*strings.24631:	Esta página  <B>estaba cifrada</B>. Esto significa que era difícil para otras personas ver esta página cuanfo fue cargada. Puede 

*strings.24632:	examinar su copia del certificado para esta página y la identidad del servidor web. Para ver el certificado para 

*strings.24633:	este servidor web, haga click en <B>Ver Certificado</B>.<P>Sin embargo, algunos de los archivos de esta página <B>no estaban cifrados</B>.

*strings.24634:	Esto significa que es posible que otras personas vean esos archivos mientras se cargaban.

*strings.24635:	Para ver todos los detalles sobre los archivos de esta página y sus certificados, haga clic en <B>Abrir información de la página</B>.

*strings.24636:	Ver el certificado de la página

*strings.24637:	Asegúrese de que éste el servidor que cree que es. Esta página procede del servidor: 

*strings.24638:	Los siguientes elementos han desaparecido de esta ventana: 

*strings.24639:	. Esto significa que puede estar perdiéndose alguna información importante.

*strings.24640:	la barra de menús

*strings.24641:	la barra de herramientas

*strings.24642:	la barra Personal

*strings.24643:	la barra Dirección

*strings.24644:	la barra de estado

*strings.24645:	Esta ventana la creó la Aplicación Java (de 

*strings.24646:	). Este programa tiene cierto control sobre la ventana y puede influir en lo que se vea en ella.

*strings.24647:	Esta ventana la creó una aplicación JavaScript (de 

*strings.24648:	). Este programa tiene cierto control sobre la ventana y puede influir en lo que se vea en ella.

*strings.24649:	<B><H2>No hay información sobre seguridad de esta ventana disponible.</H2></B>

*strings.24650:	Información sobre Seguridad está disponible para las ventanas del Navegador, de Mensaje de correo y de Mensaje de debate. 

*strings.24651:	<P>Si desea cambiar la configuración o las preferencias de seguridad, utilice las fichas de la izquierda para cambiar de una zona a otra.

*strings.24652:	Esta es una explicación de los Certificados de Seguridad.<P> <B>Certificado:</B> Un archivo que identifica a una persona u organización. Mozilla usa certificados para 

*strings.24653:	cifrar información. Puede usar un certificado para comprobar la identidad del poseedor del certificado. Debería confiar en un certificado sólo si confia en la persona u organización que lo emitió. 

*strings.24654:	<P>Sus propios certificados le permiten recivir información cifrada. Mozilla también sigue la pista de los certificados de otras personas, servidores web, applets, y scripts. 

*strings.24655:	<P><UL><B>Propios</B> lista sus propios certificados. <P><B>Gente</B> lista certificados de otras personas u organizaciones. 

*strings.24656:	<P><B>Servidores Web</B> lista certificados de servidores web. <P><B>Firmadores</B> lista certificados de firmadores de certificados (``Autoridades de Certificado''.) 

*strings.24657:	<P><B>Programadores</B> enumera los certificados que acompañan a los applets Java y scripts JavaScript.</UL>

*strings.24658:	Puede usar cualquiera de estos certificados para identificarse a sí mismo frente a otras personas o servidores web. Mozilla usa sus certificados 

*strings.24659:	para descifrar información enviada a usted. Los certificados van firmados por la empresa emisora. <P><B>Estos son los suyos:</B>

*strings.24660:	Debería hacer una copia de sus certificados y dejarlos en un lugar seguro. Si alguna vez pierde sus certificados, será incapaz de

*strings.24661:	leer correo cifrado recibido y tendrá problemas para identificarse en servidores web.

*strings.24662:	Otras personas han usado estos certificados para identificarse a sí mismos frente a usted. Mozilla puede enviar mensajes cifrados 

*strings.24663:	a cualquier persona de que tenga un certificado.<P><B>Estos son los certificados de otras personas:</B>

*strings.24664:	Para obtener certificados de un Directorio de red, pulse <I>Buscar en Directorio</I>.<p>

*strings.24665:	<B>Estos son los certificados de sitios web que ha aceptado:</B>

*strings.24666:	<B>Estos certificados identifican a los firmantes que acepte:</B>

*strings.24667:	<B>Esta configuración le permite controlar los niveles de seguridad de Mozilla</B>. <P>Las advertencias de seguridad de Mozilla le permiten saber si algo es inseguro antes de hacerlo. <P><B>Mostrar una advertencia antes de:

*strings.24668:	<B>Esta configuración le permite controlar los valores de seguridad del correo</B>. <P> Las advertencias de seguridad le permiten saber si algo es inseguro antes de hacerlo.

*strings.24669:	<B>Enviando correo firmado/cifrado:</B>

*strings.24670:	Cifrar mensajes electrónicos cuando sea posible

*strings.24671:	Firmar mensajes electrónicos cuando sea posible

*strings.24672:	Firmar mensajes de debates (noticias) cuando sea posible

*strings.24673:	Este certificado se incluye con todos los mensajes electrónicos que <B>firme</B> . Cuando otras personas lo reciban, podrán enviarle, a su vez, mensajes cifrados.

*strings.24.75:	Otras personas pueden conseguir su certificado del Directorio.

*strings.24675:	Si tuviese uno, este certificado se incluiría en cada mensaje de correo que usted <B>firmase</B>. Cuando otras personas lo recivan, 

*strings.24676:	podr&aacute;n enviarle mensajes cifrados (para conseguir un certificado, consulte la ficha &quot;Propios&quot; de la izquierda).

*strings.24677:	<B>Configuración avanzada S/MIME:</B>

*strings.24678:	Preferencias de Cifrado: 

*strings.24679:	<B>Estas preferencias le permiten controlar el acceso por medio de applets Java y scripts JavaScript.</B> <P>No se permite a ningún applet o script acceder a su computadora o red sin 

*strings.24680:	su permiso.Usted ha permitido o prohibido el accesso a cualquier applet o script proveniente de cualquiera de los siguienes distribudores, vendedores o sitios web.

*strings.24681:	<B>Su contraseña de Mozilla se usará para proteger sus certificados.</B> <P>Si está en un entorno donde otros 

*strings.24682:	tengan acceso a su ordenador (bien físicamente o a través de la red) usted debería tener una contraseña para Mozilla. <P>

*strings.24683:	<B>Modulos criptográficos:</B>

*strings.24684:	Ver/Editar CRLs

*strings.24685:	Para ver o editar las listas de revocación de certificados, pulse  <I>Ver/Editar CRLs</I>.<p>

*strings.24686:	Para comprobar el Certificado o editar Información sobre la Confiabilidad del Certificado, pulse el botón ``Ver/Editar'' button. <P>Este Certificado se ha añadido automáticamente a su lista de 

*strings.24687:	<B>Certificado a usar para la autentificación del proxy (alterno):</B>

*strings.24688:	No autentificación del proxy

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

*strings.25500:	Cifrado FORTEZZA SKIPJACK con una clave de 80-bit

*strings.25511:	<b>Nombre del módulo de seguridad:</b> %0%<input type="%1%" name="name" value=%2%><br><b>Archivo del  módulo de seguridad:</b> %3%<input type="%4%"name="library" value=%5%><br>%-cont-%

*strings.25512:	<b>Fabricante:</b> %6%<br><b>Descripción:</b>%8%<br><b>PKCS #11 Version:</b> %7%<br><b>Versión de la Librería: </b> %9%<br><center><table><tr>%-cont-%

*strings.25513:	<td width=10></td><td align=top><select name=slots size=10 onChange="setpass(this)">%10%</select></td><td valign=top><table border=0 cellspacing=0 cellpadding=0><td width=10></td>%-cont-%

*strings.25514:	<td height=30 valign=top align=center> <input type="submit" name="button" value="%moreinfo%"width=174></input></td></tr>%-cont-%

*strings.25515:	<tr><td width=10></td><td height=30 valign=middle align=center><input type="submit" name="button" value="%config%"width=174></input></td></tr>%-cont-%

*strings.25516:	<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="%login%"width=174></input></td></tr>%-cont-%

*strings.25517:	<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="%logout%"width=174></input></td></tr>%-cont-%

*strings.25518:	<tr><td width=10></td><td height=30 valign=middle align=center> <input type="submit" name="button" value="Cambiar contraseña"width=174></input></td></tr></table>%-cont-%

*strings.25519:	</td></tr></table></center><script>var login_status = %11%function setpass(select){%-cont-%

*strings.25520:	for(var i=0;i<select.options.length;i++) {   if (select.options[i].selected) {    document.forms[0].elements[9].value = login_status[i];    return;   } }%-cont-%

*strings.25521:	document.forms[0].elements[9].value = "No se ha elegido el testigo"; }\nfunction initarray() {  var numargs = initarray.arguments.length;  var a; a = new Array(numargs); %-cont-%

*strings.25522:	for ( var i = 0; i < numargs; i++ ) {    a[i] = initarray.arguments[i];  } return a; }</script>

*strings.25531:	Configurar

*strings.25542:	<P><B>Nombre del módulo:</B> %0% <BR><B>Descripción del slot:</B> %1% <BR><B>Nombre del testigo: </B> %2% <BR><B>Datos: </B>%3%<P><HR> %-cont-%

*strings.25543:	<P> <DT><INPUT TYPE=Radio %4% NAME="enabledisable" VALUE="disable"> <B> Desactivar testigo. </B> %-cont-%

*strings.25544:	<FORM><P> <DL> <DT><INPUT TYPE=Radio %5% NAME="enabledisable" VALUE="enable"> <B>Activar este testigo y las siguientes funciones : </B> %6% </FORM>

*strings.25555:	<P><B>Nombre del módulo:</B> %0% <BR><B>Descripción del slot:</B> %1% <BR><B>Nombre del testigo: </B> %2% <P><HR> %-cont-%

*strings.25556:	<FORM> <P> <FONT COLOR="FF0000" SIZE=+1> %3%<BR>%4%<BR>%5% </FONT></FORM>

*strings.25557:	Hueco de Configuración

*strings.25568:	Nombre de Módulo: 

*strings.25569:	Archivo: 

*strings.25570:	Cifrado RSA PKCS

*strings.25571:	Módulo de seguridad externo borrado con éxito

*strings.25572:	Módulo de seguridad interno borrado con éxito

*strings.25573:	Se ha instalado un nuevo módulo de seguridad

*strings.25574:	¿Está usted seguro de que quiere instalar este módulo de seguridad?

*strings.25575:	¿Está usted seguro de que quiere borar este módulo de seguridad?

*strings.25576:	Escriba un alias para el certificado:

*strings.25587:	Ver/Editar CRLs

*strings.25588:	<h3 align=center>%0%</h3><b>URL:</b>%1%<br><b>Última actualización:</b>%2%<br><b>Siguiente actualización:</b>%3% %4%<br><b>Firmado por:</b><ul>%5%</ul><br><center><select name=bogus size=8>%6%</select></center>

*strings.25589:	Escriba la URL de la nueva CRL/CKL a cargar:

*strings.25590:	<h3 align=center>%0%</h3>Escriba la URL de la Lista de Revocación de Certificado.<br><br><b>URL:</b><input name=url size=70 type=text value="%1%">

*strings.25591:	No se seleccionó ninguna CRL. Por favor, seleccione una CRL de la lista.

*strings.25592:	La CRL selecionada no tiene una URL válida desde la que cargarse.\nUse 'Nuevo/Editar...' para establecer la URL.

*strings.25593:	<font color=red>Expirado</font>

*strings.25594:	No escribió una URL: No se ha cargado ninguna nueva CRL.

*strings.25595:	Editar CRL

*strings.25596:	CRL

*strings.25597:	<font color=red>Aún no válida</font>

*strings.-5288:	Mozilla no se puede comunicar de manera segura con este sitio\nporque el servidor no respalda el cifrado de alto grado.

*strings.-5287:	Imposible comunicar de manera segura con este sitio\nporque el servidor requiere el uso de cifrado de alto grado.\n\nEsta versión de Mozilla no soporta el cifrado de alto grado,\nquizás debido a restricciones de exportaciones de EE.UU.

*strings.-5286:	Mozilla y este servidor no se pueden comunicar de manera segura\nporque no tienen algoritmos de cifrado comunes.

*strings.-5285:	Mozilla no encuentra el certificado o clave necesaria\npara la autenticación.

*strings.-5284:	Mozilla no se puede comunicar de manera segura con este sitio\nporque el certificado del servidor fue rechazado.

*strings.-5282:	El servidor encontró datos del cliente incorrectos.

*strings.-5281:	Mozilla encontró datos del servidor incorrectos.

*strings.-5280:	Mozilla encontró un tipo de certificado que no se respalda.\n\nUna versión más reciente de Mozilla puede resolver este problema.

*strings.-5279:	El servidor está utilizando una versión no respaldada del\nprotocolo de seguridad.\n\nUna versión más reciente de Mozilla puede resolver este problema.

*strings.-5277:	Falló la autenticación del cliente porque la clave privada\nde la base de datos de claves del cliente no coincide con la clave \npública de la base de datos de certificados del cliente.

*strings.-5276:	Mozilla es incapaz de comunicar de forma segura con este lugar\nporque el dominio al que intenta conectar\nno coincide con el nombre de dominio en el certificado del servidor.

*strings.-5274:	Este servidor sólo soporta SSL versión 2.  Puede activar el\nsoporte para SSL versión 2 al seleccionar Información de Seguridad del\nmenú de Mozilla y abrir la sección Navegador.

*strings.-5273:	SSL ha recibido un registro con un Código de autenticación de\nmensaje incorrecto. Esto puede indicar un error de la red,\nuna realización del servidor incorrecta o una transgresión de la seguridad.

*strings.-5272:	SSL ha recibido un error del servidor que indica un\nCódigo de autenticación de mensaje incorrecto. Esto puede indicar\nun error de la red, una realización del servidor incorrecta o \nuna transgresión de la seguridad.

*strings.-5271:	El servidor no puede verificar el certificado.

*strings.-5270:	El servidor ha rechazado el certificado como anulado.

*strings.-5269:	El servidor ha rechazado el certificado como caducado.

*strings.-5268:	No se puede conectar con un sitio web cifrado porque está desactivado\nel SSL. Puede activar el SSL eligiendo Información sobre seguridad\nen el menú Ventana y después, Mozilla.

*strings.-5267:	El servidor es otro dominio FORTEZZA,\nno puede conectarse a él.

*strings.7032:	Tubería rota

*strings.7111:	Conexión rechazada

*strings.7022:	Argumento no válido

*strings.7005:	Error I/O

*strings.7012:	Memoria insuficiente

*strings.7009:	Número de archivo incorrecto

*strings.7011:	La operación se bloquearía

*strings.7106:	El receptáculo ya está conectado

*strings.7110:	Expiró la conexión

*strings.7115:	operación en progreso ahora

*strings.7114:	EALREADY

*strings.7098:	Dirección en uso

*strings.7004:	llamada de sistema interrumpida

*strings.7013:	Permiso negado

*strings.7099:	No se puede asignar la dirección solicitada

*strings.7100:	La red está fuera de servicio

*strings.7101:	No se puede conectar a la red

*strings.7102:	La red eliminó la conexión debido a una operación de restablecimiento

*strings.7103:	Conexión cancelada

*strings.7104:	Conexión restablecida por otro sistema

*strings.7107:	El receptáculo no está conectado

*strings.7112:	El sistema está fuera de servicio

*strings.7113:	No hay ruta hacia el sistema

*strings.21001:	(no reconocido)

*strings.21002:	(selección autom.)

*strings.21003:	(predeterminado)

*strings.21004:	(no encontrado)

*strings.21010:	%s imagen %dx%d pixels

*strings.21011:	Las imágenes son de %d bits con %d celdas asignadas.

*strings.21012:	Las imágenes son monocromáticas.

*strings.21013:	Las imágenes son de %d bits en escala de grises.

*strings.21014:	Las imágenes son de %d bits en color real.

*strings.21020:	Éste es un índice en el que se pueden hacer búsquedas. Escriba palabras claves de búsqueda: 

*strings.21031:	Lista importante principal

*strings.21032:	<!-- Este es un archivo generado automáticamente.\nSerá leído y reemplazado.\n¡No editar! -->\n

*strings.21033:	---Fin de la lista de historial---\n

*strings.21034:	Guardar lista de historial

*strings.21040:	Conexión: Buscando el sistema: %.256s...

*strings.21041:	Conexión: Llamando al sistema: %.256s...

*strings.21042:	Error: No se pudo convertir la conexión a conexión sin bloqueo.

*strings.21043:	No se encuentra el sistema %.256s.

*strings.21044:	No se encuentra el sistema %.256s.

*strings.21045:	Leyendo el archivo...

*strings.21046:	Leyendo el archivo...Error de longitud cero

*strings.21047:	Leyendo el directorio...

*strings.21048:	Leyendo el archivo...Ejecutado

*strings.21049:	Leyendo el directorio...Ejecutado

*strings.21050:	Leyendo el archivo FTP

*strings.21051:	Recibiendo el directorio FTP

*strings.21052:	Recibiendo datos.

*strings.21053:	Transfiriendo datos desde %.256s

*strings.21054:	Conexión: Sistema %.256s contactado. Esperando respuesta...

*strings.21055:	Conexión: Intentando otra vez (HTTP 0.9)...

*strings.21056:	Conexión: Sistema contactado. Esperando respuesta (Gopher)

*strings.21057:	Correo enviado con éxito

*strings.21058:	Noticias: Recibiendo grupos de noticias...

*strings.21059:	Noticias: Recibiendo grupos de noticias...

*strings.21060:	Noticias: Recibiendo artículos...

*strings.21061:	Noticias: Recibiendo artículos...

*strings.21062:	Noticias: Leyendo lista de grupos de noticias

*strings.21063:	Noticias: Leyendo información general de grupos de noticias

*strings.21064:	Noticias: Ordenando los artículos...

*strings.21065:	Ejecutando Java...

*strings.21066:	Ejecutando Java... Terminado

*strings.21101:	No se puede invocar el visualizador externo

*strings.21102:	El proxy solicita un esquema de autenticación que no se respalda.

*strings.21103:	¡Error de memoria insuficiente en la rutina de carga de HTTP!

*strings.21104:	¡Respuesta de estado desconocida del servidor: %d!

*strings.21105:	¡Atención! Error de aplicación no crítico: NET_TotalNumberOfProcessingURLs < 0

*strings.21106:	¡Atención! Error de aplicación no crítico: NET_TotalNumberOfOpenConnections < 0

*strings.21107:	Las URNs no están soportadas internamente, use un servidor proxy HTTP: 

*strings.21108:	llamada reentrante a la ventana Interrupción

*strings.21109:	Número de mensaje incorrecto

*strings.21110:	Número de artículo fuera de rango

*strings.21111:	No se pudo cargar el buzón de correo

*strings.21113:	Error de SMTP al enviar el correo. El servidor respondió: %.256s

*strings.21114:	Advertencia: Codificación no reconocida: `

*strings.21115:	¡Alerta! No se encontró un convertidor o decodificador

*strings.21116:	El resultado de la emisión de un formulario no se puede añadir a la lista importante

*strings.21117:	Atención: se especificó una máquina proxy HTTP proxy\n(%.2048s), pero esa máquina es desconocida.\n\nEsto significa que las máquinas externas serán inalcanzables.\n¿Quizás hay un problema con su servidor de nombres?\nConsulte a su administrador de sistemas.

*strings.21118:	Atención: se especificó una máquina SOCKS (%.2048s)\npero es máquina es desconocida.\n\nEsto significa que las máquinas externas serán inalcanzables.\n\n¿Quizás hay un problema con su servidor de nombres?\n

*strings.21119:	Si su ordenador debe usar un servidor de nombres no raíz, necesitará\nestablecer la variable de entorno $SOCKS_NS para indicar al\nservidor de nombres apropiado.  Puede (o no puede) ser necesario\nestablecer esta variable o la preferencia de la máquina SOCKS,\na la dirección IP de la máquina en cuestión más bien que a su\nnombre.\n\n

*strings.21120:	Consulte a su administrador de sistemas.

*strings.21121:	Atención: las siguientes máquinas son desconocidas:\n\n

*strings.21122:	Atención: la máquina %.256s es desconocida.\n

*strings.21123:	\nEsto significa que algunas o todas las máquinas serán inalcanzables.\n\n¿Quizás no está conectado o hay un problema con su servidor de nombres?\n

*strings.21124:	En sistemas SunOS 4, hay dos %s ejecutables,\nuno para sitios que usan DNS, y otro para sitios que usan YP/NIS.\nÉste es el ejecutable DNS.  ¿Quizás necesite usar\nel otro?\n\n

*strings.21125:	En sistemas SunOS 4, hay dos %s ejecutables,\nuno para sitios que usan DNS, y otro para sitios que usan YP/NIS.\nÉste es el ejecutable YP/NIS.  ¿Quizás necesite usar\nel otro?\n\n

*strings.21130:	Atención: Esto es un script `%.1024s' ejecutable!\n\nUsted va a ejecutar comandos de sistema arbitrarios \nen su máquina local.  Esto es un riesgo de seguridad.\nA menos que comprenda completamente este script, se\nle recomienda encarecidamente que no haga esto.\n\n¿Ejecutar el script?

*strings.21131:	Atención: esto es un script `%.1024s' ejecutable!\n\nUsted puede comenzar a ejecutar comandos de sistema arbitrarios\nen su máquina local.  Esto es un riesgo de seguridad.\nA menos que comprenda completamente este script, se\nle recomienda encarecidamente que no haga esto.\n\n¿Ejecutar el script?

*strings.21133:	Falló la autorización. ¿Desea volver a intentarlo?

*strings.21134:	Falló la autorización del proxy. ¿Desea volver a intentarlo?

*strings.21135:	¿Desea volver a publicar los datos del formulario?

*strings.21136:	Antes de ver todos los grupos de noticias, Mozilla guarda\nuna copia de todos ellos\n\nEn conexión lenta o por módem, puede demorarse\nvarios minutos. Puede elegir Nueva ventana en el menú\nArchivo para seguir navegando. ¿Desea continuar?

*strings.21137:	Está presentando este formulario por correo electrónico.\nAl presentarlo por correo electrónico revelará su\ndirección de correo electrónico al destinatario y\nenviará los datos del formulario sin cifrarlos\n

*strings.21139:	Usted posiblemente no quiera enviar\ninformación delicada o privada en este\nformulario. Usted puede continuar o cancelar este envío de datos.

*strings.21151:	mensaje: especificador no válido `%c'\n

*strings.21152:	Implementar más nombres temporales

*strings.21153:	Implementar más XPStats

*strings.21160:	Escriba un nombre de usuario para obtener acceso al servidor de noticias

*strings.21161:	Escriba la contraseña para el usuario %s

*strings.21204:	<TITLE>#161;Error de noticias!</TITLE>\n<H1>Error de noticias!</H1> El sistema de noticias respondió: <b>%.256s</b><p>\n

*strings.21205:	<b><p>Es posible que el artículo haya caducado</b><p>\n

*strings.21218:	<TITLE>Error de FTP</TITLE>\n<H1>Error de FTP</H1>\n<h2>No se pudo iniciar sesión en el servidor FTP</h2>\n<PRE>

*strings.21219:	<TITLE>Error de FTP</TITLE>\n<H1>Error de FTP</H1>\n<h2>Falló la transferencia FTP:</h2>\n<PRE>

*strings.21220:	<TITLE>Índice de Gopher %.256s</TITLE><H1>%.256s<BR>Búsqueda en Gopher</H1>\nEste es un índice de Gopher donde puede hacer búsquedas. Use la función de búsqueda para escribir los términos a buscar.

*strings.21221:	<TITLE>Búsqueda CSO de %.256s</TITLE><H1>Búsqueda CSO de %.256s<H1>\nUna base de datos CSO suele contener un directorio de teléfonos. Use la función de búsqueda para escribir los términos a buscar.<ISIND

*strings.21222:	<TITLE>Faltan datos de respuesta de publicación</TITLE>\n<H1>Faltan datos</H1>\nEste documento se originó en una operación PUBLICAR y ha caducado en el caché. Para volver a publicar y recrear el documento, pulse <b>

*strings.21250:	Criptografía de clave pública RSA

*strings.21251:	Internacional

*strings.21252:	Esto es un documento inseguro que no está cifrado y no ofrece protección de\n seguridad.

*strings.21253:	<h3>No hay grupos nuevos</h3>

*strings.21256:	Escriba el nombre de usuario de %.200s en %.200s:

*strings.21257:	Escriba el grupo de noticias que será añadido a la lista:

*strings.21260:	Esto es un documento seguro que usa una clave de cifrado de grado medio adecuada para la exportación desde U.S.A

*strings.21261:	Esto es un documento seguro que usa una clave de cifrado de grado alto sólo para uso\ndoméstico en U.S.A

*strings.21270:	Los marcadores han cambiado en el disco y se están cargando nuevamente.

*strings.21271:	El libro de direcciones ha cambiado en el disco y se está cargando nuevamente.

*strings.21272:	Los marcadores han cambiado en el disco. ¿Desea desechar los cambios no guardados\ny volver a cargar?

*strings.21273:	El libro de direcciones ha cambiado en el disco. ¿Desea desechar los cambios no guardados\ny volver a cargar?

*strings.21274:	¡Error guardando el archivo de marcadores!

*strings.21275:	¡Error guardando el archivo del libro de direcciones!

*strings.21276:	Éste es un índice en el que se pueden hacer búsquedas. Escriba palabras claves de búsqueda: 

*strings.21277:	Restablecer

*strings.21278:	Emitir consulta

*strings.21279:	<H3>Sin información mientras se carga el documento </H3>\n

*strings.21280:	<LI>Codificación: 

*strings.21281:	<b>Formulario %d:</b><UL>

*strings.21282:	Hace %ld horas

*strings.21283:	Hace %ld días

*strings.21284:	Existen %ld alias para este %s

*strings.21285:	Existe 1 alias para este %s

*strings.21286:	No hay alias para esta %s

*strings.21287:	Los nombres abreviados sólo pueden contener letras y\nnúmeros. El nombre abreviado no se ha cambiado.

*strings.21288:	Ya existe una entrada con este nombre abreviado.\nEl nombre abreviado no ha sido cambiado.

*strings.21289:	Este elemento tiene %d alias. Estos alias\ntambién\nserán borrados.

*strings.21290:	Algunos de los elementos que intenta borrar\ntienen varios alias. Estos alias también serán borrados.

*strings.21291:	<!-- Este es un archivo generado automáticamente.

*strings.21292:	Será leído y reemplazado.

*strings.21293:	¡No editar! -->

*strings.21294:	Carpeta nueva

*strings.21295:	Marcador nuevo

*strings.21296:	No se encontró

*strings.21297:	Abrir archivo de marcadores

*strings.21298:	Importar archivo de marcadores

*strings.21299:	Guardar archivo de marcadores

*strings.21300:	Hace menos de una hora

*strings.21301:	La base de datos del historial global está cerrada actualmente

*strings.21302:	Desconocido

*strings.21303:	La base de datos del historial global está vacía actualmente

*strings.21304:	<BR>\n<TT>Fecha:</TT> %s<P>

*strings.21305:	\n<HR>\n<TT>No. total de entradas:</TT> %ld<P>

*strings.21306:	Marcadores personales

*strings.21307:	<!-- Este es un archivo generado automáticamente.\nSerá leído y reemplazado.\n¡No editar! -->\n

*strings.21308:	Cargando el plug-in

*strings.21309:	a %ld bytes/seg.

*strings.21310:	a %.1fK/seg.

*strings.21311:	a %.1fM/seg.

*strings.21312:	atascado

*strings.21313:	%lu

*strings.21314:	%luK

*strings.21315:	%3.2fM

*strings.21316:	%02ld:%02ld:%02ld restantes

*strings.21317:	%02ld:%02ld restantes

*strings.21318:	%ld seg.%s restantes

*strings.21319:	Versión: 

*strings.21320:	Número de serie: 

*strings.21321:	Emisor: 

*strings.21322:	Asunto: 

*strings.21323:	Versión: %s%sNúmero de serie: %s%sEmisor: %s%sAsunto: %s%sNo válido antes del: %s%sNo válido después del: %s%s

*strings.21324:	Escriba su contraseña de Mozilla:

*strings.21325:	No se encuentra un plug-in del\ntipo de mime %s.

*strings.21326:	No se pudo cargar el plug-in '%s' del tipo de MIME '%s'. \n\n Verifique que hay suficiente memoria libre y que el plug-in está correctamente instalado.

*strings.21327:	No se ha podido abrir el applet Java:\nno se encuentra '%s' en CLASSPATH.\nLea las notas de esta edición e instale '%s'\nantes de reabrir el programa.\n\nEl valor actual de CLASSPATH es:\n%s\n

*strings.21328:	No se ha podido abrir el applet Java:\nel número de versión de las clases es incorrecto.\nEl número de versión hallado es %d.\nEl número correcto de la versión es %d.\n

*strings.21329:	Java ha detectado este error al arrancar: \n\n%s\n

*strings.21330:	No se ha podido ejecutar el depurador de Java.\n

*strings.21331:	El sistema ha sido bloqueado para prevenir el acceso a sitios restringidos. Introduzca su contraseña si piensa cambiar los siguientes parametros de configuración:

*strings.21332:	La contraseña introducida anteriormente no es correcta. Introduzca su contraseña si piensa cambiar durante esta sesión las siguientes restricciones:

*strings.21335:	Conexión: Escriba la contraseña para el sistema...

*strings.21336:	El proxy solicita un esquema de autenticación que no se respalda.

*strings.21337:	Los identificadores temporales del proxy caducarán ahora.\nEs un problema en implementación de autenticación\ndel proxy o error de escritura. de la contraseña.\n¿Volver a introducir nombre de usuario y contraseña?

*strings.21338:	servidor proxy no identificado

*strings.21339:	Se requiere autenticación del proxy para %.250s en %.250s:

*strings.21340:	Conexión: Escriba la contraseña para el proxy...

*strings.21341:	Palabra clave incorrecta en la configuración automática del proxy: %s.

*strings.21342:	¿Desea intentar la conexión con el proxy otra vez?

*strings.21343:	¿Desea intentar la conexión con SOCKS otra vez?

*strings.21344:	¿Desea intentar la conexión con el proxy/SOCKS otra vez?

*strings.21345:	El servidor proxy no está disponible.\n\n¿Desea conectarse al proxy %s otra vez?

*strings.21346:	Los servidores proxy no están disponibles.\n\n¿Desea conectarse con %s otra vez?

*strings.21347:	SOCKS no está disponible.   ¿Desea conectarse \nal SOCKS %s otra vez?

*strings.21348:	SOCKS y los servidores proxy no están disponibles.   ¿Desea\nconectarse con %s otra vez?

*strings.21349:	Los servidores proxy no están disponibles. ¿Desea anular los proxy temporalmente\nestableciendo conexiones directas hasta que\nestén disponibles otra vez?

*strings.21350:	SOCKS no está disponible. ¿Desea anular SOCKS temporalmente\nestableciendo conexiones directas hasta que\nestén disponibles otra vez?

*strings.21351:	SOCKS y los proxy no están disponibles. ¿Desea anularlos temporalmente\nestableciendo conexiones directas hasta que\nestén disponibles otra vez?

*strings.21352:	Todos los proxy aún están fuera de servicio.\n¿Desea continuar con conexiones directas?

*strings.21353:	SOCKS aún está fuera de servicio.\n\n¿Desea continuar con conexiones directas?

*strings.21354:	Los SOCKS y proxy aún están fuera de servicio.\n\n¿Desea continuar con conexiones directas?

*strings.21355:	No se recibió el archivo de configuración automática del proxy.\n\nNo se utilizarán proxys.

*strings.21356:	El archivo de configuración automática del proxy está vacío:\n\n     %s\n\n¿Desea utilizar en su lugar la configuración de la sesión anterior?

*strings.21357:	El archivo de configuración automática del proxy tiene errores:\n\n     %s\n\n¿Desea utilizar en su lugar la configuración de la sesión anterior?

*strings.21358:	El archivo de configuración automática del proxy tiene errores:\n\n     %s\n\nNo se utilizarán proxys.

*strings.21359:	El archivo de configuración automática del proxy no es del tipo correcto:\n\n        %s\n\nSe espera el tipo de MIME de la aplicación/x-ns-proxy-autoconfig.\n\n¿Desea utilizar en su lugar la configuración de la sesión anterior?

*strings.21360:	No se pudo cargar el archivo de configuración automática del proxy.\n\nRevise el URL de configuración automática del proxy en las preferencias.\n\nNo se utilizarán proxys.

*strings.21361:	No se pudo cargar el archivo de configuración automática \ndel proxy.\n\nRevise el URL de configuración automática en las preferencias.\n\n¿Desea utilizar en su lugar la configuración de la sesión anterior?

*strings.21362:	El archivo de respaldo de configuración automática del proxy tenía errores.\n\nNo se utilizarán proxys.

*strings.21363:	La carga del archivo de configuración automática del proxy fue cancelada.\n\nNo se utilizarán proxys.

*strings.21364:	Advertencia:\n\nEl servidor envió un archivo de configuración automática\ndel proxy no solicitado a Mozilla:\n\n         %s\n\nEl archivo de configuración será ignorado.

*strings.21365:	Recibiendo el archivo de configuración automática del proxy...

*strings.21366:	Limpieza del caché: borrando %d archivos...

*strings.21367:	La base de datos seleccionada es válida, pero no\npuede validarse como la base de datos correcta porque\nfalta una entrada de nombre. ¿Desea utilizar esta\nbase de datos de todos modos?

*strings.21368:	La base de datos seleccionada se llama:\n%.900s\nLa base de datos solicitada se llama:\n%.900s\n¿Desea utilizar esta base de datos de todos modos?

*strings.21369:	La página siendo cargada solicitó un caché externo.\nEl uso de un caché externo de sólo lectura puede mejorar\nel tiempo de re-lectura\n\nSi no tiene el caché externo,elija\n"Cancelar" en el cuadro de selección de archivos.

*strings.21370:	El archivo de configuración automática del proxy no es del tipo correcto:\n\n        %s\n\nSe espera el tipo de MIME de la aplicación/x-ns-proxy-autoconfig.\n\nNo se utilizarán proxys.

*strings.21371:	Leyendo el segmento...Ejecutado

*strings.21372:	<TITLE>Lista de directorios de %.1024s</TITLE>\n

*strings.21373:	<H1>Lista de directorios de %.1024s</H1>\n<PRE>

*strings.21374:	">Hasta directorios de nivel superior </A><BR>

*strings.21375:	No se pudo iniciar sesión en el servidor FTP

*strings.21376:	Error: No se pudo convertir la conexión a conexión sin bloqueo.

*strings.21377:	Publicando el archivo %.256s...

*strings.21378:	<TITLE>Directorio de %.512s</TITLE>\n <H2>El directorio actual es %.512s</H2>\n <PRE>

*strings.21379:	%d URL están esperando un receptáculo abierto (límite %d)\n

*strings.21380:	%d URL están esperando que haya menos URLs activos \n

*strings.21381:	%d conexiones abiertas\n

*strings.21382:	%d URLs activos\n

*strings.21383:	\n\
\n\
Utilizando en su lugar la copia almacenada previamente en el caché

*strings.21384:	El servidor no devolvió datos

*strings.21385:	>\n\
<HR><H3>#161;Transferencia interrumpida!</H3>\n

*strings.21386:	\n\
\n\
#161;Transferencia interrumpida!\n

*strings.21387:	Correo: Leyendo la carpeta %s...

*strings.21388:	Correo: Leyendo el mensaje...

*strings.21389:	Correo: Vaciando la papelera...

*strings.21390:	Correo: Comprimiendo la carpeta %s...

*strings.21391:	Correo: Entregando los mensajes en cola...

*strings.21392:	Correo: Leyendo el mensaje...Ejecutado

*strings.21393:	Correo: Leyendo la carpeta...ejecutado

*strings.21394:	Correo: Vaciando la papelera...Ejecutado

*strings.21395:	Correo: Comprimiendo la carpeta...Ejecutado

*strings.21396:	Correo: Entregando los mensajes en cola...Ejecutado

*strings.21398:	Conexión: Sistema de noticias contactado. Esperando una respuesta...

*strings.21399:	Introduzca una contraseña de acceso al servidor de noticias

*strings.21400:	Noticias: Mensaje enviado; esperando respuesta...

*strings.21401:	Sin respuesta

*strings.21402:	El serv. POP3 (%s)no\nsoporta UIDL. Mozilla lo necesita \npara las opciones ``Dejar en el servidor'' y `Tamaño máximo del mensaje''.\n\nPara transferir su correo, desactivelas en el panel Servidores de \n``Pref. de correo y noticias''.

*strings.21403:	Recibiendo el mensaje %lu de %lu

*strings.21404:	El ser. POP3 (%s) no\n soporta el comando TOP.\n\nSin soporte para este comando no se puede implementar\nla opción de ``Tamaño máximo de mensaje'', por lo que\nha sido desactivada y los mensajes serán transferidos\nsin importar su tamaño.

*strings.21405:	No se ha podido ingresar en el servidor de correo.\nEl servidor respondió:\n\n  %s\n\nPor favor, escriba una nueva contraseña para el usuario %.100s@%.100s:

*strings.21406:	Conexión: Sistema contactado, enviando información de inicio de sesión.

*strings.21407:	Ensamblando el mensaje...

*strings.21408:	Ensamblando el mensaje...Ejecutado

*strings.21409:	Cargando el adjunto...

*strings.21410:	Cargando los adjuntos...

*strings.21411:	Entregando el correo...

*strings.21412:	Entregando el correo...

*strings.21413:	Entregando el correo...Ejecutado

*strings.21414:	Entregando las noticias...

*strings.21415:	Entregando las noticias...Ejecutado

*strings.21416:	En cola para entrega más tarde...

*strings.21417:	Escribiendo en el archivo ACC...

*strings.21418:	En cola para entrega más tarde...

*strings.21419:	Composición de mensajes

*strings.21421:	%s %ldK bytes perdidos (%ld%%)

*strings.21422:	%s cargados %ld mensajes (%ld%%)

*strings.21423:	Añadir carpeta

*strings.21424:	Añadir carpeta...

*strings.21425:	Escriba el nombre de la nueva carpeta.

*strings.21426:	Guardar el mensaje como

*strings.21427:	Guardar los mensajes como

*strings.21428:	Recibir el correo nuevo

*strings.21429:	Enviar mensajes de la carpeta de salida

*strings.21430:	Carpeta nueva...

*strings.21431:	Comprimir esta carpeta

*strings.21432:	Comprimir todas las carpetas

*strings.21433:	Abrir sistema de noticias...

*strings.21434:	Vaciar la carpeta Papelera

*strings.21435:	Imprimir...

*strings.21436:	Deshacer

*strings.21437:	Rehacer

*strings.21438:	Borrar mensajes seleccionados

*strings.21439:	Borrar mensaje

*strings.21440:	Borrar carpeta

*strings.21441:	Cancelar mensaje

*strings.21442:	Eliminar sistema de noticias

*strings.21443:	Suscribir

*strings.21444:	Suspender suscripción

*strings.21445:	Seleccionar tema

*strings.21446:	Seleccionar mensajes marcados

*strings.21447:	Seleccionar todos los mensajes

*strings.21448:	Deseleccionar todos los mensajes

*strings.21449:	Marcar mensaje

*strings.21450:	Desmarcar mensaje

*strings.21451:	Otra vez

*strings.21452:	Encadenar mensajes

*strings.21453:	Por fecha

*strings.21454:	Por remitente

*strings.21455:	Por asunto

*strings.21456:	En el orden recibido

*strings.21457:	Descifrar (ROT13)

*strings.21458:	Añadir desde los mensajes más nuevos

*strings.21459:	Añadir desde los mensajes más antiguos

*strings.21460:	Obtener más mensajes

*strings.21461:	Obtener todos los mensajes

*strings.21462:	Libro de direcciones

*strings.21463:	Ver entrada del libro de direcciones

*strings.21464:	Añadir al libro de direcciones

*strings.21465:	Nuevo mensaje de noticias

*strings.21466:	Publicar respuesta

*strings.21467:	al remitente y al grupo

*strings.21468:	Mensaje de correo nuevo

*strings.21469:	Responder

*strings.21470:	Responder a todos

*strings.21471:	Reenviar los mensajes seleccionados

*strings.21472:	Siguiente

*strings.21473:	Marcar elemento seleccionado como leído

*strings.21474:	Marcar como leído

*strings.21475:	Marcar elemento seleccionado como no leído

*strings.21476:	Marcar como no leído

*strings.21477:	Desmarcar todos los mensajes

*strings.21478:	Copiar los mensajes seleccionados

*strings.21479:	Copiar

*strings.21480:	Mover los mensajes seleccionados

*strings.21481:	Mover

*strings.21482:	Guardar los mensajes seleccionados como...

*strings.21483:	Guardar como...

*strings.21484:	Mover los mensajes seleccionados a...

*strings.21485:	Mover este mensaje a...

*strings.21486:	Primer mensaje

*strings.21487:	Mensaje siguiente

*strings.21488:	Mensaje anterior

*strings.21489:	Ultimo mensaje

*strings.21490:	Primero no leído

*strings.21491:	Siguiente no leído

*strings.21492:	Anterior mensaje no leído

*strings.21493:	Ultimo no leído

*strings.21494:	Primero marcado

*strings.21495:	Siguiente marcado

*strings.21496:	Anterior marcado

*strings.21497:	Ultimo marcado

*strings.21498:	Marcar temas seleccionados leídos

*strings.21499:	Marcar cadena leída

*strings.21500:	Marcar tema como leido

*strings.21501:	Marcar todo como leido

*strings.21502:	Mostrar grupos de noticias activos

*strings.21505:	Mostrar todos los mensajes

*strings.21506:	Mostrar sólo los mensajes no leídos

*strings.21507:	Todo

*strings.21508:	Incluir el texto original

*strings.21509:	From

*strings.21510:	Responder a

*strings.21511:	Enviar a

*strings.21512:	Enviar CC a

*strings.21513:	Enviar CCC a

*strings.21514:	Archivo CC

*strings.21515:	Grupos de noticias

*strings.21516:	Seguimientos a

*strings.21517:	Asunto

*strings.21518:	Adjunto

*strings.21519:	Enviar texto con formato

*strings.21520:	Cola para entrega posterior

*strings.21521:	Adjuntar como texto

*strings.21522:	Marcar mensajes

*strings.21523:	Desmarcar mensajes

*strings.21524:	Ascendente

*strings.21525:	<P><CENTER>\n<TABLE BORDER CELLSPACING=5 CELLPADDING=10 WIDTH="80%%">\n<TR><TD ALIGN=CENTER><FONT SIZE="+1">#161;Recortado!</FONT><HR>\n

*strings.21526:	<B> Este mensaje excede el tamaño máximo definido en Preferencias.\nSe han transferido sólo unas líneas desde el servidor de correo.<P>Haga clic<A HREF="

*strings.21527:	">aquí</A>para transferir el resto del mensaje.</B></TD></TR></TABLE></CENTER>\n

*strings.21528:	(sin encabezados)

*strings.21529:	(no especificado)

*strings.21530:	Archivo de Macintosh

*strings.21531:	El directorio %s no existe.  El correo no\nfuncionará sin \neste directorio.\n\n¿Desea crearlo ahora?

*strings.21532:	Guardar archivo decodificado como:

*strings.21533:	¡El archivo %s ha sido cambiado por otro programa!\n¿Desea reemplazarlo?

*strings.21534:	Abrir sistema de noticias

*strings.21535:	news.announce.newusers

*strings.21536:	news.newusers.questions

*strings.21537:	news.answers

*strings.21538:	Correo: Comprimiendo la carpeta %s...

*strings.21539:	Correo: Comprimiendo la carpeta %s...Ejecutado

*strings.21540:	No se puede abrir %s.

*strings.21541:	Guardar adjunto del archivo BinHex como:

*strings.21542:	%lu byte%s

*strings.21543:	

*strings.21544:	s

*strings.21545:	%s de %s (%s, %s)

*strings.21546:	%s de %s (%s)

*strings.21547:	%s de %s

*strings.21548:	%s leídos (%s)

*strings.21549:	%s leídos

*strings.21550:	Correo: Mensaje enviado; esperando respuesta...

*strings.21551:	<TITLE>Información acerca del historial global de Mozilla</TITLE>\n<h2>Entradas del historial global</h2>\n<HR>

*strings.21552:	%d%%

*strings.21553:	%s imagen %dx%d pixels

*strings.21554:	No se encontró la imagen del URL, tamaño, fondo, etc. correctos\nen el caché:\n%s\n

*strings.21555:	Color artificial de %d-bits

*strings.21556:	Monocromático de 1-bit

*strings.21557:	Escala de grises de %d-bits

*strings.21558:	Color RGB real de %d-bits.

*strings.21559:	Tamaño&nbsp;descodificado&nbsp;(bytes):

*strings.21560:	%u&nbsp;x&nbsp;%u

*strings.21561:	(escalado desde %u&nbsp;x&nbsp;%u)

*strings.21562:	Dimensiones de la Imagen:

*strings.21563:	Color:

*strings.21564:	%d colores

*strings.21565:	(ninguno)

*strings.21566:	Mapa de colores:

*strings.21567:	sí, fondo visible a través de transpariencia

*strings.21568:	sí, fondo unicolor<<tt#%02x%02x%02x<</tt

*strings.21569:	no

*strings.21570:	Transparencia:

*strings.21571:	Comentario:

*strings.21572:	Desconocido

*strings.21573:	Comprimiendo el caché de imágenes:\nborrando %s\n

*strings.21574:	Añadir grupo de noticias...

*strings.21575:	Buscar otra vez

*strings.21576:	Enviar

*strings.21577:	Enviar más tarde

*strings.21578:	Adjuntar...

*strings.21579:	Adjuntos en línea

*strings.21580:	Adjuntos como enlaces

*strings.21581:	Reenviar citado

*strings.21582:	¿Está seguro de que desea eliminar el sistema de noticias %s\ny todos los grupos de noticias que contiene?

*strings.21583:	Todos los campos

*strings.21584:	¡La carpeta `Salida' contiene un mensaje cuya entrega no\nestá programada!

*strings.21585:	¡La carpeta `Salida' contiene %d mensajes cuya entrega no\nestá programada!

*strings.21586:	\n\nEsto significa que otro programa distinto a Mozilla\nha añadido mensajes a esta carpeta.\n

*strings.21587:	La carpeta `Salida' es una carpeta especial; se utiliza sólo para mantener\nmensajes cuya entrega se ha diferido.

*strings.21588:	\nPor lo tanto, no se puede utilizar como una carpeta de `Enviado'. \n\nRevise el destino de los mensajes salientes en las preferencias de\ncorreo y noticias.

*strings.21589:	Ocurrió un error entregando el correo diferido.\t\t%s\n¿Desea continuar la entrega de los mensajes de correo diferidos?

*strings.21590:	Contraseña para el usuario de POP3 %.100s@%.100s:

*strings.21591:	%sMarcadores de %s%s

*strings.21592:	%sMarcadores personales%s

*strings.21593:	%sLibro de direcciones de %s%s

*strings.21594:	%sLibro de direcciones personal%s

*strings.21595:	sock: %d   con_sock: %d   protocolo: %d\n

*strings.21596:	No se ha encontrado la URL en el caché: 

*strings.21597:	Entrada parcial en el caché, obteniendo el resto del servidor:\n

*strings.21598:	Revisando el servidor para verificar entrada del caché\ndebido a que force_reload está activada:\n

*strings.21599:	Expiró el objeto, volviendo a cargar:\n

*strings.21600:	Revisando el servidor para verificar entrada del caché:\n

*strings.21601:	Revisando el servidor para verificar entrada del caché\ndebido a que falta last_modified:\n

*strings.21602:	Sitio:

*strings.21603:	Dirección:

*strings.21604:	Tipo de archivo MIME:

*strings.21605:	Desconocido actualmente

*strings.21606:	Origen:

*strings.21607:	Actualmente en el caché del disco

*strings.21608:	Actualmente en el caché de la memoria

*strings.21609:	No almacenado en el caché

*strings.21610:	<H1>La ventana está inactiva</H1>

*strings.21611:	Archivo del caché local:

*strings.21612:	Ninguno

*strings.21613:	%A, %d-%b-%y %H:%M:%S

*strings.21614:	Fecha de la última modificación:

*strings.21615:	%A, %d-%b-%y %H:%M:%S GMT

*strings.21616:	Tamaño del contenido:

*strings.21617:	No se ha suministrado fecha

*strings.21618:	Caduca:

*strings.21619:	Tipo de Mac:

*strings.21620:	Creador de Mac:

*strings.21621:	Juego de caract.:

*strings.21622:	Estado desconocido

*strings.21623:	Seguridad:

*strings.21624:	Certificado:

*strings.21625:	Documento sin título

*strings.21626:	</b></FONT> tiene la estructura siguiente:<p><ul><li>

*strings.21627:	Información del documento

*strings.21628:	about:editfilenew

*strings.21629:	archivo:///Sin título

*strings.21630:	Breve

*strings.21631:	Normal

*strings.21632:	Todavía hay mensajes en la carpeta '%s'.\n¿Seguro que desea eliminar esta carpeta?

*strings.21633:	No se pudo cargar el archivo de configuración automática del proxy.\n\nNo se pueden dejar de utilizar proxys porque el URL de configuración\nautomática está bloqueado.\nSolicite ayuda al administrador del sistema local.

*strings.21634:	No se ha recibido un archivo de configuración automática de proxy.\n\nNo se pueden dejar de utilizar proxys porque el URL de configuración\nautomática está bloqueado.\nSolicite ayuda al administrador del sistema local.

*strings.21635:	Problema de recepción de la información de configuración\nautomática de proxy. Puesto que el URL de configuración automática\ntiene un bloqueo local, no se pueden dejar de utilizar proxys.\n\nSolicite ayuda al administrador del sistema

*strings.21636:	Importar libro de direcciones

*strings.21637:	Guardar libro de direcciones

*strings.21638:	marcador

*strings.21639:	entrada

*strings.21640:	%ld segundos

*strings.21641:	%ld minutos

*strings.21642:	%ld horas %ld minutos

*strings.21643:	Marcadores principales

*strings.21644:	Libro de direcciones

*strings.21645:	Ajustar líneas largas

*strings.21646:	Guardado automático %s

*strings.21647:	¡No se pueden editar documentos no HTML!

*strings.21648:	el remitente

*strings.21649:	el asunto

*strings.21650:	el texto

*strings.21651:	la fecha

*strings.21652:	la prioridad

*strings.21653:	el estado

*strings.21654:	el campo 'Para'

*strings.21655:	el campo 'CC'

*strings.21656:	el campo 'Para' o 'CC'

*strings.21657:	el nombre

*strings.21658:	la dirección electrónica

*strings.21659:	el teléfono

*strings.21660:	la empresa

*strings.21661:	el departamento

*strings.21662:	la ciudad

*strings.21663:	la dirección

*strings.21664:	Tamaño

*strings.21665:	cualquier texto

*strings.21666:	palabra clave

*strings.21667:	contiene

*strings.21668:	no contiene

*strings.21669:	es

*strings.21670:	no es

*strings.21671:	está vacío

*strings.21672:	es de antes de

*strings.21673:	es de después de

*strings.21674:	es mayor que

*strings.21675:	es menor que

*strings.21676:	empieza por

*strings.21677:	termina en

*strings.21678:	suena como

*strings.21679:	reservado

*strings.21680:	forward.msg

*strings.21681:	Su servidor SMTP no soporta la función de acuse de recibo \npor lo que su mensaje será enviado sin dicho acuse de recibo.

*strings.21682:	edad en días

*strings.21683:	es mayor a

*strings.21684:	es inferior a

*strings.21685:	Este mensaje no puede ser enviado ya que su nombre de usuario\n\
no puede ser determinado.\n\
\n\
Por favor verifique su configuración NIS o YP (si usado) asi como\n\
las variables de entorno USER y LOGNAME.

*strings.21686:	leído

*strings.21687:	respondido

*strings.21688:	Cambiar el nombre de la carpeta seleccionada

*strings.21689:	Guardar borrador

*strings.21690:	Pasar a la carpeta

*strings.21691:	Cambiar la prioridad a

*strings.21692:	Borrar

*strings.21693:	Marcar como leído

*strings.21694:	Omitir tema

*strings.21695:	Observar tema

*strings.21696:	reenviado

*strings.21697:	respondido y reenviado

*strings.21698:	Se han encontrado más elementos que no ha podido\n devolver el servidor de directorios.\nIntroduzca más criterios de búsqueda y vuelva a intentarlo.
!*strings.21699:	El servidor de directorios ha encontrado más de %d elementos.\nIntroduzca más criterios de búsqueda y vuelva a intentarlo.

*strings.21700:	Leer más

*strings.21701:	Siguiente tema no leído

*strings.21702:	Siguiente categoría no leída

*strings.21703:	Siguiente grupo no leído

*strings.21704:	Por prioridad

*strings.21705:	Llamar

*strings.21706:	por tipo

*strings.21707:	por nombre

*strings.21708:	por apodo

*strings.21709:	por dirección de correo

*strings.21710:	Por empresa

*strings.21711:	por ciudad

*strings.21712:	Descendente

*strings.21713:	Tarjeta nueva...

*strings.21714:	Lista nueva...

*strings.21715:	Propiedades de la tarjeta...

*strings.21716:	Buscando %s...

*strings.21717:	Introduzca un nombre completo.

*strings.21718:	Introduzca un nombre

*strings.21719:	Creando archivo de resumen de %s...

*strings.21720:	Todo

*strings.21721:	Cadenas omitidas

*strings.21722:	Cadenas observadas con mensajes nuevos

*strings.21723:	Cadenas con mensajes nuevos

*strings.21724:	Entrada de Directorio LDAP

*strings.21725:	No han podido abrirse los datos de %s por un error de LDAP '%s' (0x%02X)

*strings.21726:	No ha podido conectarse con '%s' por un error de LDAP '%s' (0x%02X)

*strings.21727:	No ha podido conectarse con '%s' por un error de LDAP '%s' (0x%02X)

*strings.21728:	No ha podido buscarse '%s' por un error de LDAP '%s' (0x%02X)

*strings.21729:	No ha podido modificarse los datos de '%s' por un error de LDAP '%s' (0x%02X)

*strings.21730:	Se han encontrado %d apariciones.

*strings.21731:	¿Desea cancelar la suscripción a %s?

*strings.21732:	Recibidos %ld de %ld encabezados.

*strings.21733:	No hay mensajes nuevos en el grupo de debate.

*strings.21734:	Recibidos %ld de %ld mensajes.

*strings.21735:	Correo: buscando carpetas de correo...

*strings.21736:	Omitir tema

*strings.21737:	Omitir temas

*strings.21738:	Observar tema

*strings.21739:	Observar temas

*strings.21740:	Nombre

*strings.21741:	Fax

*strings.21742:	Nombre

*strings.21743:	ciudad

*strings.21744:	Fotografía

*strings.21745:	Dirección electrónica

*strings.21746:	Gerente

*strings.21747:	Empresa

*strings.21748:	Clase de objeto

*strings.21749:	departamento

*strings.21750:	Dirección postal

*strings.21751:	Auxiliar administrativo

*strings.21752:	Apellidos

*strings.21753:	Dirección

*strings.21754:	Teléfono

*strings.21755:	Cargo

*strings.21756:	Matrícula del vehículo

*strings.21757:	Categoría comercial

*strings.21758:	Notas

*strings.21759:	Número de departamento

*strings.21760:	Tipo de empleado

*strings.21761:	Código postal

*strings.21762:	(seguro)

*strings.21763:	Esta persona no tiene dirección de conferencia. Modifique sus\ndatos y vuelva a llamar.

*strings.21764:	No se puede borrar la base de datos local de %s.\nPuede que esté leyendo un grupo de debate en una ventana de cadena.\n¿Desea cancelar la suscripción?

*strings.21765:	Introduzca la dirección de conferencia de esta persona y vuelva a llamar.

*strings.21766:	Introduzca la dirección electrónica de esta persona y vuelva a llamar.

*strings.21767:	No se encuentra la aplicación de conferencias de Mozilla. Puede que necesite instalarla.

*strings.21768:	Sólo puede llamar a una persona con la aplicación de conferencias de Mozilla. Elija los\ndatos de una persona y vuelva a llamar.

*strings.21769:	Ya existe una entrada para %s. ¿Desea reemplazarla?

*strings.21770:	El nombre de archivo contiene caracteres no válidos. Use otro nombre.

*strings.21771:	%s es un grupo de debate virtual. Si\nlo borra, el servidor dejará de anunciar artículos en el\ngrupo a menos que vuelva a guardar los criterios de búsqueda.\n\n

*strings.21772:	Hallados %ld artículos para recuperar

*strings.21773:	Recibiendo artículo %ld de %ld

*strings.21774:	Recuperando el artículo %ld

*strings.21775:	Anchura = %ld

*strings.21776:	Altura = %ld

*strings.21777:	(%ld%% de %s originales)

*strings.21778:	(%ld%% de %s anteriores)

*strings.21779:	anchura

*strings.21780:	altura

*strings.21781:	y 

*strings.21782:	pixeles  

*strings.21783:	% de ventana  

*strings.21784:	Provincia

*strings.21785:	Nacional

*strings.21786:	Internacional

*strings.21787:	Postal

*strings.21788:	Mensajería

*strings.21789:	Trabajo

*strings.21790:	Inicio

*strings.21791:	Preferente

*strings.21792:	Teléfono

*strings.21793:	Fax

*strings.21794:	Mensaje

*strings.21795:	Móvil

*strings.21796:	Buscapersonas

*strings.21797:	BBS

*strings.21798:	Módem

*strings.21799:	Automóvil

*strings.21800:	RDSI

*strings.21801:	Vídeo

*strings.21802:	AOL

*strings.21803:	Applelink

*strings.21804:	AT&T Mail

*strings.21805:	Compuserve

*strings.21806:	eWorld

*strings.21807:	Internet

*strings.21808:	IBM Mail

*strings.21809:	MCI Mail

*strings.21810:	Powershare

*strings.21811:	Prodigy

*strings.21812:	Télex

*strings.21813:	Nombre adicional

*strings.21814:	Prefijo

*strings.21815:	Sufijo

*strings.21816:	Huso horario

*strings.21817:	Posición geográfica

*strings.21818:	Sonido

*strings.21819:	Revisión

*strings.21820:	Versión

*strings.21821:	Clave pública

*strings.21822:	Logotipo

*strings.21823:	Apodo

*strings.21824:	Teléfono domicilio

*strings.21825:	Fecha de nacimiento

*strings.21826:	X400

*strings.21827:	Dirección

*strings.21828:	Etiqueta

*strings.21829:	Función de envío

*strings.21830:	Papel

*strings.21831:	Actualizar a partir de

*strings.21832:	Dirección de conferencias

*strings.21833:	Correo HTML

*strings.21834:	Añadir al libro de direcciones personal

*strings.21835:	Anchura variable

*strings.21836:	Anchura fija

*strings.21837:	Helvetica

*strings.21838:	Arial,Helvetica

*strings.21839:	Times

*strings.21840:	Times New Roman,Times

*strings.21841:	Courier

*strings.21842:	Courier New,Courier

*strings.21843:	Este documento tiene %ld caracteres. El corrector ortográfico no puede procesar más de %ld caracteres.

*strings.21844:	No puede pegar todo este texto en una sola operación.\nIntente pegar el texto en varios segmentos más pequeños.

*strings.21845:	Borrar de todas las listas

*strings.21846:	Añadir tarjetas al libro de direcciones de Mozilla: %s

*strings.21847:	Actualizando listas de discusiones en %s

*strings.21848:	Importar

*strings.21849:	Copiando tarjetas del libro de direcciones de Mozilla: %s

*strings.21850:	Exportar

*strings.21851:	Borrando entradas de %s

*strings.21852:	Copiando entradas a %s

*strings.21853:	Desplazando entradas a %s

*strings.21854:	Borrar '%s' va a borrar sus tarjetas y listas de discusión.\n\
¿Está seguro que quiere borrar ese libro de direcciones?

*strings.21855:	Borrar '%s' borrará este directorio.\n\
¿Está seguro de querer borrar este directorio?

*strings.21856:	Un archivo libro de direcciones en sus preferencias usa un formato\n\
de desarollo. El formato ha cambiado entre tanto y la importación\n\
en formato binario en ese formato no está soportada.\n\
Sus preferencias serán cambiadas para usar un nuevo archivo.

*strings.21857:	Directorio

*strings.21858:	por %s

*strings.21859:	Debe tener por lo menos un libro de direcciones.

*strings.21860:	Cambie la acción en copia manteniendo pulsada la tecla Ctrl

*strings.21861:	Cambie la acción en desplazamiento manteniendo pulsada la tecla Mayúsculas

!*strings.21862:

*strings.21863:	Borrar del libro de direcciones

*strings.21864:	Ya existe un libro de direcciones o directorio con ese nombre.\n\
Entre un nombre diferente por favor.

*strings.21865:	Se encontraron correspondencias múltiples

*strings.21866:	No se encontró ninguna correspondencia

*strings.21867:	Todas las direcciones corresponden

*strings.21868:	Todas las direcciones tienen correspondencias múltiples

*strings.21869:	No se encontró ninguna correspondencia

*strings.21870:	%d correspondencias múltiples

*strings.21871:	%s tiene correspondencias múltiples

*strings.21872:	%s corresponde

*strings.21873:	se encontraron %d correspondencias

*strings.21874:	%s no corresponde

*strings.21875:	%d no corresponden

*strings.21876:	Celular

!*strings.21877:Pager

*strings.21880:	Debe guardar\n\
%s\n\
en un archivo local antes de modificarlo.\n\
¿Desea guardarlo ahora?

*strings.21881:	¿Desea añadir %s a sus preferencias de LDAP?

*strings.21882:	Tarjeta de %s

*strings.21883:	Asunto

*strings.21884:	Reenviado-Comentarios

*strings.21885:	Reenviado-Fecha

*strings.21886:	Reenviado-Remitente

*strings.21887:	Reenviado-De

*strings.21888:	Reenviado-A

*strings.21889:	Reenviado-CC

*strings.21890:	Fecha

*strings.21891:	Remitente

*strings.21892:	De

*strings.21893:	Responder a

*strings.21894:	Empresa

*strings.21895:	Para

*strings.21896:	CC

*strings.21897:	Grupos de noticias

*strings.21898:	Seguimiento a

*strings.21899:	Referencias

*strings.21900:	Nombre

*strings.21901:	Tipo

*strings.21902:	Codificación

*strings.21903:	Descripción

*strings.21904:	No han podido iniciarse los servidores de grupos de debate. Puede que el Directorio de grupos de debate elegido sea incorrecto.\nPodrá anunciarse en grupos de debate, pero no leerlos.

*strings.21905:	Remitente

*strings.21906:	Todo

*strings.21907:	Correo en %s

*strings.21908:	No se puede mover la carpeta %s dentro de una carpeta a la que contiene

*strings.21909:	Se han creado %ld nuevos grupos de debate en el servidor %s. Para ver la lista\nde grupos nuevos, elija "Unirse al debate"\n y haga clic en la ficha "Nuevos grupos de debate".

*strings.21910:	Buscando nombres de grupos...

*strings.21911:	Enviar cifrado

*strings.21912:	Enviar firmado criptográficamente

*strings.21913:	Seguridad

*strings.21925:	Enlazar con documento

*strings.21926:	<B>Información sobre el documento:</B>

*strings.21927:	En el mensaje %s %s, escribió:<P>

*strings.21928:	%s escribió:<P>

*strings.21929:	tipo no especificado

*strings.21930:	Éste es un mensaje firmado criptográficamente en formato MIME.

*strings.21931:	Marcados %ld mensajes como leídos

*strings.21932:	Marcados %ld mensajes como leídos... Terminado

*strings.21933:	Ident. del mensaje

*strings.21934:	Reenviado-Mensaje-ID

*strings.21935:	CCC

*strings.21936:	No se puede borrar la carpeta reservada '%s'.

*strings.21937:	No se puede buscar en la carpeta '%s' porque no tiene un archivo de resumen.

*strings.21938:	Nuevo

*strings.21939:	Libro de direcciones personal

*strings.21940:	Por estado

*strings.21941:	Nuevo

*strings.21942:	Pregunta sobre correo HTML

*strings.21943:	No consta que algunos de los destinatarios puedan recibir correo\nHTML. ¿Desea convertir el mensaje a texto normal, o enviarlo\nen HTML de todos modos?\n<p>\n<table>\n<tr><td valign=top>\n%-cont-%

*strings.21944:	<input type=radio name=mail value=1 checked>\n</td><td valign=top>\nEnviar en texto normal y HTML\n</td></tr><tr><td valign=top>\n<input type=radio name=mail value=2>\n</td><td valign=top>\n%-cont-%

*strings.21945:	Enviar sólo en texto normal\n</td></tr><tr><td valign=top>\n<input type=radio name=mail value=3>\n</td><td valign=top>\nEnviar sólo en HTML\n</td></tr>\n</table>\n<center>\n<script>\n%-cont-%

*strings.21946:	function Doit(value) {\n    document.theform.cmd.value = value;\n    document.theform.submit();\n}\n</script>\n<input type=hidden name=cmd value=-1>\n%-cont-%

*strings.21947:	<input type=button value="Enviar" onclick="Doit(0);">\n<input type=button value="No enviar" onclick="Doit(1);">\n<input type=button value="Destinatarios..." onclick="Doit(2);">\n%-cont-%

*strings.21948:	<input type=button value="Ayuda" onclick="Doit(3);">\n<input type=hidden name=button value=0>\n</center>\n

!*strings.21949:

!*strings.21950:

!*strings.21951:

!*strings.21952:

!*strings.21953:

*strings.21954:	<todos>

*strings.21955:	Destinatarios de HTML

*strings.21956:	No consta que los siguientes destinatarios y dominios puedan leer mensajes HTML.\nSi la lista es incorrecta, puede cambiarla.\n%-cont-%

*strings.21957:	<p>\n\
<table>\n\
<tr>\n\
<td>No prefiere HTML</td>\n\
<td></td>\n\
<td>Prefiere HTML</td>\n\
</tr>\n\
<tr>\n\
<td>\n\
<select name=nohtml size=7 multiple\n\
%-cont-%

*strings.21958:	onChange="SelectAllIn(document.theform.html, false);">\n\
%1%\n\
</select>\n\
</td>\n\
<td>\n\
<center>\n\
<input type=button name=add\n\
value="A&ntilde;adir &gt; &gt;" onclick="DoAdd();">\n\
%-cont-%

*strings.21959:	<p>\n\
<input type=button name=remove\n\
value="&lt; &lt; Borrar" onclick="DoRemove();">\n\
</center>\n\
</td>\n\
<td>\n\
<select name=html size=7 multiple\n\
%-cont-%

*strings.21960:	onChange="SelectAllIn(document.theform.nohtml, false);">\n%2%\n</select>\n</td>\n</tr>\n</table>\n<p>\n<center>\n%-cont-%

*strings.21961:	<input type=button value=OK onclick="SelectAll(); Doit(0);">\n<input type=button value=Cancelar onclick="Doit(1);">\n<input type=button value=Help onclick="Doit(2);">\n%-cont-%

*strings.21962:	<input type=hidden name=cmd value=-1>\n<input type=hidden name=button value=0>\n</center>\n<script>\n%0%\n</script>\n

!*strings.21963:

!*strings.21964:

!*strings.21965:

!*strings.21966:

!*strings.21967:

*strings.21968:	Ya existe una entrada del libro de direcciones con este nombre y dirección electrónica.

*strings.21969:	Esta entrada del libro de direcciones ya está en la lista.

*strings.21970:	Personalizado 1

*strings.21971:	Personalizado 2

*strings.21972:	Personalizado 3

*strings.21973:	Personalizado 4

*strings.21974:	Personalizado 5

*strings.21975:	Las listas de distribución sólo pueden contener entradas de libro de direcciones personal.\n¿Desea añadir %s al libro de direcciones?

*strings.21976:	Una lista de distribución no puede tenerse a sí misma como integrante.

*strings.21977:	Nueva tarjeta

*strings.21978:	Nueva tarjeta personal

*strings.21979:	Tarjeta personal de %s

*strings.21980:	CC: %s

*strings.21981:	CCC: %s

*strings.21982:	A: %s

*strings.21983:	No se puede guardar %s. El disco está lleno\no el archivo está bloqueado.\n\nGuárdelo en otro disco o con otro nombre.

*strings.21984:	Ha fallado la llamada HEAD al servidor.\nEnvío cancelado.

*strings.21985:	No se puede abrir el archivo de base de datos del libro de direcciones.

*strings.21986:	Ya existe una lista de distribución con ese nombre.

*strings.21987:	Mozilla no puede importar este archivo al libro de direcciones.

*strings.21988:	Correo: depurando el grupo de debate %s...

*strings.21989:	Correo: depurando el grupo de debate %s... encabezado %ld

*strings.21990:	Depurando el grupo de debate %s... artículo %ld

*strings.21991:	Correo: depurando el grupo de debate %s... Terminado

*strings.21992:	Asegúrese de especificar el URL completo,\npor ejemplo, http://talmáquina/taldirectorio/talarchivo.html\n\n¿Desea publicar en este URL?

*strings.21993:	Destino de publicación incorrecto.

*strings.21994:	El destino de publicación contiene, al menos, un carácter incorrecto.

*strings.21995:	El destino de publicación debe comenzar por ftp:// o http://

*strings.21996:	El destino de publicación termina en barra.

*strings.21997:	El destino de publicación no tiene extensión de archivo.

*strings.21998:	Origen de: 

*strings.21999:	El servidor 

*strings.22000:	\n\
quiere asignar una cookie que será enviada 

*strings.22001:	\n\
a cualquier servidor en el dominio 

*strings.22002:	a sí mismo únicamente.

*strings.22003:	\n\
El nombre y valor de la cookie son:\n

*strings.22004:	\n\
Esta cookie seguirá activa hasta que 

*strings.22005:	\n\
¿Desea que se active la cookie?

*strings.22006:	Tamaño del contenido:

*strings.22007:	Tamaño real del contenido:

*strings.22008:	Tipo de contenido:

*strings.22009:	Archivo local:

*strings.22010:	Fecha de la última modificación:

*strings.22011:	Caduca:

*strings.22012:	Último acceso:

*strings.22013:	Juego de caracteres:

*strings.22014:	Seguro

*strings.22015:	Utiliza vía de acceso relativa:

*strings.22016:	Del servidor Netscape:

*strings.22017:	Si cambia la codificación de caracteres, puede alterar\n algunos de los incluidos en el documento.\nEste cambio es irreversible.\n¿Desea continuar?

*strings.22018:	Estos enlaces podrían dar error ya que hacen\nreferencia a archivos del disco duro.\n\n%s\nSi está seguro de haberlos configurado correctamente,\n haga clic en Aceptar para continuar con la publicación.

*strings.22019:	No se puede guardar %s porque el disco está\nlleno o el archivo está bloqueado.\nGuárdelo en otro disco o con otro nombre.

*strings.22020:	\n\nSi continúa guardando, % no se publicará con\nesta página.

*strings.22021:	No puede guardarse el archivo %s asociado con\nesta página. Asegúrese de que el archivo está en el lugar correcto.

*strings.22022:	No puede guardarse el archivo %s asociado con\nesta página porque hay algún error.

*strings.22023:	Ha surgido un problema al preparar %s para su\npublicación. Mozilla no puede crear un archivo temporal.

*strings.22024:	\n\nCompruebe que su disco duro no esté lleno.

*strings.22025:	Ha surgido un problema al preparar %s para su\npublicación. Mozilla no puede crear un archivo temporal.

*strings.22026:	\n\nSi continúa guardando, % no se publicará con\nesta página.

*strings.22027:	Mozilla no puede preparar el archivo %s para\nsu publicación. Asegúrese de que el archivo está en el lugar correcto.

*strings.22028:	No se puede publicar el archivo %s asociado con\nesta página porque ha surgido un problema con el archivo.

*strings.22029:	Ha surgido un problema al preparar el archivo para enviar.\nMozilla no puede crear un archivo temporal.

*strings.22030:	Ha surgido un problema al preparar el archivo %s para enviar.\nMozilla no puede crear un archivo temporal.

*strings.22031:	Mozilla no puede preparar el archivo %s para\nsu envío. Asegúrese de que el archivo está en el lugar correcto.

*strings.22032:	No se puede enviar el archivo %s asociado con\nesta página porque ha surgido un problema con el archivo.

*strings.22033:	\n\nSi continúa, %s no será enviado con \nesta página.

*strings.22034:	Ver tarjeta completa

*strings.22035:	Ver tarjeta resumida

*strings.22036:	Por señal

*strings.22037:	Por no leído

*strings.22038:	Por tamaño

*strings.22039:	Mozilla no ha podido conectarse a la red porque\nestá en modo desconectado.\nElija Conectar en el menú Archivo y vuelva a intentarlo.

*strings.22040:	

*strings.22041:	, 

*strings.22042:	No se puede pasar ese elemento al lugar indicado.

*strings.22043:	Introduzca la contraseña para proteger los datos que se exporten:

*strings.22044:	en %s

*strings.22045:	en los elementos seleccionados

*strings.22046:	en las carpetas de correo en desconectado

*strings.22047:	en las carpetas de correo en conectado

*strings.22048:	en los grupos de debate suscritos

*strings.22049:	en los grupos de debate con capacidad de búsqueda

*strings.22050:	Servidor de Conferencia DLS de Netscape

*strings.22051:	Servidor DLS Específico

*strings.22052:	Nombre del sistema o dirección IP

*strings.22053:	Dirección de conferencias

*strings.22054:	Información adicional:

*strings.22055:	Dominios HTML

!*strings.22056:	<script>\n\
function DeleteSelected() {\n\
  selname = document.theform.selname;\n\
  gone = document.theform.gone;\n\
  var p;\n\
  var i;\n\
  for (i=selname.options.length-1 ; i>=0 ; i--) {\n\
%-cont-%

!*strings.22057:	if (selname.options[i].selected) {\n\
      selname.options[i].selected = 0;\n\
      gone.value = gone.value + "," + selname.options[i].text;\n\
      for (j=i ; j<selname.options.length ; j++) {\n\
%-cont-%

!*strings.22058:	selname.options[j] = selname.options[j+1];\n\
      }\n\
    }\n\
  }\n\
}\n\
%-cont-%

!*strings.22059:function AddNewDomain() {\n\
  selname = document.theform.selname;\n\
  if (document.theform.newDomain.value == "")\n\
    return;\n\
  var i;\n\
%-cont-%

!*strings.22060:	 for (i=0; i<selname.options.length; i++) {\n\
    if (selname.options[i].text == document.theform.newDomain.value)\n\
      return;\n\
  }\n\
  newName = new Option(\n\
   document.theform.newDomain.value, document.theform.newDomain.value);\n\
%-cont-%

!*strings.22061:   selname.options[selname.options.length] = newName;\n\
   newlist = document.theform.newdom;\n\
   newlist.value = newlist.value + "," + newName.value;\n\
}\n\
%-cont-%

*strings.22062:</script>\n\
Ésta es una lista de dominios que aceptan correo HTML. Se considera que\n\
todas las direcciones electrónicas que terminan con este nombre de dominio\n\
utilizan un lector de correo compatible con HTML, como Mozilla.<p>\n\
%-cont-%

*strings.22063:\
Parar borrar un dominio de la lista, haga clic en él y\n\
luego en Eliminar. Añada nuevos dominios entrando el nombre del dominio\n\
y cliqueando en Añadir nuevo dominio.<p>\n\
<select name=selname multiple size=10>\n\
%0%\n\
%-cont-%

*strings.22064:</select>\n\
<input type=button value=Eliminar onclick="DeleteSelected();">\n\
<BR><input type="text" name="newDomain"\n\
 SIZE=16 VALUE="" onFocus="this.select()">\n\
%-cont-%

*strings.22065:<input type=button value="Añadir nuevo dominio" onclick="AddNewDomain()">\n\
<input type=hidden name=gone value="">\n\
<input type=hidden name=newdom value="">\n

*strings.22066:	El grupo de debate %s estaba aceptando HTML porque todos los grupos que comenzaban\n por "%s" estaban marcados para aceptar HTML. Esta opción\n cambiará esa situación y los grupos "%s"\nya no aceptarán HTML.

*strings.22067:	Siguiente categoría

*strings.22068:	Parece que el grupo de debate %s no existe en el sistema central %s.\n¿Desea suspender su suscripción con este grupo?

*strings.22079:	Mostrar información sobre seguridad

*strings.22080:	Cifrado <BR><NOBR>y firmado</NOBR>

*strings.22081:	Firmado

*strings.22082:	Cifrado

*strings.22083:	Certificados

*strings.22084:	Firma incorrecta

*strings.22085:	Firma incorrecta

*strings.22086:	Cifrado incorrecto

*strings.22087:	Certificados incorrectos

*strings.22088:	Crea un nuevo grupo de debate en el servidor seleccionado.

*strings.22089:	Crea una nueva categoría en este grupo de debate.

*strings.22090:	%s no tiene dirección electrónica definida.

*strings.22091:	%ld mensajes caducados.

*strings.22092:	%ld mensajes caducados... Terminado.

*strings.22093:	Papelera

*strings.22094:	Buzón de entrada

*strings.22095:	Mensajes no enviados

*strings.22096:	Borradores

*strings.22097:	Enviado

*strings.22098:	Carpeta nueva

*strings.22099:	Cambiar nombre de carpeta

*strings.22100:	Administrar cuenta de correo

*strings.22101:	Mozilla no puede administrar la cuenta de correo.\nConsulte al administrador de la cuenta de\ncorreo o vuelva a intentarlo.

*strings.22102:	Administrar grupo de noticias

*strings.22103:	Mozilla no encuentra el servidor socks:\n\
  %s.200s\n\
El servidor no tiene entrada DNS.\n\
\n\
Compruebe el nombre del servidor socks en la configuración\n\
del proxy y vuelva a intentarlo.

*strings.22104:	Ese apodo ya existe; escriba otro.

*strings.22105:	Obtener nuevos mensajes de debate.

*strings.22106:	Correo local

*strings.22107:	%s debates

*strings.22108:	Recibiendo: cabeceras de mensajes %lu de %lu

*strings.22109:	Recibiendo: marcas de mensaje %lu de %lu

*strings.22110:	Borrando mensajes...

*strings.22111:	Borrando el mensaje...

*strings.22112:	Pasando mensajes a %s...

*strings.22113:	Pasando el mensaje a %s...

*strings.22114:	Copiando mensajes a %s...

*strings.22115:	Copiando el mensaje a %s...

*strings.22116:	Abriendo buzón %s...

*strings.22117:	¿Desea sacar %s de su carpeta predeterminada?\nLa próxima vez que abra Mozilla, se creará\nuna nueva carpeta %s en la dirección predeterminada.

*strings.22118:	Actualizar el cómputo de mensajes

*strings.22119:	Borrando %lu de %lu mensajes.

*strings.22120:	Copiando %lu de %lu mensajes.

*strings.22121:	Pasando %lu de %lu mensajes a %s.

*strings.22122:	Archivo enviado correctamente.

*strings.22123:	%d archivos enviados correctamente.

*strings.22124:	Correo: enviando el mensaje %ld a %s...

*strings.22125:	Correo: enviando el mensaje %ld...

*strings.22126:	Va a reenviar un mensaje no cifrado que sí lo estaba cuando\nfue recibido. Si envía este mensaje sin cifrar\nreducirá el nivel de confidencialidad del mensaje adjunto.\n\n¿Desea enviarlo sin cifrar?

!*strings.22127:\n\
\n\
Browse to your default publishing location now?
*strings.22127:	\n\n¿Desea examinar la dirección de publicación predeterminada ahora?

*strings.22128:	No puede copiar y pegar de una versión a otra\nde Composer/Editor de páginas Web.

*strings.22129:	No puede copiar y pegar de una ventana a otra que tenga\n distinta codificación del juego de caracteres.

*strings.22130:	Las URLs de NFS no están soportadas internamente, use un servidor proxy HTTP: 

*strings.22131:	Marcar la categoría como leída

*strings.22132:	¿Desea cambiar las reglas de filtrado para que se ajusten a la nueva dirección de la carpeta?

*strings.22133:	¿Desea desactivar la regla para esta carpeta?

*strings.22134:	Tipos de letras dinámicos

*strings.22135:	<H2>Visualizadores de letras instalados<HR WIDTH=100%></H2>\n <FONT SIZE=+0>\n A continuación están los visualizadores de tipos de letras y los formatos\n de letras admitidos por cada uno.

*strings.22136:	Utilice los botones circulares para activar o desactivar el formato\nde un visualizador concreto.<P>

*strings.22137:	Si desea más información sobre los Tipos de letras dinámicos de Mozilla, haga clic en <a href=http://home.netscape.com/comprod/products/communicator/version_4.0/dynfonts  target=aboutDynamicFonts>aquí</a><hr>

!*strings.22138:</FONT>

*strings.22139:	<TABLE BORDER WIDTH=99%%><TR>\n <TD COLSPAN=3><B>%s</B><BR>%s<BR>Ubicado en: %s<BR><BR></TD>\n </TR>

*strings.22140:	<TABLE BORDER WIDTH=99%%><TR>\n <TD COLSPAN=3><B>%s</B><BR>%s<BR><BR></TD>\n </TR>

*strings.22141:	<TR>\n <TD WIDTH=33%%><INPUT NAME="%s" TYPE=Radio VALUE="%s" %s><B>%s</B></TD>\n <TD WIDTH=50%%>%s</TD>\n <TD>%s</TD>\n </TR>

!*strings.22142:</TABLE>\n\
 <BR>\n\
 <BR>

*strings.22143:	<B>No hay visualizadores instalados</B>

*strings.22144:	Visualizador de tipo de letra predeterminada de Mozilla

*strings.22145:	Este visualizador de tipos de letra administra los tipos de letra instalados en el equipo.

*strings.22146:	Buzón de salida

*strings.22147:	La carpeta 'Buzón de salida' contiene un mensaje que no\nestá programado para ser enviado.

*strings.22148:	La carpeta 'Buzón de salida' contiene %d mensajes que no\nestán programados para ser enviado.

*strings.22149:	\n\nEsto significa que otro programa distinto a Mozilla\nha añadido mensajes a esta carpeta.\n

*strings.22150:	La carpeta 'Buzón de salida' es especial, sólo contiene\nmensajes programados para envío posterior.

*strings.22151:	El archivo de configuración local especifica una URL de configuración, pero no se ha cargado el componente AutoAdmin, que es necesario para operar con URL de configuración a distancia. No podrá cargar ningún documento remoto.

*strings.22152:	Añadiendo al libro de direcciones: %ld de %ld

*strings.22153:	<B><FONT COLOR="#808080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Interno</FONT></B>

*strings.22154:	Nombre del archivo a importar

*strings.22155:	Nombre del archivo a exportar

*strings.22156:	Este documento tiene %ld bytes. Es demasiado extenso para ser leído por un plug-in del editor de páginas Web. El máximo permitido es %ld bytes.

*strings.22157:	El plug-in del editor de páginas Web ha intentado crear un documento que tiene %ld bytes. El tamaño máximo permitido es %ld bytes.

*strings.22158:	Mensaje cifrado S/MIME

*strings.22159:	Firma criptográfica S/MIME

*strings.22160:	Mozilla no ha podido abrir Netcaster.\nAsegúrese de que está instalado.

*strings.22161:	El editor de páginas Web no puede abrir la página '%s'.\n\nDebe introducir una dirección o vía de acceso completas,\npor ejemplo, 'http://miproveedor.com/mipagina.html'

*strings.22162:	%d bits %s

*strings.22163:	Sólo se permite una operación al mismo tiempo en esta carpeta.\nEspere hasta que la otra operación concluya y vuelva a intentarlo.

*strings.22164:	El servidor de grupos de noticias '%s' no está configurado \npara buscar '%s'

*strings.22165:	Mozilla no ha podido abrir Netcaste porque Java y/o JavaScript no están activados. \nAsegúrese de que sus preferencias avanzadas son correctas e inténtelo de nuevo.

!*strings.22170:0,0,0,Default color

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

*strings.22262:	Ha fallado SmartUpdate: el archivo de datos recibido no es un archivo JAR.

*strings.22263:	Ha fallado SmartUpdate: el archivo de datos JAR no ha pasado la comprobación de seguridad. %d

*strings.22264:	Ha fallado SmartUpdate: el archivo de datos JAR no tiene información de instalación.

*strings.22265:	Ha fallado SmartUpdate: falta un archivo de instalación %s en el archivo de datos JAR.

*strings.22266:	No se ha recibido ningún archivo de configuración automática.\n\nNo podrá cargar documentos de la red.\nSolicite ayuda al administrador del sistema local.

*strings.22267:	El archivo de configuración automática no es del tipo correcto:\n\n        %s\n\nSe esperaba el tipo MIME de application/x-javascript-config.

*strings.22268:	No se ha cargado el archivo de configuración automática.\n\nNo podrá cargar documentos de la red.\nSolicite ayuda al administrador del sistema local.

*strings.22269:	No se ha recibido ningún archivo de configuración automática.\n\nSe utilizarán los valores de la última configuración como predeterminados.

*strings.22270:	El archivo de configuración automática de seguridad contenía errores.\n\nSe utilizará la configuración normal como predeterminada.

*strings.22271:	El archivo de configuración automática tenía errores:\n\n        %s\n\nSe utilizará la configuración normal como predeterminada.

*strings.22272:	Se ha cancelado la carga de la configuración automática.\n\nSe utilizará la configuración normal como predeterminada.

*strings.22273:	Se han exportado los certificados correctamente.

*strings.22274:	Se han importado los certificados correctamente.

*strings.22275:	Escriba los datos de protección de contraseñas que desee importar:

*strings.22276:	¿Desea añadir el resto de las direcciones al libro de direcciones personal?

*strings.22277:	Certificado del usuario

*strings.22278:	Certificado de correo electrónico del usuario

*strings.22279:	La Papelera ya contiene una carpeta denominada '%s'.\nVacíe la papelera o cambie el nombre de la carpeta.

*strings.22280:	La Papelera ya contenía una carpeta denominada '%s'.\nLa carpeta que acaba de borrar está en la Papelera,\ncon el nombre nuevo de '%s'.

*strings.22281:	No se ha ejecutado este comando. El servidor IMAP no ha respondido:\n%s

*strings.22282:	¿Dónde desea instalar %s?

*strings.22283:	Ver el código del documento

*strings.22284:	<H3>Sin información mientras se carga el documento </H3>\n

*strings.22285:	<LI>Marco: 

*strings.22286:	Imagen:

*strings.22287:	Incrustar:

*strings.22288:	Applet:

*strings.22289:	Imagen de Fondo: 

*strings.22290:	<LI>Acción URL: 

*strings.22291:	<LI>Codificación: 

*strings.22292:	<LI>Método: 

*strings.22293:	<LI>Capa: 

*strings.22294:	Algunos de estos archivos adjuntos contienen información específica de Macintosh que se perderá al codificar con UUENCODE. ¿Desea continuar con el envío?

*strings.22295:	Vuelva a introducir la contraseña para confirmarla:

*strings.22296:	Las contraseñas introducidas no coinciden.\nEscriba la contraseña que protege los datos exportados:

*strings.22297:	Creando buzón...

*strings.22298:	Abriendo buzón...

*strings.22299:	Borrando buzón %s...

*strings.22300:	Renombrando buzón %s...

*strings.22301:	Buscando buzones...

*strings.22302:	Suscribiéndose al nuevo buzón %s...

*strings.22303:	Desuscribiendo del buzón %s...

*strings.22304:	Buscando buzón...

*strings.22305:	Obteniendo información del mensaje...

*strings.22306:	Cerrando buzón...

*strings.22307:	Compactando buzón...

*strings.22308:	Saliendo...

*strings.22309:	Comprobando la capacidad del servidor IMAP...

*strings.22310:	Enviando información de acceso...

*strings.22311:	Enviando información de acceso autenticada...

*strings.22312:	SmartUpdate no terminará hasta que no reinicie Windows

*strings.22313:	al remitente

!*strings.22314:untitled
*strings.22314:	notitulo

*strings.22315:	¿Avanzar al siguiente mensaje no leído en %s?

*strings.22316:	Se ha desactivado el acceso al número de puerto indicado\npor razones de seguridad

*strings.22317:	Mínima

*strings.22318:	Baja

*strings.22319:	Normal

*strings.22320:	Alta

*strings.22321:	Máxima

*strings.22322:	Ninguno

!*strings.22323:Receiving: message totals: %lu of %lu
*strings.22323:	Recibiendo: mensaje totales: %lu de %lu

*strings.22324:	Entre su %s y contraseña para acceder a %s

*strings.22325:	%s - Recibiendo: %lu mensajes de %lu

*strings.22326:	Disculpe pero Collabra ha sido desactivado; la funcionalidad para grupos de noticias no está disponible

!*strings.22327:Downloading message...
*strings.22327:	Recuperando mensajes...

*strings.22328:	La carpeta fué creada, pero Mozilla no pudo suscribir la nueva carpeta.

*strings.22329:	La carpeta fué borrada, pero Mozilla no pudo desuscribir la carpeta.

*strings.22330:	La carpeta fué desplazada, pero Mozilla no pudo suscribir al nuevo nombre.

*strings.22331:	La carpeta fué desplazada, pero Mozilla no pudo desuscribir al antiguo nombre.

*strings.22332: ¿Cerrar ventana?

*strings.22333: ¿Cerrar ventana %s?

*strings.22334:	Sus cookies

!#-
!*strings.22335:Maximum number of cookies allowed:

!*strings.22336:The number of cookies you have:

!*strings.22337:Maximum number of cookies per server:

!*strings.22338:Maximum size of each cookie:

!*strings.22339:You have no cookies.

*strings.22340:	Nombre:

*strings.22341:	Valor:

!#-
!*strings.22342:Host:

!*strings.22343:Send to host:

!*strings.22344:any host in the domain from the host above

!*strings.22345:the above fully qualified host only

!*strings.22346:Send to path:

!*strings.22347: (and below)

*strings.22348:	Seguro:

*strings.22349:	Caduca:

*strings.22350:	al final de la sesión

*strings.22351:Resultadi de la búsqueda LDAP

*strings.22352:Mensaje del filtro de cookies Javascript:\n

*strings.22353:Editar mensaje del filtro JavaScript

*strings.22354:Nuevo mensaje del filtro JavaScript

*strings.22355:<form name=jsfilterdlg_form action=internal-panel-handler method=post> <table width="100%%"> <tr><td colspan=2 bgcolor="#000000">     <font color="#ffffff">Mensaje del filtro JavaScript</font> %-cont-%

*strings.22356:<tr><td align=right>Nombre del filtro: \n\
    <td><input name="filter_name" type=text size=30 value="%0%"> %-cont-%

*strings.22357:<tr><td align=right>Función JavaScript: \n\
     <td><input name="filter_script" type=text size=30 value="%1%"> %-cont-%

*strings.22358:<tr><td align=right>Descripción: \n\
    <td><input name="filter_desc" type=text size=30 value="%2%"> %-cont-%

*strings.22359:<tr><td align=right>El filtro está \n\
    <td><input type=radio name=enabled value=on %3%>activado <input type=radio name=enabled value=off %4%>desactivado </table></form>

!*strings.22360:

!*strings.22361:

!*strings.22362:

!*strings.22363:

!*strings.22364:

!#-
!*strings.22365:Retrieve selected messages

!*strings.22366:Retrieve flagged messages

!*strings.22367:Checking IMAP Namespace...

!*strings.22368:Communicator is unable to replicate the directory because the server's change log information is incomplete.\n\
The change log information may be invalid or incompatible with Communicator.

!*strings.22369:Communicator is unable to replicate the directory because the server's replication information is incomplete.\n\
The server may not support or may not be configured for replication.

!*strings.22370:Can't replicate at this time.  Netscape may be out of memory or busy.

*strings.22371:	Nuevo libro de direcciones...

*strings.22372:	Nuevo directorio...

*strings.22373:	Patrones

*strings.22374:	Guardando como borrador...

*strings.22375:	Guardando como patrón...

*strings.22376:	Añadir %s a su libro de direcciones

!#-
!*strings.22377:Enter a name for your new message template.

!*strings.22378:Note: this Return Receipt only acknowledges that the message was displayed on the recipient's machine. There is no guarantee that the content has been read or understood.

!*strings.22379:The message has been sent somewhere in some manner (e.g., printed, faxed, forwarded) without being displayed to the person you sent it to. They may or may not see it later.

!*strings.22380:The message has been processed in some manner (i.e., by some sort of rules or server) without being displayed to the person you sent it to. They may or may not see it later. There may not even be a human user associated the mailbox.

!*strings.22381:The message has been deleted. The person you sent it to may or may not have seen it. They might "undelete" it at a later time and read it.

!*strings.22382:The recipient of the message does not wish to send a return receipt back to you.

!*strings.22383:A failure occurred. A proper return receipt could not be generated or sent to you.

!*strings.22384:The sender of the message requested a receipt to be returned. \n\
Do you wish to send one?

!*strings.22385:Delivering message...

!*strings.22386:Delivering message... Done

!*strings.22387:Found folder: %s

!*strings.22388:Forward Inline

*strings.22389:	Patrón

*strings.22390: Buzón de correo

!#-
!*strings.22391:The mail server indicates that you may not have any personal mail folders.\n\
Please verify your subscriptions.

!*strings.22392:While trying to automatically subscribe, Netscape has found a large number of mail folders.\n\
Please select which folders you would like subscribed.

!*strings.22393:Netscape has detected that you have upgraded from a previous version of Communicator.\n\
You will need to choose which mail folders you want subscribed.

!*strings.22394:Any folders which are left unsubscribed will not appear in your folder lists,\n\
but can be subscribed to later by choosing File / Subscribe.

!*strings.22395:Would you like Netscape to try to automatically subscribe to all your folders?

!*strings.22396:Please choose which folders you want subscribed in the Subscribe window...

!*strings.22397:Please wait while Netscape upgrades you to use IMAP mail folder subscriptions...

!*strings.22398:The upgrade was successful.

!*strings.22399:You can have multiple mail servers if they are IMAP servers.  You are currently using a POP server.

!*strings.22400:Are you sure you want to delete this server?

!*strings.22401:Getting folder ACL...

!*strings.22402:Click here to remove all expired articles

!*strings.22403:Return Receipt (displayed)

!*strings.22404:Return Receipt (dispatched)

!*strings.22405:Return Receipt (processed)

!*strings.22406:Return Receipt (deleted)

!*strings.22407:Return Receipt (denied)

!*strings.22408:Return Receipt (failed)

!*strings.22409:Getting Server Configuration Info...

!*strings.22410:Getting Mailbox Configuration Info...

!*strings.22411:This body part will be downloaded on demand.

!*strings.22412:IMAP Error: The message could not be saved due to an error.

!*strings.22413:IMAP Error: The online folder information could not be retrieved.

!*strings.22414:Login failed.

!*strings.22415:Please enter some text to search for and try again.

!*strings.22416:Unverified Signature

!*strings.22417:Full Control

!*strings.22418:Lookup

!*strings.22419:Read

!*strings.22420:Set Read/Unread State

!*strings.22421:Write

!*strings.22422:Insert (Copy Into)

!*strings.22423:Post

!*strings.22424:Create Subfolder

!*strings.22425:Delete Messages

!*strings.22426:Administer Folder

!*strings.22427:Personal Folder

!*strings.22428:Personal Folder

!*strings.22429:Public Folder

!*strings.22430:Other User's Folder

!*strings.22431:This is a personal mail folder.  It is not shared.

!*strings.22432:This is a personal mail folder.  It has been shared.

!*strings.22433:This is a public folder.

!*strings.22434:This is a mail folder shared by the user '%s'.

*strings.22435:	Desconocido

!#-
!*strings.22436:Password entered doesn't match last password used with server.

*strings.22437:	No ha introducido una contraseña o ha excedido el número de intentos permitido. Esta ventana se cerrará.

!#-
!*strings.22438:Are you sure you want to remove the mail host %s?

!*strings.22439:Verify Signature

!*strings.22440:Toggle Attachment Pane

!*strings.22441:Download Status

!*strings.22442:Not downloaded with message

!*strings.22443:Show all recipients

!*strings.22444:The Newsgroups header is not valid

!*strings.22445:To choose which online mail folders are displayed by default in your folder list, select File / Subscribe.\n\

!*strings.22446:Show short recipient list

!*strings.22447:.* (%ld groups)

!*strings.22448: (%ld subfolder)

!*strings.22449: (%ld subfolders)

!*strings.22452:Waiting for connection to folder %s

!*strings.22453:Password for IMAP user %.100s on %.100s:

!*strings.22454:In the future, you can select which messages or folders to read offline. To do \n\

!*strings.22455:Communicator can only send a message to one news server at a time.

!*strings.22456:Please wait while Messenger rebuilds summary information \n\

!*strings.22457:The Followup-To header is not valid

!*strings.22460:About Related Items

*strings.22461:	Lista detallada...

!#-
!*strings.22462:Retrieving data

!*strings.22463:Nothing available

!*strings.22464:Disabled for this site

!*strings.22465:Replicating Directory

!*strings.22466:Connecting to directory server...

!*strings.22467:Replicating directory change entry %d

!*strings.22468:Replicating directory entry %d

!*strings.22469:Mail id invalid or not unique, cannot resolve to directory authorization entry.

*strings.22470:SmartUpdate\n\
Configurar la instalación de programas

*strings.22471:	Desinstalar 

*strings.22472:	¿Está seguro de querer desinstalar %s?

*strings.22473:	Error al desinstalar

!#-
!*strings.22474:SmartUpdate: Downloading Install

!*strings.22475:Location: %s

!*strings.22476:Communicator is unable to update your %s replica.\n\
The data is either too old or is corrupt.  Do you want to recreate the replica?

!*strings.22477:Updating Netscape Client Registry

!*strings.22478:Communicator is updating your Netscape registry.

*strings.22479:%d bytes de %d bytes

*strings.22480:SmartUpdate: %s

!#-
!*strings.22481:Unpacking files for installation

*strings.22482:	Instalando...

!#-
!*strings.22483:This is a Return Receipt for the mail that you sent to %s.

!*strings.22484:Please enter your password for access to %s

!*strings.22485:SmartUpdate failed: There is not enough disk space to complete this operation.

!*strings.22486:If this directory supports replication, click the Update Now button to start the process now.  Or, select the directory for downloading when you synchronize for working offline.

*strings.22487:	Grupo

!#-
!*strings.22488:Unread Folder

!*strings.22489:Unread Group

!*strings.22490:SmartUpdate warning:\n\
\n\
You are running low on disk space.  This install may not complete successfully.  Do you want to continue?

!*strings.22491:Retrieving %1$ld of %2$ld messages\n\
  in folder %3$s

!*strings.22492:There was a problem receiving your Javascript configuration file.\n\
As a result, you will not be able to connect to the network.\n\
\n\
See your local system administrator for help

!*strings.22493:The Javascript configuration file has errors:\n\
\n\
        %s\n\
\n\
Use the configuration from the previous session instead?

!*strings.22494:The backup Javascript configuration file was absent or had errors.\n\
\n\
We will default to the standard configuration.

!#-
!*strings.22495:http://home.netscape.com/bookmark/4_7/tshop.html

!*strings.22496:http://home.netscape.com/bookmark/4_7/tradio.html

!*strings.22501:Keep Server File

!*strings.22502:Keep Local File

!*strings.22503:Delete Server File

!*strings.22504:Delete Local File

!*strings.22505:Download conflict

!*strings.22506:Upload conflict

!*strings.22507:Local and server copies of %s are in conflict.\n\
\n\
\n\
         Local file last modified : %s\n\
\n\
         Server file last modified : %s

!*strings.22508:%s has been deleted locally.

!*strings.22509:%s has been deleted on the server.

!*strings.22510:File Deleted

!*strings.22511:Your new Roaming Access preference\n\
will take effect the next time\n\
you restart Communicator.

!*strings.22512:An authorization error occurred,\n\
please try retyping your username and password.

!*strings.22513:The Roaming Access server name specified does not exist,\n\
please check the spelling and try again.

!*strings.22514:An unexpected network error occurred.\n\
Cannot connect to the Roaming Access server.

!*strings.22518:Roaming Access

!*strings.22519:User Preferences

!*strings.22520:Mail Filters

!*strings.22521:History

!*strings.22522:Bookmarks File

!*strings.22523:Cookies File

!*strings.22524:Certificates and Private Keys (Certificate Database)

!*strings.22525:Certificates and Private Keys (Personal Key Database)

!*strings.22526:Certificates and Private Keys (Security Module)

!*strings.22527:Java Security (Signed Applet DB)

!#-
!*strings.22528:Java Security (Signed Applet DB 0)

!*strings.22529:Address Book

!*strings.22530:Synchronizing item %d of %d.

!*strings.22531:To be able to synchronize your roaming access\n\
profile information, remember to go back online\n\
before exiting Communicator

!*strings.22532:To be able to synchronize your roaming access\n\
profile information, remember to go back online\n\
before quitting Communicator

!*strings.22533:An authorization error occurred,\n\
please try retyping your password.

!*strings.22534:Contacting host...

!*strings.22535:Download from server in progress

!*strings.22536:Verifying login

!*strings.22537:You must specify a username to successfully\n\
log in to the Roaming Access server.\n\
Open the Roaming Access preferences pane to enable\n\
Roaming Access and enter your User Name.

!*strings.22538:You must specify a valid URL to successfully\n\
log in to the Roaming Access server.\n\
Open the Roaming Access - Server Information preferences\n\
pane to enable Roaming Access and enter the server's URL.

!*strings.22539:You must specify a username to successfully\n\
log in to the Roaming Access server.\n\
Files will not be transferred to the server this session.\n\
Open the Roaming Access preferences pane to enter your User Name.

!*strings.22540:You must specify a valid server URL to successfully\n\
log in to the Roaming Access server.

!*strings.22541:Upload to server in progress.

!*strings.22542:Uploading all items

!*strings.22543:Uploading folder

!*strings.22544:Removing remote file

!*strings.22545:Downloading folder

!*strings.22546:Removing local file

!*strings.22547:You must specify a username to successfully\n\

*strings.22551:	Error

!#-
!*strings.22552:Published Event

!*strings.22553:Published Free/Busy

!*strings.22554:Reply Free/Busy

!*strings.22555:Event Request

!*strings.22556:Free/Busy Time Request

!*strings.22557:Event Reply

!*strings.22558:Event Cancellation

!*strings.22559:Event Refresh Request

!*strings.22560:Event Counter Proposal

!*strings.22561:Decline Counter Proposal

!*strings.22562:What:

!*strings.22563:When:

!*strings.22564:Location:

!*strings.22565:Organizer:

!*strings.22566:Status:

!*strings.22567:Priority:

!*strings.22568:Categories:

!*strings.22569:Resources:

!*strings.22570:Attachments:

!*strings.22571:Alarms:

!*strings.22572:Created:

!*strings.22573:Last Modified:

!*strings.22574:Sent:

!*strings.22575:UID

!*strings.22577:Legend:

!*strings.22578:free

!*strings.22579:busy

!*strings.22580:unknown

!*strings.22581:undefined

!*strings.22582: AM

!*strings.22583: PM

!*strings.22584:More Details...

!*strings.22585:Add To Schedule

!*strings.22586:Close

!*strings.22587:Accept

!*strings.22588:Accept All

!*strings.22589:Update Schedule

!*strings.22590:Decline

!*strings.22591:Tentative

!*strings.22592:Send Free/Busy Time Infomation

!*strings.22593:Send Refresh

!*strings.22594:Delegate to

!*strings.22595:This event is already in your schedule\n

!*strings.22596:This event is not yet in your schedule\n

!*strings.22597:Conflicts:

!*strings.22598:Note:

!*strings.22599:<FONT COLOR=#FF0000>Error:</FONT>

!*strings.22600: to 

!*strings.22601: ( Day Event) 

!*strings.22602: Begins on 

!*strings.22603:Was

!*strings.22614:Published Calendar Events

!*strings.22615:Published Calendar Free/Busy

!*strings.22616:This messages contains %d events.

!*strings.22617:When

!*strings.22618:What

!*strings.22619:: 

!*strings.22620:There are also %d other errors

!*strings.22621:Display limited to the first %d events.

!*strings.22622:Unknown

!*strings.22623:DTEnd before DTStart.  Setting DTEnd equal to DTStart

!*strings.22624:Prompt value must be ON or OFF

!*strings.22625:Cannot parse time/date string

!*strings.22626:Recurrence rules are too complicated.  Only the first instance was scheduled

!*strings.22627:Invalid property value

!*strings.22628:Invalid property name

!*strings.22629:Invalid parameter name

!*strings.22700:The required configuration file %s could not be found.  Please reinstall the software or contact your administrator.

!*strings.22701:The required configuration file %s is invalid.  Please reinstall the software or contact your administrator.

!*strings.22702:An error occurred while reading the preference file %s.  Default preferences will be used.

!*strings.22703:Communicator could not retrieve preferences from the directory server %s because an authentication error occurred.  Try retyping your password or contact your system administrator for more information.

!*strings.22704:Communicator could not connect to the directory server %s to retrieve preference information.  The server may be down or busy.  Some preferences were retrieved using previously cached information.\n\
\n\
If this error persists, contact your system administrator.

!*strings.22705:Communicator could not retrieve preferences from the directory server %s because the preference map could not be found.  Some preferences were retrieved using previously cached information.\n\
\n\
If this error persists, contact your system administrator.

!*strings.22706:Communicator could not retrieve preferences from the directory server %s because your directory entry could not be found.  Some preferences were retrieved using previously cached information.\n\
\n\
If this error persists, contact your system administrator.

!*strings.22707:Your new passwords did not match.  Please retype your new password in both fields.  If you do not want to password protect your profile, leave both fields blank.

!*strings.22709:Communicator could not complete your request because the profile manager encountered an unexpected error.

!*strings.22710:The profile '%s' requires a password.  Enter your password to login into your Roaming Access Profile and retrieve your profile information.

!*strings.22711:Please enter your password to retrieve preferences from the directory server %s.

!*strings.22712:The profile '%s' requires a password. In order to continue, please enter your local profile password.

!*strings.22713:Another profile already exists with that name.  Please choose a different profile name.

!*strings.22714:You must enter a new profile password to continue.

!*strings.22715:Guest

*strings.8000:	Fin de la Lista

*strings.8001:	Lista Completa

*strings.8003:	Guardar como... (tipo %.90s, codificación %.90s)

*strings.8004:	Guardar como... (tipo %.90s)

*strings.8005:	Guardar como... (codificación %.90s)

*strings.8006:	Guardar como...

*strings.8007:	Error abriendo %.900s:

*strings.8008:	Error borrando %.900s:

*strings.8009:	Cuando se conecte, entre como el usuario `%.900s'

*strings.8010:	Memoria llena -- No se puede abrir la URL

*strings.8011:	no se pudo cargar:\n%s

!*strings.8012:%s\n\
No other resources were reasonable!\n\
Using fallback font "%s" instead.
*strings.8012:	%s\nNo se encontraron otros recusros razonables\nSe usará el tipo de letra "%s" en su lugar.

*strings.8013:	%s\nNo se encontraron otros recusros razonables\nEl tipo de letra "%s" no se pudo cargar\nMe rindo.

*strings.8014:	El archivo de marcadores ha cambiado en el disco: ¿descartar sus cambios?

*strings.8015:	El archivo de marcadores ha cambiado en el disco: ¿cargarlo de nuevo?

*strings.8016:	Nuevo elemento

*strings.8017:	Nueva cabecera

*strings.8018:	¿Borrar categoría "%.900s" y su %d entrada?

*strings.8019:	¿Borrar categoría "%.900s" y sus %d entradas?

*strings.8020:	Exportar Marcadores

*strings.8021:	Importar Marcadores

*strings.8022:	Esta versión acepta la seguridad %s con %s.

*strings.8023:	Seguridad desactivada

!*strings.8024:file:/usr/local/lib/netscape/docs/Welcome.html

*strings.8025:	Documento: Terminado.

*strings.8026:	Abrir archivo

*strings.8027:	Error abriendo tubería a %.900s

*strings.8028:	Precaución:\n\n

*strings.8029:	%s "%.255s" no existe.\n

*strings.8030:	%s "%.255s" es desconocido.\n

*strings.8031:	No se especificó número de puerto para %s.\n

*strings.8032:	Servidor de correo

*strings.8033:	Servidor de noticias

*strings.8034:	Directorio RC de noticias

*strings.8035:	Directorio temporal

*strings.8036:	Servidor de proxy FTP

*strings.8037:	Servidor de proxy Gopher

*strings.8038:	Servidor de proxy HTTP

*strings.8039:	Servidor de proxy HTTPS

*strings.8040:	Servidor de proxy WAIS

*strings.8041:	Servidor de SOCKS

*strings.8042:	Archivo global de tipos MIME

*strings.8043:	Archivo privado de tipos MIME

*strings.8044:	Archivo mailcap global

*strings.8045:	Archivo mailcap privado

*strings.8046:	No se puede borrar un marcador del nivel superior

*strings.8047:	No se puede cortar un marcador del nivel superior

*strings.8048:	Este es un alias para el siguiente marcador:

*strings.8049:	Abrir archivo...

*strings.8050:	La impresión de marcos nos está soportada actualmente.

*strings.8051:	error al grabar las opciones

*strings.8052:	código de escape %s desconocido %%%c:\n%%h = servidor, %%p = puerto, %%u = usuario

*strings.8053:	no se pudo hacer fork():

*strings.8054:	%s: execvp(%s) falló

*strings.8055:	Guardar marco como...

*strings.8057:	Imprimir marco

*strings.8058:	Imprimir...

*strings.8059:	Obtener archivo: %s

*strings.8060:	Componer: (Sin Asunto)

*strings.8061:	Componer: %s

*strings.8062:	Mozilla: <untitled>

*strings.8063:	Mozilla: %s

*strings.8064:	(sin asunto)

*strings.8065:	error desconocido: código %d

*strings.8066:	Archivo adjunto no válido.\n%s: no existe.\n

*strings.8067:	Archivo adjunto no válido.\n%s: no es legible.\n

*strings.8068:	Archivo adjunto no válido.\n%s: es un directorio.\n

*strings.8069:	no se pudo hacer fork() para el transporte de correo

*strings.8070:	problemas ejecutando %s:

*strings.8071:	%s terminó anormalmente:

*strings.8072:	No se pudo abrir %.900s

*strings.8073:	Por favor, introduzca su servidor de noticias en uno\nde los siguientes formatos:\n\n news://SERVIDOR,\n    news://SERVIDOR:PUERTO,\n    snews://SERVIDOR, o\nsnews://SERVIDOR:PUERTO\n\n

*strings.8074:	Para que funcione el método de transporte de correo interno, debemos ser capaces de crear\narchivos lock en el directorio spool del correo.  En muchos sistemas, esto queda mejor configurado\nhaciendo que ese directorio este en modo 01777.  Si eso no fuera \nposible, entonces se deberá usar un programa setgid/setuid de transporte de correo externo.\nPor favor, vea las notas de Release para más información.

*strings.8075:	No se pudo mover correo desde %.200s

*strings.8076:	No se pudo obtener nuevo correo: un archivo lock %.200s existe.

*strings.8077:	No se pudo obtener nuevo correo: imposible crear archivo lock %.200s

*strings.8078:	No se pudo obtener nuevo correo; se ha producido un errror del sistema.

*strings.8079:	No se pudo mover correo: imposible abrir %.200s

*strings.8080:	No se pudo mover correo: imposible leer %.200s

*strings.8081:	No se pudo mover correo; imposible escribir en %.200s

*strings.8082:	Hubo problemas moviendo el correo

*strings.8083:	Hubo problemas moviendo el correo: código de salida %d

*strings.8134:	Hubo problemas borrando %s

*strings.8085:	%s\nuso: %s [ opciones ... ]\n\
       donde opciones incluye:\n\
\n\
       -help                     para mostrar este mensaje.\n\
       -version                  para mostrar el número de versión y la\n\
                                 fecha de construcción.\n\
       -display <dpy>            para especificar el servidor X a usar.\n\
       -geometry =WxH+X+Y        para colocar y dar tamaño a la ventana.\n\
       -visual <id-o-número>     para usar un servidor visual específico.\n\
       -install                  para instalar un mapa de colores privado.\n\
       -no-install               para usar el mapa de colores predeterminado.\n

*strings.8154: \
	-share               usado con -install, hace que cada ventana use el\n\
                             mismo mapa de colores en lugar de que cada ventana use\n\
                             uno nuevo.\n\
       -no-share             hace que cada ventana use el mismo mapa de colores.\n

*strings.8086: \
	-ncols <N>               Cuando no use -install, asigna el maximo numero\n\
                                 de colores disponible para imágenes.\n\
       -mono                     Fuerza profundidad de imagen de  1 bit.\n\
       -iconic                   Empieza minimizado.\n\
       -xrm <resource-spec>      Especificar un recurso X en concreto.\n\
\n\
       -remote <remote-command>  Ejecuta un comando sobre un proceso en curso\n\
                                 de Mozilla. Para mas informacion, visite\n\
			  http://home.netscape.com/newsref/std/x-remote.html\n\
       -id <window-id>           El id de una ventana X a la cual se debería\n\
                                 enviar el comando -remote; si no se especifica,\n\
                                 se usará la primera ventana que se encuentre.\n\
       -raise                    Determina si el comando -remote debe causar\n\
                                 que la ventana se muestre resaltada (éste es\n\
                                 el valor predeterminado)\n\
       -noraise                  Lo contrario de -raise: el comando -remote\n\
                                 no alzara la ventana automaticamente.\n\
\n\
       -nethelp                  Muestra la ayuda (NetHelp).  Necesita la URL\n\
				 'nethelp:'\n\
\n\
       -dont-force-window-stacking  Ignora alwaysraised, alwayslowered \n\
                                    y el z-lock JavaScript de los atributos de\n\
                                    window.open() \n\
\n\
       -no-about-splash          No muestra la página inicial de la licencia.\n\
\n\
       -no-session-management\n\
       -session-management       Mozilla soporta dirección de la sesión como\n\
                                 opción predeterminada.  Esta opción controla\n\
                                 dicho estado.\n\
\n\
       -no-irix-session-management\n\
       -irix-session-management  Plataformas diferentes usan la dirección de\n\
                                 sesiones de diferentes maneras. Use estas\n\
                                 opciones si experimenta problemas durante la\n\
                                 dirección de sesiones.\n\
\n\
                                 La dirección de sesión en IRIX es activada\n\
                                 solo en sistemas SGI.  Tambien está disponible\n\
                                 en otras plataformas y podria funcionar con\n\
                                 otros directores de sesiones aparte de IRIX.\n\
\n\
       -dont-save-geometry-prefs No guarda la información de la geometría de\n\
                                 las ventanas al salir.\n\
\n\
       -ignore-geometry-prefs    Ignora la información guardada de la geometría\n\
                                 de las ventanas en esta sesion.\n\
\n


*strings.8087:	%s: la versión del programa es %s, pero la de los recursos es %s.\n\
\n\
	Esto significa que hay un archivo llamado `%s' bien en el directorio del\n\
	sistema para app-defaults, o en su directorio de inicio (home) que no\n\
	conincide con la aplicación.  Compruebe sus variables de entorno y los\n\
	directorios a donde apuntan:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
	Busque también este archivo en su directorio de inicio, o en el\n\
	directorio llamado `app-defaults' en algun lugar bajo /usr/lib/.

*strings.8088:	%s: no pudo encontrar sus recursos.\n\
\n\
	Esto significa que hay un archivo llamado `%s' bien en el directorio del\n\
	sistema para app-defaults, o en su directorio de inicio (home) que no\n\
	conincide con la aplicación.  Compruebe sus variables de entorno y los\n\
	directorios a donde apuntan:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
	Busque también este archivo en su directorio de inicio, o en el\n\
	directorio llamado `app-defaults' en algun lugar bajo /usr/lib/.

*strings.8089:	%s: especificación de geometría no válida.\n\
\n\
  Aparentemente "%s*geometry: %s" o "%s*geometry: %s"\n\
  fue especificada en la base de datos de recursos.  Especificar "*geometry"\n\
  hará que %s (y la mayoría de los demás programas X) funcionen mal de maneras\n\
  extrañas.  Siempre debería usar ".geometry" en su lugar.\n

*strings.8090:	%s: opción no reconocida "%s"\n

*strings.8091:	%s ha detectado un archivo\n%s.\n

*strings.8092:	\n\
Esto puede indicar que otro usuario está\n\
ejecutando %s usando sus archivos %s.\n

*strings.8093:	Al parecer está ejecutándose en el servidor %s\nbajo el ID de proceso %u.\n

*strings.8094:	\n\
Puede proseguir con el lanzamiento de %s, pero no podrá\n\
usar el caché de disco, el histórico global ni sus certificados personales.\n

*strings.8095:	\n\
Por otro lado, puede elegir Cancelar, asegúrese de que\n\
no está ejecutando otro %s,\n\
borre el archivo %s,\n\
y reinicie %s.

*strings.8096:	%s: %s ya existía, pero no era un directorio.\n\
El archivo existente ha sido renombrado como %s\n\
y se ha creado un directorio en su lugar.\n\
\n

*strings.8097:	%s: %s existe pero no es un directorio,\n\
y no somos capaces de renombrarlo!\n\
Por favor, borre este archivo: está en la vía de acceso.\n\
\n

*strings.8098:	%s: imposible crear el directorio `%s'.\n\
%s\n\
Por favor, cree este directorio.\n\
\n

*strings.8099:	error desconocido

*strings.8100:	error creando %s

*strings.8101:	error grabando %s

*strings.8102:	Esta versión de %s usa nombres diferentes para sus archivos de configuración\n\
que las versiones previas.  Aquellos archivos de configuración que todavía usaban\n\
los mismos formatos de archivos han sido copiados con sus nuevos nombres, y\n\
los demás no, y volverán a ser creados cuando sea necesario.\n\
%s\n\
\n\
¿Desea que borremos los viejos archivos?

*strings.8103:	\n\
Los archivos antiguos todavía existen, incluyendo un directorio de caché de disco\n\
(que debe ser grande.)

*strings.8104:	Los archivos antiguos todavía existen.

*strings.8105:	General

*strings.8106:	Contraseñas

*strings.8107:	Certificados Personales


*strings.8108:	Certificados de sitios

*strings.8109:	Comprobados %s (%d restantes)\n\
%d%% completados)\n\
\n\
Tiempo restante estimado: %s\n\
(El tiempo restante depende de los sites seleccionados y\n\
del tráfico de la red.)

*strings.8110:	Comprobando ... (%d restantes)\n\
%d%% completados)\n\
\n\
Tiempo restante estimado: %s\n\
(El tiempo restante depende de los sites seleccionados y\n\
del tráfico de la red.)

*strings.8111:	Re: 

*strings.8112:	Comprobación realizado en %d marcadores.\n\
%d documentos fueron examinados.\n\
%d documentos han cambiado y están marcados como nuevos.

*strings.8115:	"%s" finalizó con el código de estado %d

*strings.8116:	%s: Parece que los keysyms de Motif no estan definidos.\n\
\n\
 Esto ocurre normalmente porque el archivo XKeysymDB adecuado no se ha encontrado.\n\
 Se puede asignar a la variable de entorno $XKEYSYMDB la localización\n\
 de un archivo que contenga los keysyms correctos.\n\
\n\
 Sin el XKeysymDB correcto, se generarán muchos avisos,\n\
 y la mayoría de los aceleradores de teclado no funcionarán.\n\
\n\
 (Se incluye un archivo XKeysymDB apropiado con la distribución\n\
 %s.\n\
\n

!*******************************************************************************

*strings.8117:	%s: Parece que algunos de los keysyms de Motif no estan definidos.\n\
\n\
Esto ocurre normalmente porque el archivo XKeysymDB adecuado no se ha encontrado.\n\
Se puede asignar a la variable de entorno $XKEYSYMDB la localización\n\
de un archivo que contenga los keysyms correctos.\n\
\n\
Sin el XKeysymDB correcto, se generarán muchos avisos,\n\
y algunos aceleradores de teclado no funcionarán.\n\
\n\
(Se incluye un archivo XKeysymDB apropiado con la distribución\n\
%s.)\n\
\n

!*******************************************************************************

*strings.8118:	Visual 0x%02x es un visual %s de %d bit %s.\n\
Este 'visual' no está soportado; imagen %s.\n\
\n\
Visuales actualmente soportados:\n\
\n\
        StaticGray, todas las profundidades\n\
        GrayScale, todas las profundidades\n\
        TrueColor, profundidad 8 o mayor\n\
        DirectColor, profundidad 8 o mayor\n\
        StaticColor, profundidad 8 o mayor\n\
        PseudoColor, profundidad 8 solamente\n\
Si tiene alguno de los visuales indicados (vea `xdpyinfo'),\n\
se recomienda que empiece %s con la opción `-visual' desde la\n\
línea de comandos para especificar uno.\n\
\n\
En el futuro se soportarán más visuales;\n\
Sus comentarios son bienvenidos.

*strings.8119:	Visual 0x%02x es un visual %s de %d bit %s.\n\
Este 'visual' no está soportado; imagen %s.\n\
\n\
Visuales actualmente soportados:\n\
\n\
        StaticGray, todas las profundidades\n\
        GrayScale, todas las profundidades\n\
        TrueColor, profundidad 8 o mayor\n\
        StaticColor, profundidad 8 o mayor\n\
        PseudoColor, profundidad 8 solamente\n\
\n\
Si tiene alguno de los visuales indicados (vea `xdpyinfo'),\n\
se recomienda que empiece %s con la opción `-visual' desde la\n\
línea de comandos para especificar uno.\n\
\n\
En el futuro se soportarán más visuales;\n\
Sus comentarios son bienvenidos.

*strings.8120:	Visual 0x%02x es un visual %s de %d bit %s.\n\
Este 'visual' no está soportado; imagen %s.\n\
\n\
Visuales actualmente soportados:\n\
\n\
        StaticGray, todas las profundidades\n\
        TrueColor, profundidad 8 o mayor\n\
        DirectColor, profundidad 8 o mayor\n\
        StaticColor, profundidad 8 o mayor\n\
        PseudoColor, profundidad 8 solamente\n\
\n\
Si tiene alguno de los visuales indicados (vea `xdpyinfo'),\n\
se recomienda que empiece %s con la opción `-visual' desde la\n\
línea de comandos para especificar uno.\n\
\n\
En el futuro se soportarán más visuales;\n\
Sus comentarios son bienvenidos.

*strings.8121:	Visual 0x%02x es un visual %s de %d bit %s.\n\
Este 'visual' no está soportado; imagen %s.\n\
\n\
Visuales actualmente soportados:\n\
\n\
        StaticGray, todas las profundidades\n\
        TrueColor, profundidad 8 o mayor\n\
        StaticColor, profundidad 8 o mayor\n\
        PseudoColor, profundidad 8 solamente\n\
\n\
Si tiene alguno de los visuales indicados (vea `xdpyinfo'),\n\
se recomienda que empiece %s con la opción `-visual' desde la\n\
línea de comandos para especificar uno.\n\
\n\
En el futuro se soportarán más visuales;\n\
Sus comentarios son bienvenidos.

*strings.8122:	será\nmostrado en monocromo

*strings.8123:	se verá mal

*strings.8124:	Apariencia

*strings.8125:	Marcadores

*strings.8126:	Colores

*strings.8127:	Tipos de letra

*strings.8128:	Aplicaciones

*strings.8155:	Helpers

*strings.8129:	Imágenes

*strings.8130:	Idiomas

*strings.8131:	Caché

*strings.8132:	Conexiones

*strings.8133:	Proxys

*strings.8135:	Redactar

*strings.8136:	Servidores

*strings.8137:	Identidad

*strings.8138:	Empresa

*strings.8139:	Marco de correo

*strings.8140:	Documento de correo

*strings.8141:	Correo y grupos de noticias

*strings.8142:	Grupos de noticias

*strings.8143:	Libro de direcciones

*strings.8144:	¡Recursos X no instalados correctamente!

!*strings.8145:<< Empty >>
*strings.8145:	<< Vacío >>

*strings.8146:	error grabando contraseña

*strings.8147:	No implementado.

*strings.8148:	%s: la sintaxis ~usuario/ no está permitida en el archivo de preferencias, solo ~/\n

*strings.8149:	%s: visual irreconocible "%s".\n

*strings.8150:	%s: no visual con id 0x%x.\n

*strings.8151:	%s: no visual de la clase %s.\n

*strings.8152:	\n\n<< los diagnosticos de stderr han sido truncados >>

*strings.8153:	error creando tubería:

*strings.8156:	La bandeja de salida contiene un\nmensaje no enviado. ¿Enviarlo ahora?\n

*strings.8157:	La bandeja de salida contiene %d mensajes\nno enviados. ¿Enviarlos ahora?\n

*strings.8158:	La opción ``Mantener en el servidor'' sólo funciona\nusando un servidor POP3, no usando un directorio\nspool para el correo.  Para recibir su correo,\nprimero desactive esta opción en la ventana\nde opciones de Correo y Noticias.

*strings.8159:	Anterior

*strings.8160:	Marco anterior

*strings.8161:	Siguiente

*strings.8162:	Marco siguiente

*strings.8163:	Por favor, estazcaece la variable de entorno $MAIL como la\nsituación de su archivo mail-spool.

*strings.8164:	No hay mensajes nuevos.

*strings.8165:	Definido por el usuario

*strings.8166:	Otro

*strings.8167:	no se pudo hacer un fork() para envío externo del mensaje

*strings.8168:	No se puede leer el archivo %s.

*strings.8169:	%s no existe.

*strings.8170:	%s es un directorio.

*strings.8171:	Archivo Lock no encontrado.

*strings.8172:	No se puede abrir el archivo Netscape.lock .

*strings.8173:	El archivo Netscape.lock ha sido modificado.

*strings.8174:	No se puedo determinar el tamaño del archivo lock.

*strings.8175:	No se pudieron leer los datos de Netscape.lock .

*strings.8176:	No se pudo abrir el archivo de la animación.

*strings.8177:	Archivo de animación modificado.\nUsando la animación por defecto.

*strings.8178:	No se pudo leer el tamaño del archivo de animación.\nUsando la animación por defecto.

*strings.8179:	No se pudo leer el número de colores de la animación.\nUsando la animación por defecto.

*strings.8180:	No se pudieron leer los colores de la animación.\nUsando la animación por defecto.

*strings.8181:	No se pudieron leer los marcos de la animación.\nUsando la animación por defecto.

*strings.8182:	Ignorando bytes extra al final del archivo de animación.

*strings.8183:	Buscando documentos que han cambiado:

*strings.8184:	Carácter

*strings.8185:	Enlace

*strings.8186:	Párrafo

*strings.8187:	Imagen

*strings.8188:	Actualizar marco

*strings.8189:	Renovar

*strings.8190:	Correo y noticias: %.900s

*strings.8191:	Noticias: %.900s

*strings.8192:	Mozilla: %.900s

*strings.8193:	Protocolos

*strings.8194:	Idiomas

*strings.8195:	Cambiar contraseña

*strings.8196:	Definir contraseña...

*strings.8197:	Ningún Plugin

*strings.8198:	Continuar Movemail

*strings.8199:	Cancelar Movemail

*strings.8200:	Mozilla moverá su correo de %s\na %s/Bandeja de entrada.\n\nMover el correo afectará a otros programas de correo\nque busquen correo ya leído para mantenerlo\n%s.

*strings.8201:	Mostrar este aviso la próxima vez

*strings.8202:	Editor de páginas Web: %.900s

*strings.8203:	Mozilla

*strings.8204:	Desconocido: Preguntar al usuario

*strings.8205:	Guardar en disco

*strings.8206:	Procesador : %s

*strings.8207:	El tipo MIME no puede estar vacio.

*strings.8208:	Descripción|Llevada a cabo por

*strings.8209:	No se puede encontrar el correo nuevo; hay un archivo lock %s .

*strings.8210:	Sin procesador %s. Volviendo a grabar al disco para el tipo %s.\n

*strings.8211:	ERROR: %s\nNo se puede grabar el procesador %s. Ignorado.\n

*strings.8212:	El plugin especifica una descripción diferente y/o sufijos para el tipo MIME %s.\n\n        Descripción = "%s"\n        Sufijos = "%s"\n\n¿Usar la descripción y los sufijos del plugin especificado?

*strings.8213:	error guardando opciones.

*strings.8214:	Algunos valores están fuera de rango:

*strings.8215:	El siguiente valor está fuera de rango:

*strings.8216:	Puede tener entre 1 y 100 filas.

*strings.8217:	Puede tener entre 1 y 100 columnas.

*strings.8218:	En ancho del borde, puede tener de 0 a 10000 pixels.

*strings.8219:	En espacio entre celdas, puede tener de 0 a 10000 pixels.

*strings.8220:	En relleno de celdas, puede tener de 0 a 10000 pixels.

*strings.8221:	En el ancho, puede tener entre 1 y 10000 pixels,\no entre 1 y 100%.

*strings.8222:	En la altura, puede tener entre 1 and 10000 pixels,\no entre 1 y 100%.

*strings.8223:	En el ancho, puede tener entre 1 y 10000 pixels.

*strings.8224:	En la altura, puede tener entre 1 y 10000 pixels.

*strings.8225:	En el espacio, puede tener entre 1 y 10000 pixels.

*strings.8226:	Por favor, introduzca un nuevo valor e intentelo de nuevo.

*strings.8227:	Por favor, introduzca valores nuevos e intentelo de nuevo.

*strings.8228:	Introducir el texto del enlace:

*strings.8229:	Imagen enlazada:

*strings.8230:	Texto enlazado:

*strings.8231:	Sin objetivos en el documento seleccionado.

*strings.8232:	Enlazar a un objetivo nombrado en el documento especificado (opcional).

*strings.8233:	Enlazar a un objeto nombrado en el documento actual (opcional).

*strings.8234:	¿Quiere borrar el enlace?

*strings.8235:	<desconocido>

*strings.8236:	Etiqueta no abierta: debe existir un '<'

*strings.8237:	Etiqueta no cerrada: debe existir un '>'

*strings.8238:	Cadena no terminada en la etiqueta: faltan comillas de cierre

*strings.8239:	Cierre de etiqueta prematuro

*strings.8240:	Falta nombre de etiqueta

*strings.8241:	Error de etiqueta desconocido

*strings.8242:	La etiqueta parece correcta

*strings.8243:	Este documento contiene marcos. Actualmente el editor\nno puede editar documentos que contienen marcos.

*strings.8244:	Este documento es un documento Acerca de. El editor\nno puede editar documentos Acerca de.

*strings.8245:	Debe guardar localmente este documento antes de\ncontinuar con la acción solicitada.

*strings.8246:	¿Desea grabar los cambios a:\n%.900s?

*strings.8247:	Código de error = (%d).

*strings.8248:	No puede copiar ni cortar en este momento; vuelva a intentarlo más tarde.

*strings.8249:	No hay nada seleccionado.

*strings.8250:	La selección contiene un límite de celda de tabla.\nNo se puede borrar ni copiar.

*strings.8251:	¡Comando especificado vacío!

*strings.8252:	Ningún comando de editor de html ha sido especificado en las Preferencias del editor.\nEspecifique el argumento de archivo con %f. Mozilla lo replazará con %f con\nel nombre de archivo correcto. Ejemplo:\n             xterm -e vi %f\n¿Desea introducir un valor en las Preferencias del editor ahora?

*strings.8253:	Error de sintaxis en la acción del gestor: %s

*strings.8254:	Tipo de ventana inválido para la acción del gestor: %s

*strings.8255:	Modificado por el Juego del administrador de Mozilla.\nVersión: %s\nAgente de usuario: C

*strings.8256:	El archivo privado Mimetype (%s) ha cambiado en el disco. ¿Desea desechar los cambios no\nguardados y volver a cargar?

*strings.8257:	El archivo privado Mailcap (%s) ha cambiado en el disco.  ¿Desea desechar los cambios no\nguardados y volver a cargar?

*strings.8258:	El archivo privado Mimetype (%s) ha cambiado en el disco y está siendo cargado nuevamente.

*strings.8259:	El archivo privado Mailcap (%s) ha cambiado en el disco y está siendo cargado nuevamente.

*strings.8260:	Ningún comando de editor de imágenes ha sido especificado en las Preferencias del editor.\nEspecificar el argumento de archivo con %f. Mozilla lo remplazará %f con\nel nombre correcto. Ejemplo:\n             xgifedit %f\n¿Desea introducir un valor en las Preferencias ahora?

*strings.8261:	Está a punto de recibir un documento\nremoto o imagen.\nDebe obtener permiso para utilizar cualquier\nimagen o documento si están registrados.

*strings.8262:	El archivo está marcado como de sólo lectura.

*strings.8263:	El archivo está bloqueado en estos momentos. Inténtelo de nuevo más tarde.

*strings.8264:	El archivo URL está mal formado.

*strings.8265:	Error abriendo el archivo para escritura.

*strings.8266:	Error escribiendo en el archivo.

*strings.8267:	Error creando el archivo temporal de copia de seguridad.

*strings.8268:	Error borrando el archivo temporal de copia de seguridad.

*strings.8269:	¿Continuar guardando el documento?

*strings.8270:	Hubo un error mientras se guardaba el archivo:\n%.900s

*strings.8271:	La localización de la plantilla del nuevo documento no está establecida.\n¿Desea introducir un valor en el editor de Preferencias ahora?

*strings.8272:	Por favor, introduzca un periodo de guardado automático entre 0 y 600 minutos.

*strings.8273:	La localización por defecto del navegador no está establecida.\n¿Desea introducir un valor en el editor de Preferencias ahora?

*strings.8274:	El destino de la publicación debe empezar con "ftp://", "http://", o "https://".\nPor favor, introduzca nuevos valores e inténtelo de nuevo.

*strings.8275:	La imagen está en una dirección remota.\nPor favor, guarde la imagen localmente antes de editarla.

*strings.8276:	no se puede localizar el mapa de color

*strings.8277:	Cargando el archivo al servidor remoto:\n%.900s

*strings.8278:	Guardando el archivo en el disco local:\n%.900s

*strings.8279:	Cargando archivo imagen:\n%.900s

*strings.8280:	Archivo %d de %d

*strings.8281:	Fuente no encontrada.

*strings.8282:	Pulse Cancelar para desactivar el guardado automático\nhasta que guarde este documento más tarde.

*strings.8283:	Todos los grupos

*strings.8284:	Buscar un grupo

*strings.8285:	Grupos nuevos

*strings.8286:	Esta lista muestra la lista acumulada de nuevos grupos de debate\ndesde la última vez que presionó Borrar Botón Nuevo.

*strings.8287:	Centro de mensajes para %s

*strings.8288:	en la máquina local.

*strings.8289:	en servidor.

*strings.8290:	Mensaje:

*strings.8291:	'%s' de %s en la carpeta %s

*strings.8292:	Grupo Mozilla - [ %s ]

*strings.8293:	Carpeta Mozilla - [ %s ]

*strings.8294:	Mínima
*strings.8295:	Baja
*strings.8296:	Normal
*strings.8297:	Alta
*strings.8298:	Máxima
*strings.8299:	Tamaño

*strings.8300:	Líneas

!*strings.8301:Name
*strings.8301:	Nombre

*strings.8302:	Contacto

*strings.8303:	Seguridad

*strings.8304:	Conferencia

*strings.8305:	Nombre:

*strings.8306:	Apellido:

*strings.8307:	Dirección electrónica:

*strings.8308:	Apodo:

*strings.8309:	Notas:

*strings.8310:	Prefiere recibir mensajes en texto enriquecido (HTML)

*strings.8311:	Organización:

*strings.8312:	Título:

*strings.8313:	Dirección:

*strings.8314:	Ciudad:

*strings.8315:	Estado:

*strings.8316:	Código postal:

*strings.8317:	País:

*strings.8318:	Teléfono del trabajo:

*strings.8319:	Fax:

*strings.8320:	Teléfono de casa:

*strings.8321:	No tiene un Certificado de Seguridad para esta persona.\n\nEsto significa que cuando envíe correo a esta persona, no puede ser\nencriptado. Esto hará más fácil a otras personas leer sus\nmensajes.\n\nPara obtener certificados de seguridad para los destinatarios, deben\nobtener primero uno suyo y enviarle un mensaje\nfirmado. El Certificado de Seguridad será recordado automáticamente\nuna vez que es recibido.\n

*strings.8322:	Tiene el Certificado de Seguridad de esta persona.\n\nEsto significa que cuando envíe correo a esta persona, puede ser encriptado.\nEncriptar un mensaje es como enviarlo envuelto, mejor que una\npostal. Esto hace difícil a otras personas ver su mensaje.\n\nEl Certiicado de Seguridad de esta persona caducará el %s. Cuando\ncaduque, no podrá enviar más correo encriptado a esta\npersona hasta que le envíen uno nuevo.

*strings.8323:	El Certificado de Seguridad de esta persona ha caducado.\n\nNo podrá enviar correo encriptado a esta persona hasta que no obtenga\nun nuevo Certificado de Seguridad suyo. Para hacer esto, esta persona tiene que mandarle\nun mensaje de correo firmado. Esto incluirá automáticamente el nuevo\nCertificado de Seguridad.

*strings.8324:	El Certificado de Seguridad de esta persona ha sido revocado. Esto significa que\nel Certificado puede haber sido perdido o robado.\n\nNo puede enviar correo encriptado a esta persona hasta que obtenga un nuevo\nCertificado de Seguridad. Para hacer esto, esta persona tiene que enviarle un mensaje\nde correo firmado. Esto incluirá automáticamente el nuevo\nCertificado de Seguridad.

*strings.8325:	Usted no tiene un certificado de seguridad suyo.\nEsto significa que no puede recibir correo encriptado, lo que hace que sea dificil para otros el 'espiar' su correo.\n\nUsted tampoco puede firmar digitalmente su correo. Una firma digital indicaría\nque el mensaje es de usted, y también evitaría que otros alteren su contenido.\n\nPara obtener un certificado de seguridad, pulse el botón\nObtener Certificado. Una vez obtenga un certificado, éste será\nautomáticamente enviado en sus mensajes firmados para que otros puedan enviarle correo encriptado.

*strings.8326:	Usted tiene un certificado de seguridad.\nEsto significa que puede recibir correo encriptado. Para poder hacer esto,\n primero tiene que enviar un mensaje a alguien y firmar dicho  mensaje.\n Al hacer eso, usted le envía su certificado, lo que hace posible\nque el destinatario pueda enviarle correo encriptado. Encriptar\nun mensaje es como enviarlo en un sobre, en vez de en una postal. Esto hace que sea dificil para otros el 'espiar' su correo.\n\nSu certificado de seguridad expirará el %s. Antes de que expire,\nusted tendrá que obtener un certificado nuevo.

*strings.8327:	Su Certificado de Seguridad ha caducado.\n\nEsto significa que no puede enviar más mensajes firmados digitalmente con este\ncertificado. Sin embargo, puede continuar recibiendo correo encriptado.\n\nEsto significa que puede obtener otro certificado. Haga click en Mostrar\nCertificado para hacer esto.

*strings.8328:	Su Certificado de Seguridad ha sido revocado.\nEsto significa que no puede mandar más mensajes firmados digitalmente con este\ncertificado. Sin embargo, puede continuar recibiendo correo encriptado.\n\nEsto significa que debe obtener otro certificado.

*strings.8329:	Mostrar certificado

*strings.8330:	Conseguir Certificado

*strings.8331:	Información de la lista de correo

*strings.8332:	Nombre de la lista:

*strings.8333:	Apodo de la lista:

*strings.8334:	Descripción:

*strings.8335:	Para añadir entradas a esta lista de correo, escriba nombres del Libro de direcciones

*strings.8336:	Nombre

!*strings.8337:

*strings.8338:	Dirección electrónica

*strings.8339:	Apodo

*strings.8340:	Empresa

*strings.8341:	Ciudad

*strings.8342:	Provincia

*strings.8343:	%d mensajes sin leer, Total: %d

*strings.8344:	Buscar

*strings.8345:	Parar

*strings.8346:	Borrar

*strings.8347:	Este mensaje será enviado a:

*strings.8348:	Todo

*strings.8349:	hace 1 mes

*strings.8350:	No se puede adjuntar el archivo.\nSe está enviando el mensaje o adjuntando un archivo en estos momentos.

*strings.8351:	Este elemento ya se ha añadido al mensaje:\n%s

*strings.8352:	Panel de archivos adjuntos lleno - no se pueden añadir más archivos.

*strings.8353:	Obteniendo nuevos mensajes...

*strings.8354:	Libro de Direcciones Mozilla de %s

*strings.8355:	Mostrar certificado

*strings.8356:	Orden

*strings.8357:	Idioma

*strings.8358:	Los filtros se aplicarán a los mensajes entrantes en el\nsiguiente orden:

*strings.8359:	Para llamar a otra persona con la aplicación de conferencias de Mozilla, primero\ndebe elegir el servidor que le gustaría usar para buscar la dirección\nde esa persona.

*strings.8360:	Servidor de Conferencia DLS de Netscape

*strings.8361:	Servidor DLS Específico

*strings.8362:	Nombre del sistema o dirección IP

*strings.8363:	Dirección:

*strings.8364:	(Por ejemplo, %s)

*strings.8365:	Tarjeta de <%s>

*strings.8366:	Nueva tarjeta

*strings.8367:	Marcar mensajes como leídos

*strings.8368:	Marcar mensajes leidos hasta: (MM/DD/AA)

*strings.8369:	La fecha debe ser válida,\ny debe estar en el formato MM/DD/AA.

*strings.8370:	Hay %d cabeceras de mensaje nuevas para descargar en\neste grupo de noticias.

*strings.8371:	Siguiente %d

*strings.8372:	No leído

*strings.8373:	ayer

*strings.8374:	hace una semana

*strings.8375:	hace dos semanas

*strings.8376:	hace seis meses

*strings.8377:	hace un año

*strings.8378:	Ya existe una entrada del libro de direcciones con este nombre y dirección electrónica.

*strings.8379:	Las listas de distribución sólo pueden contener entradas de libro de direcciones personal.\n¿Desea añadir %s al libro de direcciones?

*strings.8380:	Asegúrese de rellenar tanto el nombre de servidor como el puerto y de que ambos sean válidos.

*strings.8381:	Desconocido

*strings.8382:	Para:

*strings.8383:	CC:

*strings.8384:	CCC:

*strings.8385:	Teclee el nombre que está buscando:

*strings.8386:	Siguiente %d

*strings.8387:	Este documento no se puede adjuntar a un mensaje:\n%s

*strings.8388:	Mozilla no puede encontrar su\nTarjeta Personal. ¿Le gustaría crearla\nahora?

*strings.8389:	Centro de Mensajes de Mozilla de %s

*strings.8390:	Normal

*strings.8391:	Negrita

*strings.8392:	Cursiva

*strings.8393:	Negrita Cursiva

*strings.8394:	Normal

*strings.8395:	Más grande

*strings.8396:	Más pequeño

*strings.8397:	Enviado

*strings.8398:	No se ha enviado el mensaje. ¿Quiere guardar\nel mensaje en la carpeta de borradores?

*strings.8399:	Fecha no válida. No se efectúa la busqueda.

*strings.8400:	El valor del campo MES es incorrecto.\nPor favor introduzca el mes con 2 digitos (1-12).\n¡Pruebe de nuevo!

*strings.8401:	El valor del campo DÍA es incorrecto.\nPor favor introduzca el día con 2 digitos (1-31).\n¡Pruebe de nuevo!

*strings.8402:	El valor del campo AÑO es incorrecto.\nPor favor introduzca el año con 4 digitos (e.g. 1997).\nEl año debe ser posterior a 1900.\n¡Pruebe de nuevo!

*strings.8403:	To:

*strings.8404:	Cc:

*strings.8405:	Bcc:

*strings.8406:	Newsgroup:

*strings.8407:	Reply-To:

*strings.8408:	Followup-To:

*strings.8409:	Máxima
*strings.8410:	Alta
*strings.8411:	Normal
*strings.8412:	Máxima
*strings.8413:	Mínima
*strings.8414:	Dirección

!*strings.8415:Attachment
*strings.8415:	Adjunto

*strings.8416:	Opción

*strings.8417:	Aceptar

*strings.8418:	Borrar

*strings.8419:	Cancelar

*strings.8420:	Urgente

*strings.8421:	Importante

*strings.8422:	Normal

*strings.8423:	PSI

*strings.8424:	Basura

*strings.8425:	Prioridad

*strings.8426:	%sEtiqueta

*strings.8427:	Direccionamiento

*strings.8428:	Adjunto

*strings.8429:	Redactar

*strings.8430:	Todas las carpetas de correo

*strings.8431:	Todos los grupos

*strings.8432:	Directorio LDAP

*strings.8433:	Dirección

*strings.8434:	Asunto

*strings.8435:	Remitente

*strings.8436:	Fecha

*strings.8437:	Preparando archivo para publicar:\n%.900s

*strings.8438:	Nombre

*strings.8439:	Dirección

*strings.8440:	Última visita

*strings.8441:	Última modificación

*strings.8442:	Nombre

*strings.8443:	Total

*strings.8444:	No leído

*strings.8445:	Categoría

*strings.8446:	Nombre del Grupo

*strings.8447:	Artículos

*strings.8448:	Asunto

*strings.8449:	Fecha

*strings.8450:	Prioridad

*strings.8451:	El estado

*strings.8452:	Remitente

*strings.8453:	Destinatario

*strings.8454:	Aquí archivo

*strings.8455:	Registrando Conversores

*strings.8456:	Preparando Libreria de Seguridad

*strings.8457:	Preparando Libreria de Red

*strings.8458:	Preparando Libreria de Mensajes

*strings.8459:	Preparando Libreria de imagen

*strings.8460:	Preparando JavaScript

*strings.8461:	Preparando Plugins

*strings.8462:	%s: installColormap: %s debe ser si, no, o averiguar.\n

*strings.8463:	Marcadores de %s

*strings.8464:	notitulo

*strings.8465:	Desmarcar esta opción significa que este grupo\ny todos los grupos de noticias por encima suyo\nno reciben mensajes en HTML

*strings.8466:	Cifrado

*strings.8467:	Ninguno

*strings.8468:	Mostrar columna

*strings.8469:	Ocultar columna

*strings.8470:	Esa capacidad está desactivada

*strings.8471:	file: Sintitulo

*strings.8472:	%s no está activado.\n

*strings.8473:	Directorio de grupos de noticias

*strings.8474:	Directorio de correo local

*strings.8475:	%s "%.255s" no existe.\n

*strings.8476:	No se encontró nada que coincida con el criterio de busqueda

*strings.8477:	Por favor teclee una dirección de correo válida (e.g. usuario@internet.com).\n

*strings.8478:	Historial de Mozilla de %s

*strings.8479:	Cargo

*strings.8480:	Dirección

*strings.8481:	Primera visita

*strings.8482:	Última visita

*strings.8483:	Expira

*strings.8484:	Cómputo de visitas

*strings.8485:	LLamar con la aplicación de conferencias de Mozilla a 

*strings.8486:	Enviar un mensaje a

*strings.8487:	La bandeja de entrada predeterminada no existe.\n¡No puede recibir mensajes!

*strings.8488:	telnet

*strings.8489:	aplicación TN3270

*strings.8490:	rlogin

*strings.8491:	rlogin con el usuario

*strings.8492:	No puede borrarse esta aplicación desde las preferencias.

*strings.8493:	No se ha especificado la aplicación.

*strings.8494:	[Aplicación JavaScript]

*strings.8495:	Sus preferencias, versión %s, son incompatibles con\nla versión actual %s. ¿Quiere guardar las preferencias nuevas ahora?

*strings.8496:	Por favor tenga en cuenta que sus preferencias, versión %s,\nson incompatibles con la versión actual %s.

*strings.8497:	%s: la versión del programa es %s, pero la de los recursos es %s.\n\
\n\
	Esto significa que hay un archivo llamado `%s' bien en el directorio del\n\
	sistema para app-defaults, o en su directorio de inicio (home) que no\n\
	conincide con la aplicación.  Compruebe sus variables de entorno y los\n\
	directorios a donde apuntan:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
	Busque tambien este archivo en su directorio de inicio, o en el\n\
	directorio llamado `app-defaults' en algun lugar bajo /usr/lib/.

*strings.8498:	%s: no pudo encontrar sus recursos.\n\
\n\
	Esto significa que hay un archivo llamado `%s' bien en el directorio del\n\
	sistema para app-defaults, o en su directorio de inicio (home) que no\n\
	conincide con la aplicación.  Compruebe sus variables de entorno y los\n\
	directorios a donde apuntan:\n\
\n\
  $XAPPLRESDIR\n\
  $XFILESEARCHPATH\n\
  $XUSERFILESEARCHPATH\n\
\n\
	Busque tambien este archivo en su directorio de inicio, o en el\n\
	directorio llamado `app-defaults' en algun lugar bajo /usr/lib/.

*strings.8499:	%s: locale `%s' no soportado por Xlib; probando con `C'.\n

*strings.8500:	%s: locale `C' no soportado.\n

*strings.8501:	%s: locale `C' tampoco esta soportado.\n

*strings.8502:	\n\
	Si el directorio $XNLSPATH no contiene los archivos de configuracion,\n\
	apropiados, %s se colgará cada vez que intente 'pegar' texto en una\n\
	casilla de texto.  (Este es un error de las librerias de X11R5, usadas\n\
	en la creación de este programa.)\n\
\n\
	Ya que ni X11R4 ni X11R6 vienen con estos archivos de configuración,\n\
	los hemos incluido en la distribución %s. El lugar adecuado de estos\n\
	archivos es %s.\n\
	Si no puede crear este directorio, deberia asignar la variable\n\
	$XNLSPATH para que apunte al lugar donde instaló los archivos.\n\n


*strings.8503:	¿Quizas la variable de entorno $XNLSPATH no se ha definido correctamente?\n

*strings.8504:	uname ha fallado

*strings.8505:	%s: uname() ha fallado; no puedo determinar el sistema sobre el que estoy\n

*strings.8506:	%s: éste es un ejecutable para SunOS 4.1.3, y ud. lo está ejecutando\n\
	bajo SunOS %s (Solaris.)  Se recomienda que use los binarios\n\
	específicos de esta version, o pueden ocurrir cosas no deseadas.\n\n

*strings.8507:	%s: fallo al preparar Mozilla_event_queue!\n

!*strings.8508:%s: invalid `-remote' option "%s"\n
*strings.8508:	%s: parametro `-remote' incorrecto "%s"\n

*strings.8509:	%s: la opción `-id' debe preceder a todas las opciones `-remote'.\n

*strings.8510:	%s: solo se puede usar una opción `-id'.\n

*strings.8511:	%s: opción `-id' erronea "%s"\n

*strings.8512:	%s: la opción '-id' solo puede ser usada con `-remote'.\n

*strings.8513:	%s: aviso: $XKEYSYMDB es %s,\n	pero dicho archivo no existe.\n

*strings.8514:	%s: aviso: no se encuentra un archivo XKeysymDB en\n	%s, %s, o en %s\n	Apunte $XKEYSYMDB al archivo XKeysymDB correcto.\n

*strings.8515:	%s: no se encontró en el PATH!\n

*strings.8516:	renombrando %s a %s:

*strings.8517:	%s: uso: OpenURL(url [ , new-window|nombre-de-la-ventana] )\n

*strings.8518:	%s: uso: OpenFile(archivo)\n

*strings.8519:	%s: uso: print([archivo])\n

!*strings.8520:%s: usage: SaveAS(file, output-data-type)\n
*strings.8520:	%s: uso: SaveAs(archivo, tipo-de-datos-de-salida)\n

*strings.8521:	%s: uso: SaveAs(archivo, [tipo-de-datos-de-salida])\n

*strings.8522:	%s: uso: mailto(dirección ...)\n

*strings.8523:	%s: uso: find(cadena)\n

*strings.8524:	%s: uso: addBookmark(url, título)\n

*strings.8525:	%s: uso: htmlHelp(map-file, id, search-text)\n

*strings.8526:	%s: especificación de filtro inprocesable: %s\n

*strings.8527:	Enviar archivo

*strings.8528:	error al grabar las opciones

*strings.8529:	# Archivo del Historial Mozilla del Usuario\n# Versión: %s\n# ¡Este archivo es auto-generado!  No lo modifique.\n\n

*strings.8530:	%s: demasiados argumentos (%d) para ActivateLinkAction()\n

*strings.8531:	%s: parametro desconocido (%s) para ActivateLinkAction()\n

*strings.8532:	archivo:///Sin_título

*strings.8533:	imprimiendo

*strings.8534:	\nEste es el mapa de colores y la visual predeterminada.

*strings.8535:	\nEsta es la visual predeterminada con un mapa privado.

*strings.8536:	\nEsta es una visual personalizada.

*strings.8537:	desde la red

*strings.8538:	desde la caché en disco

*strings.8539:	desde la caché en memoria

*strings.8540:	Valor predeterminado

*strings.8541:	%s: pocos parámetros (%d) para HistoryItem()\n

*strings.8542:	%s: muchos parámetros (%d) para HistoryItem()\n

*strings.8543:	%s: parámetro desconocido (%s) para HistoryItem()\n

*strings.8544:	%s: incapaz de leer la propiedad %s\n

*strings.8545:	%s: datos erroneos en %s de la ventana 0x%x.\n

*strings.8546:	509 error interno: incapaz de convertir la ventana 0x%x en un widget

*strings.8547:	500 orden irreconocible: %s

*strings.8548:	501 orden desconocida: %s

*strings.8549:	502 no hay ninguna ventana apropiada para %s

*strings.8550:	200 orden ejecutada: %s(

*strings.8551:	200 orden ejecutada: %s(

*strings.8552:	%s: windowGravityWorks: %s debe ser sí, no, o probar.\n

*strings.8553:	no se puede dup() una salida de error standard:

*strings.8554:	no se puede fdopen() la nueva salida de error standard:

*strings.8555:	no se puede dup() una nueva salida de error standard:

*strings.8556:	no se puede dup() la salida standard:

*strings.8557:	no se puede fdopen() la nueva salida standard:

*strings.8558:	no se puede dup() una nueva sdalida standard:

*strings.8559:	\n%s:\n\nEste binario de Mozilla no funciona en %s %s.\n\nVisite http://home.netscape.com/ para obtener una versión de Mozilla\nque funcione en su sistema.\n\n

*strings.8560:	Creado el 

*strings.8561:	Grupo de debate virtual

*strings.8562:	Salvar el criterio de búsqueda creará un Grupo de Noticias Virtual\nbasado en él. El grupo de noticias virtual estará  \ndisponible en el Centro de Mensajes.\n

*strings.8563:	Confirmar salida de Mozilla\n

*strings.8564:	¿Cerrar todas las ventanas y salir de Mozilla?\n

!*strings.8565:Netscape Mail\n
*strings.8565:	Correo de Mozilla\n

*strings.8566:	La bandeja de salida contine mensajes sin enviar\n¿Enviarlos ahora?

*strings.8567:	Su nombre de usuario POP es solo su nombre de usuario (e.g. usuario),\nno su dirección POP completa (e.g. usuario@internet.com).

*strings.8568:	Escriba información correcta.

*strings.8569:	No se pueden editar filtros JavaScript\nen esta versión de Mozilla.

*strings.8570:	Teléfono

*strings.8571:	Limpiando mensaje nuevos...

*strings.8572:	Sus preferencias de tipo no tendran efecto hasta reiniciar Mozilla.

*strings.8573:	Uno o mas elementos de la selección que está usted arrastrando no contiene una dirección de e-mail\ny no se añadió a la lista. Por favor asegúrese que cada elemento de la selección incluye\nuna dirección de e-mail.

!*strings.8574:New Folder Name:
*strings.8574:	Nuevo Nombre de Carpeta:

*strings.8575:       -component-bar    Mostrar solo la barra de componentes.\n\
\n\
    -composer         Ejecutar las órdenes de la línea de comandos en el editor\n\
                      de páginas Web.\n\
    -edit             Lo mismo que -composer.\n\
\n\
    -messenger        Mostrar el buzón de correo (INBOX).\n\
    -mail             Lo mismo que -messenger.\n\
\n\
    -discussions      Mostrar correo/grupos de noticias.\n\
    -news             Lo mismo que -discussions.\n\n

*strings.8576:	Los argumentos que no son opciones son interpretados como archivos o\n       URLs a cargar.\n\n

!*strings.8577:Searching:
*strings.8577:	Buscando:

*strings.8578:	Resultados de la búsqueda

*strings.8579:	Resultados de la búsqueda de:

*strings.8580:	Nombre

!#-
!*strings.8581:Email
!*strings.8582:Organization
!*strings.8583:Department
!*strings.8584:Search results will appear in address book window
!*strings.8585:Basic Search
!*strings.8586:Advanced Search
!*strings.8587:More
!*strings.8588:Fewer
!*strings.8589:Find items which
!*strings.8590:Match all items below (And)
!*strings.8591:Match one or more of the items below (Or)
!*strings.8592:where
!*strings.8593:
!*strings.8594:and
!*strings.8595:or
!*strings.8596:Description:
!*strings.8597:LDAP Server:
!*strings.8598:Server Root:
!*strings.8599:Port Number:
!*strings.8600:Maximum Number of Hits:
!*strings.8601:Secure
!*strings.8602:Save Password
!*strings.8603:Directory Info
!*strings.8604:Directories
!*strings.8605:Search...
!*strings.8606:Custom Header:
!*strings.8607:Display Name:
!*strings.8608:Pager:
!*strings.8609:Cellular:
!*strings.8610:Cannot drop into the targeted destination folder.
!*strings.8611:Login with name and password
!*strings.8612:No spellchk library found
!*strings.8613:Choose where you would like your %s messages to be stored:
!*strings.8614:Place a copy in folder: '%s' on '%s'
!*strings.8615:Folder '%s' on
!*strings.8616:Keep templates in: '%s' on '%s'
!*strings.8617:Keep drafts in: '%s' on '%s'
!*strings.8618:BCC: %s
!*strings.8619:General
!*strings.8620:Advanced
!*strings.8621:IMAP
!*strings.8622:Sharing
!*strings.8623:This server does not support shared folders
!*strings.8624:You have the following permissions:
!*strings.8625:Share this and other folders with network users \n\
!*strings.8626:Folder Type:
!*strings.8627:POP
!*strings.8628:start my reply above the quoted text
!*strings.8629:start my reply below the quoted text
!*strings.8630:select the quoted text
!*strings.8631: (default)
!*strings.8632:Inline
!*strings.8633:Quoted
!*strings.8634:As Attachment
!*strings.8635:Automatically subscribe to all my folders on "%s"
!*strings.8636:MoveMail
!*strings.8637:(Using Movemail)
!*strings.8638:Automatically
!*strings.8639:Ask me
!*strings.8640:Never Send
!*strings.8641:Reply To:
!*strings.8642:multiple matches found
!*strings.8643:%m/%d/%Y
!*strings.8644:The mail filter named '%s' has been truncated because it had more than %d terms.
!*strings.8645:Invalid Date Value.
!*strings.8646:Department:
!*strings.8647:You must pick a file that exists.
!*strings.8648:You are not allowed to choose a directory.
!*strings.8649:Match all items below (And):
!*strings.8650:Download headers for: %s
!*strings.8651:Unable to access directory:\n\
!*strings.8652:Ask Me
!*strings.8653:Text
!*strings.8654:HTML
!*strings.8655:Text and HTML
!*strings.8656:Sorry, help is not available for this topic.
!*strings.8657:(None available)
!*strings.8658:Compact Folders
!*strings.8659:Compact This Folder
!*strings.8660:Empty Trash on %s
!*strings.8661:Empty Trash Folder
!*strings.8662:If the message comes from outside the\n\
!*strings.8663:(no domain)
!*strings.8664:Addresses Matching "%s"
!*strings.8665:Select Addresses
!*strings.8666:Mailing List
!*strings.8667:Folder name
!*strings.8668:Delete Mail Server
!*strings.8669:Delete Folders
!*strings.8670:AddressBook Info
!*strings.8671:Name:
!*strings.8672:Basic Search
!*strings.8673:Advanced Search
!*strings.8674:URL:
!*strings.8675:Go
!*strings.8676:Properties
!*strings.8677:Get Info
!*strings.8678:Location: %s
!*strings.8679:No matches
!*strings.8680:
!*strings.8681:
!*strings.8682:
!*strings.8683:
!*strings.8684:
!*strings.8685:Please enter some text for your search and try again.
!*strings.8686:Please enter a valid date for your search and try again.

! =================================================================
