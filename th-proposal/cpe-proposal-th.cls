
%%%%%%%%%%%%%%%%%%%%%%%%%% DOC CLASS INFO %%%%%%%%%%%%%%%%%%%%%%%%%%%
%: Filename: cpe-proposal-th.cls
%: Version: June 2024
%: Contributors:
%: - Peerapon Siripongwutikorn, CPE, 2016
%: - Wuttipat Chokananatasab, FIBO, 2016
%: - Thanin Srithai, CPE, 2021
%: - Jatetanan Kanchanawat, CPE, 2023
%:
%: This is a LaTeX class file for a project report and thesis at CPE, KMUTT.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%: Instruction
%: Your dissertation should be structured the following way:
%: \maketitlepage, \makecopyrightpage, \makesignaturepage,
%: \abstract{}, \preface{}, \tableofcontents, \listoftables, \listoffigures,
%: \chapter{},....., \appendix{},.....,
%: \thebibliography (or \bibliography{} with BiBTeX), \theindex
%:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%% Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpe-proposal-th}[2016/05/30 CPE KMUTT Thesis Template (TH)]
\typeout{https://github.com/jate-koh}
\LoadClass{report}

%%%%%%%%%%%%%%%%%%%%%%%% Packages Setup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%: # Logics
\usepackage{ifthen}
\usepackage{xstring}

%: # Loggings
\let\Err=\errmessage

%: # Report elements
%: NOTE: Use the option pdftex instead of dvips if you use pdflatex
\usepackage[
  left=4cm,
  top=3cm,
  right=2cm,
  bottom=2cm
]{geometry}
\usepackage{lmodern}
\usepackage{listings}
\usepackage{graphicx}
\usepackage{array}
\usepackage{subfig}
\usepackage{caption}

%: # Fonts, typography
\usepackage{mathspec}
\usepackage[no-math]{fontspec}
\usepackage{amsfonts,amsmath}
\usepackage{xunicode,xltxtra}

%: # Links, hyperlinks, reference
\usepackage{url}
\usepackage{hyperref}
\usepackage{cleveref}

%%%%%%%%%%%%%%%%%%% Definitions of major strings %%%%%%%%%%%%%%%%%%%%

%: # Cover language
\def\coverlang{Thai}

%: # Fulfillment
%: Subject or degree
\def\fulfillment{Degree}

%: # Work type
\def\worktype{Project}
\def\thaiworktype{ปริญญานิพนธ์}

%: # Institutes
\def\fieldofstudy{Potions}
\def\department{N.E.W.Ts School}
\def\faculty{N.E.W.Ts}
\def\institute{Hogwarts}
\def\program{N.E.W.Ts Potions}
\def\thaifieldofstudy{ศาสตร์การปรุงยา}
\def\thaidepartment{ภาควิชาเวทยศาสตร์ขั้นสูง}
\def\thaiinstitute{โรงเรียนฮอกวอร์ต}
\def\thaiprogram{N.E.W.Ts ศาสตร์ปรุงยา}

%: # Titles
\def\disstitleone{CPE}                          % 1st line of TITLE of dissertation
\def\disstitletwo{Cooking Potion}               % 2nd line of TITLE if needed
\def\disstitlethree{Engineering}                % 3rd line of TITLE if needed
\def\disstitlefour{}                            % 4th line of TITLE if needed
\def\thaidisstitleone{CPE}
\def\thaidisstitletwo{วิศวกรรมการปรุงยา}
\def\thaidisstitlethree{}
\def\thaidisstitlefour{}

%: # Authors
\def\dissauthor{Harry J. Potter}                % First author
\def\dissauthortwo{Hermione J. Granger}         % Second author
\def\dissauthorthree{Ronald A. Weasley}         % Third author
\def\thaidissauthor{แฮร์รี่ เจมส์ พอตเตอร์}
\def\thaidissauthortwo{เฮอร์ไมโอนี่ จีนส์ เกรนเจอร์}
\def\thaidissauthorthree{โรนัลด์ อาร์เธอร์ วีสลีย์}

%: # List of diploma (No need to fill these if you're still studying Bachelor's)
\def\dissdiplomaone{O.W.Ls Dark Arts}           % First author's diploma
\def\dissdiplomatwo{O.W.Ls Potions}             % Second author's diploma
\def\dissdiplomathree{O.W.Ls Muggle Studies}    % Third author's diploma
\def\thaidissdiplomaone{}
\def\thaidissdiplomatwo{}
\def\thaidissdiplomathree{}

%: # Academic year
\def\dissyear{1998}                             % Year of submission
\def\thaidissyear{2541}

%: # Subject details
\def\disssubjectcode{N.E.W.Ts POTION 334}       % Subject code
\def\disssubjectname{Advanced Potions I}        % Subject name
\def\disssubjectteacher{Prof. Severus Snape}    % Subject instructor
\def\thaidisssubjectname{การปรุงยาขั้นสูง 1}        % Subject name
\def\thaidisssubjectteacher{ศ. เซเวอร์รัส สเนป}   % Subject instructor

%: # Degree details
\def\dissdegree{Mages of Philosophy}            % Name of the degree
\def\dissdegreeabrev{Ph.D.}                     % Abbreviation of the degree
\def\dissdefensedate{June 1 1998}               % Date of defense
\def\thaidissdegree{เวทยศาสตร์ดุษฎีบัณฑิต}
\def\thaidissdegreeabrev{วศ.ด.}

%: # Committee
\def\dissadvisor{Prof. Minerva McGonagall}      % Advisor
\def\disscoadvisor{Prof. Filius Flitwick}       % 1st Co-advisor
\def\disscoadvisortwo{}                         % 2nd Co-advisor
\def\disscommitteechair{}                       % Chair committee
\def\disscommitteetwo{Prof. Albus Dumbledore}   % Committee member
\def\disscommitteethree{}                       % Committee member
\def\disscommitteefour{}                        % Committee member
\def\thaidissadvisor{}
\def\disscoadvisor{ศ. ฟิลเลียส ฟลิตวิกค์}
\def\thaidisscommitteechair{}
\def\thaidisscoadvisortwo{ศ. อัลบัส ดัมเบิ้ลดอร์}
\def\thaidisscommitteetwo{}
\def\thaidisscommitteethree{}
\def\thaidisscommitteefour{}

%: # Proposal details
\def\projgroupnum{666}
\def\projtitle{The Effect of Polyjuice Potion on Muggle Metamorphosis}
\def\projdescription{%
  This is a project report for the subject of Potions. We planned to investigate the effect of Polyjuice Potion on Muggle metamorphosis.
  Exploring various aspects of the potion, we will analyze the results and discuss the implications of our findings.
}%
\def\thaiprojtitle{ผลของน้ำยาเปลี่ยนร่างต่อการเปลี่ยนร่างของมักเกิล}
\def\thaiprojdescription{%
  โครงงานสำหรับวิชาการปรุงยา ซึ่งเราได้วางแผนที่จะศึกษาผลของน้ำยาเปลี่ยนร่างต่อการเปลี่ยนร่างของมักเกิล
  สำรวจส่วนประกอบต่าง ๆ ของน้ำยา และวิเคราะห์ผลลัพธ์ที่ได้ และพิจารณาผลกระทบจากการค้นพบของเรา
}
\def\projauthoroneid{19910119}
\def\projauthortwoid{19910102}
\def\projauthorthreeid{19910121}
\def\projauthoroneemail{harry.pott@mail.hogwarts.scot}
\def\projauthortwoemail{hermione.gran@mail.hogwarts.scot}
\def\projauthorthreeemail{ronald.weasel@mail.hogwarts.scot}


%%%%%%%%%%%%%%%%%% Dissertation Definitions %%%%%%%%%%%%%%%%%%%%%%%%%
%: Modifications for single spacing and indentation
%: style file for dissertations at the University of California
%: By Ethan V. Munson
\def\ssp{\def\baselinestretch{1.0}\large\normalsize}
\def\dsp{\def\baselinestretch{1.37}\large\normalsize}
\newif\ifdraftmode \draftmodefalse
\ifdim \overfullrule > 0pt \draftmodetrue \ssp \else \dsp \fi %: if on draft mode
\def\truebaselineskip{\baselineskip}
\def\baselineskipxii{16pt}
\def\baselineskipxi{16pt}  %: for title and signature page
\def\emptyline#1{\vspace*{#1\baselineskip}}
\newif\iffirstappendix \firstappendixtrue
\newif\iffirstchapter \firstchaptertrue
\def\tocprefix{}
\newif\ifprelude \preludetrue
\newif\ifromanmode \romanmodetrue \pagenumbering{roman}
\def\setarabic{\ifromanmode \romanmodefalse \pagenumbering{arabic} \fi}
\setcounter{secnumdepth}{5}
\topmargin -0.8cm \oddsidemargin 0.5 in
\textheight 24.69cm \advance\textheight by \topskip \textwidth 6.0truein
\footskip 30pt \footnotesep 7.7pt
\headheight 12 truept \headsep 25 truept
\onecolumn \parindent 0em
\if@twoside\else\raggedbottom\fi
\widowpenalty=10000 \clubpenalty=10000 \looseness=1

%: Redefinition of main dissertation divisions
%: In compliance with KMUTT thesis regulations
%: By Peerapon Siripongwutikorn
\def\smallssp{\def\baselinestretch{1.0}\large\small}
\def\scriptsizessp{\def\baselinestretch{1.0}\large\scriptsize}
%\def\tabular{\par\ssp\let\@halignto\@empty\@tabular}
%\expandafter \def\csname tabular*\endcsname #1{\par\ssp\def\@halignto{to#1}\@tabular}
\def\smalltabular{\par\smallssp\let\@halignto\@empty\@tabular}
\def\endsmalltabular{\endtabular}
\expandafter \def\csname smalltabular*\endcsname #1{\par\smallssp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endsmalltabular*\endcsname = \endtabular
\def\scriptsizetabular{\par\scriptsizessp\let\@halignto\@empty\@tabular}
\def\endscriptsizetabular{\endtabular}
\expandafter \def\csname scriptsizetabular*\endcsname #1{\par\scriptsizessp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endscriptsizetabular*\endcsname = \endtabular
\long\def\@footnotetext#1{\insert\footins{\ssp\reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty\splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM \hsize\columnwidth \@parboxrestore
    \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces #1\strut}}}
\def\@startsection#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
  \par \@tempskipa #4\relax \@afterindenttrue
  \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \relax\fi
  \if@nobreak \everypar{}\else
    \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
  {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}

%: # Page styling
\def\ps@plain{\let\@mkboth\markboth\def\@oddfoot{}\def\@evenfoot{}
  \def\@oddhead{\hbox{}\hfil\rm\thepage} \def\@evenhead{\rm\thepage\hfil\hbox{}}}
\def\ps@plainbottom{\let\@mkboth\markboth\def\@oddhead{}\def\@evenhead{}
  \def\@oddfoot{\hfil\rm\thepage\hfil} \def\@evenfoot{\hfil\rm\thepage\hfil}}
\ps@plainbottom

%: # Element prefixes
\renewcommand{\chaptername}{บทที่}
\def\appendixnames{ภาคผนวก}
\def\fnum@figure{รูปที่~\thefigure}
\def\fnum@table{ตารางที่~\thetable}
\def\fnum@lstlisting{ชุดคำสั่งที่~\thelstlisting}
\crefname{figure}{รูปที่}{รูปที่}
\crefname{table}{ตารางที่}{ตารางที่}
\crefrangeformat{figure}{รูปที่~#3#1#4 - #5#2#6}
\crefrangeformat{table}{ตารางที่~#3#1#4 - #5#2#6}

%: # Typography
\defaultfontfeatures{Scale=1.3,Mapping=tex-text,LetterSpace=0.0}
\newfontfamily\thaifont[Script=Thai,Scale=1.3]{THSarabunNew.ttf}[
  Path=fonts/,
  Extension=.ttf,
  BoldFont=*-Bold,
  ItalicFont=*-Italic,
  BoldItalicFont=*-BoldItalic,
]
\setmainfont[Scale=1.3,LetterSpace=0,WordSpace=1.0,FakeStretch=1.0,Mapping=tex-text]{THSarabunNew.ttf}[
  Path=fonts/,
  Extension=.ttf,
  BoldFont=*-Bold,
  ItalicFont=*-Italic,
  BoldItalicFont=*-BoldItalic,
]

%: # Thai Numbering and Alphabets Sequences
\def\thalph#1{\expandafter\@thalph\csname c@#1\endcsname}
\def\@thalph#1{\ifcase#1\or ก\or ข\or ค\or ง\or จ\or ฉ\else\@ctrerr\fi}
\def\thainum#1{\expandafter\@thainum\csname c@#1\endcsname}
\def\@thainum#1{\ifcase#1\or ๑\or ๒\or ๓\or ๔\or ๕\or ๖\or ๗\or ๘\or ๙\else
    \@ctrerr\fi}

%: # Label Numbering using Arabic numbers
\renewcommand{\labelenumii}{\arabic{enumi}.\arabic{enumii}}
\renewcommand{\labelenumiii}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}}
\renewcommand{\labelenumiv}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.\arabic{enumiv}}


