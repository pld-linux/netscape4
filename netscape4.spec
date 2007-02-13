Summary:	Netscape Navigator and Communicator
Summary(pl.UTF-8):	Netscape Navigator i Communicator
Summary(ru.UTF-8):	Netscape Navigator и Communicator
Summary(uk.UTF-8):	Netscape Navigator та Communicator
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
Provides:	wwwbrowser
Obsoletes:	netscape < 5
ExclusiveArch:	%{ix86} ppc
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
Netscape Navigator and Communicator.

%description -l pl.UTF-8
Graficzna przeglądarka WWW Netscape Navigator oraz pakiet Netscape
Communicator.

%description -l ru.UTF-8
Netscape navigator и communicator

%description -l uk.UTF-8
Netscape navigator та communicator

%package common
Summary:	Files shared by Netscape Navigator and Communicator
Summary(cs.UTF-8):	Společné soubory pro Netscape Navigator a Netscape Communicator
Summary(da.UTF-8):	Filer delt af Netscape Navigator og Communicator
Summary(de.UTF-8):	Dateien, die von Netscape Navigator und Communicator gemeinsam verwendet werden
Summary(es.UTF-8):	Ficheros comunes a Netscape Navigator y Communicator
Summary(fr.UTF-8):	Fichiers partagés par Netscape Navigator et Communicator
Summary(id.UTF-8):	File-file yang dipakai bersama oleh Netscape Navigator dan Communicator
Summary(is.UTF-8):	Skrár sem bæði Netscape Navigator og Communicator nota
Summary(it.UTF-8):	File condivisi da Netscape Navigator e da Communicator
Summary(ja.UTF-8):	Netscape Navigator と Communicator の間で共有されるファイル
Summary(ko.UTF-8):	Netscape Navigator 와 Communicator 에 의해 공유되는 파일들
Summary(nb.UTF-8):	Filer som deles av Netscape Navigator og Communicator
Summary(pl.UTF-8):	Pliki wspólne dla Netscape Navigatora i Communicatora
Summary(pt.UTF-8):	Ficheiros partilhados pelo Netscape Navigator e pelo Communicator
Summary(ru.UTF-8):	Общие файлы для Netscape Navigator и Communicator
Summary(sk.UTF-8):	Súbory používané Netscape Navigator-om aj Communicator-om
Summary(sl.UTF-8):	Datoteke, ki si jih delita Netscape Navigator in Communicator
Summary(sv.UTF-8):	Filer delade av Netscape Navigator och Communicator
Summary(uk.UTF-8):	Спільний код для навігатора та комунікатора
Summary(zh_CN.UTF-8):	Netscape Navigator 和 Communicator 共享的文件。
Group:		X11/Applications/Networking

%description common
This package contains the files that are shared between the Netscape
Navigator Web browser and the Netscape Communicator suite of tools
(the Navigator Web browser, an email client, a news reader, and a Web
page editor).

%description common -l cs.UTF-8
Balíček netscape-common obsahuje soubory, které jsou společné pro
WWW prohlížeč Netscape Navigator a sadu nástrojů Netscape Communicator
(obsahuje WWW prohlížeč Netscape Navigator, poštovní klient, newsový
klient a editor WWW stránek).

%description common -l da.UTF-8
Denne pakke indeholder filerne som delas af webblæddraren Netscape
Navigator og værktøjssviten Netscape Communicator (webblæddraren
Navigator, en epostklient, en nyhedslæsare og en
webbsidesredigerare).

%description common -l de.UTF-8
Dieses Paket enthält die Dateien, die vom Netscape Navigator
Web-Browser und der Suite von Dienstprogrammen des Netscape
Communicator gemeinsam genutzt werden (der Web-Browser Navigator,
ein Email-Client, ein Newsreader und ein Webseiten-Editor).

%description common -l es.UTF-8
Este paquete contiene los ficheros comunes del navegador Web Netscape
navigator y el paquete de herramientas Netscape Communicator (navegador
web de Navigator, cliente de correo electrónico, lector de noticias y
editor de páginas web).

%description common -l fr.UTF-8
Ce paquetage contient les fichiers partagés entre le navigateur Web
Netscape Navigator et la suite d'outils Netscape Communicator (navigateur
Web Netscape Navigator, client de messagerie, lecteur de nouvelles et
éditeur de pages Web).

