# DPhil/PhD thesis template
---

LaTeX template for an undergraduate 4th year project (4YP) report or a
DPhil/PhD thesis for a student of the Department of Engineering Science at the
University of Oxford. The typical 4YP report contains around 50 pages, whereas a
DPhil thesis can contain 250 pages. Therefore, there are two class templates
provided: "4ypdocument.cls" for a 4YP report, and "dphilthesis.cls" for a DPhil
thesis.

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

The templates provided in this repository use the LuaLaTeX engine. To compile
your LaTeX document, you can use your favourite editor, the provided script
in this repository, or compile it manually. If you are using a LaTeX editor, configure it to run the "LuaLaTeX" build  process.

There is a script in this repository to compile the document in Unix and macOS
operating systems. For example, to compile the sample 4YP report document,
you will execute the following command:

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
