# Oxford Engineering thesis template


OxEngThesis: LaTeX template for an undergraduate 4th year project (4YP) report
or a DPhil/PhD thesis for a student of the 
[Department of Engineering Science](https://www.eng.ox.ac.uk) at 
the [University of Oxford](https://www.ox.ac.uk).

---

"OxEngThesis" is free software: you can redistribute it or modify it
under the terms of the GNU General Public License as published by the Free 
Software Foundation, version 2 only. Please check the file [COPYING](COPYING) 
for more information on the license and copyright.

---

As a student at Oxford, a proportion of your time will be devoted to writing
science in a formal academic style. There are many resources that will help you write
your thesis, such as [Writing your thesis](https://www.mpls.ox.ac.uk/training/resources-for-researcher-and-career-development/completing-your-dphil/writing-up-your-thesis), 
[Completing your doctorate](https://www.vitae.ac.uk/doing-research/doing-a-doctorate/completing-your-doctorate),
[Essay and dissertation writing skills](https://www.ox.ac.uk/students/academic/guidance/skills/essay)
and also other [resources for new students](https://cameralab.eng.ox.ac.uk/resources_new_students.html).

My students have found very helpful to use the LaTeX typesetting system to write
reports, theses, journal papers or other academic documents. You can write your
LaTeX documents from scratch, however, it is often easier to start
with an already written template. This way, you can focus (as your DPhil
supervisor and your viva panel expect) on the contents of your research 
contributions rather than spending time formatting your document or applying 
other cosmetic changes. To this end, this repository contains a LaTeX
template that can be used for a 4th year project (4YP) report or a DPhil/PhD 
thesis. The typical 4YP report contains around 50 pages, whereas a DPhil thesis
can contain approximately 250 pages. Although the LaTeX template was written and
formatted for the [Department of Engineering Science](https://www.eng.ox.ac.uk)
at the [University of Oxford](https://www.ox.ac.uk), it should be easy for you
to adjust the template to suit the requirements of other academic institution.

The main LaTeX class file is [oxengthesis.cls](oxengthesis.cls). Two sample 
documents are provided: [sample_4yp_report.tex](sample_4yp_report.tex) and
[sample_dphil_thesis.tex](sample_dphil_thesis.tex) depending on if you are 
writing a 4YP report or a DPhil thesis respectively. The following screenshots
give you an idea of how the documents looks:


<p align="center">
    <kbd><img src="./figures/dphil-title_page.png" alt="Title page" width="250" border=1 /></kbd>
    ...
    <kbd><img src="./figures/dphil-toc_1.png" alt="TOC page 1" width="250" border=1 /></kbd>
</p>
<h2> <p align="center"> ... </p> </h2>
<p align="center">
    <kbd><img src="./figures/dphil-toc_2.png" alt="TOC page 2" width="250" border=1 /></kbd>
    ...
    <kbd><img src="./figures/dphil-chap_1_1.png" alt="Chapter 1 page 1" width="250" border=1 /></kbd>
</p>
<h2> <p align="center"> ... </p> </h2>
<p align="center">
    <kbd><img src="./figures/dphil-chap_1_2.png" alt="Chapter 1 page 2" width="250" border=1 /></kbd>
    <kbd><img src="./figures/dphil-chap_1_3.png" alt="Chapter 1 page 3" width="250" border=1 /></kbd>
</p>
<h2> <p align="center"> ... </p> </h2>
<p align="center">
    <kbd><img src="./figures/dphil-app_a_1.png" alt="Appendix A page 1" width="250" border=1 /></kbd>
    <kbd><img src="./figures/dphil-app_a_2.png" alt="Appendix A page 2" width="250" border=1 /></kbd>
</p>
<h2> <p align="center"> ... </p> </h2>
<p align="center">
    <kbd><img src="./figures/dphil-bib_1.png" alt="Bibliography page 1" width="250" border=1 /></kbd>
    <kbd><img src="./figures/dphil-bib_2.png" alt="Bibliography page 2" width="250" border=1 /></kbd>
</p>



For a more complete example of the output, you can check the corresponding
sample PDF documents:
[sample_4yp_report-sample_output.pdf](sample_4yp_report-sample_output.pdf) and
[sample_dphil_thesis-sample_output.pdf](sample_dphil_thesis-sample_output.pdf).



## Requirements

There are several options for writing in LaTex, including online versions such
as Overleaf. I don't recommend Overleaf, as you will be writing long documents
with several figures, tables and other elements. In my experience, having LaTeX
installed locally in your computer is a better option.

You will need a modern LaTeX compiler installed in your system, at minimum
version 2017. Most modern operating systems use 
[Tex Live](https://www.tug.org/texlive/) as the preferred LaTeX typesetting
system. If you are using Linux, LaTeX is already pre-installed or is readily 
available from your distribution's software repository. For macOS, you can
download and install the latest [MacTeX](https://tug.org/mactex) distribution. 
For Microsoft Windows, follow the installation instructions described in
[Tex Live on Windows](https://tug.org/texlive/windows.html)


Install the Carlito font (if it's not already installed in your system). Follow
the instructions for your particular operating system in the [fonts](fonts)
directory, for example for [Linux](fonts/INSTALL_FONTS_LINUX.md) or 
[macOS](fonts/INSTALL_FONTS_macOS.md). If you are using Microsoft Windows, 
also install the Latin Modern Math font.


## Writing in LaTeX

There are several editors available that will make your life easier when
writing LaTeX documents and, ultimately, generating the final PDF file (a.k.a 
compiling the LaTeX source files). For macOS, you can use
[TexPad](https://www.texpad.com). Good editors for Linux are
[Kile](https://apps.kde.org/en-gb/kile/) and 
[TeXMaker](https://www.xm1math.net/texmaker/).

After you installed you preferred LaTeX editor, copy either the file 
[sample_dphil_thesis.tex](sample_dphil_thesis.tex) or
[sample_4yp_report.tex](sample_4yp_report.tex) to a new file depending
on if you are writing a DPhil thesis or a 4YP report document respectively.

The frontmatter section will be automatically created depending on the type
of document you are writing. If you want more control, you can review how the
'\makefrontmatterpages' command is defined in the main 
[oxengthesis.cls](oxengthesis.cls) class template. If you want all the sections
in the front matter to appear, you will need to create the following files:

- **[abstract.tex](abstract.tex)** : If you want the "Abstract" page
- **[dedication.tex](dedication.tex)** : If you want the "Dedication" page
- **[declaration.tex](declaration.tex)** : If you want the "Declaration" page
- **[acknowledgements.tex](acknowledgements.tex)** : If you want the "Acknowledgements" page
- **[publications.tex](publications.tex)** : If you want the "List of publications" page
- **[glossary.tex](glossary.tex)** : If you want the "List of abbreviations" page

If any of the files above are missing, that particular page in the front matter
won't be created. This is useful if you are just preparing a draft for your
thesis supervisor.

Similarly, add all the BibTeX citations to a file named 
[references.bib](references.bib) if you want the "Bibliography" section to be
created at the end of your document. 

The LaTeX files in this repository requires the 
[LuaLaTeX](https://en.wikipedia.org/wiki/LuaTeX) engine. You editor should 
allow you to configure LuaLaTeX as the typesetting engine for your document and
automatically take care of the compilation process to generate the final PDF
document.

If you want to compile the document from the command line, you can
use the script [compile_document.sh](compile_document.sh) provided in this
repository. This script only works in a Linux or macOS system. To compile the
sample 4YP report document, for example, you will execute the following 
command in the terminal:

```shell
$ ./compile_document.sh  sample_4yp_report.tex
```

If you are compiling the document manually, you would need to run the
[latexmk](https://ctan.org/pkg/latexmk?lang=en) build command (already part
of your LaTeX distribution) in the following order:

```shell
$ latexmk -pdflatex=lualatex -pdf  sample_4yp_report.tex
$ makeglossaries sample_4yp_report.tex
$ latexmk -pdflatex=lualatex -pdf  sample_4yp_report.tex
```