%description common -l id.UTF-8
Paket ini berisi file-file yang dipakai bersama oleh browser Web Netscape
Navigator dan suite program Netscape Communicator (browser Web Navigator,
client e-mail, pembaca news, dan editor halaman Web.)

%description common -l is.UTF-8
Þessi pakki innniheldur þær skrár sem eru notaðar af Netscape Navigator og
Netscape Communicator (Vefrápara, póstforrit, fréttalesara og Vefritill).

%description common -l it.UTF-8
Questo pacchetto contiene i file condivisi dal browser Web Netscape
Navigator e dalla gamma di tool di Netscape Communicator
(il browser Navigator, un client di posta elettronica, un news reader
e un editor di pagine web).

%description common -l ja.UTF-8
ja.po:"このパッケージには Web ブラウザである Netscape Navigator
とツールのスイート (Web ブラウザの Navigator
、電子メールクライアント、ニュースリーダ、および Web
ページエディタ) である Netscape Communicator の間で共有
されるファイルが含まれています。

%description common -l pl.UTF-8
Pakiet zawiera pliku wspólne dla przeglądarki WWW Navigator i pakietu
Communicator (zawierającego przeglądarkę Navigator, program pocztowy,
czytnik news i edytor stron WWW).

%description common -l pt.UTF-8
Este pacote contém os ficheiros partilhados entre o navegador Web
Netscape Navigator e o conjunto de ferramentas Netscape Communicator
(o navegador Web Navigator, um cliente de 'e-mail', um leitor de 'news'
e um editor de páginas Web).

%description common -l ru.UTF-8
Файлы, используемые как Netscape Navigator'ом, так и Netscape
Communicator'ом.

%description common -l sk.UTF-8
Tento balík obsahuje súbory zdieľané prehliadačom WWW stránok Netscape
Navigator a skupinou nástrojov (WWW prehliadač Navigator,
e-mail klient, news prehliadač a editor WWW stránok), označenou
Netscape Communicator.

%description common -l sv.UTF-8
Detta paket innehåller filerna som delas av webbläsare Netscape\n"
Navigator och verktygssviten Netscape Communicator (webbläsaren\n"
Navigator, en epostklient, en nyhetsläsare och en\n"
webbsidesredigerare).

%description common -l uk.UTF-8
Файли, що використовуються як Netscape Navigator'ом, так і Netscape
Communicator'ом.

%description common -l zh_CN.UTF-8
此软件包包含在 Netscape Navigator Web 浏览器和 Netscape Communicator
工具套件（Navigator Web 浏览器、电子邮件客户程序、新闻阅读程序和 Web
页编辑器）之间共享的文件。

%package communicator
Summary:	Netscape Communicator internet browser, news reader, and mail client
Summary(cs.UTF-8):	WWW prohlížeč Netscape Communicator, poštovní a NetNews klient
Summary(de.UTF-8):	Netscape Communicator Internet Browser, Newsreader und Mail-Client
Summary(es.UTF-8):	Juego de herramientas Netscape Communicator
Summary(fr.UTF-8):	Netscape Communicator, navigateur Internet, lecteur de news et client courrier
Summary(it.UTF-8):	Gamma di tool di Netscape Communicator
Summary(ja.UTF-8):	Netscape Communicator ツールセット
Summary(ko.UTF-8):	도구들의 Netscape Communicator 수트
Summary(pl.UTF-8):	Netscape Communicator - przeglądarka WWW, czytnik news oraz program pocztowy
Summary(pt.UTF-8):	O conjunto de ferramentas Netscape Communicator
Summary(ru.UTF-8):	Netscape Communicator - броузер, ньюсридер и почтовый клиент
Summary(sk.UTF-8):	WWW prehliadač Netscape Navigator
Summary(sl.UTF-8):	Zbirka spletnih orodij Netscape Communicator
Summary(sv.UTF-8):	Verktygssviten Netscape Communicator
Summary(tr.UTF-8):	Netscape Communicator tarayıcı, haber okuyucu ve e-posta istemcisi
Summary(uk.UTF-8):	Netscape Communicator - броузер, ньюсрідер та поштовий клієнт
Summary(zh_CN.UTF-8):	Netscape Communicator 的工具套。
Group:		X11/Applications/Networking
Requires:	netscape4-common

