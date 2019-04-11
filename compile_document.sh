#!/bin/bash
#
# File    : compile_document.sh
# Author  : Mauricio Villarroel
# Created : Apr 11, 2019
# Updated : $Id$
# ____________________________________________________________________________
# This file is part of ParamEstimator
# 
# ParamEstimator: Copyright (C) 2011-2019 Mauricio Villarroel.
# 
# ParamEstimator is proprietary software, distributed under the terms and
# conditions of the ParamEstimator License Version 1.0.
# You should have received a copy of the license, if not, you may contact the
# author by e-mail (villarroel DOT mauricio AT gmail).
#____________________________________________________________________________
#
# DESCRIPTION :
#
#  Compile a given latex documet
#
#____________________________________________________________________________
#
# USAGE :
#


show_help() {

cat << EOF

    Compile a LaTeX document

Usage:

     compile_document.sh  file_name

Where:

  file_name  : The main LaTeX cile to compile

Example:

 
        compile_document.sh  sample_4yp_report.tex

    The above command will compile the sample 4YP report.

EOF

}


#
# Check command line arguments
#


if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    show_help
    exit -1
fi

file_name=$1

# Check if the document exists

if [ -e "$file_name" ]; then

    file_name=$(basename $1)
    
else

    echo "ERROR: The LaTeX document does not exists: $file_name"
    exit -1
    
fi


# Extract the file name without the extension
document_name=$(echo "$file_name" | cut -f 1 -d '.')


#
# Compile document
#


lualatex  --interaction=nonstopmode $document_name
bibtex $document_name
makeglossaries $document_name
lualatex  --interaction=nonstopmode $document_name
lualatex  --interaction=nonstopmode $document_name
lualatex  --interaction=nonstopmode $document_name



