Summary:	Netscape navigator and communicator
Summary(pl):	Netscape Navigator i Communicator
Name:		netscape
Version:	4.05
Release:	4
Copyright:	Commercial
Group:		X11/Applications/Networking
Group(pl):	X11/Aplikacje/Sieciowe
Source0:	ftp://ftp15.netscape.com/pub/communicator/4.05/shipping/english/unix/linux20/base_install/communicator-v405-export.x86-unknown-linux2.0_glibc2.tar.gz
Source1:	ftp://ftp15.netscape.com/pub/communicator/4.05/shipping/english/unix/linux20/base_install/navigator-v405-export.x86-unknown-linux2.0_glibc2.tar.gz
Source2:	netscape-com.sh
Source4:	netscape-communicator.wmconfig
Source5:	netscape-navigator.wmconfig
Requires:	indexhtml
Prefix:		/usr
Exclusivearch:	i386 i486 i586 i686
Buildroot:	/tmp/%{name}-%{version}-root

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
Pliki dzielone miêdzy przegl±dark± Navigator i pakietem Communicator.

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
/usr/doc/netscape-%{PACKAGE_RELEASE}-%{PACKAGE_RELEASE}/LICENSE.update.

%description -l pl
Netscape Communicator to potê¿na przegl±darka WWW. Obs³uguje najnowsze
standardy HTML, Java i JavaScript. Zawiera tak¿e w pe³ni funkcjonalny
czytnik grup dyskusyjnych oraz program pocztowy.

Informacje na temat licencji mo¿na znale¼æ w pliku
/usr/doc/netscape-%{PACKAGE_RELEASE}-%{PACKAGE_RELEASE}/LICENSE.update.

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
/usr/doc/netscape-%{PACKAGE_RELEASE}-%{PACKAGE_RELEASE}/LICENSE.update.

%description -l pl
Netscape Navigator to potê¿na przegl±darka WWW. Obs³uguje najnowsze
standardy HTML, Java i JavaScript.

Informacje na temat licencji mo¿na znale¼æ w pliku
/usr/doc/netscape-%{PACKAGE_RELEASE}-%{PACKAGE_RELEASE}/LICENSE.update.

%prep
%setup -c -q
mv communic*/* .
rmdir communicator*

%install
rm -rf $RPM_BUILD_ROOT
install -d $RPM_BUILD_ROOT%{_bindir}
install -d $RPM_BUILD_ROOT%{_libdir}/netscape/{plugins,java/classes}
install -d $RPM_BUILD_ROOT/etc/X11/wmconfig

for I in *.nif; do
	tar -C $RPM_BUILD_ROOT%{_libdir}/netscape -xzvf $I
done

mv $RPM_BUILD_ROOT%{_libdir}/netscape/netscape $RPM_BUILD_ROOT/usr/lib/netscape/netscape-communicator
cp -a vreg $RPM_BUILD_ROOT%{_libdir}/netscape
cp -a *.jar $RPM_BUILD_ROOT%{_libdir}/netscape/java/classes
echo 'Communicator,4.04.0.97310,%{_libdir}/netscape' > /tmp/infile
./vreg $RPM_BUILD_ROOT%{_libdir}/netscape/registry /tmp/infile
rm -f /tmp/infile

# get the netscape-navigator binary now
tar xvzf %{SOURCE1} '*/netscape-v405.nif'
tar xvzf navigator*/netscape-v405.nif netscape

install -s netscape $RPM_BUILD_ROOT%{_libdir}/netscape/netscape-navigator
install -s $RPM_SOURCE_DIR/netscape-com.sh $RPM_BUILD_ROOT%{_bindir}/netscape

mv $RPM_BUILD_ROOT%{_libdir}/netscape/libnullplugin-dynMotif.so \
   $RPM_BUILD_ROOT%{_libdir}/netscape/plugins

ln -s ../lib/netscape/netscape-navigator $RPM_BUILD_ROOT%{_bindir}/netscape-navigator
ln -s ../lib/netscape/netscape-communicator $RPM_BUILD_ROOT%{_bindir}/netscape-communicator

%clean
rm -rf $RPM_BUILD_ROOT

%files common
%defattr(644,root,root,755)

%doc README LICENSE Netscape.ad
%docdir %{_libdir}/netscape/nethelp

%dir %{_libdir}/netscape
%dir %{_libdir}/netscape/plugins

%attr(755,root,root) %{_bindir}/netscape
%{_libdir}/netscape/*

%files navigator
%defattr(644,root,root,755)

%config(missingok) /etc/X11/wmconfig/netscape-navigator

/%attr(755,root,root) usr/bin/netscape-navigator
/%attr(755,root,root) usr/lib/netscape/netscape-navigator

%files communicator
%defattr(644,root,root,755)

%config(missingok) /etc/X11/wmconfig/netscape-communicator

/%attr(755,root,root) usr/bin/netscape-communicator
/%attr(755,root,root) usr/lib/netscape/netscape-communicator

%changelog
* Sun Feb  7 1999 Micha³ Kuratczyk <kurkens@polbox.com>
- added pl translations
- moved %changelog to the end of spec
- added using "install -d" instead "mkdir -p"
- simpilification in %install
- rewrote %files sections
- cosmetic changes

* Thu May 07 1998 Prospector System <bugs@redhat.com>

- translations modified for de, fr, tr

* Thu May 07 1998 Cristian Gafton <gafton@redhat.com>
- made the package ExclusiveArch: i386

* Mon May 04 1998 Erik Troan <ewt@redhat.com>
- added LANG=C to netscape start wrapper

* Thu Apr 02 1998 Erik Troan <ewt@redhat.com>
- update to netscape 4.05
- moved common files to netscape-common package which both navigator and
  communicator require
- made relocateable (needs RPM >= 2.4.103 to relocate properly)

* Fri Jan 23 1998 Erik Troan <ewt@redhat.com>
- initial package is rel 3, works on RH 4.x and RH 5.x
