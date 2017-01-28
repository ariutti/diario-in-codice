---
layout: post
title: ePub, i primi test
date: 2016-06-20 09:00:00
excerpt: esperimenti con pandoc e calibre...
---

Bentrovato!

Eccomi di ritorno dopo qualche settimana di silenzio. Mi spiace non essere riuscito a postare prima, sono state settimane intense che però non mi hanno impedito di raccogliere nuove informazioni e proseguire il lavoro sul libro **Diario in codice** (se è la prima volta che ne senti parlare dai un'occhiata [qui](https://www.produzionidalbasso.com/project/diario-in-codice/)


![logo ePub](http://www.limulo.net/images/diario-in-codice/logo_epub.jpg)

Come prima cosa credo di avere individuato lo strumento ideale per la creazione della versione ePub del libro: si tratta di un programma che permette di creare un file _.epub_ a partire da un semplice file di testo opportunamente formattato.

Facciamo un passo indietro e cominciamo dall'inizio: [ePub](https://en.wikipedia.org/wiki/EPUB) è il nome di una tecnologia standard e aperta per la creazione dei libri in formato elettronico. Questo standard è stato sviluppato e viene mantenuto dal [IDPF](http://idpf.org/) una associazione che riunisce sviluppatori, editori, autori e gruppi di interesse che operano nel campo dell'editoria digitale.

**ePub** fa uso di un gran numero di tecnologie già note e ampiamente utilizzate nel web come il linguaggio di formattazione [XML](https://en.wikipedia.org/wiki/XML), il [CSS](https://en.wikipedia.org/wiki/Cascading_Style_Sheets) (il linguaggio che si usa per descrivere e presentare i contenuti) e il formato di compressione .ZIP.

Ho scoperto che costruire un _ePub_ in fondo non è molto diverso rispetto allo scrivere il codice di una pagina web come questa dalla quale stai leggendo. La cosa secondo me ancora più interessante è che esistono strumenti che permettono, in modo quasi del tutto automatico, di ottenere un file _ePub_ senza per forza dover conoscere i linguaggi del web: **Calibre** e **pandoc** sono solo due di questi strumenti.

[Calibre](http://calibre-ebook.com/), forse lo conosci, è un programma (libero) che di base si occupa di gestire la nostra libreria digitale e di trasferire libri da/al nostro ereader. Inoltre contiene una serie di potenti strumenti che permettono di convertire documenti di testo praticamente da qualsiasi formato a qualsiasi altro, compreso il formato _.epub_! Basta dare un'occhiata [qui](http://manual.calibre-ebook.com/index.html) per rendersi conto di quali siano le sue capacità, inoltre possiede una documentazione molto ben fatta ed è facile e intuitivo da utilizzare.

Dopo aver speso un po' di tempo su _Calibre_, ho trovato un altro programma (libero anch'esso) chiamato [pandoc](http://pandoc.org/) e me ne sono innamorato! Pandoc in pratica si occupa esclusivamente di conversioni di documenti di testo (anche _ePub_); a differenza di _Calibre_, non possiede una interfaccia grafica e si usa come comando da terminale.

Come funziona? in pratica si prepara un file di testo opportunamente formattato poi si invoca _pandoc_ con gli opportuni settaggi e si otterrà in uscita il libro in formato _.epub_, pronto per essere letto sul nostro ereader.


![repository download](http://www.limulo.net/images/diario-in-codice/Pandoc-conversion-01.png)

Quando dico che il file di testo deve essere formattato in modo opportuno non intendo nulla di particolarmente compicato. In pratica, nello scriverlo, occorrerà rispettare alcune regole per permettere a _pandoc_ di capire ad esempio quando certe parole debbano essere rese in corsivo oppure in grassetto, quale sia la gerarchia dei titoli, quali gli elementi da rappresentare sottoforma di lista e così via.

Queste regole sono un po' quelle che accomunano i vari linguaggi così detti di[markdown](https://en.wikipedia.org/wiki/Markdown), facciamo un esempio.

Ecco una frase scritta in linguaggio markdown che contiene alcuni indicatori per _pandoc_: le due parole circondate dall'_underscore_ e dai doppi asterischi saranno rispettivamente mostrate in corsivo e grassetto una volta che il documento sarà convertito in _ePub_!

<pre>Ecco come scrivere in _corsivo_, ecco invece come rendere il **grassetto**!</pre>

Come ho anticipato, il linguaggio di markdown per _pandoc_ è davvero molto potente e permette di agire con grande precisione sul modo in cui il nostro contenuto verrà mostrato, tuttavia per agire ancora più nel dettaglio è possibile aggiungere i fogli di stile.

Ne abbiamo parlato poco fa a proposito delle tecnologie contemplate dallo standard _ePub_: i fogli di stile contengono al loro interno una serie di regole che stabiliscono l'aspetto che i contenuti del libro assumeranno una volta presentati sullo schermo dell'ereader (colori, spessori e margini, tipo e grandezza dei caratteri, allineamento del testo, interruzione di pagina e molto altro). Molti siti internet utilizzano i fogli di stile e così pure i libri in formato _.epub_.

I folgi di stile sono quei files che portano estensione **.css** e che se hai masticato un po' di web design sicuramente conoscerai (per capire un po' come funzionano e come scriverli ti rimando al sito di [Mozilla Developer Network](https://developer.mozilla.org/en-US/docs/Web/CSS), un portale davvero ricchissimo di risorse per lo sviluppo web).

Inserendo i fogli di stile, includendo immagini e magari anche fonts personalizzati il processo di creazione di un ebook attraverso _pandoc_ potrebbe diventare davvero molto articolato.


![repository download](http://www.limulo.net/images/diario-in-codice/Pandoc-conversion-02.png)

Come sempre, per imparare un nuovo programma bisogna usarlo, così ho cominciato subito a sperimetare. Ho deciso di scrivere qualcosa di nuovo, di non troppo lungo ma che già includesse alcuni degli elementi che poi saranno presenti anche nel libro come un indice, una immagine di copertina, una illustrazione, parole enfatizzate in grassetto e in corsivo, citazioni, note e perfino alcuni link!

### Downloads

![GitHub Octovat](http://www.limulo.net/images/logos/github-octocat.jpg)

Ho riassunto a parole i contenuti principali dell'[incontro tenutosi il 19 Maggio]({% post_url 2016-05-19-game-over-room %}) presso la _Game Over Room_ del Leoncavallo a Milano e ne ho ricavato un breve libello di circa una quindicina di pagine. Al momento sto aggiustando gli ultimi dettagli e l'esportato definitivo non è ancora disponibile ma nel frattempo vorrei condividerne il [link al repository GitHub](https://github.com/ariutti/book-test).

Questo repository è un luogo online dove sto salvano gli sviluppi progressivi di questo mio primo esperimento.

Se vuoi da qui potrai scaricare i file in formato markdown (estensione _.md_) e leggere il contenuto del libretto in anteprima :) oppure potrai scaricare il foglio di stile di cui abbiamo parlato.

Potrai anche scaricare l'intero progetto e, installato _pandoc_, provare tu stesso a creare la tua versione del libello in formato _.epub_!

![repository download](http://www.limulo.net/images/diario-in-codice/repo-download.gif)

Nella sezione <b>issues</b> puoi vedere i problemi che sto riscontrando al momento e che vorrei risolvere prima di ottenere la versione _ePub_ definitiva.


![repository issues](http://www.limulo.net/images/diario-in-codice/repo-issues.png)

Nel repository è contenuto anche un file denominato _convert.sh_ che è quello che uso per velocizzare il processo di conversione. Al momento il file riporta il comando da usare da terminale per invocare _pandoc_.

<pre class="code">
pandoc -s --toc --toc-depth=2 \
--epub-stylesheet='epub/style.css' --epub-cover-image='epub/cover.png' \
-o export/book-test.epub chapters/01-chapter1.md
</pre>

Come vedi si tratta di un comando molto lungo e che potenzialmente potrebbe diventare ancora più lungo. Onde evitare di digitare tutto questo a terminale ogni volta, con il rischio di commettere qualche errore, ho pensato fosse più semplice creare un piccolo script da richiamare all'occorrenza.

Per oggi è tutto, fammi sapere le tue opinioni in merito, i tuoi suggerimenti. C'è qualcosa di cui ho parlato che non ti è chiaro e vorresti approfondire? Fammi sapere e sarò felice di rispondere.
