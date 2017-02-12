---
layout: page
title: Capitolo 2 - Arduino
---

Dopo aver introdotto i principali argomenti di cui ci occuperemo, la programmazione e la scrittura di codice, facciamo la conoscenza di **Arduino**, la piattaforma che useremo per sperimentare nella pratica i nostri primi programmi!

## Physical Computing

Che cosa è un dispositivo **interattivo**?

![Physical computing](/assets/images/day2/physical_computing.png){: width="80%"}

E' un dispositivo che dispone di elementi capaci di captare gli impulsi provenienti dal mondo esterno, detti **sensori**. In base agli impulsi esterni, il dispositivo reagisce assumendo un particolare **comportamento**, che può essere di tipo meccanico, elettrico o software. Gli elementi tramite cui interviene sul mondo esterno sono detti **attuatori**.

Un semplice esempio di oggetto interattivo è la lampada da tavolo: essa è in grado di captare impulsi provenienti dall'esterno, come la pressione o il rilascio dell'interruttore (sensore). Al suo interno, una serie di parti meccaniche ed elettriche (comportamento) si attivano in base allo stato dell'interruttore, e le  consentono di dare luce all'ambiente attraverso una lapadina (attuatore).

Se l’_interaction design_ è la disciplina che studia la progettazione delle esperienze interattive, il **physical computing** (o _physical interaction design_) è un suo specifico campo di applicazione su sistemi fisici; è proprio qui, al confine tra software e hardware, che entra in gioco **Arduino**!

## Arduino

<a title="See page for author [Public domain], via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File%3AArduino_Logo.svg"><img width="50%" alt="Arduino Logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Arduino_Logo.svg/512px-Arduino_Logo.svg.png"/>
</a>

Il progetto **Arduino** è nato in Italia attorno all’anno 2005. 'Arduino' è il nome con cui si identificano particolari schede elettroniche e l'ambiente di sviluppo con cui possono essere programmate.

Arduino può percepire l’ambiente circostante interfacciandosi con una grande varietà di sensori e può interagire con esso controllando luci, motori e tantissimi altri attuatori. Arduino e’ stato pensato per artisti, designers, hobbysti e chiunque sia interessato a creare **oggetti interattivi**.

A ben vedere, ogni volta che usiamo il nostro computer stiamo utilizzando un oggetto interattivo: il computer riceve **input** da speciali sensori (il mouse e la tastiera) e reagisce producendo **output** sottoforma di segnali video o audio tramite speciali attuatori quali il display e gli speakers.

Arduino può essere usato in abbinamento con il nostro computer, espandendone così le possibilità di interazione con il mondo esterno, ad esempio:
* per ottenere informazioni impossibili da misurare con soli mouse e tastiera quali ad esempio l'umidità dell'aria, la temperatura o la quantità di luce nell'ambiente, o ancora, la distanza rispetto ad un ostacolo o l'inclinazione rispetto all'asse magnetico terrestre;
* per controllare meccanismi, pilotare motori, illuminare LED o display di diverso tipo e così via.

Le schede Arduino possono anche essere usate usate in modo indipendente, per realizzare oggetti interattivi completamente autosufficienti!

Interazione tuttavia non significa soltanto raccogliere stimoli, ma soprattutto elaborarli secondo una serie di regole. Queste regole definiscono il **comportamento** dell'oggetto interattivo.

Grazie ad Arduino il comportamento può essere cambiato con grande facilità tutte le volte che vogliamo attraverso la programmazione: Arduino infatti è anche il nome del linguaggio di programmazione che impareremo a conoscere già dal prossimo capitolo.

In altre parole, questo significa che per creare i nostri primi prototipi non c'è bisogno d'essere grandi esperti di elettrotecnica o elettronica, basta conoscere il linguaggio di programmazione e qualche semplice rudimento tecnico; ed il gioco è fatto!

### Open Source

Di non poca importanza è il fatto che tutti i prodotti Arduino sono distribuiti come hardware e software **open-source** (a codice aperto), il che permette a chiunque di produrre e distribuire le schede Arduino oppure di realizzarne altre derivate senza alcuna limitazione.

Tutto il software con cui Arduino funziona, IDE e librerie, è distribuito con una licenza di tipo _permissivo_ che rispetta i dettami del movimento del **software libero** e garantisce trasparenza e libertà a tutti gli utenti.

Se sei interessato ad approfondiere questi argomenti, secondo me davvero molto importanti, ti invito a dare uno sguardo all'apposita [appendice]({{site.baseurl}}/appendiceB/).

## Primi passi

