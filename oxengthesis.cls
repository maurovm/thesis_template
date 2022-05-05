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
\ProvidesClass{oxengthesis}[2022/05/04 v0.7 Oxford Engineering thesis class]


\newif\if@report

\DeclareOption{report}{\@reporttrue}

% Pass all other the options to the memoir class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions\relax

\LoadClass[final]{memoir}


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
% Hyperlinks
% ____________________________________________________________________________


\RequirePackage[hyperindex=true,colorlinks=true,pagebackref=false,allcolors=black,plainpages=false,pdfpagelabels,bookmarksnumbered]{hyperref}


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


%
% Name of the input files used in the class
%


\def\abstractfilename{abstract.tex}
\def\glossaryfilename{glossary.tex}

\def\declarationfilename{declaration.tex}
\def\dedicationfilename{dedication.tex}
\def\acknowledgementsfilename{acknowledgements.tex}
\def\publicationsfilename{publications.tex}


%
% Variables used in the front matter
%


% The year and term the thesis is submitted 
\def\degreedate#1{\gdef\@degreedate{#1}}

% A sentence to appear before the degree
\def\degreeprefix#1{\gdef\@degreeprefix{#1}}

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


%
% The single title page
%

\newcommand{\maketitlepage}
{
    \begingroup

    \thispagestyle{empty}
    \pdfbookmark[0]{Title page}{title}
    \begin{center}

        {\Huge \bfseries \@title \par}

        \null\vfill

        \ifdefined \@universitylogo
            \includegraphics[width=0.5\linewidth,keepaspectratio=true]{\@universitylogo}
            \null\vfill
        \fi

        {\huge \bfseries \@author \par}
        \ifdefined \@college
            {\LARGE \@college \par}
        \fi

        \null\vfill

        {\Large

        \vspace*{\baselineskip}
        \ifdefined \@degreeprefix
            \@degreeprefix \par
        \fi
        \@degree

        \vspace*{\baselineskip}
        Supervised by \\ \@supervisor

        \vspace*{\baselineskip}
        \@department \\ \@university 

        \null\vfill
        \@degreedate
        }
    \end{center}
    
    \endgroup
}


%
% Frontal abstract page
%

\newcommand{\makefrontabstractpage}
{
    \cleardoublepage
    \begingroup

    \thispagestyle{empty}
    \renewcommand*{\chapterheadstart}{}
    \OnehalfSpacing

    {\Large
    \noindent
    \begin{minipage}[t]{.6\textwidth}
        \raggedright
        \@author \\
        \ifdefined \@college
            \@college
        \fi
    \end{minipage}
    \begin{minipage}[t]{.4\textwidth}
        \raggedleft
        \@degree \\
        \@degreedate
    \end{minipage}
    }

    \begin{center}
        \LARGE{\bfseries{\@title}}
    \end{center}

    \input{\abstractfilename}
    
    \endgroup
}


%
% Dedication page
%

\newcommand{\makededicationpage}
{
    \cleardoublepage
    \begingroup
    \thispagestyle{empty}
    \DoubleSpacing
    \setlength{\epigraphwidth}{0.5\textwidth}
    \vspace*{\beforechapskip}
    \input{\dedicationfilename}
    \endgroup
}


%
% Declaration page
%

\newcommand{\makedeclarationpage}
{
    \cleardoublepage
    \chapter*{Declaration}
    \DoubleSpacing
    \input{\declarationfilename}
    
    \bigbreak
    \bigbreak

    \noindent \@author \par
    \ifdefined \@college
        \noindent \@college \par
    \fi
    
}


%
% Acknowledgements page
%

\newcommand{\makeacknowledgementspage}
{
    \cleardoublepage
    \chapter*{Acknowledgements}
    \OnehalfSpacing
    \input{\acknowledgementsfilename}
}


%
% Abstract page
%

\newcommand{\makeabstractpage}
{
    \cleardoublepage
    \chapter*{Abstract}
    \OnehalfSpacing
    \input{\abstractfilename}
}


%
% List of publications page
%

\makepagestyle{publicationspagestyle}
    \makeevenhead{publicationspagestyle}{}{}{}
    \makeoddhead {publicationspagestyle}{}{}{}
    \renewcommand\chapterheadstart{}

