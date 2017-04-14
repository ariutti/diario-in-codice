### Graphviz

Come usare **graphviz** per creare i grafici usati come illustrazioni per alcune parti del libro.
Gli [attributi](http://www.graphviz.org/doc/info/attrs.html) e l'uso da [linea di comando](http://www.graphviz.org/content/command-line-invocation).

### push sul repository

da linea di comando usa questa stringa:

```
git push origin gh-pages
```


## Note per PANDOC

I files ```.md``` realizzati per le pagine del sito saranno poi riutilizzati per ottenere una versione ```ePub``` e ```PDF``` del sito.

### Immagini

Ecco come inserire una immagine senza che pandoc ne ricavi una didascalia ma, al contempo, fornendo un attributo _alt_ affinchè la validazione dell'elemento <img> vada a buon fine:

    ![img](./illustrations/license-by-sa.png)<!-- no caption -->

In tale caso l'attributo alt è settato a 'img'.

Un elemento di tipo **figure** è una immagine che viene inclusa all'interno del proprio elemento _div_ e in genere possiede sia un alt che una didascalia. Invece una illustrazione (immagine) è qualcosa che viene inclusa in un elemento _p_ ed è pensata per essere mostrata con il testo che le scorre attorn

### Ottenere la versione ePub del libro

Per ottenere la versione ```epub``` del libro seguire entrare dapprima nella cartella ```resources/versione_epub```.

I file sorgente sono contenuti nelle cartelle:

* TODO chapters (contenente i files sorgente con il testo della pubblicazione);
* epub (contenente un file per i metadati, l'immagine della copertina e il foglio di stile);
* illustrations (contentente le illustrazioni utilizzate all'interno della pubblicazione);
* fonts (contiene i fonts utilizzati nel libro);

Il file epub ottenuto dalla conversione viene posizionato nella cartella _export_.

Il libro sarà creato utilizzando il programma [pandoc](http://pandoc.org/). Il comando usato per operare la conversione è quello mostrato all'interno dello script _convert.sh_.

### Epub validarion

Per verificare la validità del file epub ottenuto dopo la conversione, si può utilizzare il seguente strumento:

* [http://validator.idpf.org/](http://validator.idpf.org/);

## Licenza

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.
To view a copy of this license, visit [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/).
