Summary:	Netscape Navigator and Communicator
Summary(pl):	Netscape Navigator i Communicator
Summary(ru):	Netscape Navigator É Communicator
Summary(uk):	Netscape Navigator ÔÁ Communicator
Name:		netscape
Version:	4.8
%define _shortver 48
%define _registry %{version}.0.20020722
Release:	4
Epoch:		1
License:	distributable
Group:		X11/Applications/Networking
Source0:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/supported/linux22/complete_install/communicator-v%{_shortver}-us.x86-unknown-linux2.2.tar.gz
# Source0-md5:	e131bf86a7ef03dc31e502a3184c9f56
Source1:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/supported/linux22/navigator_standalone/navigator-v%{_shortver}-us.x86-unknown-linux2.2.tar.gz
# Source1-md5:	ec54ef40eb1be523139a5fe9fb28513f
Source20:	communicator-v473.ppclinux.tar.gz
# Source20-md5:	48fd4563bdac71276e7a75b9f717cb94
Source2:	%{name}.sh
Source3:	%{name}-communicator.desktop
Source4:	%{name}-navigator.desktop
Source5:	%{name}.png
Source10:	Netscape.ad.de
# Source10-md5:	656a1d742bac79ae23e322ee3caa8f7e
Source11:	Netscape.ad.es
# Source11-md5:	e66046fd8ebe5e3288a7ca609ae9bd96
Source12:	Netscape.ad.fr
# Source12-md5:	07bcb4de75789980dd22e959100ff503
Source13:	Netscape.ad.ja
# Source13-md5:	2fa4f215cac5e3a0dc22e4497c60275c
Source14:	Netscape.ad.ko
# Source14-md5:	9fbfea6dee10cd927f0a6b58ea33800d
Source15:	Netscape.ad.pl
# Source15-md5:	ef01be6811b11698fce8c2721adb6888
Source16:	Netscape.ad.pt_BR
# Source16-md5:	1c3de41f8a1c1cea30b882de8018b6a4
Source17:	Netscape.ad.ru
# Source17-md5:	84cd5534b9f0df43d5f4b7e2075011a5
Source18:	Netscape.ad.zh_CN
# Source18-md5:	44a5c3d2fd277ac3ad4dedbc5f4796b2
Source19:	Netscape.ad.zh_TW
# Source19-md5:	7340e80bbfb76f45aa80da783fc0eb18
BuildRequires:	compat-libstdc++-2.9
Requires:	lesstif
ExclusiveArch:	%{ix86} ppc
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
Netscape Navigator and Communicator.

%description -l pl
Graficzna przegl±darka WWW Netscape Navigator oraz pakiet Netscape
Communicator.

%description -l ru
Netscape navigator É communicator

%description -l uk
Netscape navigator ÔÁ communicator

%package common
Summary:	Files shared by Netscape Navigator and Communicator
Summary(cs):	Spoleèné soubory pro Netscape Navigator a Netscape Communicator
Summary(da):	Filer delt af Netscape Navigator og Communicator
Summary(de):	Dateien, die von Netscape Navigator und Communicator gemeinsam verwendet werden
Summary(es):	Ficheros comunes a Netscape Navigator y Communicator
Summary(fr):	Fichiers partagés par Netscape Navigator et Communicator
Summary(id):	File-file yang dipakai bersama oleh Netscape Navigator dan Communicator
Summary(is):	Skrár sem bæði Netscape Navigator og Communicator nota
Summary(it):	File condivisi da Netscape Navigator e da Communicator
Summary(ja):	Netscape Navigator ¤È Communicator ¤Î´Ö¤Ç¶¦Í­¤µ¤ì¤ë¥Õ¥¡¥¤¥ë
Summary(ko):	Netscape Navigator ¿Í Communicator ¿¡ ÀÇÇØ °øÀ¯µÇ´Â ÆÄÀÏµé
Summary(no):	Filer som deles av Netscape Navigator og Communicator
Summary(pl):	Pliki wspólne dla Netscape Navigatora i Communicatora
Summary(pt):	Ficheiros partilhados pelo Netscape Navigator e pelo Communicator
Summary(ru):	ïÂÝÉÅ ÆÁÊÌÙ ÄÌÑ Netscape Navigator É Communicator
Summary(sk):	Súbory pou¾ívané Netscape Navigator-om aj Communicator-om
Summary(sl):	Datoteke, ki si jih delita Netscape Navigator in Communicator
Summary(sv):	Filer delade av Netscape Navigator och Communicator
Summary(uk):	óÐ¦ÌØÎÉÊ ËÏÄ ÄÌÑ ÎÁ×¦ÇÁÔÏÒÁ ÔÁ ËÏÍÕÎ¦ËÁÔÏÒÁ
Summary(zh_CN):	Netscape Navigator ºÍ Communicator ¹²ÏíµÄÎÄ¼þ¡£
Group:		X11/Applications/Networking

