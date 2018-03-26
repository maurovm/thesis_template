#!/bin/bash
#
# File    : remove_latex_aux_files.sh
# Author  : Mauricio Villarroel
# Created : May 15, 2014
# Updated : $Id$
# ____________________________________________________________________________
# This file is part of ParamEstimator
# 
# ParamEstimator: Copyright (C) 2011-2017 Mauricio Villarroel.
# 
# ParamEstimator is proprietary software, distributed under the terms and
# conditions of the ParamEstimator License Version 1.0.
# You should have received a copy of the license, if not, you may contact the
# author by e-mail (villarroel DOT mauricio AT gmail).
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
