Summary: texinfo formatter and info reader
%define	version	4.8
%define	__prefix	/usr
%define	name	texinfo
Version: %{version}
Name: %{name}
Release: 1
Copyright: GPL
Group: Applications/Publishing
Vendor: OS/2 RPM project
URL:   ftp://hobbes.nmsu.edu/pub/os2/apps/wp/tex/util/texinfo-4.8.zip
Source0:  ftp://alpha.gnu.org/gnu/%{name}-%{version}.tar.gz
Source1: %{name}-%{version}-OS2-patch.zip
Buildroot: /tmp/%{name}-root
Docdir: %{__prefix}/share/doc
Summary(de): texinfo-Formatier- und Leseprogramm
Summary(fr): Formatteur texinfo et lecteur pour info.
Summary(tr): texinfo biä‰mleyici ve info okuyucu
Summary(ja): texinfo texinfo ƒtƒH[ƒ}ƒbƒ^[‚Æ info ƒŠ[ƒ_[

%description
The GNU project uses the texinfo file format for much of its documentation. 
This package includes the tools necessary to create .info files from .texinfo 
source files, as well as an emacs interface to all these tools.

%description -l ja
GNU ƒvƒƒWƒFƒNƒg‚Í‘½‚­‚Ì•¶‘‚Å texinfo ƒtƒ@ƒCƒ‹Œ`®‚ğ—p‚¢‚Ä‚¢‚éB
‚±‚ÌƒpƒbƒP[ƒW‚É‚Í .texinfo ‚©‚ç info ƒtƒ@ƒCƒ‹‚ğì¬‚·‚é‚½‚ß‚Ìƒc[ƒ‹
‚ªŠÜ‚Ü‚ê‚éBEmacs ‚Ì‚½‚ß‚ÌƒCƒ“ƒ^[ƒtƒFƒCƒX‚à“¯«‚³‚ê‚Ä‚¢‚éB


%package -n info
Summary: standalone tty based reader for GNU texinfo documents
Group: Utilities/System
# By making info prereq bash, other packages which have triggers based on
# info don't run those triggers until bash is in place as well. This is an
# ugly method of doing it (triggers which fire on set intersection would
# be better), but it's the best we can do for now. Talk to Erik before
# removing this.
Prereq: bash
Summary(de): Unabhâìgiges tty-basiertes Leseprogramm fîğ GNU-texinfo-Dokumente
Summary(fr): Lecteur autonome de documents texinfo pour terminal.
Summary(tr): GNU texinfo belgeleri iä‰n tty tabanlîügëğîìtîêeyici

%description -n info
The GNU project uses the texinfo file format for much of its documentation. 
This package includes a standalone browser program to view these files.

%description -l de -n info
Das GNU-Projekt benutzt das texinfo-Dateiformat fîğ den Groà”eil seiner
Dokumentation. Dieses Paket enthâêt ein selbstâìdiges Browser-Programm 
zum Einsehen dieser Dateien.

%description -l de
Das GNU-Projekt verwendet das Dateiformtat 'texinfo' fîğ den Groà”eil der
Dokumentation. Dieses Paket enthâêt Tools zum Erstellen von .info-Dateien aus
.texinfo-Quelldateien und eine emacs-Schnittstelle fîğ diese Tools.

%description -l fr -n info
Le projet GNU utilise le format de fichier texinfo pour la plupart de sa
documentation. Ce paquetage contient un navigateur pour visualiser ces
fichiers.

%description -l fr
Le projet GBU utilise le format de fichier texinfo pour la plupart de sa
documentation. Ce paquetage contient les outils pour crå…r des fichiers .info
àpartir des fichiers sources .texinfo, ainsi qu'une interface emacs pour tous
ces outils.

%description -l tr -n info
Bu pakette, info biä‰mindeki dosyalarîüokumak iä‰n bir gëğîìtîêeyici
bulunur.

%description -l tr
GNU projesi, belgelemesinin bî÷îé bëêîëîìde texinfo dosyalarïîükullanï’.
Bu paket, texinfo dosyalarïdan info dosyalarïï tîğetilmesini saèêayan
araäŒarla birlikte, tîë bu araäŒar iä‰n bir emacs arayîøîde sunar.

%prep
%setup -q
unzip -o %{SOURCE1}
unzip -o OS2patch

%build
cmd.exe /c os2unix.cmd -all
cmd.exe /c os2unix.cmd -patch
cmd.exe /c os2configure_make.cmd
make 

%install
rm -rf $RPM_BUILD_ROOT
make install DESTDIR=$RPM_BUILD_ROOT\
  mandir=%{__prefix}/share/man \
  infodir=%{__prefix}/share/info\
  datadir=%{__prefix}/share
  
mkdir -p $RPM_BUILD_ROOT%{__prefix}/src/redhat/SOURCES
mkdir -p $RPM_BUILD_ROOT%{__prefix}/src/redhat/SPECS
cp %{_specdir}/%{name}-%{version}-os2.spec $RPM_BUILD_ROOT%{__prefix}/src/redhat/SPECS/
cp %{SOURCE1} $RPM_BUILD_ROOT%{__prefix}/src/redhat/SOURCES/
gzip -f $RPM_BUILD_ROOT%{__prefix}/share/info/texinfo*
gzip -f $RPM_BUILD_ROOT%{__prefix}/share/info/info*
gzip -f $RPM_BUILD_ROOT%{__prefix}/share/man/man1/*.1
gzip -f $RPM_BUILD_ROOT%{__prefix}/share/man/man5/*.5

%clean
rm -rf $RPM_BUILD_ROOT

%post
install-info %{__prefix}/share/info/texinfo.gz %{__prefix}/share/info/dir

%preun
if [ $1 = 0 ]; then
    install-info --delete %{__prefix}/share/info/texinfo.gz %{__prefix}/share/info/dir
fi

%files
%defattr(-,root,root)
%doc AUTHORS INSTALL INTRODUCTION NEWS README TODO 
%{__prefix}/bin/info.exe
%{__prefix}/bin/infokey.exe
%{__prefix}/bin/makeinfo.exe
%{__prefix}/bin/texindex.exe
%{__prefix}/bin/texi2dvi
%{__prefix}/bin/texi2pdf
%{__prefix}/bin/install-info.exe
%{__prefix}/share/info/info*
%{__prefix}/share/info/texinfo*
%{__prefix}/share/texinfo/texinfo.cat
%{__prefix}/share/texinfo/texinfo.dtd
%{__prefix}/share/texinfo/texinfo.xsl
%{__prefix}/share/man/man1/*.gz
%{__prefix}/share/man/man5/*.gz
%{__prefix}/share/locale/*/*/*
%{__prefix}/src/redhat/SPECS/%{name}-%{version}-os2.spec
%{__prefix}/src/redhat/SOURCES/%{name}-%{version}-OS2-patch.zip


%changelog
* Thu Jan  20 2005 <jsawa@attglobal.net>
- uploated to ftp://hobbes.nmsu.edu/pub/os2/apps/wp/tex/util

* Thu Apr  6 2000 <jsawa@attglobal.net>
- makeinfo accepts Japanese SJIS coded source

* Thu Nov 18 1999 <jsawa@attglobal.net>
- Japanese message available 
- ALT key can be used as Meta key (ESC), when an argument of Meta key is 
  only one.
      c.f. For "ESC & x", we can do "ALT + x"
  manpage also changed: info.1
- default INFO_PRINT_COMMAND is newly set as "expand --tabs=4 >> InfoLog.tmp"

* Sat Nov 5 1999  <jsawa@attglobal.net>
- upgraded to version 4.0
- added some descriptions to manpages for OS/2 user
- intl library are staticaly linked: no depend on intl_d.dll
- compile with -Zomf 

* Thu Oct 28 1999 <jsawa@attglobal.net>
- require emx 0.9d runtime environment
- packaged OS/2 ported version
- texindex.exe can process SJIS code
- info.exe can be run in XFree86 for OS/2
- intl library are dynamically linked:  intl_d.dll

* Thu Sep 24 1998 Cristian Gafton <gafton@redhat.com>
- fix allocation problems in install-info

* Wed Sep 23 1998 Jeff Johnson <jbj@redhat.com>
- /sbin/install-info should not depend on /usr/lib/libz.so.1 -- statically
  link with /usr/lib/libz.a.

* Fri Aug 07 1998 Erik Troan <ewt@redhat.com>
- added a prereq of bash to the info package -- see the comment for a
  description of why that was done

* Tue Jun 09 1998 Prospector System <bugs@redhat.com>
- translations modified for de

* Tue Jun  9 1998 Jeff Johnson <jbj@redhat.com>
- add %attr to permit non-root build.

* Thu May 07 1998 Prospector System <bugs@redhat.com>
- translations modified for de, fr, tr

* Sun Apr 12 1998 Cristian Gafton <gafton@redhat.com>
- added %clean
- manhattan build

* Wed Mar 04 1998 Cristian Gafton <gafton@redhat.com>
- upgraded to version 3.12
- added buildroot

* Sun Nov 09 1997 Donnie Barnes <djb@redhat.com>
- moved /usr/info/dir to /etc/info-dir and made /usr/info/dir a
  symlink to /etc/info-dir.

* Wed Oct 29 1997 Donnie Barnes <djb@redhat.com>
- added wmconfig entry for info

* Wed Oct 01 1997 Donnie Barnes <djb@redhat.com>
- stripped /sbin/install-info

* Mon Sep 22 1997 Erik Troan <ewt@redhat.com>
- added info-dir to filelist

* Sun Sep 14 1997 Erik Troan <ewt@redhat.com>
- added patch from sopwith to let install-info understand gzip'ed info files
- use skeletal dir file from texinfo tarball (w/ bash entry to reduce
  dependency chain) instead (and install-info command everywhere else)
- patches install-info to handle .gz names correctly

* Tue Jun 03 1997 Erik Troan <ewt@redhat.com>
- built against glibc

* Tue Feb 25 1997 Erik Troan <ewt@redhat.com>
- patched install-info.c for glibc.
- added /usr/bin/install-info to the filelist

* Tue Feb 18 1997 Michael Fulbright <msf@redhat.com>
- upgraded to version 3.9.
