Summary:	Netscape Navigator and Communicator
Summary(pl):	Netscape Navigator i Communicator
Summary(ru):	Netscape Navigator … Communicator
Summary(uk):	Netscape Navigator ‘¡ Communicator
Name:		netscape4
Version:	4.8
%define _shortver 48
%define _registry %{version}.0.20020722
Release:	1
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
Source11:	Netscape.ad.es
Source12:	Netscape.ad.fr
Source13:	Netscape.ad.ja
Source14:	Netscape.ad.ko
Source15:	Netscape.ad.pl
Source16:	Netscape.ad.pt_BR
Source17:	Netscape.ad.ru
Source18:	Netscape.ad.zh_CN
Source19:	Netscape.ad.zh_TW
BuildRequires:	compat-libstdc++-2.9
Requires:	lesstif
ExclusiveArch:	%{ix86} ppc
Obsoletes:	netscape < 5
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
Netscape Navigator and Communicator.

%description -l pl
Graficzna przegl±darka WWW Netscape Navigator oraz pakiet Netscape
Communicator.

%description -l ru
Netscape navigator … communicator

%description -l uk
Netscape navigator ‘¡ communicator

%package common
Summary:	Files shared by Netscape Navigator and Communicator
Summary(cs):	SpoleËnÈ soubory pro Netscape Navigator a Netscape Communicator
Summary(da):	Filer delt af Netscape Navigator og Communicator
Summary(de):	Dateien, die von Netscape Navigator und Communicator gemeinsam verwendet werden
Summary(es):	Ficheros comunes a Netscape Navigator y Communicator
Summary(fr):	Fichiers partagÈs par Netscape Navigator et Communicator
Summary(id):	File-file yang dipakai bersama oleh Netscape Navigator dan Communicator
Summary(is):	Skr·r sem bÊi Netscape Navigator og Communicator nota
Summary(it):	File condivisi da Netscape Navigator e da Communicator
Summary(ja):	Netscape Navigator §» Communicator §Œ¥÷§«∂¶Õ≠§µ§Ï§Î•’•°•§•Î
Summary(ko):	Netscape Navigator øÕ Communicator ø° ¿««ÿ ∞¯¿Øµ«¥¬ ∆ƒ¿œµÈ
Summary(nb):	Filer som deles av Netscape Navigator og Communicator
Summary(pl):	Pliki wspÛlne dla Netscape Navigatora i Communicatora
Summary(pt):	Ficheiros partilhados pelo Netscape Navigator e pelo Communicator
Summary(ru):	Ô¬›…≈ ∆¡ ÃŸ ƒÃ— Netscape Navigator … Communicator
Summary(sk):	S˙bory pouæÌvanÈ Netscape Navigator-om aj Communicator-om
Summary(sl):	Datoteke, ki si jih delita Netscape Navigator in Communicator
Summary(sv):	Filer delade av Netscape Navigator och Communicator
Summary(uk):	Û–¶ÃÿŒ…  Àœƒ ƒÃ— Œ¡◊¶«¡‘œ“¡ ‘¡ ÀœÕ’Œ¶À¡‘œ“¡
Summary(zh_CN):	Netscape Navigator ∫Õ Communicator π≤œÌµƒŒƒº˛°£
Group:		X11/Applications/Networking

%description common
This package contains the files that are shared between the Netscape
Navigator Web browser and the Netscape Communicator suite of tools
(the Navigator Web browser, an email client, a news reader, and a Web
page editor).

%description common -l cs
BalÌËek netscape-common obsahuje soubory, kterÈ jsou spoleËnÈ pro
WWW prohlÌæeË Netscape Navigator a sadu n·stroj˘ Netscape Communicator
(obsahuje WWW prohlÌæeË Netscape Navigator, poπtovnÌ klient, newsov˝
klient a editor WWW str·nek).

%description common -l da
Denne pakke indeholder filerne som delas af webblÊddraren Netscape
Navigator og vÊrkt¯jssviten Netscape Communicator (webblÊddraren
Navigator, en epostklient, en nyhedslÊsare og en
webbsidesredigerare).

