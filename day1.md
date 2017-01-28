---
layout: page
title: Capitolo 1
---

## Di cosa si parla?

{% comment %}
>hai programmi per stasera?
Anonimo
{% endcomment %}

Che cosa significa **programmare**? Ecco quanto riporta la pagina di [wikipedia](https://it.wikipedia.org/wiki/Programmazione_%28informatica%29):

>La programmazione, in **informatica**, è l'insieme delle attività e tecniche che una o più persone specializzate, **programmatori** o **sviluppatori** (_developer_), svolgono per creare un **programma**, ossia un **software** da far eseguire ad un **computer**, scrivendo il relativo **codice sorgente** in un certo **linguaggio di programmazione**.

## Problema e soluzione

Mi voglio soffermare per un momento sulla parola **computer** (più avanti nel corso del libro mi capiterà più volte di usare anche i termini **elaboratore** o **calcolatore** in modo intercambiabile):

>Prima del 1989 il termine 'computer' serviva ancora a descrivere personale altamente specializzato nello svolgere calcoli aritmetici per le banche, per il commercio, per l'amministrazione. (tratto da "_Il computer dimenticato_" di Silvio Hénin, pg.115)

Se un tempo, come ci dice il sig. Hénin la parola **computer** stava ad indicare un mestiere, oggi per lo più ci riporta alla mente un oggetto di uso comune.

Il **computer** è un utensile, uno strumento: se il martello serve per piantare chiodi e il righello per tracciare linee diritte, così il computer serve per facilitare il completamento di un compito. In particolare il computer è stato inventato per risolvere problemi in breve tempo.

![PROBLEMA → SOLUZIONE]({{site.baseurl}}/assets/images/day1/prob_sol.dot.png)

Ecco qui alcuni problemi:

* disegnare un ellisse;
* calcolare l'area di un triangolo data base ed altezza;
* data una mappa, individuare il percorso più breve tra un punto ed un altro;
* dato un testo, controllare e quantificare quante volte compare un particolare termine (mi piacerebbe sapere quante volte viene usato il termine _anello_ all'interno de _Il Signore degli Anelli_!);
* trovare il modo migliore per stivare il maggior quantitativo di pacchi all'interno di un container;
* calcolare la centomillesima cifra decimale di Pi greco.

Il computer non ha idea di come risolvere i nostri problemi; sembra paradossale ma siamo noi a doverglielo insegnare.

Chiedo scusa ma, dal momento che siamo noi a farci problemi e sempre noi evidentemente ad intuirne i procedimenti risolutivi (se non a conoscerli passaggio per passaggio), perchè non ce li risolviamo da soli?

La chiave sta nella _velocità_: per quanto complicato un problema, a patto di conoscerne un percorso risolutivo, il computer sarà molto più veloce di noi a completarlo.

Ne segue che calcoli molto difficili, che richiederebbero anni per essere terminati da un essere umano, possono essere completati in frazioni di secondo se eseguiti da un elaboratore.

In certi casi allora è molto meglio affidarsi ad un computer:

![PROBLEMA → ELABORATORE → SOLUZIONE]({{site.baseurl}}/assets/images/day1/prob_sol.dot.2.png)

Come ho detto, non basta indicare all'elaboratore **quale** sia il problema, ma occorre anche istruirlo su **come** risolverlo!

Eccoci arrivati al concetto di **algoritmo**.

![PROBLEMA → ALGORITMO → ELABORATORE → SOLUZIONE]({{site.baseurl}}/assets/images/day1/prob_sol.dot.3.png)

## Algoritmo: le mosse elementari

{% comment %}
Elementare Watson!
{% endcomment %}

Una _ricetta_ del libro di cucina è un algoritmo: mostrati dapprima gli ingredienti e le quantità, la ricetta elenca uno dopo l'altro i vari passaggi per preparare il piatto!

Davanti ad un nuovo problema il computer si sente un po' come noi alle prese con un nuovo piatto: come noi anch'esso ha bisogno di conoscere le **mosse elementari** nel loro giusto ordine per completare la ricetta!

Un algoritmo è un insieme di **istruzioni** preparato per completare un lavoro; all'ora di pranzo potremmo quindi scoprirci nello svolgere l'algoritmo schematizzato nel seguente **diagramma a blocchi**:

![diagramma a blocchi pasta]({{site.baseurl}}/assets/images/day1/diagramma-di-flusso.png)

Mi è venuta fame!

L'idea di algoritmo è centrale per l'informatica. Gli algoritmi, infatti, sono come noi diciamo ai computer di risolvere i problemi.

La maggior parte degli algoritmi che sono stati scoperti hanno reso possibile risolvere problemi che prima richiedevano una incredibile quantità di tempo.

Proviamone un altro, questa volta si tratta dell'algoritmo per ricavare l'area del triangolo:

<!--
<div>
<img src="{{site.url}}/assets/images/day1/diagramma-di-flusso-triangolo.dot.png" alt="diagramma di flusso triangolo" style="width:30%; float:left;"/>
<img src="{{site.url}}/assets/images/day1/triangolo.png" alt="triangolo" style="float:right;"/>
<hr class="clear" />
</div>
-->

<!--
<table class="clear">
<tr>
<td>
<img src="{{site.url}}/assets/images/day1/diagramma-di-flusso-triangolo.dot.png" alt="diagramma di flusso triangolo" style="width:30%; float:left;"/>
</td>
<td>
<img src="{{site.url}}/assets/images/day1/triangolo.png" alt="triangolo" style="float:right;"/>
<hr class="clear" />
</td>
</tr>
</table>
-->


{% comment %}
![diagramma di flusso triangolo]({{site.baseurl}}/assets/images/day1/diagramma-di-flusso-triangolo.dot.png){: width="30%"}
![triangolo ]({{site.baseurl}}/assets/images/day1/triangolo.png){: width="30%" float="right"}
{% endcomment %}


![triangolo]({{site.baseurl}}/assets/images/day1/triangolo-bis.png)

Le istruzioni rappresentare nel diagramma sono:

* misura la **base**
* misura l'**altezza**;
* calcola $$ \frac{base * altezza}{2} $$

Trovo interessante ragionare sul fatto che chiunque sappia comprendere ed eseguire le operazioni che costituiscono questo algoritmo, può ottenere l'area del triangolo senza conoscere il significato dell'algoritmo stesso o, addirittura, senza sapere che cosa sia un triangolo!

In altre parole, l'esecutore potrebbe svolgere il procedimento senza avere la minima idea di quale ne sia lo scopo.

Ed è proprio così che lavora un computer: si limita ad eseguire fedelmente gli ordini che gli vengono impartiti, senza chiedersi nulla circa il loro significato.

Non dimentichiamo che il computer in fondo è un utensile, una macchina profondamente ottusa:

![citazione Sterling]({{site.baseurl}}/assets/images/day1/sterling.png)

Le regole base per ogni algoritmo sono 3:

* **eseguibilità**: ogni mossa deve poter essere eseguita in un tempo finito;
* **non ambiguità**: l'azione da compiere a ogni passo deve essere univocamente determinata e non dare spazio all'interpretazione;
* **finitezza**: può sembrare scontato ma si richiede che il processo definito dall'algoritmo termini, cioè conduca alla soluzione in un numero finito di passi.

## Programmi e Linguaggi di programmazione

Ottimo lavoro: dato il nostro problema e scomposto il procedimento risolutivo in una serie di mosse elementari, manca poco prima che il nostro algoritmo possa essere eseguito dal computer.

Resta giusto da capire come _dare_ il nostro algoritmo al computer.

Immaginando l'algoritmo come un concetto astratto, possiamo dire che il computer ha bisogno di sua espressione più concreta per poterlo _accettare_.

L’algoritmo deve essere trasformato in un **programma** che non è altro se non un testo scritto in un linguaggio speciale, detto **linguaggio di programmazione**.

Come ogni linguaggio, anche quello di programmazione  si basa su un insieme di parole e locuzioni specifiche (il **lessico**) e rispetta una serie di regole sulla loro interconnessione (la **sintassi**) per formare proposizioni.

![PROBLEMA → ALGORITMO → PROGRAMMA → ELABORATORE → SOLUZIONE]({{site.baseurl}}/assets/images/day1/prob_sol.dot.4.png)

Di linguaggi di programmazione ce ne sono davvero molti e lo stesso algoritmo può essere espresso in uno o in un altro in base agli esecutori cui è destinato.

Per lo più potremmo includere i linguaggi di programmazione in due grandi catagorie: quelli a _basso_ e quelli ad _alto livello_.

### Linguaggi a basso livello

Se vogliamo comunicare direttamente con un computer, dobbiamo usare linguaggi davvero molto basilari; il più elementare di questi è chiamato **linguaggio macchina**.

Se provassimo a leggere un programma scritto in linguaggio macchina ci accorgeremmo subito che non contiene nulla che sia facilmente riconducibile a parole o frasi comprensibili da noi umani.

Un programma di questo tipo è formato piuttosto da lunghe sequenze di **zero** e **uno**, i due soli simboli che costituiscono l'alfabeto **binario** su cui il linguaggio macchina si basa.

Un esempio pratico dell'uso di un linguaggio macchina è il **[telaio Jacquard](https://it.wikipedia.org/wiki/Telaio_Jacquard)**.

Questo telaio meccanico dei primi dell'Ottocento poteva essere programmato con un linguaggio macchina binario: anzichè l'_uno_ e lo _zero_, i simboli del linguaggio erano il _pieno_ e _vuoto_, scritti sottoforma di fori su particolari schede di legno o cartone.

Un particolare ricamo poteva essere trasformato in un programma e scritto in linguaggio macchina su di un certo numero di schede perforate, connesse l'una all'altra a formare un lungo nastro.

Il nastro era introdotto nel telaio che, leggendo le schede una ad una, componeva l'ordito automaticamente, in accordo con le istruzioni ricavate dal programma!

Per lungo tempo telai come questo, così come altri tipi di macchinari automatici fino ai primi esemplari di elaboratori elettronici, potevano essere programmati unicamente in questo modo. La parte più difficile dello scrivere programmi di questo tipo è che occorre conoscere davvero molto bene la macchina con la quale si ha a che fare.

Un programma scritto in linguaggio macchina infatti è legato strettamente all'hardware dell'elaboratore per il quale è stato pensato: se ad esempio volessimo ricamare lo stesso disegno usando un secondo telaio di tipo diverso, il programma già scritto non funzionerebbe. Dovremmo rimboccarci le maniche e riscriverlo da capo, nel linguaggio macchina associato al secondo telaio!

### Linguaggi ad alto livello

Per fortuna, con il passare del tempo, con lo sviluppo scientifico da un lato e la progressiva standardizzazione degli eleboratori dall'altro, sono nati nuovi linguaggi più facili da leggere e da scrivere, meno dipendenti dall'hardware e in grado di garantire una certa compatibilità.
Questi linguaggi sono detti linguaggi ad _alto livello_.

Questo tipo di linguaggi si chiama ad alto livello perchè comprende linguaggi molto più astratti che non possiedono, come il linguaggio macchina, una dipendenza così spinta dalle peculiari caratteristiche hardware della macchina su cui il programma deve essere eseguito.

L’astrazione permette al programmatore di liberarsi da molte complicazioni, per concentrarsi sulla scrittura di programmi migliori!

### Traduzioni

Scrivere un programma usando uno dei tanti linguaggi ad alto livello tuttavia non significa che l'hardware su cui il programma dovrà essere eseguito (un computer, Arduino o un telaio Jacquard) abbia perso le proprie particolarità.

In altri termini, per poter essere eseguito sull'elaboratore, il nostro programma ad alto livello dovrà comunque essere trasformato in linguaggio macchina. Ci serve quindi un **traduttore**: ne esistono tanti tipi diversi ma per il momento ci basta conoscerne solo uno, il **compilatore**.

Un compilatore è esso stesso un programma, un programma molto complesso il cui compito è quello di risolvere una specifica categoria di problemi: tradurre programmi scritti in linguaggi di programmazione ad alto livello in programmi equivalenti, scritti in linguaggio macchina.

![PROBLEMA → ALGORITMO → PROGRAMMA (alto livello) → Compilazione → Eseguibile → ELABORATORE → SOLUZIONE]({{site.baseurl}}/assets/images/day1/prob_sol.dot.5.png)

Il processo di traduzione in questo caso è detto **compilazione** mentre il risultato della compilazione è detto, semplificando, **eseguibile**. L'eseguibile è un programma scritto in linguaggio macchina e pronto per essere eseguito dall'elaboratore.

![livelli di astrazione]({{site.baseurl}}/assets/images/day1/livelli-astrazione.png)

La compilazione avviene una volta sola e qualora volessimo far funzionare il nostro programma più e più volte, ci basterà disporre del solo eseguibile per risolvere il nostro problema.

Ci capiteranno poi casi in cui il nostro problema cambi e che il metodo risolutivo studiato abbia bisogno di alcuni aggiustamenti. In quel caso allora rimetteremo mano all'algoritmo e al programma; apportate le opportune modifiche, provvederemo poi a compilarlo nuovamente per ottenere una nuova versione dell'eseguibile aggiornata!

E' questo in poche parole il procedimento che sta alla base dello sviluppo software!

## Il nostro computer

Per approfondire un poco ed avere allo stesso tempo un esempio pratico di quanto abbiamo detto, possiamo considerare il nostro computer.

Il computer è una macchina che contiene parti meccaniche ed elettroniche di diverso tipo; nella sua memoria, oltre ai dati, sono archiviati anche i programmi, ognuno dei quali, come abbiamo detto, ha il compito di risolvere differenti categorie di problemi: usiamo quotidianamente, ad esempio, programmi per modificare le immagini, scrivere testi o inviare e-mail.

Di computer ne esistono di diverso tipo, grandi o piccoli, con più o meno memoria, pensati per giocare oppure per l'ufficio e così via. Molti sono anche i tipi di **sistema operativo**: il programma che utilizziamo più spesso, anche se a volte non ce ne rendiamo conto.

Il sistema operativo è forse il programma più importante ed il suo compito è quello di creare una sorta di interfaccia astratta per facilitare l'uso del computer: é il sistema operativo che interviene per aiutarci quando connettiamo una nuova stampante, quando copiamo dati dal nostro disco fisso alla penna USB, che organizza tempi e risorse quando mettiamo in esecuzioni più programmi contemporaneamente o ne vogliamo installare di nuovi.

Come esempio possiamo citare il sistema operativo _Windows_ e le sue diverse versioni ma conosciamo anche _Apple MacOsX_ e ancora i sistemi operativi liberi _GNU/Linux_ come _Ubuntu_, _Debian_ o _Fedora_. Se poi consideriamo anche i moderni smartphone, le cui capacità sono ormai pari se non superiori a quelle di un computer vero e proprio, all'elenco si aggiungono anche _iOS_, _Android_ e così via.

L'insieme dell'_architettura hardware_ e del sistema operativo del nostro computer, costituisce una informazione importante che caratterizza per intero la nostra macchina. Sono queste le informazioni che dobbiamo conoscere tutte le volte che vogliamo installare un nuovo programma.
Non stiamo dicendo nulla di nuovo, sappiamo infatti dall'esperienza quotidiana che è importante consultare i _requisiti di sistema_ per capire se un nuovo programma potrà funzionare sul nostro computer.

Ad esempio, se volessimo installare il programma [LibreOffice](https://www.libreoffice.org/) sul nostro computer, sappiamo che dovremmo dapprima sceglierne la versione corretta per il download dal sito intenet.

![LibreOffice: eseguibili.]({{site.baseurl}}/assets/images/day1/libreoffice-versions.png)

Semplificando un poco, ogni volta che installiamo un nuovo programma stiamo di fatto copiando nella memoria del nostro computer un file. Questo file è l'_eseguibile_, la versione del programma tradotta nel linguaggio macchina specifico per il nostro computer. Installato l'eseguibile di _LibreOffice_, il nostro computer si è arricchito di nuove funzionalità: mandando in esecuzione questo file, saremo in grado di generare e manipolare diversi tipi di documento ogni volta che vorremo.

Questo per sottolineare il fatto che, di file eseguibili, ne possono esistere tante versioni diverse, tante quante sono le diverse macchine per cui il programma è stato progettato, ognuna delle quali rappresenta una traduzione in linguaggio macchina specifica per una particolare macchina. E' questo in fondo il significato di _programma multipiattaforma_.

![compilazione]({{site.baseurl}}/assets/images/day1/compilatori-1.png)

Se gli eseguibili sono file che vengono eseguiti direttamente dalla macchina per estenderne le funzionalità e risolvere particolari problemi, unico è invece il _codice sorgente_ da cui tutte queste possibili traduzioni derivano.

La maggiorparte dei programmi che si trovano in commercio sono in formato eseguibile mentre molti altri consentono l'accesso anche al rispettivo codice sorgente. Questi ultimi sono programmi che sposano la filosofia del **Software Libero** e **Open Source** che avremo modo di approfondire nell'[appendice dedicata]({{site.baseurl}}/appendiceB/). Tra questi ultimi anche lo stesso **Arduino**.

Il nome Arduino infatti non è soltanto associato alle famose schede elettroniche, ma è anche il nome con cui è stato battezzato un programma libero e multipiattaforma che si usa per programmare e caricare codice sulle schede.


{% include disqus-scripts.html %}


{% comment %}
---

compilare un nuostro programma sulla stessa macchina che ancrà ad eseguirlo, usando un compilatore (sottoforma di eseguibile) che gira sulla macchina in questione

vs.

cross compilazione.

---

Normalmente il termine compilazione viene usato per definire il passaggio di traduzione che avviene su di una data macchina per la quale il programma L che viene tradotto deve essere esguito

Nel caso di Arduino, quello che noi faremo sarà di usare il computer per compilare un programma scritto sul computer ma che dovrà essere eseguito sul microcontroller: si tratta di cross-compilazione.

[da WiKi: https://it.wikipedia.org/wiki/Cross-compilazione ]
La cross-compilazione è la tecnica mediante la quale si compila un codice sorgente con un cross-compilatore, ottenendo così un file binario eseguibile su di un elaboratore con architettura diversa da quella della macchina su cui si è lanciato il cross-compilatore stesso.


{% endcomment %}
