#!/bin/sh
#
# rebuild.sh: rebuild hypertext with the previous context.
#
# Usage:
#	% sh rebuild.sh
#
cd /home/suto/git_src/wesnoth && GTAGSCONF=':skip=HTML/,HTML.pub/,tags,TAGS,ID,y.tab.c,y.tab.h,gtags.files,cscope.files,cscope.out,cscope.po.out,cscope.in.out,SCCS/,RCS/,CVS/,CVSROOT/,{arch}/,autom4te.cache/,*.orig,*.rej,*.bak,*~,#*#,*.swp,*.tmp,*_flymake.*,*_flymake,*.o,*.a,*.so,*.lo,*.zip,*.gz,*.bz2,*.xz,*.lzh,*.Z,*.tgz,*.min.js,*min.css:langmap=c\:.c.h,yacc\:.y,asm\:.s.S,java\:.java,cpp\:.c++.cc.hh.cpp.cxx.hxx.hpp.C.H,php\:.php.php3.phtml:ctagscom=/usr/bin/ctags:pygmentslib=$libdir/gtags/pygments-parser.la:skip=HTML/,HTML.pub/,tags,TAGS,ID,y.tab.c,y.tab.h,gtags.files,cscope.files,cscope.out,cscope.po.out,cscope.in.out,SCCS/,RCS/,CVS/,CVSROOT/,{arch}/,autom4te.cache/,*.orig,*.rej,*.bak,*~,#*#,*.swp,*.tmp,*_flymake.*,*_flymake,*.o,*.a,*.so,*.lo,*.zip,*.gz,*.bz2,*.xz,*.lzh,*.Z,*.tgz,*.min.js,*min.css:langmap=ABAP\:.abap:langmap=ANTLR\:.G.g:langmap=ActionScript3\:.as:langmap=Ada\:.adb.ads.ada:langmap=AppleScript\:.applescript:langmap=AspectJ\:.aj:langmap=Aspx-cs\:.aspx.asax.ascx.ashx.asmx.axd:langmap=Asymptote\:.asy:langmap=AutoIt\:.au3:langmap=Awk\:.awk.gawk.mawk:langmap=BUGS\:.bug:langmap=Bash\:.sh.ksh.bash.ebuild.eclass:langmap=Bat\:.bat.cmd:langmap=BlitzMax\:.bmx:langmap=Boo\:.boo:langmap=Bro\:.bro:langmap=C#\:.cs:langmap=C++\:.c++.cc.cp.cpp.cxx.h.h++.hh.hp.hpp.hxx.C.H:langmap=COBOLFree\:.cbl.CBL:langmap=COBOL\:.cob.COB.cpy.CPY:langmap=CUDA\:.cu.cuh:langmap=C\:.c.h:langmap=Ceylon\:.ceylon:langmap=Cfm\:.cfm.cfml.cfc:langmap=Clojure\:.clj:langmap=CoffeeScript\:.coffee:langmap=Common-Lisp\:.cl.lisp.el:langmap=Coq\:.v:langmap=Croc\:.croc:langmap=Csh\:.tcsh.csh:langmap=Cython\:.pyx.pxd.pxi:langmap=Dart\:.dart:langmap=Dg\:.dg:langmap=Duel\:.duel.jbst:langmap=Dylan\:.dylan.dyl.intr:langmap=ECL\:.ecl:langmap=EC\:.ec.eh:langmap=ERB\:.erb:langmap=Elixir\:.ex.exs:langmap=Erlang\:.erl.hrl.es.escript:langmap=Evoque\:.evoque:langmap=FSharp\:.fs.fsi:langmap=Factor\:.factor:langmap=Fancy\:.fy.fancypack:langmap=Fantom\:.fan:langmap=Felix\:.flx.flxh:langmap=Fortran\:.f.f90.F.F90:langmap=GAS\:.s.S:langmap=GLSL\:.vert.frag.geo:langmap=Genshi\:.kid:langmap=Gherkin\:.feature:langmap=Gnuplot\:.plot.plt:langmap=Go\:.go:langmap=GoodData-CL\:.gdc:langmap=Gosu\:.gs.gsx.gsp.vark:langmap=Groovy\:.groovy:langmap=Gst\:.gst:langmap=HaXe\:.hx:langmap=Haml\:.haml:langmap=Haskell\:.hs:langmap=Hxml\:.hxml:langmap=Hybris\:.hy.hyb:langmap=IDL\:.pro:langmap=Io\:.io:langmap=Ioke\:.ik:langmap=JAGS\:.jag.bug:langmap=Jade\:.jade:langmap=JavaScript\:.js:langmap=Java\:.java:langmap=Jsp\:.jsp:langmap=Julia\:.jl:langmap=Koka\:.kk.kki:langmap=Kotlin\:.kt:langmap=LLVM\:.ll:langmap=Lasso\:.lasso:langmap=Literate-Haskell\:.lhs:langmap=LiveScript\:.ls:langmap=Logos\:.x.xi.xm.xmi:langmap=Logtalk\:.lgt:langmap=Lua\:.lua.wlua:langmap=MOOCode\:.moo:langmap=MXML\:.mxml:langmap=Mako\:.mao:langmap=Mason\:.m.mhtml.mc.mi:langmap=Matlab\:.m:langmap=Modula2\:.mod:langmap=Monkey\:.monkey:langmap=MoonScript\:.moon:langmap=MuPAD\:.mu:langmap=Myghty\:.myt:langmap=NASM\:.asm.ASM:langmap=NSIS\:.nsi.nsh:langmap=Nemerle\:.n:langmap=NewLisp\:.lsp.nl:langmap=Newspeak\:.ns2:langmap=Nimrod\:.nim.nimrod:langmap=OCaml\:.ml.mli.mll.mly:langmap=Objective-C++\:.mm.hh:langmap=Objective-C\:.m.h:langmap=Objective-J\:.j:langmap=Octave\:.m:langmap=Ooc\:.ooc:langmap=Opa\:.opa:langmap=OpenEdge\:.p.cls:langmap=PHP\:.php.php3.phtml:langmap=Pascal\:.pas:langmap=Perl\:.pl.pm:langmap=PostScript\:.ps.eps:langmap=PowerShell\:.ps1:langmap=Prolog\:.prolog.pro.pl:langmap=Python\:.py.pyw.sc.tac.sage:langmap=QML\:.qml:langmap=REBOL\:.r.r3:langmap=RHTML\:.rhtml:langmap=Racket\:.rkt.rktl:langmap=Ragel\:.rl:langmap=Redcode\:.cw:langmap=RobotFramework\:.robot:langmap=Ruby\:.rb.rbw.rake.gemspec.rbx.duby:langmap=Rust\:.rs.rc:langmap=S\:.S.R:langmap=Scala\:.scala:langmap=Scaml\:.scaml:langmap=Scheme\:.scm.ss:langmap=Scilab\:.sci.sce.tst:langmap=Smalltalk\:.st:langmap=Smarty\:.tpl:langmap=Sml\:.sml.sig.fun:langmap=Snobol\:.snobol:langmap=SourcePawn\:.sp:langmap=Spitfire\:.spt:langmap=Ssp\:.ssp:langmap=Stan\:.stan:langmap=SystemVerilog\:.sv.svh:langmap=Tcl\:.tcl:langmap=TeX\:.tex.aux.toc:langmap=Tea\:.tea:langmap=Treetop\:.treetop.tt:langmap=TypeScript\:.ts:langmap=UrbiScript\:.u:langmap=VB.net\:.vb.bas:langmap=VGL\:.rpf:langmap=Vala\:.vala.vapi:langmap=Velocity\:.vm.fhtml:langmap=Verilog\:.v:langmap=Vhdl\:.vhdl.vhd:langmap=Vim\:.vim:langmap=WML\:.cfg.pbl.wml:langmap=XBase\:.PRG.prg:langmap=XQuery\:.xqy.xquery.xq.xql.xqm:langmap=XSLT\:.xsl.xslt.xpl:langmap=Xtend\:.xtend:gtags_parser=ABAP\:$pygmentslib:gtags_parser=ANTLR\:$pygmentslib:gtags_parser=ActionScript3\:$pygmentslib:gtags_parser=Ada\:$pygmentslib:gtags_parser=AppleScript\:$pygmentslib:gtags_parser=AspectJ\:$pygmentslib:gtags_parser=Aspx-cs\:$pygmentslib:gtags_parser=Asymptote\:$pygmentslib:gtags_parser=AutoIt\:$pygmentslib:gtags_parser=Awk\:$pygmentslib:gtags_parser=BUGS\:$pygmentslib:gtags_parser=Bash\:$pygmentslib:gtags_parser=Bat\:$pygmentslib:gtags_parser=BlitzMax\:$pygmentslib:gtags_parser=Boo\:$pygmentslib:gtags_parser=Bro\:$pygmentslib:gtags_parser=C#\:$pygmentslib:gtags_parser=C++\:$pygmentslib:gtags_parser=COBOLFree\:$pygmentslib:gtags_parser=COBOL\:$pygmentslib:gtags_parser=CUDA\:$pygmentslib:gtags_parser=C\:$pygmentslib:gtags_parser=Ceylon\:$pygmentslib:gtags_parser=Cfm\:$pygmentslib:gtags_parser=Clojure\:$pygmentslib:gtags_parser=CoffeeScript\:$pygmentslib:gtags_parser=Common-Lisp\:$pygmentslib:gtags_parser=Coq\:$pygmentslib:gtags_parser=Croc\:$pygmentslib:gtags_parser=Csh\:$pygmentslib:gtags_parser=Cython\:$pygmentslib:gtags_parser=Dart\:$pygmentslib:gtags_parser=Dg\:$pygmentslib:gtags_parser=Duel\:$pygmentslib:gtags_parser=Dylan\:$pygmentslib:gtags_parser=ECL\:$pygmentslib:gtags_parser=EC\:$pygmentslib:gtags_parser=ERB\:$pygmentslib:gtags_parser=Elixir\:$pygmentslib:gtags_parser=Erlang\:$pygmentslib:gtags_parser=Evoque\:$pygmentslib:gtags_parser=FSharp\:$pygmentslib:gtags_parser=Factor\:$pygmentslib:gtags_parser=Fancy\:$pygmentslib:gtags_parser=Fantom\:$pygmentslib:gtags_parser=Felix\:$pygmentslib:gtags_parser=Fortran\:$pygmentslib:gtags_parser=GAS\:$pygmentslib:gtags_parser=GLSL\:$pygmentslib:gtags_parser=Genshi\:$pygmentslib:gtags_parser=Gherkin\:$pygmentslib:gtags_parser=Gnuplot\:$pygmentslib:gtags_parser=Go\:$pygmentslib:gtags_parser=GoodData-CL\:$pygmentslib:gtags_parser=Gosu\:$pygmentslib:gtags_parser=Groovy\:$pygmentslib:gtags_parser=Gst\:$pygmentslib:gtags_parser=HaXe\:$pygmentslib:gtags_parser=Haml\:$pygmentslib:gtags_parser=Haskell\:$pygmentslib:gtags_parser=Hxml\:$pygmentslib:gtags_parser=Hybris\:$pygmentslib:gtags_parser=IDL\:$pygmentslib:gtags_parser=Io\:$pygmentslib:gtags_parser=Ioke\:$pygmentslib:gtags_parser=JAGS\:$pygmentslib:gtags_parser=Jade\:$pygmentslib:gtags_parser=JavaScript\:$pygmentslib:gtags_parser=Java\:$pygmentslib:gtags_parser=Jsp\:$pygmentslib:gtags_parser=Julia\:$pygmentslib:gtags_parser=Koka\:$pygmentslib:gtags_parser=Kotlin\:$pygmentslib:gtags_parser=LLVM\:$pygmentslib:gtags_parser=Lasso\:$pygmentslib:gtags_parser=Literate-Haskell\:$pygmentslib:gtags_parser=LiveScript\:$pygmentslib:gtags_parser=Logos\:$pygmentslib:gtags_parser=Logtalk\:$pygmentslib:gtags_parser=Lua\:$pygmentslib:gtags_parser=MAQL\:$pygmentslib:gtags_parser=MOOCode\:$pygmentslib:gtags_parser=MXML\:$pygmentslib:gtags_parser=Mako\:$pygmentslib:gtags_parser=Mason\:$pygmentslib:gtags_parser=Matlab\:$pygmentslib:gtags_parser=MiniD\:$pygmentslib:gtags_parser=Modelica\:$pygmentslib:gtags_parser=Modula2\:$pygmentslib:gtags_parser=Monkey\:$pygmentslib:gtags_parser=MoonScript\:$pygmentslib:gtags_parser=MuPAD\:$pygmentslib:gtags_parser=Myghty\:$pygmentslib:gtags_parser=NASM\:$pygmentslib:gtags_parser=NSIS\:$pygmentslib:gtags_parser=Nemerle\:$pygmentslib:gtags_parser=NewLisp\:$pygmentslib:gtags_parser=Newspeak\:$pygmentslib:gtags_parser=Nimrod\:$pygmentslib:gtags_parser=OCaml\:$pygmentslib:gtags_parser=Objective-C++\:$pygmentslib:gtags_parser=Objective-C\:$pygmentslib:gtags_parser=Objective-J\:$pygmentslib:gtags_parser=Octave\:$pygmentslib:gtags_parser=Ooc\:$pygmentslib:gtags_parser=Opa\:$pygmentslib:gtags_parser=OpenEdge\:$pygmentslib:gtags_parser=PHP\:$pygmentslib:gtags_parser=Pascal\:$pygmentslib:gtags_parser=Perl\:$pygmentslib:gtags_parser=PostScript\:$pygmentslib:gtags_parser=PowerShell\:$pygmentslib:gtags_parser=Prolog\:$pygmentslib:gtags_parser=Python\:$pygmentslib:gtags_parser=QML\:$pygmentslib:gtags_parser=REBOL\:$pygmentslib:gtags_parser=RHTML\:$pygmentslib:gtags_parser=Racket\:$pygmentslib:gtags_parser=Ragel\:$pygmentslib:gtags_parser=Redcode\:$pygmentslib:gtags_parser=RobotFramework\:$pygmentslib:gtags_parser=Ruby\:$pygmentslib:gtags_parser=Rust\:$pygmentslib:gtags_parser=S\:$pygmentslib:gtags_parser=Scala\:$pygmentslib:gtags_parser=Scaml\:$pygmentslib:gtags_parser=Scheme\:$pygmentslib:gtags_parser=Scilab\:$pygmentslib:gtags_parser=Smalltalk\:$pygmentslib:gtags_parser=Smarty\:$pygmentslib:gtags_parser=Sml\:$pygmentslib:gtags_parser=Snobol\:$pygmentslib:gtags_parser=SourcePawn\:$pygmentslib:gtags_parser=Spitfire\:$pygmentslib:gtags_parser=Ssp\:$pygmentslib:gtags_parser=Stan\:$pygmentslib:gtags_parser=SystemVerilog\:$pygmentslib:gtags_parser=Tcl\:$pygmentslib:gtags_parser=TeX\:$pygmentslib:gtags_parser=Tea\:$pygmentslib:gtags_parser=Treetop\:$pygmentslib:gtags_parser=TypeScript\:$pygmentslib:gtags_parser=UrbiScript\:$pygmentslib:gtags_parser=VB.net\:$pygmentslib:gtags_parser=VGL\:$pygmentslib:gtags_parser=Vala\:$pygmentslib:gtags_parser=Velocity\:$pygmentslib:gtags_parser=Verilog\:$pygmentslib:gtags_parser=Vhdl\:$pygmentslib:gtags_parser=Vim\:$pygmentslib:gtags_parser=WML\:$pygmentslib:gtags_parser=XBase\:$pygmentslib:gtags_parser=XQuery\:$pygmentslib:gtags_parser=XSLT\:$pygmentslib:gtags_parser=Xtend\:$pygmentslib:' htags -anFsw