%description common
This package contains the files that are shared between the Netscape
Navigator Web browser and the Netscape Communicator suite of tools
(the Navigator Web browser, an email client, a news reader, and a Web
page editor).

%description common -l cs
Balíèek netscape-common obsahuje soubory, které jsou spoleèné pro
WWW prohlí¾eè Netscape Navigator a sadu nástrojù Netscape Communicator
(obsahuje WWW prohlí¾eè Netscape Navigator, po¹tovní klient, newsový
klient a editor WWW stránek).

%description common -l da
Denne pakke indeholder filerne som delas af webblæddraren Netscape
Navigator og værktøjssviten Netscape Communicator (webblæddraren
Navigator, en epostklient, en nyhedslæsare og en
webbsidesredigerare).

%description common -l de
Dieses Paket enthält die Dateien, die vom Netscape Navigator
Web-Browser und der Suite von Dienstprogrammen des Netscape
Communicator gemeinsam genutzt werden (der Web-Browser Navigator,
ein Email-Client, ein Newsreader und ein Webseiten-Editor).

%description common -l es
Este paquete contiene los ficheros comunes del navegador Web Netscape
navigator y el paquete de herramientas Netscape Communicator (navegador
web de Navigator, cliente de correo electrónico, lector de noticias y
editor de páginas web).

%description common -l fr
Ce paquetage contient les fichiers partagés entre le navigateur Web
Netscape Navigator et la suite d'outils Netscape Communicator (navigateur
Web Netscape Navigator, client de messagerie, lecteur de nouvelles et
éditeur de pages Web).

%description common -l id
Paket ini berisi file-file yang dipakai bersama oleh browser Web Netscape
Navigator dan suite program Netscape Communicator (browser Web Navigator,
client e-mail, pembaca news, dan editor halaman Web.)

%description common -l is
Þessi pakki innniheldur þær skrár sem eru notaðar af Netscape Navigator og
Netscape Communicator (Vefrápara, póstforrit, fréttalesara og Vefritill).

%description common -l it
Questo pacchetto contiene i file condivisi dal browser Web Netscape
Navigator e dalla gamma di tool di Netscape Communicator
(il browser Navigator, un client di posta elettronica, un news reader
e un editor di pagine web).

%description common -l ja
ja.po:"¤³¤Î¥Ñ¥Ã¥±¡¼¥¸¤Ë¤Ï Web ¥Ö¥é¥¦¥¶¤Ç¤¢¤ë Netscape Navigator
¤È¥Ä¡¼¥ë¤Î¥¹¥¤¡¼¥È (Web ¥Ö¥é¥¦¥¶¤Î Navigator
¡¢ÅÅ»Ò¥á¡¼¥ë¥¯¥é¥¤¥¢¥ó¥È¡¢¥Ë¥å¡¼¥¹¥ê¡¼¥À¡¢¤ª¤è¤Ó Web
¥Ú¡¼¥¸¥¨¥Ç¥£¥¿) ¤Ç¤¢¤ë Netscape Communicator ¤Î´Ö¤Ç¶¦Í­
¤µ¤ì¤ë¥Õ¥¡¥¤¥ë¤¬´Þ¤Þ¤ì¤Æ¤¤¤Þ¤¹¡£