\newcommand{\makepublicationspage}
{
    \cleardoublepage
    \chapter*{List of publications}
    \pagestyle{publicationspagestyle}
    \OnehalfSpacing
    \input{\publicationsfilename}
}


%
% Table of contents page
%

\makepagestyle{tocpagestyle}
    \makeheadrule{tocpagestyle}{\textwidth}{0.3pt}
    \makeevenhead{tocpagestyle}{\thepage}{}{\bfseries{Table of contents}}
    \makeoddhead {tocpagestyle}{\bfseries{Table of contents}}{}{\thepage}
    \renewcommand{\contentsname}{Table of contents}
    \renewcommand*{\tocheadstart}{}

\addtodef{\tableofcontents}
{
    \cleardoublepage
    \setcounter{page}{1}
    \setcounter{tocdepth}{2}
    \pagestyle{tocpagestyle}
    \SingleSpacing
    \setlength{\cftbeforechapterskip}{0.8em \@plus\p@}
    \renewcommand*{\cftappendixname}{Appendix\space}
}{}


% Fix hbox overfull warnings in TOC

\renewcommand*{\cftdotsep}{1}
\setpnumwidth{3em}
\setrmarg{4em}


%
% List of figures page
%


\makepagestyle{lofpagestyle}
    \makeheadrule{lofpagestyle}{\textwidth}{0.3pt}
    \makeevenhead{lofpagestyle}{\thepage}{}{\bfseries{List of figures}}
    \makeoddhead {lofpagestyle}{\bfseries{List of figures}}{}{\thepage}
    \renewcommand{\listfigurename}{List of figures}
    \renewcommand*{\lofheadstart}{}

\addtodef{\listoffigures}
{
    \clearforchapter
    \pagestyle{lofpagestyle}
    \SingleSpacing
}{}


%
% List of tables page
%


\makepagestyle{lotpagestyle}
    \makeheadrule{lotpagestyle}{\textwidth}{0.3pt}
    \makeevenhead{lotpagestyle}{\thepage}{}{\bfseries{List of tables}}
    \makeoddhead {lotpagestyle}{\bfseries{List of tables}}{}{\thepage}
    \renewcommand{\listtablename}{List of tables}
    \renewcommand*{\lotheadstart}{}

\addtodef{\listoftables}
{
    \clearforchapter
    \pagestyle{lotpagestyle}
    \SingleSpacing
}{}


%
%  Glossary page
%


\makepagestyle{loapagestyle}
    \makeheadrule{loapagestyle}{\textwidth}{0.3pt}
    \makeevenhead{loapagestyle}{\thepage}{}{\bfseries{List of abbreviations}}
    \makeoddhead {loapagestyle}{\bfseries{List of abbreviations}}{}{\thepage}
    \renewcommand*{\chapterheadstart}{}
  
\renewcommand*{\abbreviationsname}{List of abbreviations}

% The colour of the glossary links

