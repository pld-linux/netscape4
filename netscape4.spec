Summary:	Netscape navigator and communicator
Summary(pl):	Netscape Navigator i Communicator
Name:		netscape
Version:	4.79
%define _shortver 479
%define _registry %{version}.0.20001007
Release:	1
License:	distributable
Group:		X11/Applications/Networking
Source0:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/supported/linux22/complete_install/communicator-v%{_shortver}-us.x86-unknown-linux2.2.tar.gz
Source1:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/supported/linux22/navigator_standalone/navigator-v%{_shortver}-us.x86-unknown-linux2.2.tar.gz
Source2:	%{name}.sh
Source3:	%{name}-communicator.desktop
Source4:	%{name}-navigator.desktop
Source10:	Netscape.ad.de
Source11:	Netscape.ad.es
Source12:	Netscape.ad.fr
Source13:	Netscape.ad.ja
Source14:	Netscape.ad.ko
Source15:	Netscape.ad.pl
Source16:	Netscape.ad.pt_BR
Source17:	Netscape.ad.ru
Source18:	Netscape.ad.zh_CN.gb2312
Source19:	Netscape.ad.zh_TW.big5
Requires:	lesstif
BuildRequires:	libstdc++-compat
Exclusivearch:	%{ix86}
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%define		_prefix		/usr/X11R6
%define		_mandir		%{_prefix}/man

%description
Netscape navigator and communicator.

%description -l pl
Graficzna przegl±darka WWW Netscape Navigator oraz pakiet Netscape
Communicator. Pakiet ten zawiera polskie t³umaczenie X zasobów dla
Netscape autorstwa Krzysztofa Szatanika <diabl0@linuxpl.org>.

%package common
Summary:	Code shared between navigator and communicator
Summary(pl):	Pliki dzielone miêdzy navigatorem i communicatorem
Group:		X11/Applications/Networking

%description common
Files shared between the Netscape Navigator and Netscape Communicator.
web browsers.

%description common -l pl
Wspólne pliki dla przegl±darki Navigator i pakietu Communicator.

%package communicator
Summary:	Netscape Communicator internet browser, news reader, and mail client
Summary(fr):	Netscape Communicator, navigateur Internet, lecteur de news et client courrier.
Summary(de):	Netscape Communicator Internet Browser, Newsreader und  Mail-Client
Summary(pl):	Netscape Communicator - przegl±darka WWW, czytnik news oraz program pocztowy
Summary(tr):	Netscape Communicator tarayýcý, haber okuyucu ve e-posta istemcisi
Group:		X11/Applications/Networking
Requires:	netscape-common

%description communicator
Netscape Communicator is the industry-leading web browser. It supports
the latest HTML standards, Java, and JavaScript. It also includes
full-featured Usenet news reader as well as a complete email client.

Information on the Netscape Communicator license may be found in the
file %{_docdir}/%{name}-common-%{version}/LICENSE.

%description communicator -l pl
Netscape Communicator to potê¿na przegl±darka WWW. Obs³uguje najnowsze
standardy HTML, Java i JavaScript. Zawiera tak¿e w pe³ni funkcjonalny
czytnik grup dyskusyjnych oraz program pocztowy.

Informacje na temat licencji mo¿na znale¼æ w pliku
%{_docdir}/%{name}-common-%{version}/LICENSE.

%package navigator
Summary:	Netscape Navigator internet browser
Summary(fr):	Navigateur internet de Netscape
Summary(de):	Netscape-Navigator-Internet-Browser
Summary(pl):	Netscape Navigator - przegl±darka WWW
Summary(tr):	Netscape Navigator web tarayýcý
Group:		X11/Applications/Networking
Requires:	netscape-common

%description navigator
Netscape Navigator is the industry-leading web browser. It supports
the latest HTML standards, Java, and JavaScript. It also includes
full-featured Usenet news reader as well as a complete email client.

Information on the Netscape Navigator license may be found in the file
%{_docdir}/%{name}-common-%{version}/LICENSE.

%description navigator -l pl
Netscape Navigator to potê¿na przegl±darka WWW. Obs³uguje najnowsze
standardy HTML, Java i JavaScript.

Informacje na temat licencji mo¿na znale¼æ w pliku
%{_docdir}/%{name}-common-%{version}/LICENSE.