%description communicator
Netscape Communicator is a suite of tools including a Web browser, a
Usenet news reader, and an email client.

%description communicator -l cs.UTF-8
Netscape Communicator je sada programů obsahující WWW prohlížeč,
NetNews klienta a poštovního klienta Netscape Communicatoru.

%description communicator -l da.UTF-8
Netscape Communicator er en samling værktøjer, inklusive en web-læser,
en nyheds-læser og en e-post klient.

%description communicator -l de.UTF-8
Netscape Communicator ist eine Toolsammlung mit einem Web-Browser, einem
Usenet Newsreader und einem Email-Client.

%description communicator -l es.UTF-8
Netscape Communicator es un conjunto de herramientas que incluye un
navegador web, un lector de noticias y un cliente de correo electrónico.

%description communicator -l fr.UTF-8
Netscape Communicator est une suite d'outils qui comprend un navigateur
Web, un lecteur de nouvelles Usenet et un client de messagerie.

%description communicator -l id.UTF-8
Netscape Communicator, termasuk browser Web, pembaca news dan client e-mail.

%description communicator -l is.UTF-8
Netscape Communicator er safn tóla sem inniheldur m.a. vefrápara,
Usenet fréttaskoðara og tölvupóstforrit.

%description communicator -l it.UTF-8
Netscape Communicator è una gamma di tool comprendenti un
browser Web, un news reader Usenet e un client di posta elettronica.

%description communicator -l ja.UTF-8
Netscape Communicator スイートは Web ブラウザ、Usenet ニュースリーダ、
電子メールクライアントを含んでいます。

%description communicator -l ko.UTF-8
Netscape Communicator는 웹 브라우저, 유즈넷 뉴스 읽기 프로그램과
이메일 클라이언트를 포함하는 도구들의 수트(suite) 입니다.

%description communicator -l nb.UTF-8
Netscape Communicator er en samling verktøy, inkludert en web-leser,
en news-leser og en e-post klient.

%description communicator -l pl.UTF-8
Netscape Communicator to zestaw narzędzi zawierający przeglądarkę WWW,
czytnik grup dyskusyjnych oraz program pocztowy.

%description communicator -l pt.UTF-8
O Netscape Communicator é um conjunto de ferramentas incluindo um
navegador Web, um leitor de 'news' da Usenet e um cliente de 'e-mail'.

%description communicator -l ru.UTF-8
Netscape Communicator - это полнофункциональная программа просмотра
страниц WWW, чтения почты и новостей.

%description communicator -l sk.UTF-8
Netscape Communicator je sadou nástrojov, vrátane Web prehliadača,
prehliadača news a e-mail klienta.

%description communicator -l sv.UTF-8
Netscape Communicator är en verktygssvit som innehåller en webbläsare,
en Usenet nyhetsläsare och en epostklient.

%description communicator -l uk.UTF-8
Netscape Communicator - це популярний web-броузер. Він підтримує останні
стандарти HTML, Java та JavaScript. Також містить повноцінний ньюсрідер
Usenet та поштовий клієнт.

%description communicator -l zh_CN.UTF-8
Netscape 工具，包括 Web 浏览器、新闻阅读程序和电子邮件客户程序。

%package navigator
Summary:	The Netscape Navigator Web browser
Summary(cs.UTF-8):	WWW prohlížeč Netscape Navigator
Summary(da.UTF-8):	Web-læseren Netscape Navigator
Summary(de.UTF-8):	Der Web-Browser Netscape Navigator
Summary(es.UTF-8):	El navegador Web Netscape Navigator
Summary(fr.UTF-8):	Navigateur Web Netscape Navigator
Summary(id.UTF-8):	Browser Web Netscape Navigator
Summary(is.UTF-8):	Vefráparinn Netscape Navigator
Summary(it.UTF-8):	Browser Web Netscape Navigator
Summary(ja.UTF-8):	Netscape Navigator Web ブラウザ
Summary(ko.UTF-8):	Netscape Navigator 웹 브라우저
Summary(nb.UTF-8):	Web-leseren Netscape Navigator
Summary(pl.UTF-8):	Netscape Navigator - przeglądarka WWW
Summary(pt.UTF-8):	O navegador Web Netscape Navigator
Summary(ru.UTF-8):	Netscape Navigator - броузер Интернет
Summary(sk.UTF-8):	WWW prehliadač Netscape Navigator
Summary(sl.UTF-8):	Spletni brkljalnik Netscape Navigator
Summary(sv.UTF-8):	Webbläsaren Netscape Navigator
Summary(tr.UTF-8):	Netscape Navigator web tarayıcı
Summary(uk.UTF-8):	Netscape Navigator - броузер Інтернет
Summary(zh_CN.UTF-8):	Netscape Navigator 网页浏览器。
Group:		X11/Applications/Networking
Requires:	netscape4-common