%description common -l pl
Pakiet zawiera pliku wspólne dla przegl±darki WWW Navigator i pakietu
Communicator (zawieraj±cego przegl±darkê Navigator, program pocztowy,
czytnik news i edytor stron WWW).

%description common -l pt
Este pacote contém os ficheiros partilhados entre o navegador Web
Netscape Navigator e o conjunto de ferramentas Netscape Communicator
(o navegador Web Navigator, um cliente de 'e-mail', um leitor de 'news'
e um editor de páginas Web).

%description common -l ru
æÁÊÌÙ, ÉÓÐÏÌØÚÕÅÍÙÅ ËÁË Netscape Navigator'ÏÍ, ÔÁË É Netscape
Communicator'ÏÍ.

%description common -l sk
Tento balík obsahuje súbory zdieµané prehliadaèom www stránok Netscape
Navigator a skupinou nástrojov (www prehliadaè Navigator,
e-mail klient, news prehliadaè a editor www stránok), oznaèenou
Netscape Communicator.

%description common -l sv
Detta paket innehåller filerna som delas av webbläsare Netscape\n"
Navigator och verktygssviten Netscape Communicator (webbläsaren\n"
Navigator, en epostklient, en nyhetsläsare och en\n"
webbsidesredigerare).

%description common -l uk
æÁÊÌÉ, ÝÏ ×ÉËÏÒÉÓÔÏ×ÕÀÔØÓÑ ÑË Netscape Navigator'ÏÍ, ÔÁË ¦ Netscape
Communicator'ÏÍ.

%description common -l zh_CN
´ËÈí¼þ°ü°üº¬ÔÚ Netscape Navigator Web ä¯ÀÀÆ÷ºÍ Netscape Communicator
¹¤¾ßÌ×¼þ£¨Navigator Web ä¯ÀÀÆ÷¡¢µç×ÓÓÊ¼þ¿Í»§³ÌÐò¡¢ÐÂÎÅÔÄ¶Á³ÌÐòºÍ Web
Ò³±à¼­Æ÷£©Ö®¼ä¹²ÏíµÄÎÄ¼þ¡£

%package communicator
Summary:	Netscape Communicator internet browser, news reader, and mail client
Summary(cs):	WWW prohlí¾eè Netscape Communicator, po¹tovní a NetNews klient
Summary(de):	Netscape Communicator Internet Browser, Newsreader und Mail-Client
Summary(es):	Juego de herramientas Netscape Communicator
Summary(fr):	Netscape Communicator, navigateur Internet, lecteur de news et client courrier
Summary(it):	Gamma di tool di Netscape Communicator
Summary(ja):	Netscape Communicator ¥Ä¡¼¥ë¥»¥Ã¥È
Summary(ko):	µµ±¸µéÀÇ Netscape Communicator ¼öÆ®
Summary(pl):	Netscape Communicator - przegl±darka WWW, czytnik news oraz program pocztowy
Summary(pt):	O conjunto de ferramentas Netscape Communicator
Summary(ru):	Netscape Communicator - ÂÒÏÕÚÅÒ, ÎØÀÓÒÉÄÅÒ É ÐÏÞÔÏ×ÙÊ ËÌÉÅÎÔ
Summary(sk):	WWW prehliadaè Netscape Navigator
Summary(sl):	Zbirka spletnih orodij Netscape Communicator
Summary(sv):	Verktygssviten Netscape Communicator
Summary(tr):	Netscape Communicator tarayýcý, haber okuyucu ve e-posta istemcisi
Summary(uk):	Netscape Communicator - ÂÒÏÕÚÅÒ, ÎØÀÓÒ¦ÄÅÒ ÔÁ ÐÏÛÔÏ×ÉÊ ËÌ¦¤ÎÔ
Summary(zh_CN):	Netscape Communicator µÄ¹¤¾ßÌ×¡£
Group:		X11/Applications/Networking
Requires:	netscape-common

