#!/bin/bash
# Uno script per memorizzare il comando e tutti gli attributi
# per convertire un MD in EPUB
# --toc per la creazione di una TOC
# --toc-depth=3 per definirne la profondità
# --highlight-style=STYLE --> pygments (the default), kate, monochrome, espresso, zenburn, haddock, tango.
# --css=URL per includere uno o più stylesheet
# --epub-cover-image=FILE
# --epub-stylesheet=FILE
# --epub-metadata=FILE
# --epub-embed-font=FILE
# --section-divs per fare sì che ogni header sia incluso, assieme a tutto il 
#   testo che lo segue, all'interno di una 

clear
echo "Conversione in ePub in corso..."
#pandoc --toc --toc-depth=2 -o test.epub intro.md chapter01.md

#pandoc --toc --toc-depth=2 --epub-stylesheet='epub/style.css' --epub-cover-image='epub/cover.png' -o export/book-test.epub  \
#    epub/metadata.yaml \
#    chapters/01-chapter1.md 

pandoc -s --toc --toc-depth=2  \
    --epub-stylesheet='resources/style.css' --epub-cover-image='resources/cover.png' \
    -o exports/diario-in-codice-test.epub  \
    --highlight-style=kate \
    chapters/* \
    resources/license.md

echo "Conversione ultimata!"