Per avvicinarsi al mondo Arduino può essere una buona idea visitare il [sito ufficiale](https://www.arduino.cc/) per raccogliere informazioni aggiuntive, dare uno sguardo ai numerosi progetti realizzati dalla comunità o semplicemente esaminare i diversi modelli di schede disponibili.

Esistono infatti di diversi tipi di scheda Arduino, ognuna ottimizzata per specifiche aree di applicazione. A seconda delle particolari esigenze una può risultare più adatta di altre, tuttavia mi sento di consigliare la scheda **[UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno)** che incorpora tutte le caratteristiche che esamineremo assieme nel corso del libro, ottima per iniziare!

<div class="note">
<p>Navigando sul sito ufficiale di Arduino potreste incappare anche nel marchio <em>Genuino</em>. All'inizio la cosa potrebbe confondere ma i due nomi <b>Arduino</b> e <b>Genuino</b>, rappresentano in sostanza la stessa cosa: una scheda Arduino UNO ad esempio è del tutto identica ad una Genuino UNO e così vale per tutti gli altri modelli di scheda.</p>

<p>I due diversi marchi sono stati introdotti qualche tempo fa a causa di alcune divergenze interne tra i membri fondatori del progetto Arduino. Ad oggi le divergenze sembrerebbe si siano appianate ma vedo che i 2 nomi sono ancore presenti in qualche pagina del sito web...</p>
</div>

Potrebbe essere una buona idea valutare l'acquisto di uno **starter kit**, che oltre alla scheda UNO, contiene anche una serie di altre componenti di base, molto utili per fare i primi esperimenti.

In alternativa, tutto il materiale che utilizzeremo potrà essere facilmente acquistato di volta in volta in qualsiasi negozio di componenti per l'elettronica oppure anche on-line (vedi l'[appendice]({{ site.baseurl }}{% link riferimenti.md %}) per qualche riferimento in più).

## Hardware

Prima di passare al linguaggio di programmazione Arduino, diamo uno sguardo d'insieme alla scheda e cerchiamo di capire di quali parti si compone.

Ecco la scheda **Arduino UNO**!

![Arduino UNO real](/assets/images/day2/board/Arduino_photo_2.png)

ed una sua immagine stilizzata che useremo come riferimento d'ora in avanti.

![Arduino UNO fritzinf](/assets/images/day2/board/arduino-fritzing.png){: width="50%"}

L'immagine potrebbe non rappresentare la scheda in modo del tutto esatto, il progetto Arduino è in continuo aggiornamento e così anche le schede subiscono delle revisioni.

Il succo tuttavia è sempre lo stesso: tutte le schede Arduino sono come dei piccoli computer in miniatura e come ogni computer possiedono:
* inputs;
* ouputs;
* una presa per l'alimentazione;
* diverse porte di comunicazione per connettersi e scambiare dati con altri dispositivi.

Passiamo ora all'esplorazione della scheda. Senza entrare troppo nei dettagli ecco di seguito le principali componenti.

### Microcontrollore

Un po' come un computer, anche la scheda Arduino UNO possiede un'unità centrale di controllo: si tratta del microchip **ATmega328P** appartenente alla famiglia dei microcontroller AVR prodotti dalla ditta Atmel.

![MICROCONTROLLORE](/assets/images/day2/board/porzioni_microcontroller.png){: width="50%"}

Questo microcontroller è di fatto il cuore della scheda Arduino UNO: ad esso sono collegati tutti gli input e gli output ed è sempre qui che il nostro programma viene memorizzato e messo in esecuzione.

Come un normale computer dispone di un hard disk e di altri tipi di dispositivi per memorizzare dati e programmi, anche il microcontrollore di Arduino dispone di una memoria interna che si può usare in modo del tutto identico.

Il programma eseguibile presente nella memoria del microcontrollore può essere sostituito con un nuovo programma tutte le volte che vogliamo, sovrascrivendo il contenuto della memoria. E' questa un'operazione con cui prenderemo presto dimestichezza e che eseguiremo più e più volte connettendo la scheda Arduino al computer tramite il cavo USB ed effettuando il cosìdetto _upload_.

### Alimentazione

Per funzionare la scheda Arduino ha bisogno d'essere alimentata, ecco alcuni modo per farlo:

* si può utilizzare il cavo USB per connettere la scheda al computer. In tal caso il cavo USB svolge una doppia funzione: da una parte ci permette di caricare nuovi programmi sulla scheda Arduino, dall'altra fornisce l'alimentazione necessaria per il funzionamento della scheda;

