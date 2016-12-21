---
layout: page
title: Capitolo 2 - Arduino
---

Work in progress!

{% comment %}

Dopo aver introdotto i principali argomenti di cui ci occuperemo, la _programmazione_ e la scrittura di codice, facciamo la conoscenza di **Arduino**, la piattaforma che useremo per sperimentare nella pratica i nostri primi programmi!

## Physical Computing

![Physical computing](a)

Che cosa è un dispositivo **interattivo**? E' un dispositivo che, dati degli impulsi provenienti dal mondo esterno, captati tramite **sensori** di diverso tipo, reagisce secondo un **comportamento** ben preciso, sia esso di tipo meccanico, elettrico oppure software, tramite altri dispositivi appositi detti **attuatori**.

![sensori (sensazione/percezione) → comportamento (software) → attuatori (azione/reazione)](a)

Se l’_interaction design_ è la disciplina che studia la progettazione delle esperienze interattive, il **physical computing** (o _physical interaction design_) è un suo specifico campo di applicazione su sistemi fisici ed è proprio qui, al confine tra software e hardware, che entra in gioco **Arduino**!

## Arduino

Il progetto **Arduino** è nato in Italia attorno all’anno 2005 ed è il nome con cui si identificano particolari schede elettroniche e l'ambiente di sviluppo con cui queste possono essere programmate.

Arduino può percepire l’ambiente circostante ricevendo input da una grande varietà di sensori e può interagire con esso controllando luci, motori e tantissimi altri attuatori. Arduino e’ stato pensato per artisti, designers, hobbysti e chiunque sia interessato a creare **oggetti interattivi**.

A ben vedere, ogni volta che usiamo il nostro computer stiamo utilizzando un oggetto interattivo: il computer riceve inputs da speciali sensori, il mouse e la tastiera, e reagisce producendo outputs sottoforma di segnali video o audio tramite speciali attuatori quali il display e gli speakers.

Grazie ad Arduino, il nostro computer può espandere le proprie possibilità di interagire con il mondo esterno.
Una scheda Arduino infatti può essere connessa al nostro pc:
* per ottenere informazioni altrimenti impossibili da misurare con soli mouse e tastiera come l'umidità dell'aria, la temperatura, la quantità di luce oppure ancora la distanza rispetto ad un ostacolo o l'inclinazione rispetto all'asse magnetico terrestre;
* per reagire attivando meccanismi, pilotando motori, illuminando LED o display di diverso tipo e così via.

Le schede Arduino possono essere utilizzate anche da sole, per realizzare oggetti interattivi completamente autosufficienti!

Interazione tuttavia non è soltanto il raccogliere stimoli ma soprattutto l'elaborarli secondo una serie di regole. Queste regole definiscono il **comportamento** dell'oggetto interattivo.

Grazie ad Arduino il comportamento può essere cambiato tutte le volte che vogliamo con grande facilità tramite la programmazione: Arduino infatti è anche il nome del linguaggio di programmazione che impareremo a conoscere già dal prossimo capitolo.

In altre parole, questo significa che non c'è bisogno d'essere grandi esperti dell'elettrotecnica o dell'elettronica per creare i nostri primi prototipi, basta conoscere il linguaggio Arduino assieme a qualche semplice rudimento tecnico e il gioco è fatto!

---

## discorso OPEN SOURCE (TODO)

Soprattutto grazie alla sua filosofia **Open Source**, nel corso del tempo Arduino è stato la linfa vitale per la crescita di una gigantesca comunità di utenti entusiati per la sua immediatezza e facilità d’uso.

