# DPhil thesis template
--------------------------

Latex template for a research progress report or a DPhil thesis for a graduate student of the Department of Engineering Science at the University of Oxford.

Requirements
--

You will need a recent version of latex installed in your system, such as Latex 2017. Install the Carlito font following the instructions for your particular operating system from the "fonts" directory. If you are using Windows system, also install the Latin Modern Math font from the "fonts" directory.

Generate PDF
--

If you are using a Latex editor, configure it to run the "Lualatex" build process. If you are compiling the document manually, you would need to run the following commands:

1. lualatex  --interaction=nonstopmode project_document
2. bibtex project_document
3. makeglossaries project_document
4. lualatex  --interaction=nonstopmode project_document


You might need to run the "lualatex" command in step 4 above multiple times depending how complex is your document. Use the script "remove_latex_aux_files.sh" (in Linux or macOS) to clean the latex build.