%description communicator
Netscape Communicator is a suite of tools including a Web browser, a
Usenet news reader, and an email client.

%description communicator -l cs
Netscape Communicator je sada programù obsahující WWW prohlí¾eè,
NetNews klienta a po¹tovního klienta Netscape Communicatoru.

%description communicator -l da
Netscape Communicator er en samling værktøjer, inklusive en web-læser,
en nyheds-læser og en e-post klient.

%description communicator -l de
Netscape Communicator ist eine Toolsammlung mit einem Web-Browser, einem
Usenet Newsreader und einem Email-Client.

%description communicator -l es
Netscape Communicator es un conjunto de herramientas que incluye un
navegador web, un lector de noticias y un cliente de correo electrónico.

%description communicator -l fr
Netscape Communicator est une suite d'outils qui comprend un navigateur
Web, un lecteur de nouvelles Usenet et un client de messagerie.

%description communicator -l id
Netscape Communicator, termasuk browser Web, pembaca news dan client e-mail.

%description communicator -l is
Netscape Communicator er safn tóla sem inniheldur m.a. vefrápara,
Usenet fréttaskoðara og tölvupóstforrit.

%description communicator -l it
Netscape Communicator è una gamma di tool comprendenti un
browser Web, un news reader Usenet e un client di posta elettronica.

%description communicator -l ja
Netscape Communicator ¥¹¥¤¡¼¥È¤Ï Web ¥Ö¥é¥¦¥¶¡¢Usenet ¥Ë¥å¡¼¥¹¥ê¡¼¥À¡¢
ÅÅ»Ò¥á¡¼¥ë¥¯¥é¥¤¥¢¥ó¥È¤ò´Þ¤ó¤Ç¤¤¤Þ¤¹¡£

%description communicator -l ko
Netscape Communicator´Â À¥ ºê¶ó¿ìÀú, À¯Áî³Ý ´º½º ÀÐ±â ÇÁ·Î±×·¥°ú
ÀÌ¸ÞÀÏ Å¬¶óÀÌ¾ðÆ®¸¦ Æ÷ÇÔÇÏ´Â µµ±¸µéÀÇ ¼öÆ®(suite) ÀÔ´Ï´Ù.

%description communicator -l no
Netscape Communicator er en samling verktøy, inkludert en web-leser,
en news-leser og en e-post klient.

%description communicator -l pl
Netscape Communicator to zestaw narzêdzi zawieraj±cy przegl±darkê WWW,
czytnik grup dyskusyjnych oraz program pocztowy.

%description communicator -l pt
O Netscape Communicator é um conjunto de ferramentas incluindo um
navegador Web, um leitor de 'news' da Usenet e um cliente de 'e-mail'.

%description communicator -l ru
Netscape Communicator - ÜÔÏ ÐÏÌÎÏÆÕÎËÃÉÏÎÁÌØÎÁÑ ÐÒÏÇÒÁÍÍÁ ÐÒÏÓÍÏÔÒÁ
ÓÔÒÁÎÉÃ WWW, ÞÔÅÎÉÑ ÐÏÞÔÙ É ÎÏ×ÏÓÔÅÊ.

%description communicator -l sk
Netscape Communicator je sadou nástrojov, vrátane Web prehliadaèa,
prehliadaèa news a e-mail klienta.

%description communicator -l sv
Netscape Communicator är en verktygssvit som innehåller en webbläsare,
en Usenet nyhetsläsare och en epostklient.

%description communicator -l uk
Netscape Communicator - ÃÅ ÐÏÐÕÌÑÒÎÉÊ web-ÂÒÏÕÚÅÒ. ÷¦Î Ð¦ÄÔÒÉÍÕ¤ ÏÓÔÁÎÎ¦
ÓÔÁÎÄÁÒÔÉ HTML, Java ÔÁ JavaScript. ôÁËÏÖ Í¦ÓÔÉÔØ ÐÏ×ÎÏÃ¦ÎÎÉÊ ÎØÀÓÒ¦ÄÅÒ
Usenet ÔÁ ÐÏÛÔÏ×ÉÊ ËÌ¦¤ÎÔ.

