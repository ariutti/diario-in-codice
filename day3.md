---
layout: page
title: Capitolo 3 - Cominciamo a scrivere
---

> "Le parole sono tutto quello che abbiamo, perciò è meglio che siano quelle giuste"<br/>
  <span style="font-size: 0.8em;">Raymond Carver,tratto da _Niente trucchi da quattro soldi_</span>

Nel primo capitolo abbiamo parlato del procedimento di risoluzione dei problemi, della loro schematizzazione sotto forma di algoritmi ed infine della loro trasposizione in programma.

Abbiamo capito che programmare significa non soltanto ragionare a fondo sulle cose ma anche **scrivere**.

Scrivere è un'azione quotidiana: quando lo facciamo ci serviamo di molte parole diverse, alcune sono semplici mentre altre racchiudono molti diversi significati che variano a seconda del contesto. Possiamo formare innumerevoli combinazioni e configurarle in altrettanti modi per descrivere un fatto o una azione in modo più o meno preciso.

Quando scriviamo - un sms, una mail, un racconto o un appunto - possiamo anche servirci dell'ambiguità intrinseca delle parole, magari per veicolare con il nostro discorso un qualche messaggio nascosto, correndo talvolta il rischio che le nostre parole possano essere travisate e interpretate in un modo diverso da quello sperato.

{% comment %}
Quando scriviamo - un sms, una mail, un racconto o un appunto - ci serviamo dei molti significati che talvolta alcune parole possono avdell'ambiguità intrinseca nelle parole e dei significati racchiusi in esse:

diverse combinazioni di parole danno luogo a diversi possibili modi di esprimere uno stesso concetto.

> esempio (magari Gianni Rodari??)

L'ambiguità può essere sfruttata per suggerire al lettore un messaggio nascosto e talvolta può persino giocare brutti scherzi: succede quando quello che diciamo viene interpretate in modo diverso, magari opposto, rispetto al significato originario.
{% endcomment %}

A tal proposito, quando il nostro interlocutore è l'_elaboratore_, è necessario cambiare radicalmente il nostro modo di parlare e di scrivere; il testo dovrà essere asciugato da ogni ambiguità e contenere messaggi molto semplici e chiari, nulla di vago insomma così da ovviare ad ogni possibile fraintendimento.

All'inizio, quando si comincia a programmare, ci si sente un po' impacciati: ci sono nuove parole da imparare e nuove regole per organizzarle e dare forma al testo del programma. Stiamo in fin dei conti imparando a farci capire dal computer, una macchina particolarmente _stupida_ e ottusa, la quale metterà duramente alla prova la nostra pazienza.

L'importante è non scoraggiarsi alle prime difficoltà e procedere gradatamente, un passo alla volta. Come con tutte le cose, la perfezione viene con l'esercizio: più programmeremo più tutto questo diventerà semplice.

## Carta e Matita

Prima di cominciare ad immettere testo all'interno dell'IDE di Arduino, potrebbe essere una buona idea quella di usare carta e matita! Personalmente l'ho sempre trovato un ottimo sistema per imparare, perchè mi aiuta a fissare meglio nella memoria le parole e la sintassi del linguaggio.

Con il programma riportato su carta inoltre è più facile visualizzarlo per intero, un metodo utilissimo per farsi una idea precisa del suo funzionamento.

Usando _carta e matita_ non siamo obbligati a stare di fronte al computer per scrivere o studiare, possiamo esaminare il codice e goderci al contempo una bella giornata di sole!

Pronti? Si comincia!