%description common -l de
Dieses Paket enth‰lt die Dateien, die vom Netscape Navigator
Web-Browser und der Suite von Dienstprogrammen des Netscape
Communicator gemeinsam genutzt werden (der Web-Browser Navigator,
ein Email-Client, ein Newsreader und ein Webseiten-Editor).

%description common -l es
Este paquete contiene los ficheros comunes del navegador Web Netscape
navigator y el paquete de herramientas Netscape Communicator (navegador
web de Navigator, cliente de correo electrÛnico, lector de noticias y
editor de p·ginas web).

%description common -l fr
Ce paquetage contient les fichiers partagÈs entre le navigateur Web
Netscape Navigator et la suite d'outils Netscape Communicator (navigateur
Web Netscape Navigator, client de messagerie, lecteur de nouvelles et
Èditeur de pages Web).

%description common -l id
Paket ini berisi file-file yang dipakai bersama oleh browser Web Netscape
Navigator dan suite program Netscape Communicator (browser Web Navigator,
client e-mail, pembaca news, dan editor halaman Web.)

%description common -l is
ﬁessi pakki innniheldur ˛Êr skr·r sem eru notaar af Netscape Navigator og
Netscape Communicator (Vefr·para, pÛstforrit, frÈttalesara og Vefritill).

%description common -l it
Questo pacchetto contiene i file condivisi dal browser Web Netscape
Navigator e dalla gamma di tool di Netscape Communicator
(il browser Navigator, un client di posta elettronica, un news reader
e un editor di pagine web).

%description common -l ja
ja.po:"§≥§Œ•—•√•±°º•∏§À§œ Web •÷•È•¶•∂§«§¢§Î Netscape Navigator
§»•ƒ°º•Î§Œ•π•§°º•» (Web •÷•È•¶•∂§Œ Navigator
°¢≈≈ª“•·°º•Î•Ø•È•§•¢•Û•»°¢•À•Â°º•π•Í°º•¿°¢§™§Ë§” Web
•⁄°º•∏•®•«•£•ø) §«§¢§Î Netscape Communicator §Œ¥÷§«∂¶Õ≠
§µ§Ï§Î•’•°•§•Î§¨¥ﬁ§ﬁ§Ï§∆§§§ﬁ§π°£

%description common -l pl
Pakiet zawiera pliku wspÛlne dla przegl±darki WWW Navigator i pakietu
Communicator (zawieraj±cego przegl±darkÍ Navigator, program pocztowy,
czytnik news i edytor stron WWW).

%description common -l pt
Este pacote contÈm os ficheiros partilhados entre o navegador Web
Netscape Navigator e o conjunto de ferramentas Netscape Communicator
(o navegador Web Navigator, um cliente de 'e-mail', um leitor de 'news'
e um editor de p·ginas Web).

%description common -l ru
Ê¡ ÃŸ, …”–œÃÿ⁄’≈ÕŸ≈ À¡À Netscape Navigator'œÕ, ‘¡À … Netscape
Communicator'œÕ.

%description common -l sk
Tento balÌk obsahuje s˙bory zdieµanÈ prehliadaËom www str·nok Netscape
Navigator a skupinou n·strojov (www prehliadaË Navigator,
e-mail klient, news prehliadaË a editor www str·nok), oznaËenou
Netscape Communicator.

%description common -l sv
Detta paket innehÂller filerna som delas av webbl‰sare Netscape\n"
Navigator och verktygssviten Netscape Communicator (webbl‰saren\n"
Navigator, en epostklient, en nyhetsl‰sare och en\n"
webbsidesredigerare).

%description common -l uk
Ê¡ Ã…, ›œ ◊…Àœ“…”‘œ◊’¿‘ÿ”— —À Netscape Navigator'œÕ, ‘¡À ¶ Netscape
Communicator'œÕ.

%description common -l zh_CN
¥À»Ìº˛∞¸∞¸∫¨‘⁄ Netscape Navigator Web ‰Ø¿¿∆˜∫Õ Netscape Communicator
π§æﬂÃ◊º˛£®Navigator Web ‰Ø¿¿∆˜°¢µÁ◊”” º˛øÕªß≥Ã–Ú°¢–¬Œ≈‘ƒ∂¡≥Ã–Ú∫Õ Web
“≥±‡º≠∆˜£©÷Æº‰π≤œÌµƒŒƒº˛°£

