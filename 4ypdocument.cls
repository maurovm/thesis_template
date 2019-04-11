%
% File    : dphilthesis
% Author  : Mauricio Villarroel
% Created : Apr 10, 2017
% ____________________________________________________________________________
%
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by the
% Free Software Foundation; either version 2 of the License.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
% Public License for more details.
% ____________________________________________________________________________
%
% DESCRIPTION :
%
% Latex template for a 4YP Report of the Engineering department of 
% the University of Oxford
%
% ____________________________________________________________________________


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{4ypdocument}[2017/12/20 v0.4 book class]

\LoadClass{mvdocument}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\let\Chaptermark\chaptermark
\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}

%\newcommand*{\thesectionname}{\@currentlabelname}

\let\Sectionmark\sectionmark
\def\sectionmark#1{\def\Sectionname{#1}\Sectionmark{#1}}

\makepagestyle{mainpage}
  \makeheadrule{mainpage}{\textwidth}{0.3pt}
  \makeevenhead{mainpage}{\thepage}{}{\bfseries{\thesection.~\Sectionname}}
  \makeoddhead {mainpage}{\bfseries{\chaptername~\thechapter.~\Chaptername}}{}{\thepage}
  \setlength\beforechapskip{0\baselineskip}
  \setlength\midchapskip{0\baselineskip}


\addtodef{\mainmatter}{
    \if@openright
      \cleardoublepage
    \else
      \clearpage
    \fi
    \OnehalfSpacing
    %\chapterstyle{article}
    \pagestyle{mainpage}
}{}