%prep
%setup -c -q
mv -f communic*/* .
rmdir communicator*

%install
rm -rf $RPM_BUILD_ROOT
install -d $RPM_BUILD_ROOT%{_bindir} \
	$RPM_BUILD_ROOT%{_libdir}/netscape/{plugins,java/classes} \
	$RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/{de,es,fr,ja,ko,pl,pt_BR,ru,zh_{CN.gb2312,TW.big5}} \
	$RPM_BUILD_ROOT%{_applnkdir}/Network/WWW

for I in *.nif; do
	tar -C $RPM_BUILD_ROOT%{_libdir}/netscape -xzvf $I
done

mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-communicator
cp -af vreg $RPM_BUILD_ROOT%{_libdir}/netscape
cp -af *.jar $RPM_BUILD_ROOT%{_libdir}/netscape/java/classes
echo "Communicator,%_registry,%{_libdir}/netscape" > /tmp/infile
./vreg $RPM_BUILD_ROOT%{_libdir}/netscape/registry /tmp/infile
rm -f /tmp/infile

# get the netscape-navigator binary now
tar xvzf %{SOURCE1} '*/netscape-v%{_shortver}.nif'
tar xvzf navigator*/netscape-v%{_shortver}.nif netscape

install netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-navigator
install %{SOURCE2} $RPM_BUILD_ROOT%{_bindir}/netscape

install %{SOURCE3} %{SOURCE4} $RPM_BUILD_ROOT%{_applnkdir}/Network/WWW

install %{SOURCE10} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/de/Netscape
install %{SOURCE11} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/es/Netscape
install %{SOURCE12} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/fr/Netscape
install %{SOURCE13} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ja/Netscape
install %{SOURCE14} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ko/Netscape
install %{SOURCE15} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/pl/Netscape
install %{SOURCE16} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/pt_BR/Netscape
install %{SOURCE17} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/ru/Netscape
install %{SOURCE18} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/zh_CN.gb2312/Netscape
install %{SOURCE19} $RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/zh_TW.big5/Netscape

mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/libnullplugin-dynMotif.so \
   $RPM_BUILD_ROOT%{_libdir}/netscape/plugins

ln -sf ../lib/netscape/netscape-navigator $RPM_BUILD_ROOT%{_bindir}/netscape-navigator
ln -sf ../lib/netscape/netscape-communicator $RPM_BUILD_ROOT%{_bindir}/netscape-communicator

mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/{README,LICENSE} \
	$RPM_BUILD_DIR/%{name}-%{version}/
mv -f $RPM_BUILD_ROOT%{_libdir}/netscape/Netscape.ad \
	$RPM_BUILD_ROOT%{_libdir}/X11/app-defaults/Netscape

%clean
rm -rf $RPM_BUILD_ROOT

%files common
%defattr(644,root,root,755)
%doc README LICENSE
%docdir %{_libdir}/netscape/nethelp
%attr(755,root,root) %{_bindir}/netscape
%dir %{_libdir}/netscape
%dir %{_libdir}/netscape/nethelp
%dir %{_libdir}/netscape/java
%dir %{_libdir}/netscape/spell
%dir %{_libdir}/netscape/plugins
%dir %{_libdir}/netscape/movemail-src
%{_libdir}/netscape/XKeysymDB
%{_libdir}/netscape/bookmark.htm
%attr(755,root,root) %{_libdir}/netscape/movemail
%attr(755,root,root) %{_libdir}/netscape/*.so
%{_libdir}/netscape/registry
%{_libdir}/netscape/vreg
%{_libdir}/netscape/nethelp/*
%{_libdir}/netscape/java/*
%{_libdir}/netscape/spell/*
%{_libdir}/netscape/plugins/*.class
%{_libdir}/netscape/plugins/*.jar
%attr(755,root,root) %{_libdir}/netscape/plugins/*.so
%{_libdir}/netscape/movemail-src/*

%{_libdir}/X11/app-defaults/Netscape
%lang(de) %{_libdir}/X11/app-defaults/de/Netscape
%lang(es) %{_libdir}/X11/app-defaults/es/Netscape
%lang(fr) %{_libdir}/X11/app-defaults/fr/Netscape
%lang(ja) %{_libdir}/X11/app-defaults/ja/Netscape
%lang(ko) %{_libdir}/X11/app-defaults/ko/Netscape
%lang(pl) %{_libdir}/X11/app-defaults/pl/Netscape
%lang(pt_BR) %{_libdir}/X11/app-defaults/pt_BR/Netscape
%lang(ru) %{_libdir}/X11/app-defaults/ru/Netscape
%lang(zh_CN.gb2312) %{_libdir}/X11/app-defaults/zh_CN.gb2312/Netscape
%lang(zh_TW.big5) %{_libdir}/X11/app-defaults/zh_TW.big5/Netscape

%files navigator
%defattr(644,root,root,755)
%{_applnkdir}/Network/WWW/netscape-navigator.desktop
%attr(755,root,root) %{_bindir}/netscape-navigator
%attr(755,root,root) %{_libdir}/netscape/netscape-navigator

%files communicator
%defattr(644,root,root,755)
%{_applnkdir}/Network/WWW/netscape-communicator.desktop
%attr(755,root,root) %{_bindir}/netscape-communicator
%attr(755,root,root) %{_libdir}/netscape/netscape-communicator
