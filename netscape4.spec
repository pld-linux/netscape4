Summary:	Netscape navigator and communicator
Summary(pl):	Netscape Navigator i Communicator
Name:		netscape
Version:	4.73
%define _shortver 473
%define _registry %{version}.0.20000502
Release:	2
Copyright:	Free
Group:		X11/Applications/Networking
Group(pl):	X11/Aplikacje/Sieciowe
Source0:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/unsupported/linux22/complete_install/communicator-v%{_shortver}-export.x86-unknown-linux2.2.tar.gz
Source1:	ftp://ftp.netscape.com/pub/communicator/english/%{version}/unix/unsupported/linux22/navigator_standalone/navigator-v%{_shortver}-export.x86-unknown-linux2.2.tar.gz
Source2:	netscape.sh
Source3:	netscape-communicator.desktop
Source4:	netscape-navigator.desktop
Exclusivearch:	%{ix86}
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
Netscape navigator and communicator.

%description -l pl
Graficzna przegl±darka WWW Netscape Navigator oraz pakiet Netscape
Communicator.

%package common
Summary:	Code shared between navigator and communicator
Summary(pl):	Pliki dzielone miêdzy navigator'em i communicator'em
Group:		X11/Applications/Networking
Group(pl):	X11/Aplikacje/Sieciowe

%description common
Files shared between the Netscape Navigator and Netscape Communicator.
web browsers.

%description -l pl
Wspólne pliki dla przegl±darki Navigator i pakietu Communicator.

%package communicator
Summary:	Netscape Communicator internet browser, news reader, and mail client
Summary(fr):	Netscape Communicator, navigateur Internet, lecteur de news et client courrier.
Summary(de):	Netscape Communicator Internet Browser, Newsreader und  Mail-Client  
Summary(pl):	Netscape Communicator - przegl±darka WWW, czytki news oraz program pocztowy
Summary(tr):	Netscape Communicator tarayýcý, haber okuyucu ve e-posta istemcisi
Group:		X11/Applications/Networking
Group(pl):	X11/Aplikacje/Sieciowe
Requires:	netscape-common

%description communicator
Netscape Communicator is the industry-leading web browser. It supports
the latest HTML standards, Java, and JavaScript. It also includes 
full-featured Usenet news reader as well as a complete email client.

Information on the Netscape Communicator license may be found in the file
%{_docdir}/%{name}-common-%{version}/LICENSE.

%description -l pl
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
Group(pl):	X11/Aplikacje/Sieciowe
Requires:	netscape-common

%description navigator
Netscape Navigator is the industry-leading web browser. It supports
the latest HTML standards, Java, and JavaScript. It also includes 
full-featured Usenet news reader as well as a complete email client.

Information on the Netscape Navigator license may be found in the file
%{_docdir}/%{name}-common-%{version}/LICENSE.

%description -l pl
Netscape Navigator to potê¿na przegl±darka WWW. Obs³uguje najnowsze
standardy HTML, Java i JavaScript.

Informacje na temat licencji mo¿na znale¼æ w pliku
%{_docdir}/%{name}-common-%{version}/LICENSE.

%prep
%setup -c -q
mv communic*/* .
rmdir communicator*

%install
rm -rf $RPM_BUILD_ROOT
install -d $RPM_BUILD_ROOT%{_bindir}
install -d $RPM_BUILD_ROOT%{_libdir}/netscape/{plugins,java/classes}
install -d $RPM_BUILD_ROOT%{_applnkdir}/Network/WWW

for I in *.nif; do
	tar -C $RPM_BUILD_ROOT%{_libdir}/netscape -xzvf $I
done

mv $RPM_BUILD_ROOT%{_libdir}/netscape/netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-communicator
cp -a vreg $RPM_BUILD_ROOT%{_libdir}/netscape
cp -a *.jar $RPM_BUILD_ROOT%{_libdir}/netscape/java/classes
echo "Communicator,%_registry,%{_libdir}/netscape" > /tmp/infile
./vreg $RPM_BUILD_ROOT%{_libdir}/netscape/registry /tmp/infile
rm -f /tmp/infile

# get the netscape-navigator binary now
tar xvzf %{SOURCE1} '*/netscape-v%{_shortver}.nif'
tar xvzf navigator*/netscape-v%{_shortver}.nif netscape

install -s netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-navigator
install %{SOURCE2} $RPM_BUILD_ROOT%{_bindir}/netscape

install %{SOURCE3} $RPM_BUILD_ROOT%{_applnkdir}/Network/WWW
install %{SOURCE4} $RPM_BUILD_ROOT%{_applnkdir}/Network/WWW

mv $RPM_BUILD_ROOT%{_libdir}/netscape/libnullplugin-dynMotif.so \
   $RPM_BUILD_ROOT%{_libdir}/netscape/plugins

ln -s ../lib/netscape/netscape-navigator $RPM_BUILD_ROOT%{_bindir}/netscape-navigator
ln -s ../lib/netscape/netscape-communicator $RPM_BUILD_ROOT%{_bindir}/netscape-communicator

mv $RPM_BUILD_ROOT%{_libdir}/netscape/{README,LICENSE,Netscape.ad} \
	$RPM_BUILD_DIR/%{name}-%{version}/

%clean
rm -rf $RPM_BUILD_ROOT

%files common
%defattr(644,root,root,755)
%doc README LICENSE Netscape.ad
%docdir %{_libdir}/netscape/nethelp
%dir %{_libdir}/netscape
%dir %{_libdir}/netscape/nethelp
%dir %{_libdir}/netscape/java
%dir %{_libdir}/netscape/spell
%dir %{_libdir}/netscape/plugins
%dir %{_libdir}/netscape/movemail-src
%{_libdir}/netscape/XKeysymDB
%{_libdir}/netscape/bookmark.htm
%{_libdir}/netscape/movemail
%{_libdir}/netscape/*.so
%{_libdir}/netscape/registry
%{_libdir}/netscape/vreg
%{_libdir}/netscape/nethelp/*
%{_libdir}/netscape/java/*
%{_libdir}/netscape/spell/*
%{_libdir}/netscape/plugins/*
%{_libdir}/netscape/movemail-src/*
%attr(755,root,root) %{_bindir}/netscape

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
