cd src
pdflatex -output-directory="../build/" -interaction=nonstopmode -file-line-error  main.tex | grep ".*:[0-9]*:.*"