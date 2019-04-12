#!/bin/bash
#
# File    : remove_latex_aux_files.sh
# Author  : Mauricio Villarroel
# Created : May 15, 2014
# Updated : $Id$
# ____________________________________________________________________________
#
# This file is part of thesis_template
# thesis_template: Copyright (C) 2011-2019 Mauricio Villarroel.
# 
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 as published 
# by the Free Software Foundation; either version 2 of the License.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
# Public License for more details.
#____________________________________________________________________________
#
# DESCRIPTION :
#
#  Remove all the temp,aux files (except the output pdf file) from the 
# current directory
#
#____________________________________________________________________________

rm -f *.aux *.acn *.acr *.alg \
      *.backup *.bbl *.bcf *-blx.bib *.blg \
      *.dvi *.fdb_latexmk *.fls \
      *.glg *.glg-abr *.glo *.glo-abr *.gls *.gls-abr *.glsdefs *.gz \
      *.idx *.ilg *.ind *.ist \
      *.lof *.log *.lot \
      *.maf *.mlf* **.mlt* *.mp *.mtc* *.nav \
      *.out *.snm *.synctex.gz *.tmp *.toc *.tui *.xml;