%description communicator -l zh_CN
Netscape ¹¤¾ß£¬°üÀ¨ Web ä¯ÀÀÆ÷¡¢ÐÂÎÅÔÄ¶Á³ÌÐòºÍµç×ÓÓÊ¼þ¿Í»§³ÌÐò¡£

%package navigator
Summary:	The Netscape Navigator Web browser
Summary(cs):	WWW prohlí¾eè Netscape Navigator
Summary(da):	Web-læseren Netscape Navigator
Summary(de):	Der Web-Browser Netscape Navigator
Summary(es):	El navegador Web Netscape Navigator
Summary(fr):	Navigateur Web Netscape Navigator
Summary(id):	Browser Web Netscape Navigator
Summary(is):	Vefráparinn Netscape Navigator
Summary(it):	Browser Web Netscape Navigator
Summary(ja):	Netscape Navigator Web ¥Ö¥é¥¦¥¶
Summary(ko):	Netscape Navigator À¥ ºê¶ó¿ìÀú
Summary(no):	Web-leseren Netscape Navigator
Summary(pl):	Netscape Navigator - przegl±darka WWW
Summary(pt):	O navegador Web Netscape Navigator
Summary(ru):	Netscape Navigator - ÂÒÏÕÚÅÒ éÎÔÅÒÎÅÔ
Summary(sk):	WWW prehliadaè Netscape Navigator
Summary(sl):	Spletni brkljalnik Netscape Navigator
Summary(sv):	Webbläsaren Netscape Navigator
Summary(tr):	Netscape Navigator web tarayýcý
Summary(uk):	Netscape Navigator - ÂÒÏÕÚÅÒ ¶ÎÔÅÒÎÅÔ
Summary(zh_CN):	Netscape Navigator ÍøÒ³ä¯ÀÀÆ÷¡£
Group:		X11/Applications/Networking
Requires:	netscape-common

%description navigator
Netscape Navigator is a Web browser which supports
the latest HTML standards, Java, and JavaScript and some sheets.

%description navigator -l cs
Netscape Navigator je WWW prohlí¾eè, který podporuje HTML standardy,
jazyk Java, JavaScript a nìkteré styly.

%description navigator -l da
Netscape Navigator er en webblæddrare som understøtter de senaste
HTML-standarderna, Java, JavaScript og några stilblad (style
sheets).

%description navigator -l de
Der Netscape Navigator ist ein Web-Browser, der die neuesten
HTML-Standards, Java, JavaScript und einige Stylesheets unterstützt.

%description navigator -l es
Netscape Navigator/Communicator es un navegador que soporta
los últimos estándares HTML, Java, Javascript.

%description navigator -l fr
Netscape Navigator est un navigateur Web qui prend en charge les
normes HTML les plus récentes, Java, JavaScript et certaines feuilles
de style.

%description navigator -l id
Netscape Navigator adalah browser Web yang paling umum di pasaran. Program
ini mendukung standar HTML terbaru, Java, Javascript dan beberapa jenis
style sheet.

%description navigator -l is
Netscape Navigator er vefrápari. Hann styður helstu HTML staðlana, JAva,
JavaScript og snið.

%description navigator -l it
Netscape Navigator è un browser Web che supporta gli ultimi standard
HTML, Java, Javascript e alcuni fogli di stile.

%description navigator -l ja
Netscae Navigator ¤ÏºÇ¿·¤Î HTML »ÅÍÍ¤ò¤Ï¤¸¤á¡¢Java¡¢JavaScript¡¢
³Æ¼ï¤Î¥¹¥¿¥¤¥ë¥·¡¼¥È¤Ê¤É¤ò¥µ¥Ý¡¼¥È¤·¤¿ Web ¥Ö¥é¥¦¥¶¤Ç¤¹¡£

