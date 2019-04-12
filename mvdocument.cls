%
% File    : mvdocument.cls
% Author  : Mauricio Villarroel
% Created : Sept 6, 2013
% ____________________________________________________________________________
%
% This file is part of thesis_template
% thesis_template: Copyright (C) 2011-2019 Mauricio Villarroel.
%
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License version 2 as published 
% by the Free Software Foundation; either version 2 of the License.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
% Public License for more details.
% ____________________________________________________________________________
%
% DESCRIPTION :
%
% Latex template for a project report based on the 
% class file for a DPhil thesis of the Engineerind department of 
% the University of Oxford
%
% ____________________________________________________________________________


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mvdocument}[2017/12/20 v0.4 book class]

\LoadClass[10pt,a4paper,twoside,openany,final]{memoir}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASIC LATEX CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ____________________________________________________________________________
%
% Minimum packages to include
% ____________________________________________________________________________


\RequirePackage{textcomp}
\RequirePackage{lipsum}


% ____________________________________________________________________________
%
% Custom colours
% ____________________________________________________________________________


\RequirePackage{color}

% TODO tags
\newcommand{\todo}[1]{\textcolor{red}{@TODO: #1}}


% ____________________________________________________________________________
%
% Common measurement units
% ____________________________________________________________________________


\RequirePackage{siunitx}
\DeclareSIUnit\year{yr}
\DeclareSIUnit\hours{hrs}
\DeclareSIUnit\bepm{beats/min}
\DeclareSIUnit\brpm{breaths/min}


% ____________________________________________________________________________
%
% Configure the main font for the document
% ____________________________________________________________________________


\RequirePackage{fontspec}
\setmainfont{Carlito}


% ____________________________________________________________________________
%
% No hyphenation
% ____________________________________________________________________________


\RequirePackage[none]{hyphenat}


% ____________________________________________________________________________
%
% Configure math
% ____________________________________________________________________________


\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\setmathfont{Latin Modern Math}


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
% Paragraph indentation
% ____________________________________________________________________________


\setlength{\parindent}{2em}


% ____________________________________________________________________________
%
% Widows and orphans
% ____________________________________________________________________________


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
% Fix microtype interword spacing
% ____________________________________________________________________________


\RequirePackage[activate={true,nocompatibility},final,tracking=true]{microtype}

\microtypecontext{spacing=nonfrench}


% ____________________________________________________________________________
%
% Cross links
% ____________________________________________________________________________


\RequirePackage[hyperindex=true,colorlinks=true,pagebackref=false,allcolors=black,plainpages=false,pdfpagelabels,bookmarksnumbered]{hyperref}


% ____________________________________________________________________________
%
% Reference to the labels and numbers of chapter, section, figures, ...
% ____________________________________________________________________________


\RequirePackage[noabbrev]{cleveref}


% ____________________________________________________________________________
%
% Debugging
% ____________________________________________________________________________


% DO NOT DELETE: Uncomment the lines below to have more verbose diagnostics

% Show overfull errors
%\overfullrule=15pt

% Used temporarly for checking layout
%\RequirePackage{layout}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FRONT MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\aliaspagestyle{chapter}{empty}


% ____________________________________________________________________________
%
% Glossaries
% ____________________________________________________________________________


\RequirePackage[toc=true,nopostdot=false,noredefwarn=false,nonumberlist,nogroupskip,abbreviations,nomain,automake,shortcuts=abbreviations]{glossaries-extra}

\addtodef{\frontmatter}{
    \glsunsetall
}{}


% ____________________________________________________________________________
%
% Format the title page
% ____________________________________________________________________________


% The year and term the thesis is submitted 
\def\degreedate#1{\gdef\@degreedate{#1}}

% The name of your Oxford college (e.g. Christ Church, Pembroke)
\def\college#1{\gdef\@college{#1}}

% The name of the university(e.g. University of Oxford)
\def\university#1{\gdef\@university{#1}}

% Filename for the university's logo
\def\universitylogo#1{\gdef\@universitylogo{#1}}

% The name of your supervisor
\def\supervisor#1{\gdef\@supervisor{#1}}
 
 %define title page layout
 \renewcommand{\maketitle}{%

   \setcounter{page}{0}
   \pdfbookmark[0]{Title page}{title}
   \renewcommand{\footnotesize}{\small}
   \renewcommand{\footnoterule}{\relax}
   \thispagestyle{empty}
   \null\vfill
   \begin{center}
     { \Huge {\bfseries {\@title}} \par}
     \vspace*{20mm}
     {\includegraphics[width=60mm,keepaspectratio=true]{\@universitylogo} \par}
     \vspace*{20mm}
     {{\Large \@author} \par}
     {\large \vspace*{1ex}
     {{\@college} \par}
     \vspace*{1ex}
     {{\@university} \par}
     \vspace*{4ex}
     {Supervised by \par}
     \vspace*{1ex}
     {{\@supervisor} \par}
     \vspace*{4ex}
     \vspace*{2ex}
     {\@degreedate}}
   \end{center}
   \null\vfill   
   \clearpage
   \shipout\null
   
 }


% ____________________________________________________________________________
%
% Declaration page
% ____________________________________________________________________________


\newenvironment{declaration} {
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \DoubleSpacing
    \chapter*{Declaration}
}


% ____________________________________________________________________________
%
% Dedication page
% ____________________________________________________________________________


\newenvironment{dedication} {
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \DoubleSpacing
    \setlength{\epigraphwidth}{0.5\textwidth}
    \renewcommand*{\chapterheadstart}{\vspace*{\beforechapskip}}
    \chapter*{}
}


% ____________________________________________________________________________
%
% Acknowledgements page
% ____________________________________________________________________________


\newenvironment{acknowledgements} {
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \OnehalfSpacing
    \chapter*{Acknowledgements}
}
  
  
% ____________________________________________________________________________
%
% Abstract page
% ____________________________________________________________________________


\renewenvironment{abstract} {
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \OnehalfSpacing
    \chapter*{Abstract}
}


% ____________________________________________________________________________
%
% List of contributors
% ____________________________________________________________________________

\RequirePackage{multicol}

\newcommand{\contributor}[2]{
\noindent
\textbf{#1} \\
#2 \par
}


% ____________________________________________________________________________
%
% The Table Of Contents
% ____________________________________________________________________________


\makepagestyle{toc}
  \makeheadrule{toc}{\textwidth}{0.3pt}
  \makeevenhead{toc}{\thepage}{}{\bfseries{Table of contents}}
  \makeoddhead {toc}{\bfseries{Table of contents}}{}{\thepage}

\renewcommand{\contentsname}{Table of contents}
\renewcommand*{\tocheadstart}{\vspace{0em}}

\addtodef{\tableofcontents}{
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \SingleSpacing
    \setcounter{tocdepth}{2}
    \pagestyle{toc}
    \setlength{\cftbeforechapterskip}{0.8em \@plus\p@}
}{}

% Fix hbox overfull warnings in TOC

\renewcommand*{\cftdotsep}{1}
\setpnumwidth{3em}
\setrmarg{4em}



% ____________________________________________________________________________
%
% The List Of Figures
% ____________________________________________________________________________


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


% ____________________________________________________________________________
%
% The List Of Tables
% ____________________________________________________________________________


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


% ____________________________________________________________________________
%
%  Glossary
% ____________________________________________________________________________


\makepagestyle{loa}
    \makeheadrule{loa}{\textwidth}{0.3pt}
    \makeevenhead{loa}{\thepage}{}{\bfseries{List of abbreviations}}
    \makeoddhead {loa}{\bfseries{List of abbreviations}}{}{\thepage}
  
\renewcommand*{\abbreviationsname}{List of abbreviations}

%The colour of the glossary links
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%\let\Chaptermark\chaptermark
%\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}
%
%%\newcommand*{\thesectionname}{\@currentlabelname}
%
%\let\Sectionmark\sectionmark
%\def\sectionmark#1{\def\Sectionname{#1}\Sectionmark{#1}}
%
%\makepagestyle{mainpage}
%  \makeheadrule{mainpage}{\textwidth}{0.3pt}
%  \makeevenhead{mainpage}{\thepage}{}{\bfseries{\thesection.~\Sectionname}}
%  \makeoddhead {mainpage}{\bfseries{\chaptername~\thechapter.~\Chaptername}}{}{\thepage}
%
%
%\addtodef{\mainmatter}{
%    \if@openright
%      \cleardoublepage
%    \else
%      \clearpage
%    \fi
%    \OnehalfSpacing   
%    \pagestyle{mainpage}
%}{}


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


% ____________________________________________________________________________
%
% Bibliography
% ____________________________________________________________________________


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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Extra configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ____________________________________________________________________________
%
% Page boundary issues
% ____________________________________________________________________________

% Suppress some underfull \vbox warnings

\makeatletter
 \def\@textbottom{\vskip \z@ \@plus 1pt}
 \let\@texttop\relax
\makeatother