![presa USB](/assets/images/day2/board/porzioni_USB.png){: width="50%"}

* in alternativa si può usare un adattatore:

![adattatore](https://upload.wikimedia.org/wikipedia/commons/7/7f/Wall-Wart-AC-Adapter.jpg){: width="50%"}

L'adattatore consigliato è un adattatore da **9 Volts** con polarità positiva al centro (per la polarità controlla che l'adattatore o la sua spina possieda una indicazione simile a quella mostrata qui di seguito).

![immagine polarita](/assets/images/day2/adapter/power_supply_polarity_011.jpg)

Basta connetterlo alla apposita presa presente sulla scheda ed ecco fatto!

![presa adattatore](/assets/images/day2/board/porzioni_AC_Connector.png){: width="50%"}

* Anche le batterie possono essere usate per alimentare la scheda. Le batterie, ad esempio, sono utilissime se il nostro oggetto interattivo deve funzionare lontano da una presa di corrente (magari ce ne occuperemo in qualche futuro esperimento!).

### Ingressi e Uscite

La scheda Arduino UNO possiede una serie di pin che permettono al microcontrollore di acquisire o inviare informazioni dal/al mondo esterno sottoforma di segnali elettrici.

Senza entrare troppo nel dettaglio per ora (avremo modo di approfondire in seguito), ci basta sapere che abbiamo a disposizione:

* 6 pin dedicati agli ingressi analogici;

![pin analogici](/assets/images/day2/board/porzioni_analog.png){: width="50%"}

* 14 pin per gli ingressi digitali di cui 6 possono anche essere usati come ouptut (quelli che sulla scheda sono marcati con il carattere _tilde_ **~**).

![pin digitali](/assets/images/day2/board/porzioni_digital.png){: width="50%"}

### LEDs di bordo

La scheda Arduino UNO è dotata di alcuni LED che, accendendosi e spegnedosi, possono dare un'indicazione immediata sul suo funzionamento.

![LEDs](/assets/images/day2/board/porzioni_LEDs.png){: width="50%"}

* uno di questi LED è etichettato come _ON_ e, come dice il nome stesso, si accende quando la scheda è in funzione;
* due LED, rispettivamente _TX_ ed _RX_ (_trasmissione_ e _ricezione_), lampeggiano per indicare una comunicazione in corso, generalmente tra la scheda e il computer connesso tramite cavo USB;
* un ultimo LED, etichettato _L_, è connesso al pin digitale numero 13 e può essere usato per testare la scheda ed effettuare i primi esperimenti.

## Software

Arduino è anche il nome del linguaggio con cui si scrivono i programmi per la scheda. Come ormai sappiamo, un programma altro non è se non un semplice documento di testo contenente tutte le istruzioni necessarie per la risoluzione di un particolare problema.

