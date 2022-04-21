#!/bin/bash
#
# File    : remove_latex_aux_files.sh
# Author  : Mauricio Villarroel
# Created : May 15, 2014
# ____________________________________________________________________________
#
# Copyright (C) 2013-2022 Mauricio Villarroel. All rights reserved.
#
# SPDX-License-Identifer:  GPL-2.0-only
# ____________________________________________________________________________
#
# DESCRIPTION :
#
#  Remove all the temp,aux files (except the output pdf file) from the 
# current directory
#
#____________________________________________________________________________

rm -f *.aux  *.acn  *.acr  *.alg \
      *.backup  *.bbl  *.bcf  *-blx.bib  *.blg \
      *.dvi  *.fdb_latexmk  *.fls \
      *.glg  *.glg-abr  *.glo *.glo-abr *.gls *.gls-abr *.glsdefs *.gz \
      *.synctex.gz  *(busy)  \
      *.idx  *.ilg  *.ind  *.ist \
      *.lof  *.log  *.lot \
      *.maf  *.mlf*  *.mlt*  *.mp  *.mtc*  *.nav \
      *.out  *.snm * .synctex.gz  *.tmp  *.toc  *.tui  *.run.xml;