\renewcommand*{\glstextformat}[1]{\textcolor{black}{#1}}

\newcommand{\listofabbreviations}
{
    \clearforchapter
    \pagestyle{loapagestyle}
    \DoubleSpacing
    \glsfindwidesttoplevelname
    \setglossarystyle{alttree}
    \printabbreviations
    %\renewcommand*{\chapterheadstart}{\vspace*{\beforechapskip}}
}


%
% A single command to create the entire contents of the front matter
%

\newcommand*{\makefrontmatterpages}
{
    \IfFileExists{\glossaryfilename}
    {
        \include{\glossaryfilename}
        \glsunsetall
    }{}
    
    \maketitlepage

    \if@report

    \else
        \IfFileExists{\abstractfilename}{\makefrontabstractpage}{}
        \IfFileExists{\dedicationfilename}{\makededicationpage}{}
        \IfFileExists{\declarationfilename}{\makedeclarationpage}{}
    \fi
    
    \IfFileExists{\acknowledgementsfilename}{\makeacknowledgementspage}{}
    \IfFileExists{\abstractfilename}{\makeabstractpage}{}

    \if@report

    \else
        \IfFileExists{\publicationsfilename}{\makepublicationspage}{}
    \fi
    
    \tableofcontents
    \listoffigures
    \listoftables
    
    \IfFileExists{\glossaryfilename}{\listofabbreviations}{}
}


% ____________________________________________________________________________
%
% MAIN MATTER
% ____________________________________________________________________________


\definecolor{headingcolor}{rgb}{0.25,0.45,0.76}

\let\Chaptermark\chaptermark
\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}

%\newcommand*{\thesectionname}{\@currentlabelname}

\let\Sectionmark\sectionmark
\def\sectionmark#1{\def\Sectionname{#1}\Sectionmark{#1}}

\makepagestyle{mainpagestyle}
    \makeevenhead{mainpagestyle}{\thepage}{}{\bfseries{\thesection.~\Sectionname}}
    \makeoddhead {mainpagestyle}{\bfseries{\chaptername~\thechapter.~\Chaptername}}{}{\thepage}
    \makeheadrule{mainpagestyle}{\textwidth}{0.3pt}
    \renewcommand\chapterheadstart{}
    \setlength\beforechapskip{0\baselineskip}
    \setlength\midchapskip{0\baselineskip}
    \setsecheadstyle{\large\bfseries\color{headingcolor}}
    \setsubsecheadstyle{\large\bfseries\color{headingcolor}}
    \setsubsubsecheadstyle{\large\bfseries\color{headingcolor}}

\addtodef{\mainmatter}
{
    \clearforchapter
    \pagestyle{mainpagestyle}
    \OnehalfSpacing
}{}


% Enabling numbering for subsections

\setsecnumdepth{subsection}

%
% Configure the appendix
%

 \makepagestyle{appendixpagestyle}
     \makeevenhead{appendixpagestyle}{\thepage}{}{\bfseries{\thesection.~\Sectionname}}
     \makeoddhead {appendixpagestyle}{\bfseries{\appendixname~\thechapter.~\Chaptername}}{}{\thepage}
     \makeheadrule{appendixpagestyle}{\textwidth}{0.3pt}
     \renewcommand\chapterheadstart{}
     \setlength\beforechapskip{0\baselineskip}
     \setlength\midchapskip{0\baselineskip}
     \setsecheadstyle{\large\bfseries\color{headingcolor}}
     \setsubsecheadstyle{\large\bfseries\color{headingcolor}}
     \setsubsubsecheadstyle{\large\bfseries\color{headingcolor}}


\addtodef{\appendix}
{
    \clearforchapter
    \pagestyle{appendixpagestyle}
    \OnehalfSpacing
}{}


% ____________________________________________________________________________
%
% BACK MATTER
% ____________________________________________________________________________


\addtodef{\backmatter}
{
    \clearforchapter
    \SingleSpacing
}{}


%
% Bibliography
%


% Name of the input files used in the class
\def\bibliographyfilename{references}


\RequirePackage[numbers,square,comma,sort]{natbib}

\setlength{\bibsep}{1pt plus 1ex}

\makepagestyle{bibliopagestyle}
    \makeheadrule{bibliopagestyle}{\textwidth}{0.3pt}
    \makeevenhead{bibliopagestyle}{\thepage}{}{\bfseries{Bibliography}}
    \makeoddhead {bibliopagestyle}{\bfseries{Bibliography}}{}{\thepage}
  
% Param 1 : bibliography file
\newcommand{\listofreferences}[1]
{
    \clearforchapter
    \pagestyle{bibliopagestyle}
    \SingleSpacing
    \apptocmd{\sloppy}{\hbadness 10000\relax}{}{} % Fix hbox warnings on bibtex entries
    \renewcommand*{\chapterheadstart}{\vspace{0em}}
    \bibliographystyle{plainnat}
    \IfFileExists{\bibliographyfilename.bib}{\bibliography{\bibliographyfilename}}{}    
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


% ____________________________________________________________________________
%
% References
% ____________________________________________________________________________

% Reference to the labels and numbers of chapter, section, figures, ...
% "memoir" class requires this to be towards the end of the configuration

\RequirePackage[noabbrev]{cleveref}
