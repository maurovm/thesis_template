#!/bin/bash
#
# File    : compile_document.sh
# Author  : Mauricio Villarroel
# Created : Apr 11, 2019
# ____________________________________________________________________________
#
# Copyright (C) 2013-2022 Mauricio Villarroel. All rights reserved.
#
# SPDX-License-Identifer:  GPL-2.0-only
# ____________________________________________________________________________
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

latexmk -pdflatex=lualatex -pdf  $document_name
makeglossaries $document_name
latexmk -pdflatex=lualatex -pdf  $document_name