%: # Paragraph skip, indentation length, and line spacing
\setlength{\parindent}{10mm}
\setlength{\parskip}{1ex}
\linespread{1.15}

%: # Report elements referencing styles i.e. hyperref
\urlstyle{same} % Set style to be the same as Thai font solve \url issue with polyglossia
\hypersetup{
  linktocpage,
  colorlinks=true,    % Set true if you want colored links
  % linktoc=all,        % Set to all if you want both sections & subsections linked
  linkcolor=blue,     % Choose some color if you want links to stand out
}

%: # Chapter definition
%: For \chapter{} command
\def\@makechapterhead#1{%\vspace*{.8truein}%
  %  \fontsize{15}{18}{\centering{\bf \MakeUppercase{\@chapapp{}} \thechapter}\hskip 5\p@}%\vskip 20\p@
  %  \fontsize{15}{18}{\centering\MakeUppercase{\bf #1}\par\nobreak\emptyline 2}}
  {\centering\MakeUppercase{\Large\bf \@chapapp{} \thechapter\hskip 5\p@ #1}\par\nobreak\vskip 30\p@ }}
%\def\@makeschapterhead#1{\vspace*{.8truein}%
%  {\centering{\large\bf #1}\par\nobreak\vskip 40\p@ }}

\def\chapter{\clearpage
  %   \ifprelude \pagestyle{plainbottom} \else
  %   \pagestyle{plain}\thispagestyle{plainbottom} \fi
  \global\@topnum\z@ \@afterindenttrue
  \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{\preludefalse\setarabic
  % \pagestyle{plain}\thispagestyle{plainbottom} % added in v2.4
  \pagestyle{plain}\thispagestyle{empty} % No page number in chapter.
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter.}

  %: Put the work CHAPTER in ToC before the first chapter
  % \iffirstchapter
  %   \addcontentsline{toc}{chapterxx}{\mdseries\bf บทที่}
  %   \firstchapterfalse
  % \fi

  %: Add the chapter heading in ToC
  \addcontentsline{toc}{chapter}{\normalsize\bf\MakeUppercase{บทที่ \tocprefix {\protect \numberline{\thechapter}\hskip -0.8em #1}}}
  \chaptermark{#1}

  \addtocontents{lof} {\protect\addvspace{0em}}
  \addtocontents{lot} {\protect\addvspace{0em}}
  \addtocontents{lol} {\protect\addvspace{0em}}
  \pagestyle{plain}\thispagestyle{empty}
  % Must be added after addcontentsline
  % Otherwise, the page number may not show up..
  \@makechapterhead{#2} \@afterheading
}

%: Remove top space from \chapter*{}
%: Chapter heading in the text for \chapter*{}
\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \centering%\raggedright
      \normalfont
      \interlinepenalty\@M
      \large \bfseries #1\par\nobreak
      \vskip 20\p@
    }}
\def\@schapter#1{\@makeschapterhead{#1} \@afterheading}


%: # Section definitions
%: For \section{} command

\renewcommand\section{\@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {0.1ex\@plus.1ex}
  %{2.3ex \@plus.2ex}%
  {\normalfont\fontsize{12}{16.8}\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {0.1ex \@plus .2ex}%
  {\normalfont\fontsize{11}{15.6}\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {0.1ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}

%: # Table/Figure caption definitions
\captionsetup[table]{
  format=hang,
  labelfont=bf,
  position=top,
  labelsep=space,
  justification=justified,
  singlelinecheck=true
}
\captionsetup[figure]{
  format=hang,
  labelfont=bf,
  position=bottom,
  labelsep=space,
  justification=justified,
  singlelinecheck=true
}
\captionsetup[subfloat]{
  format=hang,
  labelfont=bf,
  labelformat=simple,
  labelsep=period,
  justification=justified,
  singlelinecheck=true
  %listofformat=subparens
}
\captionsetup[lstlisting]{
  format=hang,
  labelfont=bf,
  position=top,
  labelsep=space,
  justification=justified,
  singlelinecheck=true,
  skip=10pt
}

% \setlength\belowcaptionskip{10\p@}
% \long\def\@maketablecaption#1#2{
%     \global \@minipagefalse
%     \hbox to \hsize{\parbox[t]{\hsize}{{\bf #1} #2 \vskip 0.5em}}}
% \let\old@floatboxreset\@floatboxreset
% \def\table{%
% \let\@makecaption\@maketablecaption
% %\def\@floatboxreset{%
% % \old@floatboxreset
% % \@tablesize
% %}%
%   \let\footnoterule\relax
%   \let\contcaption\conttablecaption \@float{table}}
% \def\endtable{\end@float}

\setlength\belowcaptionskip{10\p@}
\long\def\@maketablecaption#1#2{\@tablecaptionsize
  \setbox\@tempboxa\hbox{#1. #2}
  \ifdim \wd\@tempboxa >\hsize              % IF longer than one line THEN
    \unhbox\@tempboxa\par                   %   set as justified paragraph
  \else                                     % ELSE
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%   center single line.
  \fi}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bf #1} #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\bf #1} #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%: # Subfigures definitions
%\renewcommand{\subfigtopskip}{10pt}
%\renewcommand{\subfigbottomskip}{-5pt}
%\renewcommand{\subfigcapskip}{-6pt} %vertical space between caption
%                                    %and figure.
%\renewcommand{\subfigcapmargin}{0pt}

%: Use Thai alphabet for subfigure's captions
\renewcommand{\thesubfigure}{\thalph{subfigure}}

%%%%%%%%%%%%%%%%%%% Content line definitions %%%%%%%%%%%%%%%%%%%%%%%%
%: Define how the content lines show up in ToC when using
%: addcontentsline{}{}{}

%: # Normal chapter
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    %\vskip 0.5em \@plus\p@    %% Space between entry in toc
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode %\bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \penalty\@highpenalty
    \endgroup
  \fi}

%: # Special chapter
%: Such as abstract, acknowledgment, ...
%: That have no extra spacing between lines.
\newcommand*\l@chapterx[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.2em \@plus\p@    %% No spacing between lines
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode %\bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \penalty\@highpenalty
    \endgroup
  \fi}

%: # Special chapter with no number
\newcommand*\l@chapterxx[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1em \@plus\p@ % Space between entry
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode %\bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    \bfseries #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss}\par
    \penalty\@highpenalty
    \endgroup \vskip -0.8em
  \fi}

%: # Section content entries
\def\l@section#1#2{\addpenalty{\@secpenalty}    % Page break
  %\addvspace{1.0em plus 1pt}                  % Space above ToC entry
  \addvspace{0.2em}                            % Space above ToC entry
  \@tempdima 1.5em                             % Width of the box holding section number
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  %\sc                                       % Small caps
  \leavevmode                                % TeX command to enter horizontal mode
  \advance\leftskip\@tempdima
  \hskip -\leftskip
  \hskip 1em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  %\hskip 2em #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
  \endgroup}

%: # Subsection content entries
%: Add indentation to subsection in table of contents
\def\l@subsection#1#2{
  %\addvspace{1.0em plus 1pt}                  % Space above ToC entry
  \addvspace{0.2em}                            % Space above ToC entry
  \@tempdima 2em                               % Width of the box holding section number
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  %\sc                                       % Small caps
  \leavevmode                                % TeX command to enter horizontal mode
  \advance\leftskip\@tempdima               % Added 5 Feb 88 to conform to
  \hskip -\leftskip                         % 25 Jan 88 change to \numberline
  \hskip 2.5em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  \endgroup}


%: # Subsubsection content entries
%: Add indentation to subsubsection in table of contents
\def\l@subsubsection#1#2{
  %\addvspace{1.0em plus 1pt}                  % Space above ToC entry
  \addvspace{0.2em}                            % Space above ToC entry
  \@tempdima 3em                               % Width of the box holding section number
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  %\sc                                       % Small caps
  \leavevmode                                % TeX command to enter horizontal mode
  \advance\leftskip\@tempdima               % Added 5 Feb 88 to conform to
  \hskip -\leftskip                         % 25 Jan 88 change to \numberline
  \hskip 4.5em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  \endgroup}

%: # Figure content entries
\def\l@figure#1#2{
  \addpenalty{\@secpenalty}                   % Page break
  %\addvspace{1.0em plus 1pt}                 % Space above ToC entry
  \addvspace{0.2em}                           % Space above ToC entry
  \@tempdima 2em                              % Width of the box holding section number
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  %\sc                                    % Small caps
  \leavevmode                             % TeX command to enter horizontal mode
  \advance\leftskip\@tempdima             % Added 5 Feb 88 to conform to
  \hskip -\leftskip                       % 25 Jan 88 change to \numberline
  \hskip 0em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  %\hskip 2em #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
  \endgroup
}

%: # Table content entries
\let\l@table\l@figure

%: # Code content entries
\let\l@lstlisting\l@figure

%: # Appendix content entries
\def\l@apdx#1#2{\addpenalty{\@secpenalty}       % Good place for page break
  \addvspace{0.2em}                            % Space above toc entry
  \@tempdima 2em                               % Width of box holding section number
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  %\sc                                       % Small caps
  \leavevmode                                % TeX command to enter horizontal mode.
  \advance\leftskip\@tempdima               % Added 5 Feb 88 to conform to
  \hskip -\leftskip                         % 25 Jan 88 change to \numberline
  \hskip 2em #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  \endgroup
}

%%%%%%%%%%%%%%%%%%%% Page
\def\titleempty{}
\def\diplomaempty{}

%: Command for creating signature line
\newcommand{\dotrule}[1]{%
  \parbox[t]{#1}{\dotfill}%
}

%: # Proposal pages (TH)
\def\makeproposalcover{%
  \thispagestyle{empty}\c@page\@ne\baselineskip \baselineskipxii
  {%
    \centering
    \vspace{1cm}
    \makebox{\large \bf{หัวข้อ\thaiworktype}\thaifieldofstudy} \par
    \makebox{\large \bf{หลักสูตร\thaidissdegree~สาขา\thaidepartment}} \par
    \makebox{\large \bf{ปีการศึกษา~\thaidissyear}} \par
    \emptyline 2

    \begin{flushleft}
      \makebox{\bf{ชื่อ\thaiworktype}}: \makebox{\thaiprojtitle} \par
    \end{flushleft}%
    \begin{flushleft}
      \hspace{1cm}\justifying\thaiprojdescription
    \end{flushleft}%

    \begin{flushleft}
      \makebox{\bf{เลขที่กลุ่ม}}: \makebox{\projgroupnum} \par
    \end{flushleft}%
    \emptyline 1

    \begin{flushleft}
      \makebox{\bf{สมาชิกกลุ่ม}}: \par
      \renewcommand{\arraystretch}{1.5}
      \begin{tabular*}{\textwidth}{@{}l@{\extracolsep{0.7cm}}p{0.3\textwidth}p{0.15\textwidth}p{0.55\textwidth}}
        1. & \thaidissauthor & \projauthoroneid & \projauthoroneemail \\
        \ifx \titleempty\thaidissauthortwo \else
          2. & \thaidissauthortwo & \projauthortwoid & \projauthortwoemail \\
        \fi
        \ifx \titleempty\thaidissauthorthree \else
          3. & \thaidissauthorthree & \projauthorthreeid & \projauthorthreeemail \\
        \fi
      \end{tabular*}
    \end{flushleft}
    \emptyline 1
    \begin{flushleft}
      \makebox{\bf{ที่ปรึกษา}}: \par
      \hspace{1cm}\makebox{\thaidissadvisor} \par
      \ifx \titleempty\thaidisscoadvisor \else
      \emptyline 1
      \makebox{\bf{ที่ปรึกษาร่วม}}: \par
      \hspace{1cm}\makebox{\thaidisscoadvisor} \par
      \ifx \titleempty\thaidisscoadvisortwo \else
        \hspace{1cm}\makebox{\thaidisscoadvisortwo} \par
      \fi
    \end{flushleft}
    \emptyline 2

    \begin{flushleft}%
      \hspace{1cm}{\justifying ในการลงนามนี้ ข้าพเจ้าได้อ่านและตรวจสอบข้อเสนอ\makebox{\thaiworktype}นี้ เป็นที่เรียบร้อยแล้ว
        และได้ตัดสินใจอนุมัติ\makebox{\thaiworktype}นี้}
    \end{flushleft}

    \begin{flushleft}
      \renewcommand{\arraystretch}{1.25}
      \begin{tabular*}{\textwidth}{@{}lp{0.35\textwidth}p{0.1\textwidth}}
        \makebox{\bf{ลงนาม}}: & \dotrule{0.33\textwidth} & \makebox{อาจารย์ที่ปรึกษา} \\
        & \makebox{\hspace{0.06\textwidth}(~\thaidissadvisor~)} & \\
        \makebox{\bf{ลงวันที่}}: &
        \dotrule{0.1\textwidth}%
        \slash\dotrule{0.1\textwidth}%
        \slash\dotrule{0.1\textwidth} & \\
      \end{tabular*}
    \end{flushleft}

  }%
  \newpage\baselineskip \truebaselineskip
}

%: # Title page (EN)
\def\maketitlepage{\thispagestyle{empty}\c@page\@ne\baselineskip \baselineskipxii
  \emptyline 2 {\centering

      \makebox{\MakeUppercase{\disstitleone}} \par % First line
      \ifx \titleempty\disstitletwo \else
        \makebox{\MakeUppercase{\disstitletwo}} \par % Second line (optional)
      \fi
      \ifx \titleempty\disstitlethree \else
        \makebox{\MakeUppercase{\disstitlethree}} \par % Third line (optional)
      \fi
      \ifx \titleempty\disstitlefour \else
        \makebox{\MakeUppercase{\disstitlefour}} \par % Fourth line (optional)
      \fi

      %: First Author
      \vfill \MakeUppercase{\dissauthor} \par

      %: Second Author
      \ifx \titleempty\dissauthortwo \else
        \makebox{\MakeUppercase{\dissauthortwo}} \par
      \fi

      %: Third Author
      \ifx \titleempty\dissauthorthree \else
        \makebox{\MakeUppercase{\dissauthorthree}} \par
      \fi
      \vfill

      A \MakeUppercase{\worktype}\ SUBMITTED IN PARTIAL FULFILLMENT \par
      OF THE REQUIREMENTS FOR \par

      \IfEqCase{\fulfillment}{%
        {Subject}{%
            \MakeUppercase{\disssubjectcode} \MakeUppercase{\disssubjectname}\par
            \MakeUppercase{\department},
          }%
          {Degree}{%
            THE DEGREE OF \MakeUppercase{\dissdegree}\ (\makebox{\MakeUppercase{\fieldofstudy}})\par%
          }%
      }%
      \makebox{\MakeUppercase{\faculty}} \par
      \makebox{\MakeUppercase{\institute}} \par
      \dissyear \vspace*{2cm}\par}
  \newpage\baselineskip \truebaselineskip
}

%: Title page (TH)
\def\makethaititlepage{\thispagestyle{empty}\c@page\@ne\baselineskip \baselineskipxii
  \emptyline 2 {%
      \centering
      %: Title
      \makebox{\large\thaidisstitleone} \par % First line
      \ifx \titleempty\thaidisstitletwo \else
        \makebox{\large\thaidisstitletwo} \par % Second line (optional)
      \fi
      \ifx \titleempty\thaidisstitlethree \else
        \makebox{\large\thaidisstitlethree} \par % Third line (optional)
      \fi
      \ifx \titleempty\thaidisstitlefour \else
        \makebox{\large\thaidisstitlefour} \par % Fourth line (optional)
      \fi

      %: First Author
      \vfill {\large\thaidissauthor} \par

      %: Second Author
      \ifx \titleempty\thaidissauthortwo \else
        \makebox{\large\thaidissauthortwo} \par
      \fi

      %: Third Author
      \ifx \titleempty\thaidissauthorthree \else
        \makebox{\large\thaidissauthorthree} \par
      \fi
      \vfill

      \large \makebox{\thaiworktype}นี้เป็นส่วนหนึ่งของ%
      \IfEqCase{\fulfillment}{%
        {Subject}{%
            \par รายวิชา \MakeUppercase{\disssubjectcode} \thaidisssubjectname \par
            ภาควิชา\makebox{\thaidepartment}
          }%
          {Degree}{%
            การศึกษาตามหลักสูตร \par
            \thaidissdegree~สาขาวิชา\makebox{\thaifieldofstudy}\par%
          }%
      }%
      คณะ\makebox{\thaifaculty} \par
      \makebox{\thaiinstitute} \par
      ปีการศึกษา~\thaidissyear \vspace*{2cm}\par
    }
  \newpage\baselineskip \truebaselineskip
}

%: # Copyright page
\def\makecopyrightpage{\newpage
  {\centering{\vbox{}\vfill Copyright by \dissauthor\par\dissyear\par \vfill\vbox{}}}\newpage}

%: # Signature pages
%: ## Sign area (EN)
\def\makesignarea{
  \begin{flushleft}
    \worktype\ Committee \par\par
    \begin{tabular*}{\textwidth}{@{}c@{\extracolsep{1.2cm}}l@{}}
      & \\
      %: Chair committee
      \ifx \titleempty\disscommitteechair \else
        \dotrule{3.6in} & \worktype\ Chairman\\
        (\disscommitteechair) & \\
        & \\
      \fi
      %: Advisor
      \dotrule{3.6in} & \worktype\ Advisor\\
      (\dissadvisor) & \\
      & \\
      %: Co-Advisor 1
      \ifx \titleempty\disscoadvisor \else
        \dotrule{3.6in} & \worktype\ Co-Advisor\\
        (\disscoadvisor) & \\
        & \\
      \fi
      %: Co-Advisor 2
      \ifx \titleempty\disscoadvisortwo \else
        \dotrule{3.6in} & \worktype\ Co-Advisor\\
        (\disscoadvisortwo) & \\
        & \\
      \fi
      %: 2nd Committee
      \dotrule{3.6in} & Committee Member \\
      (\disscommitteetwo) & \\
      & \\
      %: 3rd Committee
      \ifx \titleempty\disscommitteethree \else
        \dotrule{3.6in} & Committee Member \\
        (\disscommitteethree) & \\
        & \\
      \fi
      %: 4th Committee
      \ifx \titleempty\disscommitteefour \else
        \dotrule{3.6in} & Committee Member \\
        (\disscommitteefour) & \\
        & \\
      \fi
    \end{tabular*}
  \end{flushleft}
  \begin{center}
    \vspace*{\fill}
    Copyright reserved
    \vspace*{\fill}
  \end{center}
}
%: ## Sign area (TH)
\def\makethaisignarea{
  \begin{flushleft}
    คณะกรรมการสอบ\makebox{\thaiworktype} \par\par
    \begin{tabular*}{\textwidth}{@{}c@{\extracolsep{0.5cm}}l@{}}
      & \\
      %: Chair committee
      \ifx \titleempty\thaidisscommitteechair \else
        \dotrule{3in} & ประธานกรรมการสอบ\makebox{\thaiworktype}\\
        (\thaidisscommitteechair) & \\
        & \\
      \fi
      %: Advisor
      \dotrule{3in} & กรรมการและอาจารย์ทีปรึกษา\makebox{\thaiworktype}\\
      (\thaidissadvisor) & \\
      & \\
      %: Co-Advisor 1
      \ifx \titleempty\thaidisscoadvisor \else
        \dotrule{3in} & กรรมการและอาจารย์ทีปรึกษา\makebox{\thaiworktype}\ (ร่วม)\\
        (\thaidisscoadvisor) & \\
        & \\
      \fi
      %: Co-Advisor 2
      \ifx \titleempty\thaidisscoadvisortwo \else
        \dotrule{3in} & กรรมการและอาจารย์ทีปรึกษา\makebox{\thaiworktype}\ (ร่วม)\\
        (\thaidisscoadvisortwo) & \\
        & \\
      \fi
      %: 2nd Committee member
      \dotrule{3in} & กรรมการ \\
      (\thaidisscommitteetwo) & \\
      & \\
      %: 3rd Committee member
      \ifx \titleempty\thaidisscommitteethree \else
        \dotrule{3in} & กรรมการ \\
        (\thaidisscommitteethree) & \\
        & \\
      \fi
      %: 4th Committee member
      \ifx \titleempty\thaidisscommitteefour \else
        \dotrule{3in} & กรรมการ \\
        (\thaidisscommitteefour) & \\
        & \\
      \fi
    \end{tabular*}
  \end{flushleft}
  \begin{center}
    \vspace*{\fill}
    ลิขสิทธิ์ของมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี
    \vspace*{\fill}
  \end{center}
}
%: ## Sign Page (TH)
\def\makethaisignaturepage{
  \newpage\thispagestyle{empty}\baselineskip \baselineskipxi {\centering
    \makebox{\thaidisstitleone} \par
    \ifx \titleempty\thaidisstitletwo \else
      \makebox{\thaidisstitletwo} \par
    \fi
    \ifx \titleempty\thaidisstitlethree \else
      \makebox {\thaidisstitlethree} \par
    \fi
    \ifx \titleempty\thaidisstitlefour \else
      \makebox {\thaidisstitlefour} \par
    \fi

    \vfill \IfEqCase{\fulfillment}{%
      {Subject}{%
          \vfill \textbf{สมาชิกกลุ่ม}: \par
        }%
    }%
    \thaidissauthor%
    \ifx \diplomaempty\thaidissdiplomaone \else
      ,~\thaidissdiplomaone
    \fi
    \par
    \ifx \titleempty\thaidissauthortwo \else
      \makebox{\thaidissauthortwo}%
      \ifx \diplomaempty\thaidissdiplomatwo \else
        ,~\thaidissdiplomatwo
      \fi
      \par
    \fi
    \ifx \titleempty\thaidissauthorthree \else
      \makebox{\thaidissauthorthree}%
      \ifx \diplomaempty\thaidissdiplomathree \else
        ,~\thaidissdiplomathree
      \fi
      \par
    \fi

    \IfEqCase{\fulfillment}{%
      {Subject}{%
          \vfill \textbf{เสนอ}: \par
          \makebox{\thaidisssubjectteacher} \par
          \emptyline 1
          \dotrule{3.6in} \par
          ในการลงนามนี้ ข้าพเจ้าได้อ่านและตรวจสอบเนื้อหาของ \par
          รายงาน\makebox{\thaiworktype}เป็นที่เรียบร้อยแล้ว และได้ตัดสินใจ \par
          อนุมัติและรับรายงานเล่มนี้ \par
        }%
    }%

    \vfill \makebox{\thaiworktype}นี้เป็นส่วนหนึ่งของ%
    \IfEqCase{\fulfillment}{%
      {Subject}{%
          \par รายวิชา \MakeUppercase{\disssubjectcode} \thaidisssubjectname \par
          ภาควิชา\makebox{\thaidepartment}
        }%
        {Degree}{%
          การศึกษาตามหลักสูตร \par
          \thaidissdegree~สาขาวิชา\makebox{\thaifieldofstudy}\par%
        }%
    }%
    คณะ\makebox{\thaifaculty} \par
    \makebox{\thaiinstitute} \par
    ปีการศึกษา~\thaidissyear \vspace*{1cm}\par
  }

  \IfEqCase{\fulfillment}{%
    {Degree}{\makethaisignarea}%
  }%

  \newpage\baselineskip \truebaselineskip
}
%: ## Sign page (EN)
\def\makesignaturepage{
  \newpage\thispagestyle{empty}\baselineskip \baselineskipxi {\centering
    \makebox {\disstitleone} \par
    \ifx \titleempty\disstitletwo \else
      \makebox{\disstitletwo} \par
    \fi
    \ifx \titleempty\disstitlethree \else
      \makebox {\disstitlethree} \par
    \fi
    \ifx \titleempty\disstitlefour \else
      \makebox {\disstitlefour} \par
    \fi

    \vfill \IfEqCase{\fulfillment}{%
      {Subject}{%
          \vfill Member(s): \par
        }%
    }%
    \dissauthor\
    \ifx \diplomaempty\dissdiplomaone \else
      \dissdiplomaone
    \fi
    \par
    \ifx \titleempty\dissauthortwo \else
      \makebox{\dissauthortwo}
      \ifx \diplomaempty\dissdiplomatwo \else
        \dissdiplomatwo
      \fi
      \par
    \fi
    \ifx \titleempty\dissauthorthree \else
      \makebox{\dissauthorthree}
      \ifx \diplomaempty\dissdiplomathree \else
        \dissdiplomathree
      \fi
      \par
    \fi

    \IfEqCase{\fulfillment}{%
      {Subject}{%
          \vfill Submit to: \par
          \makebox{\disssubjectteacher} \par
          \emptyline 1
          \dotrule{3.6in} \par
          By signing this, I hereby acknowledge that I have read and \par
          verified the content of this report; thus, had approved \par
          and accepted this \MakeLowercase{\worktype}~report. \par
        }%
    }%

    \vfill A \worktype\ Submitted in Partial Fulfillment \par
    of the Requirements for \par
    \ifthenelse{\equal{\fulfillment}{Subject}}{
      \MakeUppercase{\disssubjectcode} \disssubjectname \par
      Department of \department,
    }{
      the Degree of \dissdegree\ (\makebox{\fieldofstudy}) \par
    }
    \makebox{\faculty} \par
    \makebox{\institute} \par
    \dissyear \par}
  \emptyline 1

  \IfEqCase{\fulfillment}{%
    {Degree}{\makesignarea}%
  }%

  \newpage\baselineskip \truebaselineskip
}

%: Generation logics signature page and title page
\def\genfrontpages#1#2{%

  %: Include the image
  \begin{center}
    \includegraphics[width=#2]{#1}
  \end{center}
  \vspace*{-1cm}

  \makeproposalcover

  %: Check fulfillment value
  % \ifthenelse{\equal{\fulfillment}{Subject}}{%
  %   % Do nothing
  % }{%
  %   % If not 'Subject', check for 'Degree'
  %   \ifthenelse{\equal{\fulfillment}{Degree}}{%
  %     % Do nothing
  %   }{%
  %     % Neither of those, throw error
  %     \Err{Warning: Invalid fulfillment; use either 'Subject' | 'Degree' (case-sensitive!)}%
  %     \def\fulfillment{Degree} % Default to Degree
  %   }%
  % }

  % %: Check coverlang value and make title page and
  % \ifthenelse{\equal{\coverlang}{English}}{%
  %   \maketitlepage%
  %   \makesignaturepage%
  % }{%
  %   \ifthenelse{\equal{\coverlang}{Thai}}{%
  %     \makethaititlepage%
  %     \makethaisignaturepage%
  %   }{%
  %     \Err{Warning: Invalid coverlang; use either 'English' | 'Thai' (case-sensitive!)}%
  %     \maketitlepage % Default to English
  %     \makesignaturepage%
  %   }%
  % }%
}

%: # Abstract pages
\def\abstcontent{}
\def\abstkeyword{}

%: ## English abstract
\def\makeabstract{
  \newpage
  \ifthenelse{\equal{\coverlang}{English}}{%
    \setcounter{page}{2}%
    \pagestyle{plain}%
  }{}
  \addcontentsline{toc}{chapterx}{\mdseries บทคัดย่อภาษาอังกฤษ}
  \begin{flushleft}
    \begin{tabular}{@{}lp{0.7\textwidth}}
      \worktype\ Title      & \disstitleone\      \\
      \ifx \titleempty\disstitletwo \else
                            & \disstitletwo       \\
      \fi
      \ifx \titleempty\disstitlethree \else
                            & \disstitlethree     \\
      \fi
      \ifx \titleempty\disstitlefour \else
                            & \disstitlefour      \\
      \fi
      Credits               & \disscredit         \\
      \IfEqCase{\fulfillment}{%
        {Degree}{\textthai{Author(s)}}
          {Subject}{\textthai{Member(s)}}
      }%
                            & \dissauthor         \\
      \ifx \titleempty\dissauthortwo \else
                            & \dissauthortwo      \\
      \fi
      \ifx \titleempty\dissauthorthree \else
                            & \dissauthorthree    \\
      \fi
      \IfEqCase{\fulfillment}{%
        {Degree}{%
      \worktype\ Advisor(s) & \dissadvisor        \\
            \ifx \titleempty\disscoadvisor \else
                            & \disscoadvisor      \\
            \fi
            \ifx \titleempty\disscoadvisortwo \else
                            & \disscoadvisortwo   \\
            \fi
          }%
          {Subject}{%
      Instructor            & \disssubjectteacher \\
          }%
      }%
      \IfEqCase{\fulfillment}{%
        {Degree}{%
      Program               & \dissdegree         \\
      Field of Study        & \fieldofstudy       \\
      Department            & \department         \\
      Faculty               & \faculty            \\
          }%
          {Subject}{%
      Subject               & \disssubjectcode    \\
                            & \disssubjectname    \\
          }%
      }%
      Academic Year         & \dissyear
    \end{tabular}
  \end{flushleft}

  \emptyline 1
  \begin{center}
    Abstract
  \end{center}

  \par \justifying\abstcontent

  \justifying
  \begin{tabular*}{\textwidth}{@{}lp{0.8\textwidth}}
    \textbf{Keywords}: & \abstkeyword
  \end{tabular*}
  \vspace{1mm}

  \newpage
}

%: ## Thai abstract
\def\thabstcontent{}
\def\thabstkeyword{}

\def\makethaiabstract{
  \newpage
  \ifthenelse{\equal{\coverlang}{Thai}}{%
    \setcounter{page}{2}%
    \pagestyle{plain}%
  }{}
  \addcontentsline{toc}{chapterx}{\mdseries บทคัดย่อภาษาไทย}
  \begin{flushleft}
    \begin{tabular}{@{}lp{0.7\textwidth}}
      \textthai{หัวข้อ}\thaiworktype & \thaidisstitleone\       \\
      \ifx \titleempty\thaidisstitletwo \else
                                   & \thaidisstitletwo        \\
      \fi
      \ifx \titleempty\thaidisstitlethree \else
                                   & \thaidisstitlethree      \\
      \fi
      \ifx \titleempty\thaidisstitlefour \else
                                   & \thaidisstitlefour       \\
      \fi
      \textthai{หน่วยกิต}            & \textthai{\disscredit}   \\
      \IfEqCase{\fulfillment}{%
        {Degree}{\textthai{ผู้เขียน}}
          {Subject}{\textthai{สมาชิกกลุ่ม}}
      }%
                                   & \thaidissauthor          \\
      \ifx \titleempty\thaidissauthortwo \else
                                   & \thaidissauthortwo       \\
      \fi
      \ifx \titleempty\thaidissauthorthree \else
                                   & \thaidissauthorthree     \\
      \fi
      \IfEqCase{\fulfillment}{%
        {Degree}{%
      \textthai{อาจารย์ที่ปรึกษา}      & \thaidissadvisor         \\
            \ifx \titleempty\disscoadvisor \else
                                   & \thaidisscoadvisor       \\
            \fi
            \ifx \titleempty\disscoadvisortwo \else
                                   & \thaidisscoadvisortwo    \\
            \fi
          }%
          {Subject}{%
      \textthai{อาจารย์ผู้สอน}        & \thaidisssubjectteacher  \\
          }%
      }%
      \IfEqCase{\fulfillment}{%
        {Degree}{%
      \textthai{หลักสูตร}            & \thaidissdegree          \\
      \textthai{สาขาวิชา}           & \thaifieldofstudy        \\
      \textthai{ภาควิชา}            & \thaidepartment          \\
      \textthai{คณะ}               & \thaifaculty             \\\
          }%
          {Subject}{%
      \textthai{รายวิชา}            & \disssubjectcode         \\
                                   & \thaidisssubjectname     \\
          }%
      }%
      \textthai{ปีการศึกษา}          & \textthai{\thaidissyear}
    \end{tabular}
  \end{flushleft}

  \emptyline 1
  \begin{center}
    \textthai{บทคัดย่อ}
  \end{center}

  \par \justifying\thabstcontent

  \justifying
  \begin{tabular*}{\textwidth}{@{}lp{0.8\textwidth}}
    & \\
    \textbf{คำสำคัญ}: &  \thabstkeyword
  \end{tabular*}
  \vspace{1mm}

  \newpage
}

%: Generation logics for abstracts page
%: Arrange order based on coverlang
\def\genabstract{%
  \ifthenelse{\equal{\coverlang}{English}}{%
    \makeabstract%
    \makethaiabstract%
  }{%
    \ifthenelse{\equal{\coverlang}{Thai}}{%
      \makethaiabstract%
      \makeabstract%
    }{%
      \Err{Warning: Invalid coverlang; use either 'English' | 'Thai' (case-sensitive!)}%
      \makeabstract%
      \makethaiabstract%
    }%
  }%
}

%: # Preface or Acknowledgement
\def\prefacecontent{}

\def\genpreface{%
  \chapter*{\large กิตติกรรมประกาศ}%
  \addcontentsline{toc}{chapterx}{\mdseries กิตติกรรมประกาศ}
  \thispagestyle{plain}
  \justifying\prefacecontent
  \newpage
}

%: # Table of contents and lists of elements

\setcounter{tocdepth}{5}  % must be same as secnumdepth
\def\contentsname{สารบัญ}
\def\tableofcontents{\chapter*{\large\MakeUppercase{\contentsname}\@mkboth{}{}%
    \\ \emptyline 1 \hfill\textbf{หน้า}\\[-0.4em]}
  % 23 Nov 2021, Thanin
  % put \addcontentsline before \ssp\@starttoc to fix wrong numbering
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญ}
  {\ssp\@starttoc{toc}}
  \pagestyle{plain}\thispagestyle{plain}
}

%: ## List of Tables
\def\listtablename{สารบัญตาราง}
\def\listoftables{\chapter*{\large \MakeUppercase{\listtablename}\@mkboth{ตารางที่}{หน้า}\thispagestyle{plain}
    \\ \emptyline 1 \normalsize\textbf{ตารางที่}\hfill\textbf{หน้า}\\[-0.4em] }
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญตาราง} {\ssp\@starttoc{lot}}}
%\def\l@table{}
%\def\l@table{\vskip 1.0em plus\p@\@dottedtocline{1}{1.5em}{2.3em}}

%: ## List of Figures
\def\listfigurename{สารบัญรูปภาพ}
\def\listoffigures{\chapter*{\large\MakeUppercase{\listfigurename}\@mkboth{รูปที่}{หน้า}\thispagestyle{plain}\\
    \emptyline 1
    \normalsize\textbf{รูปที่}\hfill\textbf{หน้า}\\[-0.4em]  }
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญรูปภาพ} {\ssp\@starttoc{lof}}}
\let\l@figure\l@table

%: ## List of Symbols
\def\listofsymbols{\chapter*{\large สารบัญสัญลักษณ์}
  %\\ \emptyline 1 \textbf{SYMBOL}\hfill\textbf{UNIT}\\[-1cm]}
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญสัญลักษณ์}\thispagestyle{plain}
}

%: ## List of Vocab or Terms
\def\listofvocab{\chapter*{\large สารบัญคำศัพท์ทางเทคนิคและคำย่อ}%
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญคำศัพท์ทางเทคนิคและคำย่อ}\thispagestyle{plain}
}

%: ## List of Codes
\def\listofprogramname{สารบัญชุดคำสั่ง}
\def\listofprograms{\chapter*{\large\MakeUppercase{\listofprogramname}\@mkboth{ชุดคำสั่งที่}{หน้า}\thispagestyle{plain}\\
    \emptyline 1
    \normalsize\textbf{ขุดคำสั่งที่}\hfill\textbf{หน้า}\\[-0.4em]  }
  \addcontentsline{toc}{chapterx}{\mdseries สารบัญชุดคำสั่งคอมพิวเตอร์} {\ssp\@starttoc{lol}}
}


%: # Appendices
\firstappendixtrue
\def\appendixnames{ภาคผนวก}
\def\appendixcover#1{%
  \newpage\pagestyle{plain}\thispagestyle{empty}
  \iffirstappendix %
    \setcounter{chapter}{0} % Reset chapter numbering
    \setcounter{figure}{0}  % Reset figure numbering (May 2022 by Thanin)
    \renewcommand{\thechapter}{\thalph{chapter}}
    \def\@chapapp{\MakeUppercase{\appendixname}}%
    \addcontentsline{toc}{chapter}{\mdseries\bf \MakeUppercase{\appendixnames}}%
    \firstappendixfalse%
  \fi
  \setcounter{equation}{0} % Reset equation numbering
  \setcounter{figure}{0} % Reset figure numbering (May 2022 by Thanin)
  \addtocounter{chapter}{1}  % Start the 1st appendix
  {\centering{\vbox{}\vfill \MakeUppercase{\LARGE \bf
        ภาคผนวก \thechapter} \par \bigskip \MakeUppercase{\Large #1} \vfill\vbox{}}}\newpage}
%   {\centering{\vbox{}\vfill \MakeUppercase{{\normalsize\bf APPENDIX
%\thechapter}} \par \MakeUppercase{#1}} \vfill\vbox{}}}\newpage}

\def\appendix#1{%
  \appendixcover{#1}
  \addcontentsline{toc}{apdx}{\thechapter\hskip 1em #1}%
}

%: # Bibliography
\def\refname{บรรณานุกรม}
\def\referencepage{\chapter*{\large\bf \MakeUppercase{\refname} \\
    \emptyline 1}%
  \addcontentsline{toc}{chapter}{\mdseries\bf \MakeUppercase{\refname}}\thispagestyle{empty}
}
%\def\bibliographycover{\newpage \typeout{\bibname .} \thispagestyle{empty}
%   {\centering{\vbox{}\vfill {\LARGE\bf \bibname} \vfill\vbox{}}}\newpage}
%%% Change the brackets to dot around bib number.%%%%%%%%%%%%%%
\newdimen\bibindent
\bibindent=2em
\def\@biblabel#1{#1.}
\def\thebibliography#1{%\bibliographycover
  %\chapter*{\bibname\@mkboth{}{}}
  %\addcontentsline{toc}{chapter}{\bibname} \ssp
  \referencepage \vspace*{-30\p@}\ssp\pagestyle{plain}
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \usecounter{enumiv} \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
  \def\newblock{\hskip .11em plus.33em minus.07em}%
  \sloppy\clubpenalty4000\widowpenalty4000 \sfcode`\.=\@m }
\def\endthebibliography{\ifdraftmode \dsp \fi
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}} \endlist}


%: # Vitae
\def\vitae{
  \clearpage
  \chapter*{\large\bf CURRICULUM VITAE}%
  \vspace*{-5\p@}\ssp
  \addcontentsline{toc}{chapter}{\normalsize\bf CURRICULUM VITAE}
  \pagestyle{plain}\thispagestyle{plain}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{latexsym}

\newcounter{definition}[chapter]
\newenvironment{definition}[1]{\refstepcounter{definition}
  \par\hbox{}\par\noindent
  {\bfseries Definition \thechapter.\thedefinition\ #1}
  \par\noindent\ignorespaces}
{\par\hbox{}\par}

\newenvironment{proof}{
  \par\noindent{\bfseries Proof: }\ignorespaces}
{ $\Box$\par\hbox{}\par}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
