# DPhil/PhD thesis template
---

As a student at Oxford, a significant proportion of your research time will be
devoted to writing science in a formal academic style. My students have found very
productive to use the LaTeX
typesetting system to write reports, theses, journal papers or other academic
documents.

You can write your documents from scratch, however, it is often easier
to start with an already written LaTeX template. This repository contains LaTeX
templates for a 4th year project (4YP) report and a
DPhil/PhD thesis for a student of the Department of Engineering Science at the
University of Oxford. The typical 4YP report contains around 50 pages, whereas a
DPhil thesis can contain 250 pages. The main LaTeX class file is "mvdocument.cls".
Two sample documents are provided: "sample_4yp_report.tex" and "sample_dphil_thesis.tex"
for a 4YP report and DPhil thesis respectively.

There are several software options for writing in LaTex, including online versions
such as Overleaf. I don't recommend Overleaf, as you will be writing long documents
with several figures, tables and other elements. In my experience, having LaTeX
installed locally in your computer is a better option. For macOS, you can download
the latest [MacTeX distribution](https://tug.org/mactex) and use
[TexPad](https://www.texpad.com) as your editor (or any other popular editor).
In linux, LaTeX is already pre-installed or readily available from your
distribution's software repository. Good editors for Linux are Kile and TeXMaker.

For more information and resources, visit our
[Laboratory](https://cameralab.eng.ox.ac.uk) page and our institute:

```
Institute of Biomedical Engineering
Department of Engineering Science
University of Oxford
Old Road Campus Research Building
Oxford, OX3 7DQ,
United Kingdom
```


Requirements
--

You will need a recent version of LaTeX installed in your system, such as
Latex 2017. Install the Carlito font (if it's not already installed) following
the instructions for your particular operating system in the "fonts"
directory. If you are using Microsoft Windows, also install the Latin Modern Math
font.

Generate PDF output
--

Copy either the file "sample_dphil_thesis.tex" or "sample_4yp_report.tex" to a
new file depending on if you are writing a DPhil thesis or a 4YP report document
respectively.

The LaTeX class file in this repository requires the LuaLaTeX engine.
You can use your favourite LaTex editor for your platform. We recommend
TexPad as the editor in macOS. Kile or TeXMaker are good
options for Linux.

You can also manually compile the document from the command line using the
script provided in this repository: "compile_document.sh". This script only
works in a Linux or macOS system. For example, to compile the sample 4YP report
document, you will execute the following command:

```shell
$ ./compile_document.sh  sample_4yp_report.tex
```

If you are compiling the document manually, you would need to run the
following commands:

1. lualatex  --interaction=nonstopmode sample_4yp_report
2. bibtex sample_4yp_report
3. makeglossaries sample_4yp_report
4. lualatex  --interaction=nonstopmode sample_4yp_report


You might need to run the "lualatex" command in step 4 above multiple times
depending how complex your document is. Use the script
"remove_latex_aux_files.sh" (in Linux or macOS) to clean the LaTeX temp build
files.
