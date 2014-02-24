cp.exe -vp config.guess config.guess.tmp
cp.exe -vp config.rpath config.rpath.tmp
cp.exe -vp config.sub config.sub.tmp
cp.exe -vp depcomp depcomp.tmp
cp.exe -vp djgpp/config.site djgpp/config.site.tmp
cp.exe -vp doc/mdate-sh doc/mdate-sh.tmp
cp.exe -vp install-sh install-sh.tmp
cp.exe -vp intl/config.charset intl/config.charset.tmp
cp.exe -vp makeinfo/tests/accent makeinfo/tests/accent.tmp
cp.exe -vp makeinfo/tests/accentenc makeinfo/tests/accentenc.tmp
cp.exe -vp makeinfo/tests/cond makeinfo/tests/cond.tmp
cp.exe -vp makeinfo/tests/copying makeinfo/tests/copying.tmp
cp.exe -vp makeinfo/tests/defxcond makeinfo/tests/defxcond.tmp
cp.exe -vp makeinfo/tests/html-docdesc makeinfo/tests/html-docdesc.tmp
cp.exe -vp makeinfo/tests/html-extrali makeinfo/tests/html-extrali.tmp
cp.exe -vp makeinfo/tests/html-manuals makeinfo/tests/html-manuals.tmp
cp.exe -vp makeinfo/tests/html-min makeinfo/tests/html-min.tmp
cp.exe -vp makeinfo/tests/html-para makeinfo/tests/html-para.tmp
cp.exe -vp makeinfo/tests/html-title makeinfo/tests/html-title.tmp
cp.exe -vp makeinfo/tests/html-top makeinfo/tests/html-top.tmp
cp.exe -vp makeinfo/tests/include-value makeinfo/tests/include-value.tmp
cp.exe -vp makeinfo/tests/macro-at makeinfo/tests/macro-at.tmp
cp.exe -vp makeinfo/tests/menu-whitespace makeinfo/tests/menu-whitespace.tmp
cp.exe -vp makeinfo/tests/no-headers makeinfo/tests/no-headers.tmp
cp.exe -vp makeinfo/tests/node-expand makeinfo/tests/node-expand.tmp
cp.exe -vp makeinfo/tests/node-value makeinfo/tests/node-value.tmp
cp.exe -vp makeinfo/tests/node-whitespace makeinfo/tests/node-whitespace.tmp
cp.exe -vp makeinfo/tests/top makeinfo/tests/top.tmp
cp.exe -vp makeinfo/tests/twofiles makeinfo/tests/twofiles.tmp
cp.exe -vp missing missing.tmp
cp.exe -vp util/fix-info-dir util/fix-info-dir.tmp
cp.exe -vp util/fixfonts util/fixfonts.tmp
cp.exe -vp util/fixref.gawk util/fixref.gawk.tmp
cp.exe -vp util/gdoc util/gdoc.tmp
cp.exe -vp util/gen-dir-node util/gen-dir-node.tmp
cp.exe -vp util/gendocs.sh util/gendocs.sh.tmp
cp.exe -vp util/infosrch util/infosrch.tmp
cp.exe -vp util/outline.gawk util/outline.gawk.tmp
cp.exe -vp util/tex3patch util/tex3patch.tmp
cp.exe -vp util/texi2dvi util/texi2dvi.tmp
cp.exe -vp util/texi2pdf util/texi2pdf.tmp
cp.exe -vp util/txitextest util/txitextest.tmp
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ config.guess.tmp > config.guess
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ config.rpath.tmp > config.rpath
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ config.sub.tmp > config.sub
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ depcomp.tmp > depcomp
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ djgpp/config.site.tmp > djgpp/config.site
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ doc/mdate-sh.tmp > doc/mdate-sh
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ install-sh.tmp > install-sh
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ intl/config.charset.tmp > intl/config.charset
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/accent.tmp > makeinfo/tests/accent
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/accentenc.tmp > makeinfo/tests/accentenc
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/cond.tmp > makeinfo/tests/cond
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/copying.tmp > makeinfo/tests/copying
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/defxcond.tmp > makeinfo/tests/defxcond
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-docdesc.tmp > makeinfo/tests/html-docdesc
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-extrali.tmp > makeinfo/tests/html-extrali
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-manuals.tmp > makeinfo/tests/html-manuals
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-min.tmp > makeinfo/tests/html-min
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-para.tmp > makeinfo/tests/html-para
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-title.tmp > makeinfo/tests/html-title
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/html-top.tmp > makeinfo/tests/html-top
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/include-value.tmp > makeinfo/tests/include-value
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/macro-at.tmp > makeinfo/tests/macro-at
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/menu-whitespace.tmp > makeinfo/tests/menu-whitespace
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/no-headers.tmp > makeinfo/tests/no-headers
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/node-expand.tmp > makeinfo/tests/node-expand
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/node-value.tmp > makeinfo/tests/node-value
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/node-whitespace.tmp > makeinfo/tests/node-whitespace
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/top.tmp > makeinfo/tests/top
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ makeinfo/tests/twofiles.tmp > makeinfo/tests/twofiles
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ missing.tmp > missing
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/fix-info-dir.tmp > util/fix-info-dir
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/fixfonts.tmp > util/fixfonts
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/fixref.gawk.tmp > util/fixref.gawk
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/gdoc.tmp > util/gdoc
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/gen-dir-node.tmp > util/gen-dir-node
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/gendocs.sh.tmp > util/gendocs.sh
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/infosrch.tmp > util/infosrch
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/outline.gawk.tmp > util/outline.gawk
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/tex3patch.tmp > util/tex3patch
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/texi2dvi.tmp > util/texi2dvi
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/texi2pdf.tmp > util/texi2pdf
sed -e s@/bin/sh@sh@  -e s@/bin/bash@bash@ -e s@/usr/bin/perl@perl@ util/txitextest.tmp > util/txitextest
cp -vp ${MKSINSTALLDIRS} mkinstalldirs
