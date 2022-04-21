# OxEngThesis


LaTeX template for an undergraduate 4th year project (4YP) report or a 
DPhil/PhD thesis for a student of the Department of Engineering Science at 
the University of Oxford.

---

"OxEngThesis" is free software: you can redistribute it or modify it
under the terms of the GNU General Public License as published by the Free 
Software Foundation, version 2 only. Please check the file [COPYING](COPYING) 
for more information on the license and copyright.

---

As a student at Oxford, a significant proportion of your research time will be
devoted to writing science in a formal academic style. My students have found
very productive to use the LaTeX typesetting system to write reports, theses, 
journal papers or other academic documents.

You can write your documents from scratch, however, it is often easier to start
with an already written LaTeX template. This repository contains LaTeX templates
for a 4th year project (4YP) report and a DPhil/PhD thesis for a student of the 
Department of Engineering Science at the University of Oxford. The typical 4YP
report contains around 50 pages, whereas a DPhil thesis can contains 
approximately 250 pages.

The main LaTeX class file is "oxengthesis.cls". Two sample documents are
provided: "sample_4yp_report.tex" and "sample_dphil_thesis.tex" depending if 
you are writing a 4YP report or a DPhil thesis respectively.

There are several options for writing in LaTex, including online versions such
as Overleaf. I don't recommend Overleaf, as you will be writing long documents
with several figures, tables and other elements. In my experience, having LaTeX
installed locally in your computer is a better option. For macOS, you can 
download the latest [MacTeX distribution](https://tug.org/mactex) and use
[TexPad](https://www.texpad.com) as your editor (or any other popular editor).
In linux, LaTeX is already pre-installed or readily available from your
distribution's software repository. Good editors for Linux are
[Kile](https://apps.kde.org/en-gb/kile/) and 
[TeXMaker](https://www.xm1math.net/texmaker/).

For more information, browse our
[laboratory](https://cameralab.eng.ox.ac.uk) resources, or visit us at:

[Institute of Biomedical Engineering](https://www.ibme.ox.ac.uk) </br>
Department of Engineering Science</br>
University of Oxford</br>
Old Road Campus Research Building</br>
Oxford, OX3 7DQ,</br>
United Kingdom</br>

</br>

## Requirements

You will need a modern LaTeX compiler installed in your system, at minimum,
version 2017. If you are using Linux, follow your distribution's instructions
to install [Tex Live](https://www.tug.org/texlive/). For macos, you can
download and install [MacTeX](https://tug.org/mactex). For Microsoft Windows,
follow the installation instructions in
[Tex Live on Windows](https://tug.org/texlive/windows.html)


Install the Carlito font (if it's not already installed in your system). Follow
the instructions for your particular operating system in the [fonts](fonts)
directory, for example for [Linux](fonts/INSTALL_FONTS_LINUX.md) or 
[macOS](fonts/INSTALL_FONTS_macOS.md). If you are using Microsoft Windows, 
also install the Latin Modern Math font.

## Generate PDF document

Copy either the file "sample_dphil_thesis.tex" or "sample_4yp_report.tex" to a
new file depending on if you are writing a DPhil thesis or a 4YP report document
respectively.

The LaTeX class file in this repository requires the LuaLaTeX engine.
You can clonfigure your favourite LaTex editor for your platform. I recommend
[TexPad](https://www.texpad.com) as the editor in macOS.
[Kile](https://apps.kde.org/en-gb/kile/) or 
[TeXMaker](https://www.xm1math.net/texmaker/) are good options for Linux.

You can also manually compile the document from the command line using the
script provided in this repository: "compile_document.sh". This script only
works in a Linux or macOS system. For example, to compile the sample 4YP report
document, you will execute the following command:

```shell
$ ./compile_document.sh  sample_4yp_report.tex
```

If you are compiling the document manually, you would need to run the
latexmk build command in the following order:

```shell
$ latexmk -pdflatex=lualatex -pdf  sample_4yp_report.tex
$ makeglossaries sample_4yp_report.tex
$ latexmk -pdflatex=lualatex -pdf  sample_4yp_report.tex
```