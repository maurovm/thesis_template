# Oxford Engineering thesis template


OxEngThesis: LaTeX template for an undergraduate 4th year project (4YP) report
or a DPhil/PhD thesis for a student of the 
[Department of Engineering Science](https://www.eng.ox.ac.uk) at 
the [University of Oxford](https://www.ox.ac.uk).

&nbsp;

---

"OxEngThesis" is free software: you can redistribute it or modify it
under the terms of the GNU General Public License as published by the Free 
Software Foundation, version 2 only. Check the file [COPYING](COPYING) for more
information on the license and copyright.

---
&nbsp;

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

&nbsp;

---

&nbsp;

## Usage examples

&nbsp;

The [oxengthesis.cls](oxengthesis.cls) class template is based on the
[memoir](https://ctan.org/pkg/memoir?lang=en) LaTeX package, with the addition
of several other packages and features. In this section, I will summarise some
of them, but take a look at the  [oxengthesis.cls](oxengthesis.cls) file and the
sample [sample_dphil_thesis.tex](sample_dphil_thesis.tex) / 
[sample_4yp_report.tex](sample_4yp_report.tex) documents for a more 
complete overview.


### <u>Mark text as TODO</u>


You can wrap text in "todo" tags so they appear in red colour in the PDF
document. For example: 

```latex
    \todo{Add a citation to reference the latest research}
```


### <u>Figures</u>


You can put all figures in a "figures/" folder and you can simply include the 
image file directly without the file extension, as in:

```latex
\begin{figure}
    \centering
    \includegraphics[width=0.9\linewidth]{dummy_image}
    \caption
    {
        Sample image.
        \label{fig:sample_image}
    }
\end{figure}
```

will insert the image file "./figures/dummy_image.png".

You can create a figure with sub plots with:

```latex
\begin{figure}[
    \centering
    \subbottom[\label{fig:subfig_example:fig1}]{
        \includegraphics[width=0.3\linewidth]{dummy_image}
    }
    \subbottom[\label{fig:subfig_example:fig2}]{
        \includegraphics[width=0.3\linewidth]{dummy_image}
    }
    \subbottom[\label{fig:subfig_example:fig3}]{
        \includegraphics[width=0.3\linewidth]{dummy_image}
    }
    \caption[The PointGrey Grasshopper2 video camera]
    {
        Caption of the figure, showing:
        \subcaptionref{fig:subfig_example:fig1} description 1,
        \subcaptionref{fig:subfig_example:fig2} description 2 and
        \subcaptionref{fig:subfig_example:fig3} description 3.
        \label{fig:subfig_example}
    }
\end{figure}
```

which will automatically produce the following output:

<p align="center">
    <img src="./figures/subplot_example.png" alt="Subplot example" width="500"/>
</p>

You can directly refer to the subplot as in:

```latex
\Cref{fig:subfig_example:fig1} shows the camera ...
 ```

 it will automatically produce the text "Figure 3.2(a) shows the camera ..."


 ### <u>Tables</u>

 You can have tables with shaded headers with:

 ```latex
\begin{table}
    \centering
    \caption{General features and specification for ...}
    \singleTableRowHeight
    \begin{tabular}{ll}

        \tableHeaderStart
        \tableHCell{Item} & \tableHCell{Description} \\
        \tableHeaderEnd

        Imaging Sensor        & Sony ICX625 2/3" progressive scan CCD \\
        Image size (pixels)   & 2448 (H) x 2048 (V)                   \\
        Pixel Size            & 3.45 \si{\micro\metre} x 3.45 \si{\micro\metre} \\
        A/D Converter         & AD9977 14-bit, dual-channel           \\
        Max frame rate        & 15 FPS                                \\
        Video Data Output     & 8, 12, 16 and 24-bit digital data     \\
        Gain \& Exposure                  & Automatic/Manual/One-Push \\
        Lens Mount            & C-mount                               \\
        Interface             & Gigabit Ethernet                      \\
        Physical dimensions   & 44 (W) mm x 29 (H) mm x 58 (L) mm     \\
        \hline 

    \end{tabular}
    \label{table:camera_specs}
\end{table}
 ```

which will produce the following output:

<p align="center">
    <img src="./figures/table_example_with_shaded_header.png" alt="Table with shaded header" width="500"/>
</p>

or you can have more complex table as in:

```latex
\begin{table}[htb]
  \centering
  \caption{Summary of population demographics in the training and test sets}
  {
    \small
    \begin{tabular}{p{2cm} c c c c c c c c c c}
      \toprule

      Set &
      \multirowcell{2}{Number of\\subjects} &
      \multirowcell{2}{Total time\\(hours)}$^1$ &
      \multicolumn{2}{c}{Gender} &      
      \multicolumn{6}{c}{Ethnicity$^2$}  \\

      \cmidrule{4-11}
        
      &  &  & Male & Female & W & B & A & WB & WA & O  \\
      \midrule
      Training  & 15 & 216.6 & 8  & 7  & 10 & 1   & 1 & 1 & 1 & 1 \\        
      Test      & 15 & 210.0 & 10 & 5  & 10 & $-$ & 1 & 1 & 2 & 1 \\        
      \midrule        
      Total	& 30 & 426.6 & 18 & 12 & 20 & 1   & 2 & 2 & 3 & 2 \\
        
      \bottomrule
        
      \multicolumn{11}{l}
      {
        \footnotesize $^1$ Period during which both reference and estimated data were being recorded simultaneously.        
      } \\        
      \multicolumn{11}{l}
      {        
        \footnotesize $^2$ W = White, B = Black, A = Asian, WB = Mixed White \& Black, WA = Mixed White \& Asian and O = Other.        
      } \\
        
      \end{tabular}      
  } 
  \label{table:patient_demographics}
\end{table}
```

which will produce the following output:

<p align="center">
    <img src="./figures/table_example_complex.png" alt="Complex table" width="500"/>
</p>


### <u>Glossaries</u>


The [glossaries-extra](https://ctan.org/pkg/glossaries-extra?lang=en) is used
to automatically add the "List of abbreviations" page in the front matter. 
Simply create a file with the name [glossary.tex](glossary.tex) and add all
your definitions. In the your main document you can later use tags such as:

```latex
The standard vital signs include temperature, \af{hr}, \af{rr}, 
blood pressure and, when appropriate, \af{spo2}.
```

which will automatically create the following output:

```
The standard vital signs include temperature, heart rate (HR), 
respiratory rate (RR), blood pressure and, when appropriate, 
peripheral oxygen saturation (SpO2).
```
and automatically create the "List of abbreviations" pages:

<p align="center">
    <kbd><img src="./figures/dphil-glossary.png" alt="Glossary page" width="300" border=1 /></kbd>
</p>


### <u>Cross-referencing labels</u>


The [cleveref](https://ctan.org/pkg/cleveref?lang=en) is used to improve cross
references to chapters, sections, figures and other common LaTeX labels. For
example the following text:

```latex
\Cref{chapter:literature_review} discusses .... is presented in 
\cref{chapter:dataset} with a detailed ...


The summary of the demographics for the entire set is described in
\cref{table:patient_demographics} ...


\Cref{fig:subfig_example} shows the video camera used in the study.
\Cref{fig:subfig_example:fig1} shows the camera, as opposed to 
\cref{fig:subfig_example:fig2}, which shows the lens ...


```
will produce the following output:

```
Chapter 2 discusses .... is presented in chapter 3 with a detailed ...


The summary of the demographics for the entire set is described in table 3.2 ...


Figure 3.2 shows the video camera used in the study. Figure 3.2(a)
shows the camera, as opposed to figure 3.2(b), which shows
the lens ...

```

&nbsp;


Take a look at the  [oxengthesis.cls](oxengthesis.cls) file and the
sample [sample_dphil_thesis.tex](sample_dphil_thesis.tex) / 
[sample_4yp_report.tex](sample_4yp_report.tex) documents for a more 
complete overview nof what you can do with the provided LaTeX class template.