%description navigator -l ko
Netscape Navigator ´Â À¥ ºê¶ó¿ìÀú·Î¼­ ÃÖ½ÅÀÇ HTML
±âÁØµé°ú, ÀÚ¹Ù, ÀÚ¹Ù½ºÅ©¸³Æ® ±×¸®°í ¸î¸î ½ºÅ¸ÀÏ ½ÃÆ®µéÀ» Áö¿øÇÕ´Ï´Ù

%description navigator -l pl
Netscape Navigator to przegl±darka WWW obs³uguj±ca najnowsze
standardy HTML, Java i JavaScript.

%description navigator -l pt
O Netscape Navigator é um navegador Web que suporta as últimas normas
do HTML, Java, JavaScript e algumas folhas de estilo (stylesheets).

%description navigator -l ru
Netscape Navigator - ÜÔÏ ÏÂÏÚÒÅ×ÁÔÅÌØ World Wide Web. ïÎ ÐÏÄÄÅÒÖÉ×ÁÅÔ
ÎÏ×ÅÊÛÉÅ ÓÔÁÎÄÁÒÔÙ HTML, Java, JavaScript É ÎÅËÏÔÏÒÙÅ ÔÁÂÌÉÃÙ ÓÔÉÌÅÊ.

%description navigator -l sk
Netscape Navigator je prehliadaè www stránok v sieti Internet.
Podporuje posledné HTML ¹tandardy, Javu, Javascript a tie¾
niektoré zlo¾ky ¹týlov.

%description navigator -l sv
Netscape Navigator är en webbläsare som stöder de senaste
HTML-standarderna, Java, JavaScript och några stilblad (style
sheets).

%description navigator -l uk
Netscape Communicator - ÃÅ ÐÏÐÕÌÑÒÎÉÊ web-ÂÒÏÕÚÅÒ. ÷¦Î Ð¦ÄÔÒÉÍÕ¤ ÏÓÔÁÎÎ¦
ÓÔÁÎÄÁÒÔÉ HTML, Java ÔÁ JavaScript.

%prep
%setup -c -q

%ifarch ppc
mv -f netscape communicator
%endif

mv -f communic*/* .
rmdir communicator*

%install
rm -rf $RPM_BUILD_ROOT
install -d $RPM_BUILD_ROOT%{_bindir} \
	$RPM_BUILD_ROOT%{_libdir}/netscape/{plugins,java/classes} \
	$RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/{de,es,fr,ja,ko,pl,pt_BR,ru,zh_{CN,TW}} \
	$RPM_BUILD_ROOT{%{_applnkdir}/Network/WWW,%{_pixmapsdir}}

%ifarch %{ix86}
for I in *.nif; do
	tar -C $RPM_BUILD_ROOT%{_libdir}/netscape -xzvf $I
done
mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-communicator
%endif

cp -af vreg $RPM_BUILD_ROOT%{_libdir}/netscape

%ifarch %{ix86}
cp -af *.jar $RPM_BUILD_ROOT%{_libdir}/netscape/java/classes
echo "Communicator,%_registry,%{_libdir}/netscape" > /tmp/infile
./vreg $RPM_BUILD_ROOT%{_libdir}/netscape/registry /tmp/infile
rm -f /tmp/infile
%endif
%ifarch ppc
cp -af java/classes/*.jar $RPM_BUILD_ROOT%{_libdir}/netscape/java/classes
cp -af registry movemail XKeysymDB nethelp spell plugins $RPM_BUILD_ROOT%{_libdir}/netscape/
install netscape-communicator $RPM_BUILD_ROOT%{_libdir}/netscape
%endif

# get the netscape-navigator binary now
%ifarch %{ix86}
tar xvzf %{SOURCE1} '*/netscape-v%{_shortver}.nif'
tar xvzf navigator*/netscape-v%{_shortver}.nif netscape
install netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-navigator
%endif