[fonte: https://it.wikipedia.org/wiki/Digitale_%28informatica%29]
discorso del passaggio dal mondo fisico al mondo dei numeri (Analogico / Digitale).

---

## Primi passi

Per avvicinarsi al mondo Arduino può essere una buona idea visitare il [sito ufficiale](https://www.arduino.cc/) per raccogliere informazioni aggiuntive o semplicemente per dare uno sguardo alle diverse schede disponibili.

Infatti di schede Arduino ne esistono di diversi tipi, una può essere meglio dell'altra a seconda delle particolare esigenze del proprio progetto, tuttavia mi sento di consigliarti la scheda **[UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno)** che incorpora tutte le caratteristiche che esamineremo assieme nel corso del libro.

Anche se all'inizio potrebbero confondere, i due nomi **Arduino** e **Genuino** rappresentano in sostanza la stessa cosa: un Arduino UNO è identico ad un Genuino UNO e così vale per tutti gli altri modelli di scheda (i due diversi marchi sono stati introdotti qualche tempo fa a causa di alcune divergenze interne tra i membri fondatori).

Potrebbe essere una buona idea valutare l'acquisto di uno **starter kit**, che oltre alla scheda UNO, contiene anche una serie di altre componenti di base, molto utili per fare i primi esperimenti. In alternativa, tutto il materiale che utilizzeremo potrà essere facilmente acquistato di volta in volta in un negozio di componenti per elettronica oppure anche on-line (vedi l'[appendice]({{ site.baseurl }}{% link riferimenti.md %}) per qualche riferimento in più).

## Hardware

Arduino è un insime di hardware e software: cominciamo a dare uno sguardo di insieme alla scheda e cerchiamo di capirne il funzionamento e di quali parti si compone.

Ecco la scheda **Arduino UNO**!

![Arduino UNO](a)

Tutte le schede Arduino sono come dei piccoli computer in miniatura e come ogni computer possiede:
* inputs;
* ouputs;
* una presa per l'alimentazione;
* porte di comunicazione, per comunicare con altri dispositivi.

![slide Arduino (vediamo come è fatta la scheda arduino)](a)

### Microcontrollore

Un po' come un computer, anche la scheda Arduino possiede un'unità centrale di controllo: si tratta del microchip chiamato ATmega328P appartenente alla famiglia dei microcontroller AVR prodotti dalla ditta Atmel.

![MICROCONTROLLORE](a)

Questo microcontroller è di fatto il cuore della scheda Arduino UNO: ad esso sono collegati tutti gli input e gli output (che vedremo a breve) ed è qui che il nostro programma viene eseguito per elaborare i dati in ingresso e restituire l'uscita corrispondente.

Un po' come un normale computer legge files e programmi eseguibili dall'hard disk, il microcontrollore legge il proprio programma da una sua memoria interna. Il programma eseguibile presente nella memoria del microcontrollore può essere cambiato sovrascrivendo la memoria con un nuovo eseguibile.

E' questa l'operazione con cui prenderemo presto dimestichezza e che esguiremo più e più volte connettendo la scheda Arduino al computer tramite il cavo USB ed effettuando il cosìdetto _upload_.

### Alimentazione

La scheda Arduino per funzionare ha bisogno d'essere alimentata. Ci sono diversi modi per farlo:

* si può ad esempio utilizzare il cavo USB per connettere la scheda al computer. In tale caso Il cavo USB svolge una doppia funzione, da una parte ci permette di caricare nuovi programmi sulla scheda Arduino, dall'altra gli fornisce l'alimentazione necessaria per il suo funzionamento;
* in alternativa si può usare un adattatore: consigliato uno da 9 Volts, polo positivo al centro;

![ADATTATORE](a)

* Anche le batterie possono essere usate per alimentare la scheda: utilissime se il nostro oggetto interattivo debba funzionare lontano da una presa di corrente!

### Ingressi e Uscite

La scheda Arduino UNO dispone poi di una serie di pin che permettono al microcontrollore di acquisire o inviare informazioni dal/al mondo esterno sottoforma di segnali elettrici.

Senza entrare troppo nel dettaglio, visto che avremo modo di approfondire in seguito, ci basti sapere che abbiamo a disposizione:

* 6 pin dedicati agli ingressi analogici;
* 14 pin per gli ingressi digitali di cui 6 possono anche essere usati come ouptut.

### i LEDs di bordo

La scheda Arduino UNO è dotata di alcuni LED che, accendendosi e spegnedosi, possono dare una indicazione immediata sul funzionamento della scheda.

* uno di questi LED è etichettato come _ON_ e, come dice il nome stesso, si accende ad indicare che la scheda è funzionante;
* due LED, rispettivamente _TX_ ed _RX_, che lampeggiano ad indicare una comunicazione in corso, generalmente tra la scheda e il computer connesso tramite cavo USB;
* un ultimo LED, etichettato _L_, è connesso al pin digitale numero 13 e può essere usato per testare la scheda ed effettuare i primi esperimenti.

## Software

IDE
etc...

discorso IDE
compilazione: compilatore gira sulla stessa macchina su cui verrà eseguito il programma compilatore
Nel caso di Arduino avviene una cross compilazione
(esamina parte finale del day1 per maggiori info)

{% endcomment %}
