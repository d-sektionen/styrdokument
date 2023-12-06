#!/bin/bash



for i in *.tex;
do
  pdflatex -halt-on-error -output-directory output $i
  pdflatex -halt-on-error -output-directory output $i;
done

# Compress pdfs
# for i in output/*.pdf;
# do
#   ps2pdf $i $i;
# done


echo "Script finished."