Ecco il nostro primo programma: mentre lo leggiamo e lo trascriviamo, facciamo particolare attenzione alle parentesi, ai segni di punteggiatura e alle lettere minuscole e maiuscole (il linguaggio di programmazione Arduino è infatti [case sensitive](https://en.wikipedia.org/wiki/Case_sensitivity), ovvero fa distinzione tra le due forme).

{% highlight c %}
void setup()
{
    pinMode(13, OUTPUT);
}

void loop()
{
    digitalWrite(13, HIGH);
    delay(1000);
    digitalWrite(13, LOW);
    delay(1000);
}
{% endhighlight %}

A cosa serve questo programma? Lasciamo la risposta per dopo e nel frattempo concentriamoci sul linguaggio, esaminando il programma da un punto di vista macroscopico.

Non preoccupiamoci se alcune delle cose che diremo risulteranno poco chiare. La cosa è perfettamente normale quando ci si avvicina per la prima volta ad un nuovo argomento. In breve tempo tutto diverrà sempre più chiaro.
{: class="note"}

## Blocchi di codice

A prima vista si possono notare due strutture principali: si tratta di 2 porzioni di testo, ciascuna in qualche modo associata ad un coppia di parentesi graffe.

Queste strutture prendono il nome di **blocchi di codice**, una parentesi graffa aperta ne sancisce l'inizio mentre una chiusa ne determina la conclusione.

Al loro interno sono raggruppate una serie di righe di testo terminate dal **carattere terminatore** "_punto e virgola_": ogni riga costituisce una singola **istruzione**!

{% comment %}

Ogni riga di questo testo è terminata dal **punto e virgola** e costituisce una singola **istruzione**!

parentesi graffe dapprima aperte e poi chiuse che sembrano racchiudere porzioni di testo separate.

Queste strutture prendono il nome di **blocchi di codice** e contengono gruppi di istruzioni separate tra loro (evidentemente si dovranno occupare di cose diverse). Una parentesi graffa aperta ne sancisce l'inizio mentre, una chiusa, ne determina la conclusione.

{% endcomment %}

![blocco di codice]({{ site.baseurl }}/assets/images/day3/blocco_di_codice.png){: width="50%"}

{% comment %}
Si può dire di più, in generale i blocchi di codice possono anche trovarsi innestati l'uno dentro l'altro! I blocchi di codice sono fondamentali nello sviluppo di logiche complesse come vedremo nelle prossime lezioni; per ora concentriamoci sui due blocchi che vediamo qui: **setup** e **loop**.
{% endcomment %}

### Setup e Loop

Guardiamo nuovamente il nostro codice e ora associamo ad ogni riga un numero progressivo così che sia più facile esaminarlo:

{% highlight c linenos %}
void setup()
{
    pinMode(13, OUTPUT);
}

void loop()
{
    digitalWrite(13, HIGH);
    delay(1000);
    digitalWrite(13, LOW);
    delay(1000);
}
{% endhighlight %}

Osserviamo la riga 1 che contiene il testo ```void setup()```. In qualche modo assomiglia alla riga 6 che invece recita ```void loop()```.

Anche se non possiedono il carattere terminatore come le altre, anche queste sono _istruzioni_ ed entrambe hanno la medesima funzione: assegnare un nome, per così dire, ai blocchi di codice sottostanti!

![setup & loop]({{ site.baseurl }}/assets/images/day3/blocchi_di_codice_setup_loop.png){: width="50%"}

{% comment %}
(da notare che queste istruzioni non hanno il terminatore punto e vigola come le altre. Queste sono infatti istruzioni particolari, dette _definizione di funzione_. Chiudiamo questa parentesi: il tutto risulterà più chiaro più avanti quando approfondiremo il concetto di _funzione_).
{% endcomment %}

Il blocco ```setup``` contiene 1 istruzione:

{% highlight c %}
pinMode(13, OUTPUT);
{% endhighlight %}

mentre il blocco ```loop``` ne contiene 4:

{% highlight c %}
digitalWrite(13, HIGH);
delay(1000);
digitalWrite(13, LOW);
delay(1000);
{% endhighlight %}

Tutte le istruzioni contenute all'interno dei blocchi di questo nostro programma sono istruzioni del tipo **chiamata a funzione**.

Che cosa fa una istruzione di questo tipo?
Una _chiamata a funzione_ nel linguaggio Arduino, e in tutti i linguaggi di programmazione più in generale, serve per fare uso di una particolare capacità del linguaggio o della scheda Arduino nel nostro caso.

Le righe 9 e 11 del programma ad esempio _chiamano_ la _funzione_ denominata ```delay``` per servirsi della capacità della scheda di _aspettare_.

Aspettare cosa? Aspettare quanto?

Scrivere solo _delay_ non è sufficiente infatti; per usare questa funzionalità non basta solo invocarla ma occorre aggiungere una ulteriore informazione, non tanto il _cosa_ aspettare, piuttosto il _quanto_ aspettare.

Ecco quindi spiegato il numero ```1000``` indicato tra parentesi tonde: _1000_ è un **parametro** e rappresenta il quantitativo di millisecondi (1 secondo) che la scheda Arduino dovrà aspettare una volta giunta ad eseguire questa particolare istruzione!

Facciamo un altro esempio, ed esaminiamo ora altre due istruzioni del blocco loop, quelle alla riga 8 e 10.

Anche in questo caso si tratta di istruzioni del tipo _chiamata a funzione_ e la funzione interessata ha nome ```digitalWrite```.

Quando la scheda Arduino esegue una ```digitalWrite```, _scrive_ un valore di tensione elettrica su uno dei suoi pin _digitali_. Per essere eseguita correttamente, la funzione _digitalWrite_ ha bisogno di sapere:

1. su quale pin digitale andare ad agire;
2. quale tensione elettrica utilizzare;

Nel capitolo precedente abbiamo accennato ai pin digitali della scheda Arduino; sono 14 in tutto, indicati sulla scheda con un indice crescente dal numero 0 al 13:

![pin digitali]({{ site.baseurl }}/assets/images/day2/board/porzioni_digital.png){: width="50%"}

Senza entrare nel dettaglio, ci basti sapere che su questo tipo di pin è possibile scrivere (o leggere) solo 2 valori di tensione elettrica, alta oppure bassa, rispettivamente associati alle parole chiave inglesi ```HIGH``` e ```LOW```.

la nostra

{% highlight c %}
digitalWrite( 13, HIGH );
{% endhighlight %}

quindi, quando eseguita dalla scheda Arduino, causa l'impostazione di una tensione alta sul pin numero 13! In modo del tutto speculare, l'istruzione

{% highlight c %}
digitalWrite( 13, LOW );
{% endhighlight %}

"_scrive_" sul pin 13 il valore di tensione elettrica basso.

Lo studio del programma si completa con l'esame di un'ultima istruzione, l'unica del blocco di codice setup. La riga 3 del nostro programma recita:

{% highlight c %}
pinMode( 13, OUTPUT );
{% endhighlight %}

Anche questa è una _chiamata a funzione_ e questa volta è ```pinMode``` la funzione ad essere invocata.

A cosa serve? Ha bisogno di qualche parametro per operare correttammente e se sì, quanti e quali?

La funzione ```pinMode``` serve per impostare la modalità di utilizzo di un particolare pin. La sua utilità ci sarà più chiara nei prossimi capitoli ma per ora ci basta sapere che ha bisogno di due parametri:

1. a quale pin fare riferimento;
2. quale modalità impostare per il pin;

Nel nostro caso la
{% highlight c %}
pinMode( 13, OUTPUT );
{% endhighlight %}

imposta il pin digitale numero 13 come ```OUTPUT``` il che ci consentirà di utilizzarlo in seguito come destinazione per la "_scrittura_" di valori di tensione.

Un altra modalità interessante, e che vedremo nei prossimi capitoli, è quella di ```INPUT``` per usare il pin digitale in modo duale, consentendo operazioni di "_lettura_".
{: class="dashed"}

## Flusso del programma

Non dobbiamo dimenticare che questo nostro programma è la traduzione in un _linguaggio ad alto livello_ di un algoritmo pensato per la risoluzione di un particolare problema.

Il programma verrà poi convertito in _eseguibile_ (_linguaggio a basso livello_) e quindi caricato sulla memoria della scheda Arduino e solo qui messo in esecuzione.

![compilazione-caricamento]({{ site.baseurl }}/assets/images/day3/compilazione-caricamento.png)

Una volta immagazzinato nella memoria della scheda, il microcontrollore lo legge a partire dal blocco ```setup```, eseguendo le istruzioni in esso contenute, una alla volta, dalla prima all'ultima fino a completarle tutte.

Dopodichè passa alla lettura del blocco ```loop``` e fa lo stesso per le sue istruzioni.

Giunto al termine del blocco, l'esecuzione non si interrompe ma riprende dalla prima istruzione del blocco ```loop``` e continua in un ciclo infinito, fintanto che la scheda continua ad essere alimentata.

Ecco come si potrebbe sintetizzare il _flusso del programma_:

![program flow]({{ site.baseurl }}/assets/images/day3/program-flow.png){: width="50%"}

In altre parole il blocco ```setup``` contiene istruzioni che vogliamo vengano eseguite una ed una sola volta, mentra il blocco ```loop``` (come il nome stesso suggerisce) contiene le istruzioni che vogliamo continuare a ripetere.

{% comment %}
In realtà, non importa l'ordine con cui nel programma si posizionino i due blocchi, l'importante è che siano entrambi presenti. Di certo, ai fini di una più facile lettura e intepretazione del codice, è decisamente buona pratica quella di porre ```setup``` prima di ```loop```.
{: class="note"}
{% endcomment %}

## Ordine

Pensando al programma come ad un flusso di azioni consecutive, si capisce quanto sia importante che le istruzioni siano disposte secondo un ordine preciso.

Cosa succederebbe se invertissimo l'ordine di alcune di esse? Molto probabilmente non riusciremmo a risolvere il nostro problema e potremmo causare degli errori.

## L'errore (pt.1)

Acquisiremo prestissimo dimestichezza con diversi tipi di errore: come abbiamo detto l'elaboratore è una macchina _stupida_ e non ci dovremo quindi stupire se talvolta si lamenterà del nostro codice.

Specie all'inizio, la cosa potrebbe avvenire con una certa frequenza. E' sufficiente una piccola disattenzione, una lettera dimenticata oppure digitata minuscola anzichè maiuscola, un punto e virgola o una parentesi in meno o in più per causare un errore.

In questi casi il mio consiglio è quello di non perdere la calma: fare un respiro profondo e ritornare sui propri passi con un atteggiamento _zen_.

Lo stesso IDE di Arduino, lo vedremo meglio tra poco, può esserci di grande aiuto in questi casi grazie ai messaggi mostrati a _console_.

## Nell'IDE

E' giunto finalmente il momento di usare l'IDE Arduino per scrivere, compilare e infine caricare il nostro programma sulla scheda e vederlo finalmente in azione!

Dopo averlo scaricato ed installato seguendo le istruzioni del capitolo precedente, apriamo l'IDE e cominciamo a trascrivere il nostro programma: creiamo un nuovo file usando la voce di menu _File/New_ o la combinazione di tasti ```Ctrl+n```, e riportiamo all'interno dell'editor il corpo del programma.

Una volta fatto dovreste ottenere qualcosa di simile a quanto mostrato nella figura seguente:

![IDE]({{ site.baseurl }}/assets/images/day3/IDE.png)

Nello scrivere il codice all'interno dell'editor abbiamo anche già scoperto alcune delle comodità fornite da un ambiente di sviluppo integrato (IDE in inglese) come questo.

### Synthax Highlight

Ad esempio è interessante notare come le diverse parole del linguaggio abbiano assunto colorazioni differenti: basta osservare i parametri ```HIGH```, ```LOW``` ed anche ```OUTPUT``` che sono stati colorati di blu, oppure ```void``` e ancora ```setup``` e ```loop``` o tutti i nomi delle istruzioni all'interno dei blocchi, colorati in arancio.

Questa funzionalità dell'IDE si chiama [synthax highlighting](https://en.wikipedia.org/wiki/Syntax_highlighting) e permette di individuare rapidamente la varie parti del codice e, dal momento che si occupa di colorare tutte le "_parole riservate_" del linguaggio Arduino, permette di capire velocemente se le si sta scrivendo nel modo lessicamente corretto.

### Chiusura automatica del blocco e indentazione

Quando creiamo un nuovo blocco di codice e digitiamo una parentesi graffa per poi andare a capo ad inserire istruzioni al suo interno, l'IDE chiude il blocco al posto nostro inserendo la parentesi graffa chiusa una riga più sotto.

Altra cosa interessante da notare è che le istruzioni che vengono inserite all'interno del blocco vengono indentate automaticamente.

L'indentazione non è indispensabile ma è molto utile per formattare il codice e renderlo più facilmente leggibile: l'IDE provvede a farlo in modo automatico mentre stiamo scrivendo.

Tutte queste impostazione possono essere comunque modificate attraverso il menu _File/Preferences_.
{: class="dashed"}

### Salvare

Prima di procedere salviamo il nostro programma facendo click sulla voce _File/Save As..._, assegnando un nome allo sketch e selezionando la cartella _sketchbook_ (o qualsiasi altra cartella preferiamo) come destinazione.

---

### Verifica

E' il momento di verificare il nostro codice per vedere se contiene qualche errore. E' proprio questa la famosa fase di compilazione della quale abbiamo tanto parlato: il codice viene compilato e così facendo ne viene verificata l'effettiva eseguibilità.

Se l'esito sarà positivo, il nostro programma, ormai trasformato in file _eseguibile_, sarà pronto per essere caricato sulla scheda!

Torniamo ad esaminare l'interfaccia dell'IDE per parlare dei primi due pulsanti sulla sinistra, fino ad ora rimasti in sospeso.

![IDE]({{ site.baseurl }}/assets/images/day2/IDE/interface.png)

Si tratta rispettivamente di:
* **Verify**, che lancia la compilazione e la verifica del programma;
* **Upload**, da usare per effettuare il trasferimento del file eseguibile dalla memoria del computer a quella della scheda Arduino.

---

Come abbiamo detto più volte, il codice sorgente ad alto livello è fondamentalmente un'astrazione: perchè possa essere eseguito dall'elaboratore, deve prima essere convertito in un equivalente a basso livello, l'eseguibile.

Mentre il codice ad alto livello è indipendente dalla piattaforma, non lo è l'eseguibile che differisce a seconda del tipo di elaboratore sul quale il programma deve essere eseguito.

In altre parole, il nostro programma scritto in linguaggio Arduino resta invariato sia che lo si voglia infine eseguire su di una scheda di tipo UNO oppure Mega, Nano o Micro; quello che cambia sarà invece l'eseguibile, compilato specificatamente per la piattaforma prescelta.

---

Come fa l'IDE a sapere che il nostro codice sorgente deve essere compilato specificatamente per la scheda Arduino UNO, quella che stiamo utilizzando?

Siamo noi a doverglielo dire, selezionando il nostro modello di scheda dal menu a tendina _Tools/Board_. Una volta fatto è arrivato infine il momento di fare click sul pulsante **Verify**!!

Se tutto va bene, visualizzeremo una barra di progressione sul margine inferiore dell'editor e infine due messaggi.
Il primo, sempre sul margine inferiore, riporta ```Done compiling.``` e il secondo, mostrato all'interno della console, sarà simile a quello mostrato dalla figura seguente

![messaggio a console]({{ site.baseurl }}/assets/images/day3/console.png)

## L'errore (pt.2)

In caso di errore invece potremmo ritrovarci in una sitiazione come questa

![errore]({{ site.baseurl }}/assets/images/day3/errore.png)

Respiro profondo, niente paura. Pur non particolarmente simpatica, questa situazione ci permette di scoprire un altro grande pregio dell'IDE: quello di segnalarci, in certi casi con una certa precisione, quale sia l'errore e dove si trovi all'interno del nostro codice.

In particolare vediamo dapprima la parte inferiore dell'editor:

![errore]({{ site.baseurl }}/assets/images/day3/errore_01.png)

Semplificando un poco, il messaggio significa che il compilatore non è stato in grado di tradurre il nostro programma in un file eseguibile, in particolare perchè non sa tradurre la parola "_digitalwrite_".

Lo stesso messaggio è riportaro, in modo un po' più dettagliato, anche a console:

![errore]({{ site.baseurl }}/assets/images/day3/errore_02.png)

l'IDE ci indica anche a quale riga del nostro codice il compilatore ha riscontrato l'errore:

![errore]({{ site.baseurl }}/assets/images/day3/errore_03.png)

Grazie a tutti questi indizi e riflettendo un poco, è facile capire quale ne sia la causa e come risolverlo: ho scritto male una lettera dell'istruzione ```digitalWrite```!

A questo punto basta agire modificando la lettera ```w```, da minuscola a maiuscola, cliccare nuovamente sul pulsante *Verify* e il gioco è fatto.

Errori come questo sono del tutto normali, possono capitare ed è facile individuarli e risolverli grazie all'aiuto dell'IDE.

### Caricamento

A verifica completata con successo, è ora il momento di caricare l'eseguibile sulla scheda e per farlo bastano pochi semplici passaggi.

Dapprima connettiamo la scheda Arduino UNO al PC usando un semplice cavo USB A-B (il classico cavo USB da stampante).

Quindi, dal menu a tendina _Tools/Ports_ selezioniamo l'identificativo della porta USB alla quale la scheda Arduino UNO è stata connessa.

Questa sigla differisce a seconda del sistema operativo e dalla porta USB impiegata. Nel mio caso, ad esempio, usando un sistema operativo GNU/Linux Debian, la sigla che seleziono è la ```dev/ttyACM0``` che nella lista delle varie porte disponibili, riporta l'ulteriore stringa ```(Arduino/Genuino UNO)```. <br/><br/>Su sistemi operativi _Windows_, il nome della porta dovrebbe essere qualcosa del tipo ```COMx```, dove _x_ sta ad indicare una cifra. Per maggiori informazioni su come connettere la scheda UNO al proprio computer vi rimando a [questo link](https://www.arduino.cc/en/Guide/ArduinoUno#toc2), dal sito ufficiale di Arduino.
{: class="dashed"}

Infine basta fare click sul pulsante **Upload**.

Anche in tale caso l'IDE mostra una barra di progressione e, ad operazione completata, un messaggio ```Done uploading```.

Se tutto è andato come previsto, dando uno sguardo alla scheda, dovremmo vedere il LED di bordo accendersi e spegnersi alternativamente ogni secondo!

## L'Errore (pt.3)

Se qualcosa è andato storto invece, probabilmente è perchè si è verificato un problema in fase di caricamento dell'eseguibile. In tale caso la console potrebbe presentare un messaggio d'errore come questo:

![errore]({{ site.baseurl }}/assets/images/day3/errore_upload.png)

Come si evince dal messaggio, l'IDE non è stato in grado di accedere alla scheda, data per connessa alla porta ```dev/ttyACM0```, nè di copiarvi alcunchè. L'errore si spiega facilmente: in questo caso ho semplicemente scordato di connettere la scheda Arduino UNO al PC prima di fare click sul pulsante _Upload_, ops!

Se l'errore che vi si presenta dovesse essere di tipo diverso e non bastasse una disconnessione/riconnessione della scheda al PC, vi consiglio di leggere con attenzione i vari passaggi riportati in [questa pagina](https://www.arduino.cc/en/Guide/ArduinoUno) o di chiedere eventualmente aiuto sul [forum](https://forum.arduino.cc/).
{: class="dashed"}

## Ricapitolando  

Nel vedere il nostro programma in esecuzione sulla scheda Arduino UNO, risulta semplice ricavare a ritroso l'algoritmo di partenza dal quale il programma è stato ricavato.

![algoritmo]({{ site.baseurl }}/assets/images/day3/algorithm.png){: width="30%"}

Al termine del caricamento dell'eseguibile sulla memoria del microcontrollore, l'esecuzione parte immediatamente e le prime istruzioni ad essere eseguite sono quelle del blocco ```setup```.

Nel nostro caso l'unica istruzione ```pinMode(13, OUTPUT)``` imposta il pin digitale 13 della scheda, al quale è connesso il LED di bordo, in modalità di ```OUTPUT``` per poterci successivamente "_scrivere_" valori di tensione alto o basso.

Terminate le istruzioni del blocco ```setup``` l'esecuzione passa al blocco ```loop``` e alla prima di quelle in esso contenute. La prima istruzione "_scrive_" sul pin numero 13 un valore di tensione alto, conseguentemente il LED si accende e resta acceso per 1 secondo, tempo durante il quale il microcontrollore non fa nulla, semplicemente aspetta.

L'esecuzione continua con la terza istruzione del blocco ```loop``` con la quale scriviamo sul pin 13 un valore di tensione basso questa volta. Così facendo il LED si spegne e l'esecuzione, dopo un'ulteriore attesa della durata di 1 secondo, riprende dal principio del blocco. Il processo si ripete infinite volte.

---

Complimenti per aver scritto, compilato ed infine eseguito il nostro primissimo programma in linguaggio Arduino.

Questo è un primissimo passo ma di importanza fondamentale per il futuro percorso che ci attende.

Un passo altrettanto importante perchè ci consente di comprendere quale sia l'importanza del codice e le sue immense potenzialità perchè, con poche e semplici parole, ci fa ottenere risultati sorprendenti!

{% comment %}
A questo punto, con il programma in esecuzione sulla nostra scheda, siamo in grado do comprendere pienamente il significato del nostro programma e, più in generale, le potenzialità del codice Arduino, e del codice più in generale.

Abbiamo appena scritto, compilato ed eseguito un programma per accendere e spegere un LED. Può sembrare cosa di poco conto ma se ci si pensa meglio questo è solo l'inizio di un percorso che alla fine porterà ad applicare il codice a problemi altro tipo e di più grande complessità.
{% endcomment %}

## Per approfondire

La _chiamata a funzione_ è un particolare tipo di istruzione che si presenta nella forma
```
nome_di_funzione ( parametro/i );
```
Questa istruzione, quando eseguita, invoca una particolare funzionalità del linguaggio. Se per operare correttamente la funzionalità ha bisogno che le vengano fornite alcune informazioni, queste possono esserle _passate_ sottoforma di _parametri_ usando le parentesi rotonde.

Tra le parentesi tonde di una chiamata a funzione si possono trovare uno o più parametri, come abbiamo visto, e può trattarsi di numeri, lettere o parole a seconda dei casi.

La _chiamata a funzione_ non è l'unico tipo di istruzione che possiamo trovare nel linguaggio Arduino. Abbiamo già visto ad esempio le istruzioni ```void setup()``` e ```void loop()``` che hanno il compito di definire i nomi di blocchi di codice. Ne esistono anche altri tipi e li vedremo man mano che compariranno nei futuri programmi che scriveremo.

---

Abbiamo detto che il pulsante _Upload_ si occupa del caricamento del file eseguibile sulla scheda. Quanto detto in realtà è solo parzialmente corretto, infatti prima di caricare, _Upload_ compila il programma, esattamente come fa _Verify_.

In altre parole, quando vogliamo velocizzare il nostro processo di scrittura/compilazione/caricamento/esecuzione, possiamo pensare di premere direttamente il pulsante _Upload_! Nel caso di errori di compilazione o di caricamento, il processo specifico si interromperà e l'IDE ci mostrerà i consueti messaggi a console.

### Reference

Per chi fosse curioso e volesse sin da subito raccogliere ancora più informazioni in merito alle istruzioni che abbiamo visto in questo nostro primo programma (o magari cominciare ad esplorare altri aspetti del linguaggio Arduino), lascio [qui](https://www.arduino.cc/en/Reference/HomePage) il link alla _Reference_ del linguaggio, un vero e proprio _vocabolario_ del programmatore!

{% include disqus-scripts.html %}


{% comment %}

---

Sulla destra è posizonato un altro pulsante:
* **Serial Monitor**: per comunicare con Arduino tramite il computer. Permette di vedere i dati inviati da Arduino al computer tramite la comunicazione seriale ma permette anche di inviare dati alla scheda Arduino.


## Analisi dell'IDE

Abbiamo detto che Arduino è un linguaggio di programmazione; questa definizione tuttavia non è completa perchè Arduino è anche il nome con cui ci si riferisce all’applicativo IDE. Per facilitare il processo di apprendimento del sistema Arduino, gli sviluppatori del team hanno creato un semplice ambiente di sviluppo integrato. Vediamo di che si tratta:

Esso è costituito da un editor di testo grazie al quale è per noi possibile stendere il testo di un programma.

E' anche presente un **compilatore** il quale permette la _traduzione_ delle istruzioni del programma in linguaggio macchina, pensato appositamente per la tipologia di microcotrollore traget (cross-compilazione). Per questo è importante indicare da subito quale sia il microcontroller target per il quale desideriamo sviluppare, e occorre verificare di possedere i driver adeguati (verificare)

Un **loader**, la componente software che si occupa di caricare il codice macchina compilato sulla memoria interna del microcontrollore in modo tale che, al successivo riavvio, dopo l'esecuzione del boot loader, il programma venga messo in esecuzione.

C’è anche un **debugger** il cui compito è quello di rilevare eventuali errori che possono essere presenti. Errori di
lessico o di sintassi;
o in fase di esecuzione del programma (run time error);

Nella parte bassa scorgiamo una sezione di colore nero. Si tratta della console all'interno della quale Arduino ci comunicherà eventuali note, warnings o
* problemi nella fase di compilazione: errori contenuti nel nostro programma
* problemi relativi alal fase di loading sulla scheda
* etc...

Un **serial monitor**, un piccola componente software che facilita la visualizzazione e l'invio di messaggio da/a la scheda Arduino collegata via Cavo USB (comunicazione seriale appunto) vedremo meglio nel dettaglio

Sono inoltre presenti anche altri tools e se ne possono installare altri per ingrandire le capacità dello strumento base:
* serial plotter;
* gestore delle librerie;

---

Per programmare il nostro microcontroller ci serviremo di un linguaggio di programmazione denomianto Arduino. Questo linguaggio si basa si di un altro linguaggio, il linguaggio C e C++ (Arduino non è altro che un set di funzioni C/C++), due linguaggi a medio livello.
Come ogni programma, anche quelli che scriveremo noi, per poter essere compresi, dovranno dapprima essere tradotti in linguaggio macchina attraverso la compilazione (**cross-compilazione**).

Cominciamo allora!

compilazione: compilatore gira sulla stessa macchina su cui verrà eseguito il programma compilatore
Nel caso di Arduino avviene una cross compilazione
(esamina parte finale del day1 per maggiori info)

{% endcomment %}



{% comment %}
Altra cosa interessante da notare è l'ordine in cui le istruzioni e i blocchi sono disposti all'interno del programma. Sì, perché l'ordine è importante!

Quando l'elaboratore eseguirà il programma, valuterà tutte le istruzioni in esso contenute dalla prima all'ultima nell'ordine in cui esse sono state poste all'interno del programma. Cosa succederebbe se invertissimo una istruzione con un altra? Al meglio semplicemente non riusciremmo a risolvere il nostro problema, altrimenti potremmo causare un errore, come succede generalmente in questi casi.

Per i nostri programmi, mirati ad essere eseguiti dalla scheda Arduino, ci basta ricordare che il blocco ```setup``` deve precedere il blocco ```loop``` perchè deve essere eseguito per primo.

----

## Funzioni (introduzione)

Pensiamo ad una linea e fingiamo per un momento di essere degli elaboratori.
Se il nostro programmatore ci impartisce il comando "_disegna una linea da A a B_" non abbiamo difficoltà alcuna: data carta e matita, magari aiutandoci con un righello, sappiamo tracciare il segmento immediatamente.

![disegno della linea](img)

Anche se non ce ne rendiamo conto, il nostro cervello ha ragionato per step successivi svolgendone uno dopo l'altro in sequenza logica:
1. individua il primo punto;
2. individua il secondo punto;
3. prendi il righello;
4. allinealo ai due punti;
5. prendi la matita;
6. traccia un tratto tra i due punti;

Il programmatore non ha bisogno di indicarci esplicitamente ciascuno dei passaggi elementari ma può semplicemente dire "_disegna la linea da A a B_", una singola istruzione contro 6, non male! Questo è possibile ovviamente perchè da qualche parte nella nostra mente sono immagazzinate le informazioni che ci permettono di tradurre il singolo comando e scomporlo nei diversi passaggi base.

Resta il fatto che, dal punto di vista del programmatore usare una singola


Questo è uno dei vantaggi delle **funzioni**: la funzione permette di racchiudere una serie di istruzioni all'interno di un'unica entità, la funzione appunto, e di eseguire tali istruzioni semplicemente invocando il nome della funzione (_chiamata a funzione_).

Un programma potrebbe essere scritto nel modo seguente:

{% highlight c %}
disegna_linea(A, B);
disegna_linea(A, C);
disegna_linea(D, E);
{% endhighlight %}

3 istruzioni

---

Pensiamo ad una linea!
Dato un foglio di carta ed una matita, cos'altro servirebbe per tracciarne una? La risposta è un punto di partenza ed uno di arrivo.

Se **A** è il primo punto mentre **B** il secondo, potremmo disegnare un segmento che congiunge l'uno all'altro, magari con l'aiuto di un righello seguendo questo procedimento:
1. individuiamo il primo punto;
2. individuiamo il secondo punto;
3. allineiamo il righello ai due punti;
4. presa la matita, tracciamo un tratto tra i due punti;

Abbiamo completato un semplice compito e senza saperlo abbiamo eseguito una funzione: quella di _disegnare una linea_.
Fingendo d'essere degli elaboratori, avremmo appena eseguito la seguente istruzione:

{% highlight c %}
linea(A, B);
{% endhighlight %}

se ora il programma contenesse altre istruzioni dello stesso tipo, ad esempio:

{% highlight c %}
linea(A, C);
linea(D, E);
{% endhighlight %}

a cambiare sarebbero soltanto i punti che il programma ci indica, ma per noi elaboratori si tratterebbe essenzialmente di eseguire nell'ordine le stesse 4 istruzioni viste poco più su.

Più tecnicamente si dice che "_linea_" è una **funzione**. Come visto, essa permette all'elaboratore di disegnare una linea e per farlo ha bisogno che le vengano forniti 2 **argomenti**: i punti estremi.

Una funzione contiene al suo interno un certo quantitativo di istruzioni ma solleva il programmatore dall'obbligo di doverle riscrive tutte ogni volta.

-----

In altri termini

----

Cominciamo ad approfondire il discorso: addentriamoci all'interno del primo blocco di codice ed esaminiamo la prima istruzione qui contenuta.

Siamo alla riga 3 e l'istruzione è :

{% highlight c %}
pinMode(13, OUTPUT);
{% endhighlight %}

Questa istruzione è una **chiamata a funzione**, che significa?

---
Pensare ad una linea: dato un foglio di carta e una matita che cos'altro ci servirebbe per tracciala? La risposta è un punto di partenza ed uno di arrivo: se **A** è il punto di partenza mentre **B** quello di arrivo potremmo disegnare un segmento che congiunge l'uno all'altro, magari con l'aiuto di un righello!

Abbiamo completato un compito e senza saperlo abbiamo svolto una funzione: quella di _disegnare una linea_. Un po' come se fossimo noi gli elaboratori, sarebbe questa l'istruzione che avremmo appena completato:

linea(A, B);

se il programma contenesse altre istruzioni simili, non avremmo difficoltà ad eseguirle applicando lo stesso identico procedimento:

linea(A, C);
linea(B, C);

In altre parole si potrebbe dire che la **funzione** ```linea``` racchiude al suo interno una serie di istruzioni

---

La _chiamata a funzione_ è un particolare tipo di istruzione che si presenta nella forma di ```nome_di_funzione + ( argomento/i );```.

Tra le parentesi tonde di una chiamata a funzione si trovano spesso numeri, lettere o parole.

Nel nostro caso tra le parentesi quadre troviamo ```13``` e la parola ```OUTPUT```

Per ```nome``` si intende il nome di una funzione e a questo vengono fatte seguire due parentesi tonde, aperta e chiusa. All'interno di queste parentesi si trovano talvolta numeri, talvolta lettere, altre volte parole ma possiamo usare il termine più generico di **argomenti**.

L'istruzione di _chiamata a funzione_ prende quindi la forma più generica di ```nome_di_funzione + ( argomento/i );```.

Di funzioni ne esistono di moltissimi tipi, esse si distinguono tra loro a seconda di quale sia la loro funzione appunto. Ogni funzione poi richiede un ben determinato numero di argomenti, talvolta soltanto uno, ma altre volte 2 o anche più.

Se ad esempio dovessimo progettare un nuovo linguaggio di programmazione che svolga problemi matematici, probabilmente lo forniremmo di funzioni che calcolano la somma e il prodotto.
Le funzioni in questo caso potrebbero avere il nome di somma e prodotto ed entrambe avrebbero 2 argomenti di tipo numeri a rappresentare rispettivamente i due addendi e i due fattori.

All'interno di un programma probabilmente esse si presenterebbero in questa maniera:
somma(2, 7);
prodotto(5, 2);

Un ultimo esempio potrebbe essere tratto da un altro linguaggio di programmazione interessante che si chiama Processing.
Questo linguaggio fornisce tutta una serie di funzioni che si occupano di disegnare a schermo delle forme geometriche specifiche come la linea o il rettangolo secondo particolari argomenti forniti dal programmatore.
line(10, 5, 89, 105);
rect(-10, 0, 100, 60);

Il compito delle nostre funzioni matematiche è quello di calcolare la somma e il prodotto, del tutto differente rispetto alle funzioni di disegno, le quali devono tracciare delle figure a schermo.

Non solo è divero il compito cui queste funzioni possono servire ma è differente è anche il numero degli argomenti che le funzioni accettano. Perchè venga calcolata una somma o un prodotto il programmatore dovrà fornire soltanto due argomenti numerici, sono invece 4 gli argomenti nel caso di rect e line.

### pinMode
E' lecito a questo punto domandarci quale è il compito della funzione seguente?
pinMode(13, OUTPUT);

Come abbiamo visto e come spesso ci capiterà di vedere in seguito, il nome della funzione spesso è indicativo quale sia il suo scopo.
pinMode si occupa di impostare la modalità di un particolare pin.
Gli argomenti che il programmatore deve fornire alla funzione sono 2:
il numero del pin
una tra le due possibili modalità (INPUT oppure OUTPUT):
tramite questa istruzioni stiamo dicendo al nostro elaboratore di impostare il pin 13 in modalità di output.

Per il momento ci accontentiamo di questo. Proseguiamo.

Il blocco setup è terminato, esso si è esaurito con una unica istruzioni atta ad impostare il pin 13.

Ora entriamo nel blocco loop, il blocco le cui istruzioni verranno messe in esecuzione di continuo, dalla prima all'ultima per poi essere ripetute di continuo. Vediamole!

digitalWrite(13, HIGH);
delay(1000);
digitalWrite(13, LOW);
delay(1000);

Si tratta di quattro istruzioni del tutto simili se non identiche a 2 a due.

### digitalWrite
Un passo alla volta: esaminiamo la prima: essa ricorda in qualche modo la nostra pinMode:
anch'essa richiede 2 argomenti;
anch'essa ha un nome composto da due vocaboli (digital e write);
anch'essa ha 13 come primo argomento.

Più in generale possiamo dire che la funzione digitalWrite prevede due argomenti:
il numero del pin (in questo caso 13);
uno dei due possibili valori che il pin può assumere HIGH o LOW (vi ricordano qualcosa?).

Quele è il compito della funzione?
Essa sta lavorando con il pin 13, lo stesso che aveva subito una modifica da parte della funzione pinMode all'interno del blocco setup.
Nello specifico, come il nome della funzione ci suggerisce, sta scrivendo o per meglio dire sta mandando un segnale elettrico alto (HIGH) al pin 13.

Lasciamo da parte l'argomento elettricità per ora e proseguiamo esaminando la funzione successiva.

### delay
La seconda funzione si chiama delay e prende un solo argomento, un valore numerico.
Il compito di questa funzione è fare sì che l'elaboratore attenda. Attenda? E per quanto tempo?
Sì, attenda, senza fare nulla per il numero di millisecondi specificato!

1 secondo è composto da 1000 millisecondi
1 millisecondo è composto a 1000 µ-secondi.

Dopo una attesa di 1000 millisecondi dunque il nostro elaboratore si trova a dover eseguire l'istruzione
digitalWrite(13, LOW);

Il cui risultato sarà eguale è contrario rispetto a quando la stessa funzione era stata invocata con l'argomento HIGH: sul pin 13 ora viene inviato un valore elettrico basso (LOW).

Come poteva risultare intuitivo abbiamo visto che, la stessa funzione può essere invocata più volte nel corso del programma ed esa può esere invocata con argomenti differenti. Ci dovremmo queindi aspettare ogni volta comportamenti di tipo divero.

A seguire è nuovamente la funzione delay ad essere invocata. Anche questa volta, visto che l'argomento non cambia, l'elaboratore interromperà momentaneamente l'esecuzione per 1000 ms.

A questo punto il blocco loop è terminato. L'esecuzione riprenderà di nuovo dalla prima istruzione, settando il pin 13 alto e poi proseguire con le istruzioni seguenti.
{% endcomment %}

{% comment %}

Programmare significa soprattutto scrivere. Ma che differenza c'è tra lo scrivere un programma e lo scrivere una mail oppure un racconto?

Normalmente quando scriviamo ci serviamo dei molti significati racchiusi nelle parole. Diverse combinazioni di parole danno luogo a diversi possibili modi di esprimere uno stesso concetto.

Le parole stesse racchiudono al loro interno un certo grado di ambiguità che può essere sfruttato per suggerire al lettore un messaggio nascosto o semplicemente per rendere più interessante la nostra frase.

Il lettore poi può facilmente usare la propria interpretazione per costruire un significato laddove il testo risulti vago oppure caratterizzato da una grammatica un po' debole.

Queste caratteristiche del linguaggio, unite alle abilità nel farne uso conferiscono all'autore del testo uno stile unico.

Nella programmazione al contrario non c'è spazio per l'ambiguità. Nessun programma può contenere parole o frasi che non siano perfettamente comprendisili e chiare agli occhi dell'elaboratore.

Niente di vago insomma, nessuno spazio lasciato alla libera interpretazione.

Da principio scrivere in questo modo potrà risultare un poco strano. Occorre abituarsi ad un nuovo stile non solo scrittura ma anche direi ad un modo diverso di pensare.

Ci vuole un poco di esercizio ma piano piano ci faremo l'abitudine fino ad arrivare al punto in cui, leggendo per la prima volta un nuovo programma, sapremo già individuarne il comportamento e i possibili errori. Impareremo a ragionare come un elaboratore!

Personalmente, almeno per i primi tempi, ho trovato molto utile scrivere i miei primi programmi usando il classico metodo di carta e penna!


## Prepara carta e penna!

Scrivere su carta prima di riportare il testo del programma su computer aiuta a fissare nella memoria le parole e la sintassi del linguaggio.
Inoltre aiuta a risolvere più facilmente eventuali errori contenuti nel programma perchè permette una visione d'insieme più oggettiva.

Per i tuoi primi programmi ti consiglio di usare questo approccio. Fatta un po' di esperienza ed acquisita familiarità, potrai lasciare gradualmente il tuo taccuino e scrivere direttamente al computer il testo dei tuoi programmi.

Pronti? Si comincia!
Ecco il nostro primo programma: mentre leggi e riscrivi su carta fai particolare attenzione alle parentesi e ai segni di punteggiatura.

~~~ { .c .numberLines startFrom="1"}
void setup()
{
    pinMode(13, OUTPUT);
    digitalWrite(13, HIGH);
}

void draw()
{
    digitalWrite(13, HIGH);
    delay(1000);
    digitalWrite(13, HIGH);
    delay(1000);
}
~~~

# Convenzioni utilizzate in questo libro
Ogni programma che studieremo verrà mostrato utilizzando una particolare convenzione: alla sinistra di ogni riga sarà mostrato un numero progressivo al quale potremo riferirci in segito per esaminare il programma più approfonditamente, istruzione dopo istruzione.
Inoltre alcune delle parole di questi programmi verranno mostrate usando un particolare codice colore così che sia possibile, a colpo d'occhio, individuare le parole chiave del linguaggio di programmazione _Arduino_!


* nota: ogni programma mostrato in questo testo verrà mostrato come qui sopra: alla sinistra di ogni riga sarà mostrato un numero progressivo al quale potremo riferirci per esaminare il programma più approfonditamente.
* Inoltre alcune delle parole di questi programmi verranno mostrate usando un particolare codice colore così che sia possibile, a colpo d'occhi, individuare le parole chiave del linguaggio di programmazione Arduino!

{% endcomment %}

{% comment %}

## Digitale Analogico
[fonte: https://it.wikipedia.org/wiki/Digitale_%28informatica%29]
discorso del passaggio dal mondo fisico al mondo dei numeri (Analogico / Digitale).

{% endcomment %}