install %{SOURCE2} $RPM_BUILD_ROOT%{_bindir}/netscape
install %{SOURCE3} %{SOURCE4} $RPM_BUILD_ROOT%{_applnkdir}/Network/WWW
install %{SOURCE5} $RPM_BUILD_ROOT%{_pixmapsdir}

install %{SOURCE10} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/de/Netscape
install %{SOURCE11} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/es/Netscape
install %{SOURCE12} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/fr/Netscape
install %{SOURCE13} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ja/Netscape
install %{SOURCE14} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ko/Netscape
install %{SOURCE15} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/pl/Netscape
install %{SOURCE16} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/pt_BR/Netscape
install %{SOURCE17} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ru/Netscape
install %{SOURCE18} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/zh_CN/Netscape
install %{SOURCE19} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/zh_TW/Netscape

%ifarch %{ix86}
ln -sf ../lib/netscape/netscape-navigator $RPM_BUILD_ROOT%{_bindir}/netscape-navigator
mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/libnullplugin-dynMotif.so \
	$RPM_BUILD_ROOT%{_libdir}/netscape/plugins
mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/{README,LICENSE} \
	$RPM_BUILD_DIR/%{name}-%{version}/
mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/Netscape.ad \
	$RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/Netscape
%endif
ln -sf ../lib/netscape/netscape-communicator $RPM_BUILD_ROOT%{_bindir}/netscape-communicator

%clean
rm -rf $RPM_BUILD_ROOT

%files common
%defattr(644,root,root,755)
%ifarch %{ix86}
%doc README LICENSE
%dir %{_libdir}/netscape/movemail-src
%{_libdir}/netscape/movemail-src/*
%{_libdir}/netscape/bookmark.htm
%attr(755,root,root) %{_libdir}/netscape/*.so
%{_libdir}/X11/app-defaults/Netscape
%{_libdir}/netscape/plugins/*.class
%endif
%docdir %{_libdir}/netscape/nethelp
%attr(755,root,root) %{_bindir}/netscape
%dir %{_libdir}/netscape
%dir %{_libdir}/netscape/nethelp
%dir %{_libdir}/netscape/java
%dir %{_libdir}/netscape/spell
%dir %{_libdir}/netscape/plugins
%{_libdir}/netscape/XKeysymDB
%attr(755,root,root) %{_libdir}/netscape/movemail
%{_libdir}/netscape/registry
%{_libdir}/netscape/vreg
%{_libdir}/netscape/nethelp/*
%{_libdir}/netscape/java/*
%{_libdir}/netscape/spell/*
%{_libdir}/netscape/plugins/*.jar
%attr(755,root,root) %{_libdir}/netscape/plugins/*.so

%lang(de) %{_libdir}/X11/app-defaults/de/Netscape
%lang(es) %{_libdir}/X11/app-defaults/es/Netscape
%lang(fr) %{_libdir}/X11/app-defaults/fr/Netscape
%lang(ja) %{_libdir}/X11/app-defaults/ja/Netscape
%lang(ko) %{_libdir}/X11/app-defaults/ko/Netscape
%lang(pl) %{_libdir}/X11/app-defaults/pl/Netscape
%lang(pt_BR) %{_libdir}/X11/app-defaults/pt_BR/Netscape
%lang(ru) %{_libdir}/X11/app-defaults/ru/Netscape
%lang(zh_CN) %{_libdir}/X11/app-defaults/zh_CN/Netscape
%lang(zh_TW) %{_libdir}/X11/app-defaults/zh_TW/Netscape
%{_pixmapsdir}/netscape.png

%ifarch %{ix86}
%files navigator
%defattr(644,root,root,755)
%{_applnkdir}/Network/WWW/netscape-navigator.desktop
%attr(755,root,root) %{_bindir}/netscape-navigator
%attr(755,root,root) %{_libdir}/netscape/netscape-navigator
%endif

%files communicator
%defattr(644,root,root,755)
%{_applnkdir}/Network/WWW/netscape-communicator.desktop
%attr(755,root,root) %{_bindir}/netscape-communicator
%attr(755,root,root) %{_libdir}/netscape/netscape-communicator
