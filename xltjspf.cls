%%
%% This is file `xltjspf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xltjsclasses.dtx  (with options: `class,jspf')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from xltjspf.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file xltjsclasses.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xltjspf}
  [2021/09/19 xltjsclasses ]
\def\jsc@clsname{xltjspf}
\newif\if@restonecol
\newif\if@titlepage
\DeclareOption{a3paper}{%
  \setlength\paperheight {420mm}%
  \setlength\paperwidth  {297mm}}
\DeclareOption{a4paper}{%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}{%
  \setlength\paperheight {210mm}%
  \setlength\paperwidth  {148mm}}
\DeclareOption{a6paper}{%
  \setlength\paperheight {148mm}%
  \setlength\paperwidth  {105mm}}
\DeclareOption{b4paper}{%
  \setlength\paperheight {364mm}%
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5paper}{%
  \setlength\paperheight {257mm}%
  \setlength\paperwidth  {182mm}}
\DeclareOption{b6paper}{%
  \setlength\paperheight {182mm}%
  \setlength\paperwidth  {128mm}}
\DeclareOption{a4j}{%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5j}{%
  \setlength\paperheight {210mm}%
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4j}{%
  \setlength\paperheight {364mm}%
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5j}{%
  \setlength\paperheight {257mm}%
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4var}{%
  \setlength\paperheight {283mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{b5var}{%
  \setlength\paperheight {230mm}%
  \setlength\paperwidth  {182mm}}
\DeclareOption{letterpaper}{%
  \setlength\paperheight {11in}%
  \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}{%
  \setlength\paperheight {14in}%
  \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}{%
  \setlength\paperheight {10.5in}%
  \setlength\paperwidth  {7.25in}}
\newif\if@landscape
\@landscapefalse
\DeclareOption{landscape}{\@landscapetrue}
\newif\if@slide
\@slidefalse
\newcommand{\@ptsize}{0}
\newif\ifjsc@mag\jsc@magtrue
\newif\ifjsc@mag@xreal\jsc@mag@xrealfalse
\def\jsc@magscale{1}
\DeclareOption{8pt}{\def\jsc@magscale{0.833}\renewcommand{\@ptsize}{-2}}
\DeclareOption{9pt}{\def\jsc@magscale{0.913}\renewcommand{\@ptsize}{-1}}
\DeclareOption{10pt}{\def\jsc@magscale{1}\renewcommand{\@ptsize}{0}}
\DeclareOption{11pt}{\def\jsc@magscale{1.095}\renewcommand{\@ptsize}{1}}
\DeclareOption{12pt}{\def\jsc@magscale{1.200}\renewcommand{\@ptsize}{2}}
\DeclareOption{14pt}{\def\jsc@magscale{1.440}\renewcommand{\@ptsize}{4}}
\DeclareOption{17pt}{\def\jsc@magscale{1.728}\renewcommand{\@ptsize}{7}}
\DeclareOption{20pt}{\def\jsc@magscale{2}\renewcommand{\@ptsize}{10}}
\DeclareOption{21pt}{\def\jsc@magscale{2.074}\renewcommand{\@ptsize}{11}}
\DeclareOption{25pt}{\def\jsc@magscale{2.488}\renewcommand{\@ptsize}{15}}
\DeclareOption{30pt}{\def\jsc@magscale{2.986}\renewcommand{\@ptsize}{20}}
\DeclareOption{36pt}{\def\jsc@magscale{3.583}\renewcommand{\@ptsize}{26}}
\DeclareOption{43pt}{\def\jsc@magscale{4.300}\renewcommand{\@ptsize}{33}}
\DeclareOption{12Q}{\def\jsc@magscale{0.923}\renewcommand{\@ptsize}{1200}}
\DeclareOption{14Q}{\def\jsc@magscale{1.077}\renewcommand{\@ptsize}{1400}}
\DeclareOption{10ptj}{\def\jsc@magscale{1.085}\renewcommand{\@ptsize}{1001}}
\DeclareOption{10.5ptj}{\def\jsc@magscale{1.139}\renewcommand{\@ptsize}{1051}}
\DeclareOption{11ptj}{\def\jsc@magscale{1.194}\renewcommand{\@ptsize}{1101}}
\DeclareOption{12ptj}{\def\jsc@magscale{1.302}\renewcommand{\@ptsize}{1201}}
\DeclareOption{usemag}{\jsc@magtrue\jsc@mag@xrealfalse}
\DeclareOption{nomag}{\jsc@magfalse\jsc@mag@xrealfalse}
\DeclareOption{nomag*}{\jsc@magfalse\jsc@mag@xrealtrue}
\newcount\hour
\newcount\minute
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\newif\iftombow \tombowfalse
\newif\iftombowdate \tombowdatetrue
\newdimen\@tombowwidth \@tombowwidth.1\p@
\newtoks\@bannertoken \@bannertoken{}
\DeclareOption{tombow}{%
  \tombowtrue \tombowdatetrue
  \setlength{\@tombowwidth}{.1\p@}%
  \@bannertoken{%
     \jobname\space(\number\year-\two@digits\month-\two@digits\day
     \space\two@digits\hour:\two@digits\minute)}}
\DeclareOption{tombo}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{.1\p@}}
\DeclareOption{mentuke}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{\z@}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{vartwoside}{\@twosidetrue \@mparswitchfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@ $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}%
  \def\eqnarray{%
    \stepcounter{equation}%
    \def\@currentlabel{\p@equation\theequation}%
    \global\@eqnswtrue\m@th
    \global\@eqcnt\z@
    \tabskip\mathindent
    \let\\=\@eqncr
    \setlength\abovedisplayskip{\topsep}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil$\displaystyle{{}##{}}$\hfil
      &\global\@eqcnt\tw@
        $\displaystyle{##}$\hfil \tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
    \tabskip\z@skip\cr
    }}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\newif\ifmingoth
\mingothfalse
\newif\ifjisfont
\jisfontfalse
\newif\if@english
\@englishfalse
\DeclareOption{english}{\@englishtrue}
\newif\if@jslogo \@jslogotrue
\DeclareOption{jslogo}{\@jslogotrue}
\DeclareOption{nojslogo}{\@jslogofalse}
\ExecuteOptions{a4paper,twoside,twocolumn,notitlepage,fleqn,final}
\ProcessOptions
\if@slide
  \def\maybeblue{\@ifundefined{ver@color.sty}{}{\color{blue}}}
\fi
\if@landscape
  \setlength\@tempdima  {\paperheight}
  \setlength\paperheight{\paperwidth}
  \setlength\paperwidth {\@tempdima}
\fi
\def\Cjascale{0.903375}
\RequirePackage[jascale=\Cjascale]{xelatexja}
\iftombow
  \xltjTombowSetup{%
    tombow=true,%
    banner={\iftombowdate\the\@bannertoken\fi},%
    thickness=\@tombowwidth}
\fi
\iftombow
  \newdimen\stockwidth \newdimen\stockheight
  \setlength{\stockwidth}{\paperwidth}
  \setlength{\stockheight}{\paperheight}
  \advance \stockwidth 2in
  \advance \stockheight 2in
\fi
\def\n@baseline{14.554375}
\newdimen\jsc@mpt
\newdimen\jsc@mmm
\def\inv@mag{1}
\ifjsc@mag
  \jsc@mpt=1\p@
  \jsc@mmm=1mm
  \ifnum\@ptsize=-2
    \mag 833
    \def\inv@mag{1.20048}
    \def\n@baseline{15}%
  \fi
  \ifnum\@ptsize=-1
    \mag 913 % formerly 900
    \def\inv@mag{1.09529}
    \def\n@baseline{15}%
  \fi
  \ifnum\@ptsize=1
    \mag 1095 % formerly 1100
    \def\inv@mag{0.913242}
  \fi
  \ifnum\@ptsize=2
    \mag 1200
    \def\inv@mag{0.833333}
  \fi
  \ifnum\@ptsize=4
    \mag 1440
    \def\inv@mag{0.694444}
  \fi
  \ifnum\@ptsize=7
    \mag 1728
    \def\inv@mag{0.578704}
  \fi
  \ifnum\@ptsize=10
    \mag 2000
    \def\inv@mag{0.5}
  \fi
  \ifnum\@ptsize=11
    \mag 2074
    \def\inv@mag{0.48216}
  \fi
  \ifnum\@ptsize=15
    \mag 2488
    \def\inv@mag{0.401929}
  \fi
  \ifnum\@ptsize=20
    \mag 2986
    \def\inv@mag{0.334896}
  \fi
  \ifnum\@ptsize=26
    \mag 3583
    \def\inv@mag{0.279096}
  \fi
  \ifnum\@ptsize=33
    \mag 4300
    \def\inv@mag{0.232558}
  \fi
  \ifnum\@ptsize=1200
    \mag 923
    \def\inv@mag{1.0834236}
  \fi
  \ifnum\@ptsize=1400
    \mag 1077
    \def\inv@mag{0.928505}
  \fi
  \ifnum\@ptsize=1001
    \mag 1085
    \def\inv@mag{0.921659}
  \fi
  \ifnum\@ptsize=1051
    \mag 1139
    \def\inv@mag{0.877963}
  \fi
  \ifnum\@ptsize=1101
    \mag 1194
    \def\inv@mag{0.837521}
  \fi
  \ifnum\@ptsize=1201
    \mag 1302
    \def\inv@mag{0.768049}
  \fi
\else
  \jsc@mpt=\jsc@magscale\p@
  \jsc@mmm=\jsc@magscale mm
  \def\inv@mag{1}
  \ifnum\@ptsize=-2
    \def\n@baseline{15}%
  \fi
  \ifnum\@ptsize=-1
    \def\n@baseline{15}%
  \fi
\fi
\ifjsc@mag@xreal
  \RequirePackage{type1cm}
  \mathchardef\jsc@csta=259
  \def\jsc@invscale#1#2{%
    \begingroup \@tempdima=#1\relax \@tempdimb#2\p@\relax
      \@tempcnta\@tempdima \multiply\@tempcnta\@cclvi
      \divide\@tempcnta\@tempdimb \multiply\@tempcnta\@cclvi
      \@tempcntb\p@ \divide\@tempcntb\@tempdimb
      \advance\@tempcnta-\@tempcntb \advance\@tempcnta-\tw@
      \@tempdimb\@tempcnta\@ne
      \advance\@tempcnta\@tempcntb \advance\@tempcnta\@tempcntb
      \advance\@tempcnta\jsc@csta \@tempdimc\@tempcnta\@ne
      \@whiledim\@tempdimb<\@tempdimc\do{%
        \@tempcntb\@tempdimb \advance\@tempcntb\@tempdimc
        \advance\@tempcntb\@ne \divide\@tempcntb\tw@
        \ifdim #2\@tempcntb>\@tempdima
          \advance\@tempcntb\m@ne \@tempdimc=\@tempcntb\@ne
        \else \@tempdimb=\@tempcntb\@ne \fi}%
      \xdef\jsc@gtmpa{\the\@tempdimb}%
    \endgroup #1=\jsc@gtmpa\relax}
  \expandafter\let\csname OT1/cmr/m/n/10\endcsname\relax
  \expandafter\let\csname OMX/cmex/m/n/10\endcsname\relax
  \let\jsc@get@external@font\get@external@font
  \def\get@external@font{%
    \jsc@preadjust@extract@font
    \jsc@get@external@font}
  \def\jsc@fstrunc#1{%
    \edef\jsc@tmpa{\strip@pt#1}%
    \expandafter\jsc@fstrunc@a\jsc@tmpa.****\@nil}
  \def\jsc@fstrunc@a#1.#2#3#4#5#6\@nil{%
    \if#5*\else
      \edef\jsc@tmpa{#1%
      \ifnum#2#3>\z@ .#2\ifnum#3>\z@ #3\fi\fi}%
    \fi}
  \def\jsc@preadjust@extract@font{%
    \let\jsc@req@size\f@size
    \dimen@\f@size\p@ \jsc@invscale\dimen@\jsc@magscale
    \advance\dimen@.005pt\relax \jsc@fstrunc\dimen@
    \let\jsc@ref@size\jsc@tmpa
    \let\f@size\jsc@ref@size}
  \def\execute@size@function#1{%
    \let\jsc@cref@size\f@size
    \let\f@size\jsc@req@size
    \csname s@fct@#1\endcsname}
  \let\jsc@DeclareErrorFont\DeclareErrorFont
  \def\DeclareErrorFont#1#2#3#4#5{%
    \@tempdimc#5\p@ \@tempdimc\jsc@magscale\@tempdimc
    \edef\jsc@tmpa{{#1}{#2}{#3}{#4}{\strip@pt\@tempdimc}}
    \expandafter\jsc@DeclareErrorFont\jsc@tmpa}
  \def\gen@sfcnt{%
    \edef\mandatory@arg{\mandatory@arg\jsc@cref@size}%
    \empty@sfcnt}
  \def\genb@sfcnt{%
    \edef\mandatory@arg{%
      \mandatory@arg\expandafter\genb@x\jsc@cref@size..\@@}%
    \empty@sfcnt}
  \DeclareErrorFont{OT1}{cmr}{m}{n}{10}
\fi
\def\jsc@smallskip{\vspace\jsc@smallskipamount}
\newskip\jsc@smallskipamount
\jsc@smallskipamount=3\jsc@mpt plus 1\jsc@mpt minus 1\jsc@mpt
\setlength\paperwidth{\inv@mag\paperwidth}%
\setlength\paperheight{\inv@mag\paperheight}%
\iftombow
  \setlength\stockwidth{\inv@mag\stockwidth}%
  \setlength\stockheight{\inv@mag\stockheight}%
\fi
\iftombow
  \setlength{\pdfpagewidth}{\stockwidth}
  \setlength{\pdfpageheight}{\stockheight}
\else
  \setlength{\pdfpagewidth}{\paperwidth}
  \setlength{\pdfpageheight}{\paperheight}
\fi
\AddToHook{rmfamily}{\mcfamily}
\AddToHook{sffamily}{\gtfamily}
\AddToHook{ttfamily}{\gtfamily}
\ifx\DeclareFixJFMCJKTextFontCommand\@undefined
\DeclareRobustCommand\textmc[1]{%
    \relax\ifmmode \expandafter\nfss@text \fi{\mcfamily #1}}
\DeclareRobustCommand\textgt[1]{%
    \relax\ifmmode \expandafter\nfss@text \fi{\gtfamily #1}}
\fi
\def\@{\spacefactor3000{}}
%% \@setfontsize with \parindent and \(x)kanjiskip settings
\def\@setfontsize#1#2#3{%
  \ifx\protect\@typeset@protect
    \let\@currsize#1%
  \fi
  \fontsize{#2}{#3}\selectfont
  \ifdim\parindent>\z@
    \if@english
      \parindent=1em
    \else
      \parindent=1\zw
    \fi
  \fi
  \setkanjiskip{0\zw plus .1\zw minus .01\zw}%
  \@tempskipa\getxkanjiskip\relax
  \ifdim\@tempskipa>\z@
    \if@slide
      \setxkanjiskip{0.1em}%
    \else
      \setxkanjiskip{0.25em plus 0.15em minus 0.06em}%
    \fi
  \fi
}
\def\jsc@setfontsize#1#2#3{%
  \@setfontsize#1{#2\jsc@mpt}{#3\jsc@mpt}}
\emergencystretch 3\zw
\newif\ifnarrowbaselines
\if@english
  \narrowbaselinestrue
\fi
\def\narrowbaselines{%
  \narrowbaselinestrue
  \skip0=\abovedisplayskip
  \skip2=\abovedisplayshortskip
  \skip4=\belowdisplayskip
  \skip6=\belowdisplayshortskip
  \@currsize\selectfont
  \abovedisplayskip=\skip0
  \abovedisplayshortskip=\skip2
  \belowdisplayskip=\skip4
  \belowdisplayshortskip=\skip6\relax}
\def\widebaselines{\narrowbaselinesfalse\@currsize\selectfont}
\renewcommand{\normalsize}{%
  \ifnarrowbaselines
    \jsc@setfontsize\normalsize\@xpt\@xiipt
  \else
    \jsc@setfontsize\normalsize\@xpt{\n@baseline}%
  \fi
  \abovedisplayskip 11\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \abovedisplayshortskip \z@ \@plus3\jsc@mpt
  \belowdisplayskip 9\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \belowdisplayshortskip \belowdisplayskip
  \let\@listi\@listI}
%% initialize
\normalsize
\newdimen\Cht
\newdimen\Cdp
\newdimen\Cwd
\newdimen\Cvs
\newdimen\Chs
\setlength\Cht{0.88\zw}
\setlength\Cdp{0.12\zw}
\setlength\Cwd{1\zw}
\setlength\Cvs{\baselineskip}
\setlength\Chs{1\zw}
\newcommand{\small}{%
  \ifnarrowbaselines
    \jsc@setfontsize\small\@ixpt{11}%
  \else
    \jsc@setfontsize\small\@ixpt{13}%
  \fi
  \abovedisplayskip 9\jsc@mpt \@plus3\jsc@mpt \@minus4\jsc@mpt
  \abovedisplayshortskip  \z@ \@plus3\jsc@mpt
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\footnotesize}{%
  \ifnarrowbaselines
    \jsc@setfontsize\footnotesize\@viiipt{9.5}%
  \else
    \jsc@setfontsize\footnotesize\@viiipt{11}%
  \fi
  \abovedisplayskip 6\jsc@mpt \@plus2\jsc@mpt \@minus3\jsc@mpt
  \abovedisplayshortskip  \z@ \@plus2\jsc@mpt
  \belowdisplayskip \abovedisplayskip
  \belowdisplayshortskip \belowdisplayskip
  \def\@listi{\leftmargin\leftmargini
              \topsep \z@
              \parsep \z@
              \itemsep \parsep}}
\newcommand{\scriptsize}{\jsc@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand{\tiny}{\jsc@setfontsize\tiny\@vpt\@vipt}
\if@twocolumn
  \newcommand{\large}{\jsc@setfontsize\large\@xiipt{\n@baseline}}
\else
  \newcommand{\large}{\jsc@setfontsize\large\@xiipt{17}}
\fi
\newcommand{\Large}{\jsc@setfontsize\Large\@xivpt{21}}
\newcommand{\LARGE}{\jsc@setfontsize\LARGE\@xviipt{25}}
\newcommand{\huge}{\jsc@setfontsize\huge\@xxpt{28}}
\newcommand{\Huge}{\jsc@setfontsize\Huge\@xxvpt{33}}
\newcommand{\HUGE}{\jsc@setfontsize\HUGE{30}{40}}
\everydisplay=\expandafter{\the\everydisplay \narrowbaselines}
\newcommand{\headfont}{\gtfamily\sffamily}
\setlength\columnsep{2\zw}
\setlength\columnseprule{\z@}
\setlength\lineskip{1\jsc@mpt}
\setlength\normallineskip{1\jsc@mpt}
\setlength\lineskiplimit{1\jsc@mpt}
\setlength\normallineskiplimit{1\jsc@mpt}
\renewcommand{\baselinestretch}{}
\setlength\parskip{\z@}
\if@slide
  \setlength\parindent{0\zw}
\else
  \setlength\parindent{1\zw}
\fi
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\topskip{1.38\zw}%% from 10\jsc@mpt (2016-08-17)
\if@slide
  \setlength\headheight{0\jsc@mpt}
\else
  \setlength\headheight{20\jsc@mpt}%% from 2\topskip (2016-08-17); from \topskip (2003-06-26)
\fi
\setlength\footskip{9\jsc@mmm}
\setlength\headsep{9\jsc@mmm}
\addtolength\headsep{-\topskip}
\setlength\maxdepth{.5\topskip}
\newdimen\fullwidth
\setlength\fullwidth{50\zw}
\addtolength\fullwidth{8\jsc@mmm}
\setlength\textwidth{\fullwidth}
\setlength{\textheight}{51\baselineskip}
\addtolength{\textheight}{\topskip}
\addtolength{\textheight}{0.1\jsc@mpt}
\setlength{\mathindent}{10\jsc@mmm}
\def\flushbottom{%
  \def\@textbottom{\vskip \z@ \@plus.1\jsc@mpt}%
  \let\@texttop\relax}
\setlength\marginparsep{\columnsep}
\setlength\marginparpush{\baselineskip}
\setlength{\oddsidemargin}{\paperwidth}
\addtolength{\oddsidemargin}{-\fullwidth}
\setlength{\oddsidemargin}{.5\oddsidemargin}
\iftombow
  \addtolength{\oddsidemargin}{-1in}
\else
  \addtolength{\oddsidemargin}{-\inv@mag in}
\fi
\setlength{\evensidemargin}{\oddsidemargin}
\if@mparswitch
  \addtolength{\evensidemargin}{\fullwidth}
  \addtolength{\evensidemargin}{-\textwidth}
\fi
\setlength\marginparwidth{\paperwidth}
\addtolength\marginparwidth{-\oddsidemargin}
\addtolength\marginparwidth{-\inv@mag in}
\addtolength\marginparwidth{-\textwidth}
\addtolength\marginparwidth{-10\jsc@mmm}
\addtolength\marginparwidth{-\marginparsep}
\@tempdima=1\zw
\divide\marginparwidth\@tempdima
\multiply\marginparwidth\@tempdima
\setlength\topmargin{\paperheight}
\addtolength\topmargin{-\textheight}
\if@slide
  \addtolength\topmargin{-\headheight}
\else
  \addtolength\topmargin{-10\jsc@mpt}%% from -\topskip (2016-10-08); from -\headheight (2003-06-26)
\fi
\addtolength\topmargin{-\headsep}
\addtolength\topmargin{-\footskip}
\setlength\topmargin{0.5\topmargin}
\iftombow
  \addtolength\topmargin{-1in}
\else
  \addtolength\topmargin{-\inv@mag in}
\fi
{\footnotesize\global\setlength\footnotesep{\baselineskip}}
\setlength\footnotesep{0.7\footnotesep}
\setlength{\skip\footins}{16\jsc@mpt \@plus 5\jsc@mpt \@minus 2\jsc@mpt}
\setcounter{topnumber}{9}
\renewcommand{\topfraction}{.85}
\setcounter{bottomnumber}{9}
\renewcommand{\bottomfraction}{.8}
\setcounter{totalnumber}{20}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.8}
\setcounter{dbltopnumber}{9}
\renewcommand{\dbltopfraction}{.8}
\renewcommand{\dblfloatpagefraction}{.8}
\setlength\floatsep    {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\textfloatsep{20\jsc@mpt \@plus 2\jsc@mpt \@minus 4\jsc@mpt}
\setlength\intextsep   {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\dblfloatsep    {12\jsc@mpt \@plus 2\jsc@mpt \@minus 2\jsc@mpt}
\setlength\dbltextfloatsep{20\jsc@mpt \@plus 2\jsc@mpt \@minus 4\jsc@mpt}
\setlength\@fptop{0\jsc@mpt \@plus 1fil}
\setlength\@fpsep{8\jsc@mpt \@plus 2fil}
\setlength\@fpbot{0\jsc@mpt \@plus 1fil}
\setlength\@dblfptop{0\jsc@mpt \@plus 1fil}
\setlength\@dblfpsep{8\jsc@mpt \@plus 2fil}
\setlength\@dblfpbot{0\jsc@mpt \@plus 1fil}
\def\ps@plainfoot{%
  \let\@mkboth\@gobbletwo
  \let\@oddhead\@empty
  \def\@oddfoot{\normalfont\hfil\thepage\hfil}%
  \let\@evenhead\@empty
  \let\@evenfoot\@oddfoot}
\def\ps@plainhead{%
  \let\@mkboth\@gobbletwo
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi
    \hbox to \fullwidth{\textbf{\thepage}\hfil}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{%
    \hbox to \fullwidth{\hfil\textbf{\thepage}}\hss}}
\let\ps@plain\ps@plainfoot
\def\ps@headings{%
  \def\@oddfoot{\normalfont\hfil\thepage\hfil}
  \def\@evenfoot{\normalfont\hfil\thepage\hfil}
  \def\@oddhead{\normalfont\hfil \@title \hfil}
  \def\@evenhead{\normalfont\hfil プラズマ・核融合学会誌\hfil}}
\def\ps@myheadings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{%
    \if@mparswitch \hss \fi%
    \hbox to \fullwidth{\thepage\hfil\leftmark}%
    \if@mparswitch\else \hss \fi}%
  \def\@oddhead{%
    \hbox to \fullwidth{\rightmark\hfil\thepage}\hss}%
  \let\@mkboth\@gobbletwo
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble
}
\newcommand*{\etitle}[1]{\gdef\@etitle{#1}}
\newcommand*{\eauthor}[1]{\gdef\@eauthor{#1}}
\newcommand*{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\email}[1]{\gdef\authors@mail{#1}}
\newcommand*{\AuthorsEmail}[1]{\gdef\authors@mail{author's e-mail:\ #1}}
\def\plainifnotempty{%
  \ifx \@oddhead \@empty
    \ifx \@oddfoot \@empty
    \else
      \thispagestyle{plainfoot}%
    \fi
  \else
    \thispagestyle{plainhead}%
  \fi}
\newcommand{\maketitle}{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\advance\leftskip 3\zw
      \parindent 1\zw\noindent
      \llap{\@textsuperscript{\normalfont\@thefnmark}\hskip0.3\zw}##1}%
      \twocolumn[\@maketitle]%
    \plainifnotempty
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \ifx\authors@mail\@undefined\else{%
    \def\@makefntext{\advance\leftskip 3\zw \parindent -3\zw}%
    \footnotetext[0]{\itshape\authors@mail}%
  }\fi
  \global\let\authors@mail\@undefined}
\def\@maketitle{%
  \newpage\null
  \vskip 6em % used to be 2em
  \begin{center}
    \let\footnote\thanks
    \ifx\@title\@undefined\else{\LARGE\headfont\@title\par}\fi
    \lineskip .5em
    \ifx\@author\@undefined\else
      \vskip 1em
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par
    \fi
    \ifx\@etitle\@undefined\else
      \vskip 1em
      {\large \@etitle \par}%
    \fi
    \ifx\@eauthor\@undefined\else
      \vskip 1em
      \begin{tabular}[t]{c}%
        \@eauthor
      \end{tabular}\par
    \fi
    \vskip 1em
    \@date
  \end{center}
  \vskip 1.5em
  \centerline{\box\@abstractbox}
  \ifx\@keywords\@undefined\else
    \vskip 1.5em
    \centerline{\parbox{157\jsc@mmm}{\textsf{Keywords:}\\ \small\@keywords}}
  \fi
  \vskip 1.5em}
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \if@english \@afterindentfalse \else \@afterindenttrue \fi
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty
    \ifdim \@tempskipa >\z@
      \if@slide\else
        \null
        \vspace*{-\baselineskip}%
      \fi
      \vskip\@tempskipa
    \fi
  \fi
  \noindent
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa<\z@
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}% 目次にフルネームを載せるなら #8
  \else
    \begingroup
      \interlinepenalty \@M % 下から移動
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
        #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}% 目次にフルネームを載せるならここは #8
  \fi
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa<\z@
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
      \fi
    }%
  \else
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \fi
  \if@slide
    {\vskip\if@twocolumn-5\jsc@mpt\else-6\jsc@mpt\fi
     \maybeblue\hrule height0\jsc@mpt depth1\jsc@mpt
     \vskip\if@twocolumn 4\jsc@mpt\else 7\jsc@mpt\fi\relax}%
  \fi
  \par  % 2000-12-18
  \ignorespaces}
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa<\z@
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \else
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \fi
  \@xsect{#3}}
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand{\thepart}{\@Roman\c@part}
% \renewcommand{\thesection}{\@arabic\c@section}
\renewcommand{\thesection}{\presectionname\@arabic\c@section\postsectionname}
\renewcommand{\thesubsection}{\@arabic\c@section.\@arabic\c@subsection}
\renewcommand{\thesubsubsection}{%
   \thesubsection.\@arabic\c@subsubsection}
\renewcommand{\theparagraph}{%
   \thesubsubsection.\@arabic\c@paragraph}
\renewcommand{\thesubparagraph}{%
   \theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
  \if@noskipsec \leavevmode \fi
  \par
  \addvspace{4ex}%
  \if@english \@afterindentfalse \else \@afterindenttrue \fi
  \secdef\@part\@spart}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{%
      \prepartname\thepart\postpartname\hspace{1\zw}#1}%
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  {\parindent\z@
    \raggedright
    \interlinepenalty \@M
    \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \Large\headfont\prepartname\thepart\postpartname
      \par\nobreak
    \fi
    \huge \headfont #2%
    \markboth{}{}\par}%
  \nobreak
  \vskip 3ex
  \@afterheading}
\def\@spart#1{{%
    \parindent \z@ \raggedright
    \interlinepenalty \@M
    \normalfont
    \huge \headfont #1\par}%
  \nobreak
  \vskip 3ex
  \@afterheading}
\if@twocolumn
  \newcommand{\section}{%
\ifx\maketitle\relax\else\maketitle\fi
    \@startsection{section}{1}{\z@}%
    {0.6\Cvs}{0.4\Cvs}%
    {\normalfont\large\headfont\raggedright}}
\else
  \newcommand{\section}{%
    \if@slide\clearpage\fi
    \@startsection{section}{1}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
    {.5\Cvs \@plus.3\Cdp}% 後アキ
    {\normalfont\Large\headfont\raggedright}}
\fi
\if@twocolumn
  \newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {\z@}{\if@slide .4\Cvs \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
    {.5\Cvs \@plus.3\Cdp}% 後アキ
    {\normalfont\large\headfont}}
\fi
\if@twocolumn
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\z@}{\if@slide .4\Cvs \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {\if@slide .5\Cvs \@plus.3\Cdp \else \z@ \fi}%
    {\normalfont\normalsize\headfont}}
\fi
\if@twocolumn
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {\z@}{\if@slide .4\Cvs \else -1\zw\fi}% 改行せず 1zw のアキ
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
    {0.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
    {\if@slide .5\Cvs \@plus.3\Cdp \else -1\zw\fi}% 改行せず 1zw のアキ
    {\normalfont\normalsize\headfont}}
\fi
\if@twocolumn
  \newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
    {\z@}{\if@slide .4\Cvs \@plus.3\Cdp \else -1\zw\fi}%
    {\normalfont\normalsize\headfont}}
\else
  \newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
    {\z@}{\if@slide .5\Cvs \@plus.3\Cdp \else -1\zw\fi}%
    {\normalfont\normalsize\headfont}}
\fi
\if@slide
  \setlength\leftmargini{1\zw}
\else
  \if@twocolumn
    \setlength\leftmargini{2\zw}
  \else
    \setlength\leftmargini{3\zw}
  \fi
\fi
\if@slide
  \setlength\leftmarginii {1\zw}
  \setlength\leftmarginiii{1\zw}
  \setlength\leftmarginiv {1\zw}
  \setlength\leftmarginv  {1\zw}
  \setlength\leftmarginvi {1\zw}
\else
  \setlength\leftmarginii {2\zw}
  \setlength\leftmarginiii{2\zw}
  \setlength\leftmarginiv {2\zw}
  \setlength\leftmarginv  {1\zw}
  \setlength\leftmarginvi {1\zw}
\fi
\setlength  \labelsep  {0.5\zw} % .5em
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\partopsep{\z@} % {2\p@ \@plus 1\p@ \@minus 1\p@}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listi{\leftmargin\leftmargini
  \parsep \z@
  \topsep 0.5\baselineskip
  \itemsep \z@ \relax}
\let\@listI\@listi
\@listi
\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii \advance\labelwidth-\labelsep
  \topsep \z@
  \parsep \z@
  \itemsep\parsep}
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii \advance\labelwidth-\labelsep
  \topsep \z@
  \parsep \z@
  \itemsep\parsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\renewcommand{\theenumi}{\@arabic\c@enumi}
\renewcommand{\theenumii}{\@alph\c@enumii}
\renewcommand{\theenumiii}{\@roman\c@enumiii}
\renewcommand{\theenumiv}{\@Alph\c@enumiv}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{\inhibitglue （\theenumii ）\inhibitglue}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi\inhibitglue （\theenumii ）}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}{%
  \list{}{%
    \labelwidth=\leftmargin
    \labelsep=1\zw
    \advance \labelwidth by -\labelsep
    \let \makelabel=\descriptionlabel}}{\endlist}
\newcommand*\descriptionlabel[1]{\normalfont\headfont #1\hfil}
\newbox\@abstractbox
\newenvironment{abstract}{%
  \global\setbox\@abstractbox\hbox\bgroup
  \begin{minipage}[b]{157\jsc@mmm}{\sffamily Abstract}\par
    \small
    \if@english \parindent6\jsc@mmm \else \parindent1\zw \fi}%
  {\end{minipage}\egroup}
\newenvironment{verse}{%
  \let \\=\@centercr
  \list{}{%
    \itemsep \z@
    \itemindent -2\zw % 元: -1.5em
    \listparindent\itemindent
    \rightmargin \z@
    \advance\leftmargin 2\zw}% 元: 1.5em
  \item\relax}{\endlist}
\newenvironment{quotation}{%
  \list{}{%
    \listparindent\parindent
    \itemindent\listparindent
    \rightmargin \z@}%
  \item\relax}{\endlist}
\newenvironment{quote}%
  {\list{}{\rightmargin\z@}\item\relax}{\endlist}
\def\@begintheorem#1#2{\trivlist\labelsep=1\zw
   \item[\hskip \labelsep{\headfont #1\ #2}]}
\def\@opargbegintheorem#1#2#3{\trivlist\labelsep=1\zw
      \item[\hskip \labelsep{\headfont #1\ #2（#3）}]}
\newenvironment{titlepage}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}%
    \ifodd\c@page\setcounter{page}\@ne\else\setcounter{page}\z@\fi %% 2017-02-24
  }%
  {\if@restonecol\twocolumn \else \newpage \fi
    \if@twoside\else
      \setcounter{page}\@ne
    \fi}
\newcommand{\appendix}{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\presectionname{\appendixname}%
  \gdef\postsectionname{}%
  \gdef\thesection{\presectionname\@Alph\c@section\postsectionname}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}}
\setlength\arraycolsep{5\jsc@mpt}
\setlength\tabcolsep{6\jsc@mpt}
\setlength\arrayrulewidth{.4\jsc@mpt}
\setlength\doublerulesep{2\jsc@mpt}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\jsc@mpt}
\setlength\fboxrule{.4\jsc@mpt}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreak\thefigure}
\newenvironment{figure}%
               {\@float{figure}}%
               {\end@float}
\newenvironment{figure*}%
               {\@dblfloat{figure}}%
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreak\thetable}
\newenvironment{table}%
               {\@float{table}}%
               {\end@float}
\newenvironment{table*}%
               {\@dblfloat{table}}%
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{5\jsc@mpt} % 元: 10\p@
\setlength\belowcaptionskip{5\jsc@mpt} % 元: 0\p@
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small\sffamily #1\quad #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\small\sffamily
      \list{#1}{%
        \renewcommand{\makelabel}[1]{##1\hfil}
        \itemsep    \z@
        \itemindent \z@
        \labelsep   \z@
        \labelwidth 11\jsc@mmm
        \listparindent\z@
        \leftmargin 11\jsc@mmm}\item\relax #2\endlist}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\mathmc}
\DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\mathgt}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newdimen\jsc@tocl@width
\newcommand{\tableofcontents}{%
  \settowidth\jsc@tocl@width{\headfont\presectionname\postsectionname}%
  \settowidth\@tempdima{\headfont\appendixname}%
  \ifdim\jsc@tocl@width<\@tempdima\relax\setlength\jsc@tocl@width{\@tempdima}\fi
  \ifdim\jsc@tocl@width<2\zw \divide\jsc@tocl@width by 2 \advance\jsc@tocl@width 1\zw\fi
  \section*{\contentsname}%
  \@mkboth{\contentsname}{\contentsname}%
  \@starttoc{toc}%
}
\newcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\jsc@mpt}%
    \begingroup
      \parindent \z@
      \rightskip \@tocrmarg
      \parfillskip -\rightskip
      {\leavevmode
        \large \headfont
        \setlength\@lnumwidth{4\zw}%
        #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
      \nobreak
    \endgroup
  \fi}
\newcommand*{\l@section}[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}%
    \addvspace{1.0em \@plus\jsc@mpt}%
    \begingroup
      \parindent\z@
      \rightskip\@tocrmarg
      \parfillskip-\rightskip
      \leavevmode\headfont
      %\setlength\@lnumwidth{4\zw}% 元1.5em [2003-03-02]
      \setlength\@lnumwidth{\jsc@tocl@width}\advance\@lnumwidth 2\zw
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
    \endgroup
  \fi}
\newcommand*{\l@subsection}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima -1\zw
          \@dottedtocline{2}{\@tempdima}{3\zw}}
\newcommand*{\l@subsubsection}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 0\zw
          \@dottedtocline{3}{\@tempdima}{4\zw}}
\newcommand*{\l@paragraph}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 1\zw
          \@dottedtocline{4}{\@tempdima}{5\zw}}
\newcommand*{\l@subparagraph}{%
          \@tempdima\jsc@tocl@width \advance\@tempdima 2\zw
          \@dottedtocline{5}{\@tempdima}{6\zw}}
\newdimen\@lnumwidth
\def\numberline#1{\hb@xt@\@lnumwidth{#1\hfil}\hspace{0pt}}
\def\jsTocLine{\leaders\hbox{%
  $\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill}
\def\@dottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth \else
  \vskip \z@ \@plus.2\jsc@mpt
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode
   \@lnumwidth #3\relax
   \advance\leftskip \@lnumwidth \null\nobreak\hskip -\leftskip
    {#4}\nobreak
    \jsTocLine \nobreak\hb@xt@\@pnumwidth{%
         \hfil\normalfont \normalcolor #5}\par}\fi}
\newcommand{\listoffigures}{%
  \section*{\listfigurename}%
  \@mkboth{\listfigurename}{\listfigurename}%
  \@starttoc{lof}%
}
\newcommand*{\l@figure}{\@dottedtocline{1}{1\zw}{3.683\zw}}
\newcommand{\listoftables}{%
  \section*{\listtablename}%
  \@mkboth{\listtablename}{\listtablename}%
  \@starttoc{lot}%
}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{2\zw}
\newenvironment{thebibliography}[1]{%
  \global\let\presectionname\relax
  \global\let\postsectionname\relax
  \section*{\refname}\@mkboth{\refname}{\refname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\newcommand{\newblock}{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}{% 索引を3段組で出力する環境
    \if@twocolumn
      \onecolumn\@restonecolfalse
    \else
      \clearpage\@restonecoltrue
    \fi
    \columnseprule.4pt \columnsep 2\zw
    \ifx\multicols\@undefined
      \def\presectionname{}\def\postsectionname{}%
      \twocolumn[\section*{\indexname}]%
    \else
      \ifdim\textwidth<\fullwidth
        \setlength{\evensidemargin}{\oddsidemargin}
        \setlength{\textwidth}{\fullwidth}
        \setlength{\linewidth}{\fullwidth}
        \def\presectionname{}\def\postsectionname{}%
        \begin{multicols}{3}[\section*{\indexname}]%
      \else
        \def\presectionname{}\def\postsectionname{}%
        \begin{multicols}{2}[\section*{\indexname}]%
      \fi
    \fi
    \@mkboth{\indexname}{\indexname}%
    \plainifnotempty % \thispagestyle{plain}
    \parindent\z@
    \parskip\z@ \@plus .3\jsc@mpt\relax
    \let\item\@idxitem
    \raggedright
    \footnotesize\narrowbaselines
  }{
    \ifx\multicols\@undefined
      \if@restonecol\onecolumn\fi
    \else
      \end{multicols}
    \fi
    \clearpage
  }
\newcommand{\@idxitem}{\par\hangindent 4\zw} % 元 40pt
\newcommand{\subitem}{\@idxitem \hspace*{2\zw}} % 元 20pt
\newcommand{\subsubitem}{\@idxitem \hspace*{3\zw}} % 元 30pt
\newcommand{\indexspace}{\par \vskip 10\jsc@mpt \@plus5\jsc@mpt \@minus3\jsc@mpt\relax}
\newcommand\seename{\if@english see\else →\fi}
\newcommand\alsoname{\if@english see also\else →\fi}
\def\thefootnote{\ifnum\c@footnote>\z@\leavevmode\lower.5ex\hbox{*}\@arabic\c@footnote\fi}
\renewcommand{\footnoterule}{%
  \kern-3\jsc@mpt
  \hrule width .4\columnwidth height 0.4\jsc@mpt
  \kern 2.6\jsc@mpt}
\long\def\@footnotetext{%
  \insert\footins\bgroup
    \normalfont\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces}%
      \futurelet\jsc@next\jsc@fo@t}
\def\jsc@fo@t{\ifcat\bgroup\noexpand\jsc@next \let\jsc@next\jsc@f@@t
                                \else \let\jsc@next\jsc@f@t\fi \jsc@next}
\def\jsc@f@@t{\bgroup\aftergroup\jsc@@foot\let\jsc@next}
\def\jsc@f@t#1{#1\jsc@@foot}
\def\jsc@@foot{\@finalstrut\strutbox\color@endgroup\egroup
  \ifx\pltx@foot@penalty\@undefined\else
    \ifhmode\null\fi
    \ifnum\pltx@foot@penalty=\z@\else
      \penalty\pltx@foot@penalty
      \pltx@foot@penalty\z@
    \fi
  \fi}
\newcommand\@makefntext[1]{%
  \advance\leftskip 3\zw
  \parindent 1\zw
  \noindent
  \llap{\@makefnmark\hskip0.3\zw}#1}
\if@jslogo
  \IfFileExists{jslogo.sty}{%
    \RequirePackage{jslogo}%
    \def\小{\jslg@small}%
    \def\上小{\jslg@uppersmall}%
  }{%
    \ClassWarningNoLine{\jsc@clsname}{%
      The redefinitions of LaTeX-related logos has\MessageBreak
      been moved to jslogo.sty since 2016, but\MessageBreak
      jslogo.sty not found. Current release of\MessageBreak
      'jsclasses' includes it, so please check\MessageBreak
      the installation}%
  }
\fi
\newcommand{\prepartname}{\if@english Part~\else 第\fi}
\newcommand{\postpartname}{\if@english\else 部\fi}
\newcommand{\presectionname}{}%  第
\newcommand{\postsectionname}{}% 節
\newcommand{\contentsname}{\if@english Contents\else 目次\fi}
\newcommand{\listfigurename}{\if@english List of Figures\else 図目次\fi}
\newcommand{\listtablename}{\if@english List of Tables\else 表目次\fi}
\newcommand{\refname}{\if@english References\else 参考文献\fi}
\newcommand{\bibname}{\if@english Bibliography\else 参考文献\fi}
\newcommand{\indexname}{\if@english Index\else 索引\fi}
\newcommand{\figurename}{Fig.~}
\newcommand{\tablename}{Table~}
\newcommand{\appendixname}{\if@english \else 付録\fi}
\newcommand{\abstractname}{\if@english Abstract\else 概要\fi}
\newif\if西暦 \西暦true
\def\西暦{\西暦true}
\def\和暦{\西暦false}
\newcount\heisei \heisei\year \advance\heisei-1988\relax
\def\pltx@today@year@#1{%
  \ifnum\numexpr\year-#1=1 元\else
    \ifnum1=\IfDirectionTateTF{1}{0}%
      \tokansuji{\year-#1}%
    \else
      \number\numexpr\year-#1\relax\nobreak
    \fi
  \fi 年
}
\def\pltx@today@year{%
  \ifnum\numexpr\year*10000+\month*100+\day<19890108
    昭和\pltx@today@year@{1925}%
  \else\ifnum\numexpr\year*10000+\month*100+\day<20190501
    平成\pltx@today@year@{1988}%
  \else
    令和\pltx@today@year@{2018}%
  \fi\fi}
\def\today{%
  \if@english
    \ifcase\month\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      \space\number\day, \number\year
  \else\if西暦
    \ifnum1=\IfDirectionTateTF{1}{0}\tokansuji{\year}
    \else\number\year\nobreak\fi 年
  \else
    \pltx@today@year
  \fi
  \ifnum1=\IfDirectionTateTF{1}{0}%
    \tokansuji{\month}月
    \tokansuji{\day}日
  \else
    \number\month\nobreak 月
    \number\day\nobreak 日
  \fi\fi}
\hyphenation{ado-be post-script ghost-script phe-nom-e-no-log-i-cal man-u-script}
\pagestyle{headings}
\pagenumbering{arabic}
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
  \raggedbottom
\fi
\if@slide
  \renewcommand\kanjifamilydefault{\gtdefault}
  \renewcommand\familydefault{\sfdefault}
  \raggedright
  \setxkanjiskip{0.1em}
\fi
\endinput
%%
%% End of file `xltjspf.cls'.
