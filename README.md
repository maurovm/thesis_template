# Oxford thesis template


LaTeX template for an undergraduate 4th year project (4YP) report or a 
DPhil/PhD thesis for a student of the Department of Engineering Science at 
the University of Oxford.

---

"OxEngThesis" is free software: you can redistribute it or modify it
under the terms of the GNU General Public License as published by the Free 
Software Foundation, version 2 only. Please check the file [COPYING](COPYING) 
for more information on the license and copyright.

---

As a student at Oxford, a proportion of your time will be devoted to writing
science in a formal academic style. My students have found very helpful to
use the LaTeX typesetting system to write reports, theses, journal papers or 
other academic documents.

You can write your documents from scratch, however, it is often easier to start
with an already written LaTeX template. This repository contains a LaTeX template
for a 4th year project (4YP) report and a DPhil/PhD thesis for a student of the 
Department of Engineering Science at the University of Oxford. The typical 4YP
report contains around 50 pages, whereas a DPhil thesis can contain 
approximately 250 pages. If you are not writing a thesis or report for the 
University of Oxford, you can adjust the template to your needs.

The main LaTeX class file is "oxengthesis.cls". Two sample documents are
provided: "sample_4yp_report.tex" and "sample_dphil_thesis.tex" depending on
if you are writing a 4YP report or a DPhil thesis respectively.


## Requirements

There are several options for writing in LaTex, including online versions such
as Overleaf. I don't recommend Overleaf, as you will be writing long documents
with several figures, tables and other elements. In my experience, having LaTeX
installed locally in your computer is a better option.

You will need a modern LaTeX compiler installed in your system, at minimum,
version 2017. Most modern operating systems use 
[Tex Live](https://www.tug.org/texlive/) as the preferred LaTeX typesetting
system. If you are using Linux, LaTeX is already pre-installed or is readily 
available from your distribution's software repository. For macOS, you can
download and install the latest [MacTeX](https://tug.org/mactex) distribution. 
For Microsoft Windows, follow the installation instructions in
[Tex Live on Windows](https://tug.org/texlive/windows.html)


Install the Carlito font (if it's not already installed in your system). Follow
the instructions for your particular operating system in the [fonts](fonts)
directory, for example for [Linux](fonts/INSTALL_FONTS_LINUX.md) or 
[macOS](fonts/INSTALL_FONTS_macOS.md). If you are using Microsoft Windows, 
also install the Latin Modern Math font.


## Writing in LaTeX

There are several editors available that will make your life easier when
writing LaTex documents and, ultimately, generating the final PDF file (a.k.a 
compiling the LaTeX source files). For macOS, you can use
[TexPad](https://www.texpad.com) as your editor. Good editors for Linux are
[Kile](https://apps.kde.org/en-gb/kile/) and 
[TeXMaker](https://www.xm1math.net/texmaker/).

After you installed you preferred LaTeX editor, copy either the file 
"sample_dphil_thesis.tex" or "sample_4yp_report.tex" to a new file depending
on if you are writing a DPhil thesis or a 4YP report document respectively.

The frontmatter section will be automatically created depending on the type
of document you are writing. If you want more control, you can review how the
'\makefrontmatterpages' command is defined in the main 
[oxengthesis.cls](oxengthesis.cls) class template. If you want all the sections
in the front matter to appear, you will need to create the following files:

- **"abstract.tex"** : If you want the "Abstract" page
- **"dedication.tex"** : If you want the "Dedication" page
- **"declaration.tex"** : If you want the "Declaration" page
- **"acknowledgements.tex"** : If you want the "Acknowledgements" page
- **"publications.tex"** : If you want the "List of publications" page
- **"glossary.tex"** : If you want the "List of abbreviations" page

If any of the files above are missing, that particular page in the front matter
won't be created. This is useful if you are just preparing a draft for your
thesis supervisor.

Similarly, add all the BibTeX citations to a file named "references.bib" if you
want the "Bibliography" section to be created at the end of your document. 


The LaTeX files in this repository requires the LuaLaTeX engine.
You editor should allow you to configure LuaLaTeX as the typesetting engine 
for your document and automatically take care of the compilation process
to generate the final PDF document.

If you want to compile the document from the command line, you can
use the script "compile_document.sh" provided in this repository. This script
only works in a Linux or macOS system. To compile the sample 4YP report
document, you will execute the following command in the terminal:

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