%package communicator
Summary:	Netscape Communicator internet browser, news reader, and mail client
Summary(cs):	WWW prohlÌæeË Netscape Communicator, poπtovnÌ a NetNews klient
Summary(de):	Netscape Communicator Internet Browser, Newsreader und Mail-Client
Summary(es):	Juego de herramientas Netscape Communicator
Summary(fr):	Netscape Communicator, navigateur Internet, lecteur de news et client courrier
Summary(it):	Gamma di tool di Netscape Communicator
Summary(ja):	Netscape Communicator •ƒ°º•Î•ª•√•»
Summary(ko):	µµ±∏µÈ¿« Netscape Communicator ºˆ∆Æ
Summary(pl):	Netscape Communicator - przegl±darka WWW, czytnik news oraz program pocztowy
Summary(pt):	O conjunto de ferramentas Netscape Communicator
Summary(ru):	Netscape Communicator - ¬“œ’⁄≈“, Œÿ¿”“…ƒ≈“ … –œﬁ‘œ◊Ÿ  ÀÃ…≈Œ‘
Summary(sk):	WWW prehliadaË Netscape Navigator
Summary(sl):	Zbirka spletnih orodij Netscape Communicator
Summary(sv):	Verktygssviten Netscape Communicator
Summary(tr):	Netscape Communicator taray˝c˝, haber okuyucu ve e-posta istemcisi
Summary(uk):	Netscape Communicator - ¬“œ’⁄≈“, Œÿ¿”“¶ƒ≈“ ‘¡ –œ€‘œ◊…  ÀÃ¶§Œ‘
Summary(zh_CN):	Netscape Communicator µƒπ§æﬂÃ◊°£
Group:		X11/Applications/Networking
Requires:	netscape4-common

%description communicator
Netscape Communicator is a suite of tools including a Web browser, a
Usenet news reader, and an email client.

%description communicator -l cs
Netscape Communicator je sada program˘ obsahujÌcÌ WWW prohlÌæeË,
NetNews klienta a poπtovnÌho klienta Netscape Communicatoru.

%description communicator -l da
Netscape Communicator er en samling vÊrkt¯jer, inklusive en web-lÊser,
en nyheds-lÊser og en e-post klient.

%description communicator -l de
Netscape Communicator ist eine Toolsammlung mit einem Web-Browser, einem
Usenet Newsreader und einem Email-Client.

%description communicator -l es
Netscape Communicator es un conjunto de herramientas que incluye un
navegador web, un lector de noticias y un cliente de correo electrÛnico.

%description communicator -l fr
Netscape Communicator est une suite d'outils qui comprend un navigateur
Web, un lecteur de nouvelles Usenet et un client de messagerie.

%description communicator -l id
Netscape Communicator, termasuk browser Web, pembaca news dan client e-mail.

%description communicator -l is
Netscape Communicator er safn tÛla sem inniheldur m.a. vefr·para,
Usenet frÈttaskoara og tˆlvupÛstforrit.

%description communicator -l it
Netscape Communicator Ë una gamma di tool comprendenti un
browser Web, un news reader Usenet e un client di posta elettronica.

%description communicator -l ja
Netscape Communicator •π•§°º•»§œ Web •÷•È•¶•∂°¢Usenet •À•Â°º•π•Í°º•¿°¢
≈≈ª“•·°º•Î•Ø•È•§•¢•Û•»§Ú¥ﬁ§Û§«§§§ﬁ§π°£

%description communicator -l ko
Netscape Communicator¥¬ ¿• ∫Í∂ÛøÏ¿˙, ¿Ø¡Ó≥› ¥∫Ω∫ ¿–±‚ «¡∑Œ±◊∑•∞˙
¿Ã∏ﬁ¿œ ≈¨∂Û¿Ãæ∆Æ∏¶ ∆˜«‘«œ¥¬ µµ±∏µÈ¿« ºˆ∆Æ(suite) ¿‘¥œ¥Ÿ.

