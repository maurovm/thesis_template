%
% File    : oxengthesis.cls
% Author  : Mauricio Villarroel
% Created : Sept 6, 2013
% ____________________________________________________________________________
%
% Copyright (C) 2013-2022 Mauricio Villarroel. All rights reserved.
%
% SPDX-License-Identifer:  GPL-2.0-only
% ____________________________________________________________________________
%
% DESCRIPTION :
%
% Latex template for a project report based on the 
% class file for a DPhil thesis of the Engineerind department of 
% the University of Oxford
% ____________________________________________________________________________


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oxengthesis}[2022/04/21 v0.6 book class]


\newif\if@report


\DeclareOption{report}{\@reporttrue}

\ProcessOptions\relax


\LoadClass[10pt,a4paper,twoside,openany,final]{memoir}


% ____________________________________________________________________________
%
% BASIC LATEX CONFIGURATION
% ____________________________________________________________________________


\RequirePackage{textcomp}
\RequirePackage{lipsum}

% Custom colours

\RequirePackage{color}

% TODO tags
\newcommand{\todo}[1]{\textcolor{red}{@TODO: #1}}

% Common measurement units

\RequirePackage{siunitx}
\DeclareSIUnit\year{yr}
\DeclareSIUnit\hours{hrs}
\DeclareSIUnit\bpm{beats/min}
\DeclareSIUnit\brpm{breaths/min}

% Font configuration

\RequirePackage{fontspec}
\setmainfont{Carlito}

% No hyphenation

\RequirePackage[none]{hyphenat}

% Configure math environment

\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\setmathfont{Latin Modern Math}

% Import external files

\RequirePackage{listings}

% Don't let figures and other floats past their sections

\RequirePackage[section,below]{placeins}


% ____________________________________________________________________________
%
% Format page margins
% ____________________________________________________________________________


\settypeoutlayoutunit{cm}

% Define the margins

\newlength{\myleftmargin}
\newlength{\myrightmargin}
\newlength{\mytopmargin}
\newlength{\mybottommargin}

\setlength{\myleftmargin}{4cm}
\setlength{\myrightmargin}{2cm}
\setlength{\mytopmargin}{2cm}
\setlength{\mybottommargin}{2.5cm}

% Setup the page layout

\setlrmarginsandblock{\myleftmargin}{\myrightmargin}{*} 

\newlength{\linespace}
\setlength{\linespace}{\baselineskip} % current equivalent of \onelineskip

\setlength{\headheight}{\onelineskip}
\setlength{\headsep}{2\linespace}

\setlength{\uppermargin}{\mytopmargin}
\addtolength{\uppermargin}{\headheight}
\addtolength{\uppermargin}{\headsep}

\setlength{\lowermargin}{\mybottommargin}

\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-\uppermargin}
\addtolength{\textheight}{-\lowermargin}

%% footnote settings

\setlength{\footskip}{\onelineskip}
\setlength{\footnotesep}{\onelineskip}

\setulmarginsandblock{\uppermargin}{\lowermargin}{*}

\checkandfixthelayout[nearest]


% ____________________________________________________________________________
%
% Page layout
% ____________________________________________________________________________


% Paragraph indentation

\setlength{\parindent}{2em}


% Widows and orphans

\RequirePackage{nowidow}

\flushbottom


% ____________________________________________________________________________
%
% Format tables
% ____________________________________________________________________________


\RequirePackage{makecell}
\RequirePackage{multirow}
\RequirePackage[table]{xcolor}
\RequirePackage{array}

% Custom background colour for headers

\definecolor{TableHeaderBackColor}{rgb}{0.9,0.9,0.9}

% Standard table row heights

\setlength{\extrarowheight}{2pt}

\newcommand\smallTableRowHeight{
  \setlength{\extrarowheight}{0pt}
}
\newcommand\singleTableRowHeight{
  \setlength{\extrarowheight}{2pt}
}

\newcolumntype{+}{>{\global\let\currentrowstyle\relax}}
\newcolumntype{^}{>{\currentrowstyle}}
\newcommand{\tableheaderstyle}{
  \rowcolor{TableHeaderBackColor}
  \gdef\currentrowstyle{\bfseries}\bfseries\ignorespaces
}

\newcommand\tableHeaderStart{
  \hline
  \tableheaderstyle
}
\newcommand\tableHeaderEnd{
  \hline
}
\newcommand\tableHCell[1]{
  {\singleTableRowHeight
   \begin{tabular}{c}
     \textbf{#1}
   \end{tabular}
  }
}
\newcommand\tableHCellTwoRows[2]{
  {\singleTableRowHeight
   \begin{tabular}{c}
     \textbf{#1}\\{#2}
   \end{tabular}
  }
}


% ____________________________________________________________________________
%
% Format figures
% ____________________________________________________________________________


\RequirePackage{graphicx}

% Default folder for figures

\graphicspath{{figures/}}

% Subfigure link

\newcommand{\oxfigsubplot}[1]{\textcolor{black}{(#1)}}

% Configure captions

\captionnamefont{\small} 
\captiontitlefont{\small} 
\changecaptionwidth
\captionwidth{0.9\textwidth}  

% Allow subfloats in figure environment

\newsubfloat{figure}


% ____________________________________________________________________________
%
% Format lists
% ____________________________________________________________________________


\RequirePackage{enumitem}

\setlist[itemize]{itemsep=1pt}


% ____________________________________________________________________________
%
% Custom styles for source code listings
% ____________________________________________________________________________


\lstdefinestyle{custom-c}{
  belowcaptionskip=1\baselineskip,
  breaklines=true,
  frame=L,
  xleftmargin=\parindent,
  language=C++,
  showstringspaces=false, 
  basicstyle=\small\ttfamily, %footnotesize\ttfamily
  keywordstyle=\bfseries\color{green!40!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{blue},
  stringstyle=\color{orange}
}

\lstdefinestyle{custom-bash}{
  belowcaptionskip=1\baselineskip,
  breaklines=true,
  frame=L,
  xleftmargin=\parindent,
  language=bash,
  showstringspaces=false,
  basicstyle=\small\ttfamily,
  keywordstyle=\color{blue}, % identifierstyle=\color{green},
  commentstyle=\color{red},
  stringstyle=\color{orange}
}

\lstdefinestyle{custom-verbatim}{
  frame=L,
  showstringspaces=false,
  basicstyle=\ttfamily,
  columns=fullflexible,
  keepspaces=true
}


% ____________________________________________________________________________
%
% Character protrusion, font expansion and interword spacing
% ____________________________________________________________________________


\RequirePackage[activate={true,nocompatibility},final,tracking=true]{microtype}

\microtypecontext{spacing=nonfrench}


% ____________________________________________________________________________
%
% References and hyperlinks
% ____________________________________________________________________________


% Cross links

\RequirePackage[hyperindex=true,colorlinks=true,pagebackref=false,allcolors=black,plainpages=false,pdfpagelabels,bookmarksnumbered]{hyperref}

% Reference to the labels and numbers of chapter, section, figures, ...

\RequirePackage[noabbrev]{cleveref}


% ____________________________________________________________________________
%
% Debugging
%
% DO NOT DELETE: Uncomment the lines below to have more verbose diagnostics
% ____________________________________________________________________________


% Show overfull errors
%\overfullrule=15pt

% Used temporarly for checking layout
%\RequirePackage{layout}


% ____________________________________________________________________________
%
% Glossaries
% ____________________________________________________________________________


\RequirePackage[toc=true,nopostdot=false,noredefwarn=false,nonumberlist,nogroupskip,abbreviations,nomain,automake,shortcuts=abbreviations]{glossaries-extra}


% ____________________________________________________________________________
%
% FRONT MATTER
% ____________________________________________________________________________


\aliaspagestyle{chapter}{empty}

\addtodef{\frontmatter}{
    \glsunsetall
}{}


%
% Title page
%


% The year and term the thesis is submitted 
\def\degreedate#1{\gdef\@degreedate{#1}}

% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}

% The name of your Oxford college (e.g. Christ Church, Pembroke)
\def\college#1{\gdef\@college{#1}}

% The name of the university(e.g. University of Oxford)
\def\university#1{\gdef\@university{#1}}

% The name of the university department(e.g. Department of Engineering Science)
\def\department#1{\gdef\@department{#1}}

% Filename for the university's logo
\def\universitylogo#1{\gdef\@universitylogo{#1}}

% The name of your supervisor
\def\supervisor#1{\gdef\@supervisor{#1}}
 
 %define title page layout

\renewcommand{\maketitle}
{
%   \setcounter{page}{0}
%   \renewcommand{\footnotesize}{\small}
%   \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
    \null\vfill
    \pdfbookmark[0]{Title page}{title}
    \begin{center}
    {
        \Huge \bfseries \@title \par}
        \vspace*{20mm}
        {\includegraphics[width=60mm,keepaspectratio=true]{\@universitylogo} \par}
        \vspace*{20mm}
        {\huge \@author \par}
        \vspace*{1ex}
        {\Large
        \@college \par
        \vspace*{4ex}
        \@degree \par
        \vspace*{4ex}
        Supervised by \par
        \vspace*{1ex}
        \@supervisor \par
        \vspace*{4ex}
        \@department \par
        \vspace*{1ex}
        \@university \par
        \vspace*{4ex}
        \@degreedate
    }
    \end{center}
    \null\vfill   
    %\clearpage
    %\shipout\null
}


%
% Declaration page
%


\newenvironment{declaration} {
    \cleardoublepage
    \DoubleSpacing
    \chapter*{Declaration}
}


%
% Dedication page
%


\newenvironment{dedication} {
    \cleardoublepage
    \DoubleSpacing
    \setlength{\epigraphwidth}{0.5\textwidth}
    \renewcommand*{\chapterheadstart}{\vspace*{\beforechapskip}}
    \chapter*{}
}


%
% Acknowledgements page
%


\newenvironment{acknowledgements} {
    \cleardoublepage
    \OnehalfSpacing
    \chapter*{Acknowledgements}
}


%
% Abstract page
%


\renewenvironment{abstract} {
    \cleardoublepage
    \OnehalfSpacing
    \chapter*{Abstract}
}


%
% List of contributors page
%


\RequirePackage{multicol}

\newcommand{\contributor}[2]{
\noindent
\textbf{#1} \\
#2 \par
}


%
% Table of contents page
%


\makepagestyle{toc}
    \makeheadrule{toc}{\textwidth}{0.3pt}
    \makeevenhead{toc}{\thepage}{}{\bfseries{Table of contents}}
    \makeoddhead {toc}{\bfseries{Table of contents}}{}{\thepage}

\renewcommand{\contentsname}{Table of contents}
\renewcommand*{\tocheadstart}{\vspace{0em}}

\addtodef{\tableofcontents}{
    \cleardoublepage
    \SingleSpacing
    \setcounter{tocdepth}{2}
    \pagestyle{toc}
    \setlength{\cftbeforechapterskip}{0.8em \@plus\p@}
}{}

% Fix hbox overfull warnings in TOC

\renewcommand*{\cftdotsep}{1}
\setpnumwidth{3em}
\setrmarg{4em}


%
% List of figures page
%


\makepagestyle{lof}
    \makeheadrule{lof}{\textwidth}{0.3pt}
    \makeevenhead{lof}{\thepage}{}{\bfseries{List of figures}}
    \makeoddhead {lof}{\bfseries{List of figures}}{}{\thepage}

\renewcommand*{\lofheadstart}{\vspace{0em}}
\renewcommand{\listfigurename}{List of figures}

\addtodef{\listoffigures}{
    \clearpage
    \SingleSpacing
    \pagestyle{lof}
}{}


%
% List of tables page
%


\makepagestyle{lot}
    \makeheadrule{lot}{\textwidth}{0.3pt}
    \makeevenhead{lot}{\thepage}{}{\bfseries{List of tables}}
    \makeoddhead {lot}{\bfseries{List of tables}}{}{\thepage}

\renewcommand*{\lotheadstart}{\vspace{0em}}
\renewcommand{\listtablename}{List of tables}

\addtodef{\listoftables}{
    \clearpage
    \SingleSpacing
    \pagestyle{lot}
}{}


%
%  Glossary page
%


\makepagestyle{loa}
    \makeheadrule{loa}{\textwidth}{0.3pt}
    \makeevenhead{loa}{\thepage}{}{\bfseries{List of abbreviations}}
    \makeoddhead {loa}{\bfseries{List of abbreviations}}{}{\thepage}
  
\renewcommand*{\abbreviationsname}{List of abbreviations}

% The colour of the glossary links

\renewcommand*{\glstextformat}[1]{\textcolor{black}{#1}}

\newcommand{\listofabbreviations}{
    \clearpage
    \DoubleSpacing
    \pagestyle{loa}
    \glsfindwidesttoplevelname
    \setglossarystyle{alttree}
    \renewcommand*{\chapterheadstart}{\vspace{0em}}
    \printabbreviations
    \renewcommand*{\chapterheadstart}{\vspace*{\beforechapskip}}
}


% ____________________________________________________________________________
%
% MAIN MATTER
% ____________________________________________________________________________


\let\Chaptermark\chaptermark
\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}

%\newcommand*{\thesectionname}{\@currentlabelname}

\let\Sectionmark\sectionmark
\def\sectionmark#1{\def\Sectionname{#1}\Sectionmark{#1}}

\makepagestyle{mainpage}
    \makeheadrule{mainpage}{\textwidth}{0.3pt}
    \makeevenhead{mainpage}{\thepage}{}{\bfseries{\thesection.~\Sectionname}}
    \makeoddhead {mainpage}{\bfseries{\chaptername~\thechapter.~\Chaptername}}{}{\thepage}
    \if@report
        \setlength\beforechapskip{0\baselineskip}
        \setlength\midchapskip{0\baselineskip}
    \fi

\addtodef{\mainmatter}{
    \if@openright
        \cleardoublepage
    \else
        \clearpage
    \fi
    \OnehalfSpacing
    \pagestyle{mainpage}
}{}


% Enabling numbering for subsections

\setsecnumdepth{subsection}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BACK MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\addtodef{\backmatter}{
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \SingleSpacing
}{}


%
% Bibliography
%


\RequirePackage[numbers,square,comma,sort]{natbib}

\setlength{\bibsep}{1pt plus 1ex}

\makepagestyle{biblio}
    \makeheadrule{biblio}{\textwidth}{0.3pt}
    \makeevenhead{biblio}{\thepage}{}{\bfseries{Bibliography}}
    \makeoddhead {biblio}{\bfseries{Bibliography}}{}{\thepage}
  
% Param 1 : bibliography file
\newcommand{\listofreferences}[1]{
    \if@openright
        \cleardoublepage
    \else
        \clearpage
    \fi
    \pagestyle{biblio}
    \SingleSpacing
    \apptocmd{\sloppy}{\hbadness 10000\relax}{}{} % Fix hbox warnings on bibtex entries
    \renewcommand*{\chapterheadstart}{\vspace{0em}}
    \bibliographystyle{plainnat}
    \bibliography{#1}
    \renewcommand*{\chapterheadstart}{\vspace*{\beforechapskip}}
}

% Fix hbox warnings on bibtex entries

%\apptocmd{\thebibliography}{\raggedright}{}{}
%\apptocmd{\sloppy}{\hbadness 10000\relax}{}{}


% ____________________________________________________________________________
%
% Extra configuration
% ____________________________________________________________________________


% Page boundary: suppress some underfull \vbox warnings

\makeatletter
    \def\@textbottom{\vskip \z@ \@plus 1pt}
    \let\@texttop\relax
\makeatother