Se volessimo scrivere una mail, un messaggio o un generico documento di testo, sapremmo subito in che modo agire e che strumento utilizzare (basti pensare alla suite per ufficio [LibreOffice](https://www.libreoffice.org/) cui abbiamo accennato nel capitolo precedente).

Allo stesso modo esistono strumenti appositamente pensati per scrivere programmi: questi software prendono il nome di **IDE**, una sigla che sta per <b>I</b>ntegrated <b>D</b>evelopment <b>E</b>nviroment, o ambienti di sviluppo integrato.

Questi IDE sono fondamentali nella cosiddetta _fase di sviluppo_ dei propri programmi. Un IDE contiene al suo interno tutta una serie di funzionalità che rendono semplice la scrittura di codice, la correzione di eventuali errori e la compilazione.

Anche Arduino ha il proprio IDE e di certo la prima cosa da fare per cominciare a scrivere i nostri programmi è quella di scaricarlo e installarlo sul proprio computer.

### Download ed installazione dell'IDE

Per scaricare ed installare l'IDE di Arduino basta visitare il [sito ufficiale](https://www.arduino.cc) e seguire le istruzioni riportate nella sezione [Software/Download the Arduino IDE](https://www.arduino.cc/en/Main/Software): essendo un software multipiattaforma, l'IDE è disponibile per diversi sistemi operativi ed architetture hardware.

[![Arduino IDE download](/assets/images/day2/IDE/arduino_IDE_download.png)](https://www.arduino.cc/en/Main/Software)

Per avere un ulteriore aiuto sui diversi passaggi necessari per lo scaricamento e l'installazione, consiglio di leggere le informazioni contenute nella pagina [Learning/Getting Started](https://www.arduino.cc/en/Guide/HomePage).

{% comment %}
**TODO** aggiungi info sul web editor
{: class="note"}
{% endcomment %}

### IDE: Uno sguardo d'insieme

Una volta installato, alla prima apertura l'IDE dovrebbe apparire così:
![Arduino IDE](/assets/images/day2/IDE/IDE_general.png)

Come si vede, la grande porzione centrale di colore bianco ci suggerisce che l'IDE in fondo non differisce molto da un comune _editor di testo_.

Ogni volta che l'IDE viene aperto, viene creato in automatico un nuovo foglio di testo pronto per accettare le istruzioni di un nuovo programma; alcune di queste istruzioni tra l'altro, come si può vedere, vengono già inserite in modo automatico.

A questo nuovo programma l'IDE assegna un nome che si compone del termine _sketch_ e di una sigla associata alla data.
Oggi, che scrivo queste parole, è il 21 Gennaio ed ecco spiegata l'intestazione della finestra e del tab.

![IDE program name](/assets/images/day2/IDE/IDE_general_name.png)

Un programma scritto in Arduino prende di default il nome di **sketch**, rifacendosi al termine usato per il medesimo scopo dal linguaggio [Processing](https://processing.org/), un linguaggio di programmazione usato per realizzare disegni e grafiche interattive.

Prima di proseguire è bene impostare la cartella dove salvare i nostri programmi. Questa cartella è chiamata **sketchbook** e la sua posizione all'interno del nostro file system può essere modificata liberamente: basta fare click sulla voce _Preferences_ dal menù _File_ e cambiare l'apposito campo _Sketchbook location_.

![IDE Preferences](/assets/images/day2/IDE/IDE_preferences.png){: width="80%"}

Come si vede dall'immagine, il mio sketchbook si trova all'interno della cartella ```/Arduino```, nella home del mio utente.

La cartella _sketchbook_ è molto importante perchè è la posizione in cui salveremo tutti i nostri progetti d'ora in avanti; è in questa cartella inoltre che l'IDE salverà tutti i files associati alle nuove librerie installate, come vedremo meglio in seguito.

Infine, per salvare i propri programmi, è sufficiente fare click sulle voci _Save_ o _Save As_ dal menù a tendina _File_ ed eventualmente assegnare loro il nome che preferiamo. Ogni volta che salviamo un nuovo programma, viene generato un nuovo file con estensione ```.ino``` e viene posizionato all'interno di una cartella che prende il nome del file stesso all'interno dello sketchbook.

![IDE sketchbook](/assets/images/day2/IDE/sketchbook.png)

Quando diamo un nome ad un nuovo programma dobbiamo assicurarci che non contenga spazi, trattini (l'_underscore_ può essere usato) o che non inizi con un numero!

---

L'interfaccia dell'IDE mostra anche altri interessanti elementi. Nella parte alta della finestra infatti si possono notare questi 6 pulsanti:

![IDE interface](/assets/images/day2/IDE/interface.png)

Per ora lasciamo da parte i primi 2 e l'ultimo, torneremo ad occuparcene in seguito. Concentriamoci piuttosto sugli altri 3:
* **New**: questo pulsante permette di creare un nuovo sketch;
* **Load**: quest'altro invece permette di caricare uno sketch salvato in precedenza oppure di caricarne uno tratto dai file di esempio.
* **Save**: Salva le modifiche apportate allo sketch.

Un altro elemento interessante è la sezione di colore nero che si trova nella parte bassa della finestra: si tratta della **console**.

![IDE console](/assets/images/day2/IDE/IDE_console.png)

 Se i nostri programmi conterranno qualche errore oppure se ci saranno difficoltà nel caricarli sulla scheda, è qui che l'IDE di Arduino ce lo comunicherà.

## Conclusioni

Abbiamo dato uno sguardo alla scheda Arduino dal punto di vista hardware, osservandola nelle sue diverse parti e abbiamo poi esaminato l'IDE, la parte software della piattaforma che ci accompagnerà lungo tutto il nostro percorso.

Nel prossimo capitolo cominceremo a scrivere le nostre prime righe di codice e vedremo come caricare i programmi sulla scheda. Approfondiremo alcuni altri aspetti dell'IDE e capiremo come decifrare i messaggi d'errore mostrati a console.

{% include disqus-scripts.html %}

{% comment %}

---

L'interfaccia però mostra anche altri interessanti elementi:
* **Verify**: il pulsante Verify esegue una cross-compilazione e verifica eventuali errori nel programma;
* **Upload**: il pulsante Upload compila il programma e lo carica sulla scheda Arduino;

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
