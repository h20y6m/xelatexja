%%
%% This is file `xltjl3doc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xltjltxdoc.dtx  (with options: `class,l3')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from xltjl3doc.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file xltjltxdoc.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% File: xltjltxdoc.dtx
\NeedsTeXFormat{LaTeX2e}[2021-06-01]
\ProvidesClass{xltjl3doc}
  [2021/10/23 v0.4.0 Standard XeLaTeX-ja documentation class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{l3doc}}
\ProcessOptions
\LoadClass{l3doc}
\def\Cjascale{0.962216}
\usepackage[jascale=\Cjascale]{xelatexja}
\RenewDocumentCommand \normalsize {}
  {
    \@setfontsize\normalsize\@xpt{15}%
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \belowdisplayskip \abovedisplayskip
    \let\@listi\@listI
  }
\RenewDocumentCommand \large {} {\@setfontsize\large\@xiipt{17}}
\RenewDocumentCommand \Large {} {\@setfontsize\Large\@xivpt{21}}
\RenewDocumentCommand \LARGE {} {\@setfontsize\LARGE\@xviipt{25}}
\RenewDocumentCommand \huge {} {\@setfontsize\huge\@xxpt{28}}
\RenewDocumentCommand \Huge {} {\@setfontsize\Huge\@xxvpt{33}}
\normalsize
\setlength{\parindent}{1\zw}
\providecommand*{\file}[1]{\texttt{#1}}
\providecommand*{\pstyle}[1]{\textsl{#1}}
\providecommand*{\Lcount}[1]{\textsl{\small#1}}
\providecommand*{\Lopt}[1]{\textsf{#1}}
\providecommand\dst{{\normalfont\scshape docstrip}}
\endinput
%%
%% End of file `xltjl3doc.cls'.