%description communicator -l nb
Netscape Communicator er en samling verkt¯y, inkludert en web-leser,
en news-leser og en e-post klient.

%description communicator -l pl
Netscape Communicator to zestaw narzÍdzi zawieraj±cy przegl±darkÍ WWW,
czytnik grup dyskusyjnych oraz program pocztowy.

%description communicator -l pt
O Netscape Communicator È um conjunto de ferramentas incluindo um
navegador Web, um leitor de 'news' da Usenet e um cliente de 'e-mail'.

%description communicator -l ru
Netscape Communicator - ‹‘œ –œÃŒœ∆’ŒÀ√…œŒ¡ÃÿŒ¡— –“œ«“¡ÕÕ¡ –“œ”Õœ‘“¡
”‘“¡Œ…√ WWW, ﬁ‘≈Œ…— –œﬁ‘Ÿ … Œœ◊œ”‘≈ .

%description communicator -l sk
Netscape Communicator je sadou n·strojov, vr·tane Web prehliadaËa,
prehliadaËa news a e-mail klienta.

%description communicator -l sv
Netscape Communicator ‰r en verktygssvit som innehÂller en webbl‰sare,
en Usenet nyhetsl‰sare och en epostklient.

%description communicator -l uk
Netscape Communicator - √≈ –œ–’Ã—“Œ…  web-¬“œ’⁄≈“. ˜¶Œ –¶ƒ‘“…Õ’§ œ”‘¡ŒŒ¶
”‘¡Œƒ¡“‘… HTML, Java ‘¡ JavaScript. Ù¡Àœ÷ Õ¶”‘…‘ÿ –œ◊Œœ√¶ŒŒ…  Œÿ¿”“¶ƒ≈“
Usenet ‘¡ –œ€‘œ◊…  ÀÃ¶§Œ‘.

%description communicator -l zh_CN
Netscape π§æﬂ£¨∞¸¿® Web ‰Ø¿¿∆˜°¢–¬Œ≈‘ƒ∂¡≥Ã–Ú∫ÕµÁ◊”” º˛øÕªß≥Ã–Ú°£

%package navigator
Summary:	The Netscape Navigator Web browser
Summary(cs):	WWW prohlÌæeË Netscape Navigator
Summary(da):	Web-lÊseren Netscape Navigator
Summary(de):	Der Web-Browser Netscape Navigator
Summary(es):	El navegador Web Netscape Navigator
Summary(fr):	Navigateur Web Netscape Navigator
Summary(id):	Browser Web Netscape Navigator
Summary(is):	Vefr·parinn Netscape Navigator
Summary(it):	Browser Web Netscape Navigator
Summary(ja):	Netscape Navigator Web •÷•È•¶•∂
Summary(ko):	Netscape Navigator ¿• ∫Í∂ÛøÏ¿˙
Summary(nb):	Web-leseren Netscape Navigator
Summary(pl):	Netscape Navigator - przegl±darka WWW
Summary(pt):	O navegador Web Netscape Navigator
Summary(ru):	Netscape Navigator - ¬“œ’⁄≈“ ÈŒ‘≈“Œ≈‘
Summary(sk):	WWW prehliadaË Netscape Navigator
Summary(sl):	Spletni brkljalnik Netscape Navigator
Summary(sv):	Webbl‰saren Netscape Navigator
Summary(tr):	Netscape Navigator web taray˝c˝
Summary(uk):	Netscape Navigator - ¬“œ’⁄≈“ ∂Œ‘≈“Œ≈‘
Summary(zh_CN):	Netscape Navigator Õ¯“≥‰Ø¿¿∆˜°£
Group:		X11/Applications/Networking
Requires:	netscape4-common

%description navigator
Netscape Navigator is a Web browser which supports
the latest HTML standards, Java, and JavaScript and some sheets.

%description navigator -l cs
Netscape Navigator je WWW prohlÌæeË, kter˝ podporuje HTML standardy,
jazyk Java, JavaScript a nÏkterÈ styly.

%description navigator -l da
Netscape Navigator er en webblÊddrare som underst¯tter de senaste
HTML-standarderna, Java, JavaScript og nÂgra stilblad (style
sheets).

