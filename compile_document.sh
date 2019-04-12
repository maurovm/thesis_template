#!/bin/bash
#
# File    : compile_document.sh
# Author  : Mauricio Villarroel
# Created : Apr 11, 2019
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