%description navigator
Netscape Navigator is a Web browser which supports
the latest HTML standards, Java, and JavaScript and some sheets.

%description navigator -l cs.UTF-8
Netscape Navigator je WWW prohlížeč, který podporuje HTML standardy,
jazyk Java, JavaScript a některé styly.

%description navigator -l da.UTF-8
Netscape Navigator er en webblæddrare som understøtter de senaste
HTML-standarderna, Java, JavaScript og några stilblad (style
sheets).

%description navigator -l de.UTF-8
Der Netscape Navigator ist ein Web-Browser, der die neuesten
HTML-Standards, Java, JavaScript und einige Stylesheets unterstützt.

%description navigator -l es.UTF-8
Netscape Navigator/Communicator es un navegador que soporta
los últimos estándares HTML, Java, Javascript.

%description navigator -l fr.UTF-8
Netscape Navigator est un navigateur Web qui prend en charge les
normes HTML les plus récentes, Java, JavaScript et certaines feuilles
de style.

%description navigator -l id.UTF-8
Netscape Navigator adalah browser Web yang paling umum di pasaran. Program
ini mendukung standar HTML terbaru, Java, Javascript dan beberapa jenis
style sheet.

%description navigator -l is.UTF-8
Netscape Navigator er vefrápari. Hann styður helstu HTML staðlana, JAva,
JavaScript og snið.

%description navigator -l it.UTF-8
Netscape Navigator è un browser Web che supporta gli ultimi standard
HTML, Java, Javascript e alcuni fogli di stile.

%description navigator -l ja.UTF-8
Netscae Navigator は最新の HTML 仕様をはじめ、Java、JavaScript、
各種のスタイルシートなどをサポートした Web ブラウザです。

%description navigator -l ko.UTF-8
Netscape Navigator 는 웹 브라우저로서 최신의 HTML
기준들과, 자바, 자바스크립트 그리고 몇몇 스타일 시트들을 지원합니다

%description navigator -l pl.UTF-8
Netscape Navigator to przeglądarka WWW obsługująca najnowsze
standardy HTML, Java i JavaScript.

%description navigator -l pt.UTF-8
O Netscape Navigator é um navegador Web que suporta as últimas normas
do HTML, Java, JavaScript e algumas folhas de estilo (stylesheets).

%description navigator -l ru.UTF-8
Netscape Navigator - это обозреватель World Wide Web. Он поддерживает
новейшие стандарты HTML, Java, JavaScript и некоторые таблицы стилей.

%description navigator -l sk.UTF-8
Netscape Navigator je prehliadač WWW stránok v sieti Internet.
Podporuje posledné HTML štandardy, Javu, Javascript a tiež
niektoré zložky štýlov.

%description navigator -l sv.UTF-8
Netscape Navigator är en webbläsare som stöder de senaste
HTML-standarderna, Java, JavaScript och några stilblad (style
sheets).

%description navigator -l uk.UTF-8
Netscape Communicator - це популярний web-броузер. Він підтримує останні
стандарти HTML, Java та JavaScript.

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
%{_pixmapsdir}/netscape4.png

%ifarch %{ix86}
%files navigator
%defattr(644,root,root,755)
%{_desktopdir}/netscape4-navigator.desktop
%attr(755,root,root) %{_bindir}/netscape-navigator
%attr(755,root,root) %{_libdir}/netscape/netscape-navigator
%endif

%files communicator
%defattr(644,root,root,755)
%{_desktopdir}/netscape4-communicator.desktop
%attr(755,root,root) %{_bindir}/netscape-communicator
%attr(755,root,root) %{_libdir}/netscape/netscape-communicator