%description navigator -l de
Der Netscape Navigator ist ein Web-Browser, der die neuesten
HTML-Standards, Java, JavaScript und einige Stylesheets unterst¸tzt.

%description navigator -l es
Netscape Navigator/Communicator es un navegador que soporta
los ˙ltimos est·ndares HTML, Java, Javascript.

%description navigator -l fr
Netscape Navigator est un navigateur Web qui prend en charge les
normes HTML les plus rÈcentes, Java, JavaScript et certaines feuilles
de style.

%description navigator -l id
Netscape Navigator adalah browser Web yang paling umum di pasaran. Program
ini mendukung standar HTML terbaru, Java, Javascript dan beberapa jenis
style sheet.

%description navigator -l is
Netscape Navigator er vefr·pari. Hann styur helstu HTML stalana, JAva,
JavaScript og sni.

%description navigator -l it
Netscape Navigator Ë un browser Web che supporta gli ultimi standard
HTML, Java, Javascript e alcuni fogli di stile.

%description navigator -l ja
Netscae Navigator §œ∫«ø∑§Œ HTML ª≈ÕÕ§Ú§œ§∏§·°¢Java°¢JavaScript°¢
≥∆ºÔ§Œ•π•ø•§•Î•∑°º•»§ §…§Ú•µ•›°º•»§∑§ø Web •÷•È•¶•∂§«§π°£

%description navigator -l ko
Netscape Navigator ¥¬ ¿• ∫Í∂ÛøÏ¿˙∑Œº≠ √÷Ω≈¿« HTML
±‚¡ÿµÈ∞˙, ¿⁄πŸ, ¿⁄πŸΩ∫≈©∏≥∆Æ ±◊∏Æ∞Ì ∏Ó∏Ó Ω∫≈∏¿œ Ω√∆ÆµÈ¿ª ¡ˆø¯«’¥œ¥Ÿ

%description navigator -l pl
Netscape Navigator to przegl±darka WWW obs≥uguj±ca najnowsze
standardy HTML, Java i JavaScript.

%description navigator -l pt
O Netscape Navigator È um navegador Web que suporta as ˙ltimas normas
do HTML, Java, JavaScript e algumas folhas de estilo (stylesheets).

%description navigator -l ru
Netscape Navigator - ‹‘œ œ¬œ⁄“≈◊¡‘≈Ãÿ World Wide Web. ÔŒ –œƒƒ≈“÷…◊¡≈‘
Œœ◊≈ €…≈ ”‘¡Œƒ¡“‘Ÿ HTML, Java, JavaScript … Œ≈Àœ‘œ“Ÿ≈ ‘¡¬Ã…√Ÿ ”‘…Ã≈ .

%description navigator -l sk
Netscape Navigator je prehliadaË www str·nok v sieti Internet.
Podporuje poslednÈ HTML πtandardy, Javu, Javascript a tieæ
niektorÈ zloæky πt˝lov.

%description navigator -l sv
Netscape Navigator ‰r en webbl‰sare som stˆder de senaste
HTML-standarderna, Java, JavaScript och nÂgra stilblad (style
sheets).

%description navigator -l uk
Netscape Communicator - √≈ –œ–’Ã—“Œ…  web-¬“œ’⁄≈“. ˜¶Œ –¶ƒ‘“…Õ’§ œ”‘¡ŒŒ¶
”‘¡Œƒ¡“‘… HTML, Java ‘¡ JavaScript.

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
	$RPM_BUILD_ROOT{%{_desktopdir},%{_pixmapsdir}}

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
install %{SOURCE3} %{SOURCE4} $RPM_BUILD_ROOT%{_desktopdir}
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
%{_desktopdir}/netscape-navigator.desktop
%attr(755,root,root) %{_bindir}/netscape-navigator
%attr(755,root,root) %{_libdir}/netscape/netscape-navigator
%endif

%files communicator
%defattr(644,root,root,755)
%{_desktopdir}/netscape-communicator.desktop
%attr(755,root,root) %{_bindir}/netscape-communicator
%attr(755,root,root) %{_libdir}/netscape/netscape-communicator
