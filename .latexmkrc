#!/usr/bin/env perl

@default_files    = ('main.tex');

$latex            = 'platex --shell-escape -synctex=1';
$bibtex           = 'pbibtex';
$biber            = 'biber -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'menex %O -o %D %S';
$max_repeat       = 5;

# Generates pdf via dvipdfmx.
# 0: do not generate PDF
# 1: pdflatex
# 2: ps2pdf
# 3: dvi → pdf
$pdf_mode         = 3;

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer.
$pdf_previewer = "open -ga /Applications/Skim.app";

