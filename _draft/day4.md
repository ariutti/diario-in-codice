---
layout: page
title: Capitolo 4
---

* la memoria di Arduino
* Variabili / metafora rubrica telefonica / dichiarazione assegnazione / costanti / costanti di sistema / assegnazione all'interno di un blocco (scope), valori di default.
* in più: commenti

* che cosa succede elettricamente (l'appendice sull'elettricità deve essere già pronta!!!)
* componenti - Diodi e LED --> es. LED
* Vcc - LED - R
* Tools Datasheet / Breadboard / Multimetro
* Es. Batteria + R + LED
* Es. Arduino è LED esterno

---

Nel capitolo precedente abbiamo imparato a scrivere un programma in linguaggio Arduino e a caricarlo sulla scheda perchè venisse eseguito.

In una occazione, abbiamo usato la frase "_caricare il codice [...] sulla memoria [...] del microcontrollore..._" e a ragione: Arduino non è soltanto in grado di eseguire istruzioni ma anche di memorizzarle, così come diversi altri tipi di informazioni, per farne uso in momenti diversi e persino dopo aver subito un'interruzione dell'alimentazione.

Arduino, così come ogni altro elaboratore, non sarebbe in grado nemmeno di affrontare i calcoli più semplici se non possedesse la capacità di memorizzare.

## La memoria

Negli organismi viventi la memoria è legata a meccanismi chimici ed elettrici che hanno luogo nel cervello e si formano per interazione dei neuroni, le cellule che, per così dire, costituiscono le unità minime.

![neurone]()

Allo stesso modo, anche in elettronica si usa il termine _memoria_ per indicare i dispositivi che hanno lo scopo di ritenere informazioni (probabilmente ci sarà capitato talvolta di leggere il termine RAM nella descrizione di un PC oppure di scegliere una scheda SD per il nostro telefono o macchina fotografica su base della capienza espressa in GB!)

Di memorie elettroniche ne esistono davvero di molti tipi diversi - lo stesso microcontrollore montato sulla scheda Arduino UNO ne usa 3 tipi diversi (lo vedremo a breve) - e si differenziano a seconda del metodo usato per scrivere, mantenere e cancellare l'informazione.

Al posto del neurone, in questi casi la singola cella delle memorie elettroniche è costituita da un qualche tipo di circuito elettronico che ha per scopo quello di conservare ciò che in informatica costituisce l'unità minima dell'informazione digitale: il **bit**!

Ricordiamo il telaio Jacquard? Nel primo capitolo l'abbiamo preso ad esempio perchè una delle prime macchine programmabili attraverso sequenze di _pieno_ e _vuoto_, fornite sottoforma di schede perforate. Similmente i calcolatori elettronici utilizzano un analogo costituito dai due soli simboli _zero_ e _uno_ che assieme costituiscono il bit!

![bit]()

In questo modo potremmo pensare la memoria del calcolatore come un grandissimo insieme di interruttori: ogni interruttore (una singola cella della nostra memoria) potrà essere o acceso (1) oppure spento (0).

Grandi gruppi di celle come quelli che costituiscono una memoria elettronica si quantificano in termini di multipli interi del **byte**  costituito a sua volta da una sequenza di 8 bit consecutivi. In questo modo si avrà che:
* 8 bit = 1 B (byte)
* 1024 B = 1 KB (kilo-byte)
* 1024 KB = 1 MB (mega-byte)
* 1024 MB = 1 GB (giga-byte)
* 1024 GB = 1 TB (tera-byte)

Potremmo chiederci ora, quante informazioni si possono memorizzare all'interno di un byte?

## Sitema decimale e sistema binario

La nostra cultura usa un sistema a **base 10** per scrivere e fare calcoli con i numeri. Il fatto di avere 10 dita è sicuramente uno dei motivi che ha fatto sì che il sistema prevalesse sugli altri esistenti, in uso ad esempio presso le popolazioni arabe, indoeuropee o greche del passato.

Inoltre il sistema a base 10 era semplice perché richiedeva di conoscere soltanto _10 simboli_ (1, 2, 3, 4, 5, 6, 7, 8, 9 e lo 0), decisamente più pratico rispetto al sistema di numerazione babilonese che utilizzava una base sessadecimale ossia con 60 simboli. In aggiunta, con il sistema decimale era sufficiente affiancare pochi simboli gli uni agli altri per rappresentare grandi quantità.

Il sistema decimale è a _notazione posizionale_, il che significa che i simboli sono per convenzione disposti affiancati gli uni agli altri, la cifra meno significativa si trova a destra e via via verso sinistra si susseguono le cifre _più significative_ ovvero che appartengono a livelli gerarchici superiori .

Cosa significano base 10 e notazione posizionale in conreto? Facciamo un esempio: come possiamo rappresentare la quantità 127?
Centoventisette può essere rappresentato usando solo 3 simboli, il 7, il 2 e l'1 posizionati come indicato di seguito

| gerarchia (esponenti) | 2 (centinaia)| 1 (decine) | 0 (unità) |
| cifre | 1 | 2 | 7 |

Il 7 è il simbolo associato alla cifra posta più a destra che è la meno significativa e inciderà meno rispetto alle altre nella rappresentazione della quantità. La cifra che si trova più a sinistra, quella che ha per simbolo 1, è invece quella con maggiore peso.

Per calcolare la quantità associata a ciascuna cifra occorre considerare il simbolo ad essa associato, il suo peso gerarchico (esponente) e il 10 (la base del sistema numerico) e applicare la formula mostrata di seguito:

$$quantità = simbolo \times base^{esponente}$$

Tre cifre corrispondono a tre quantità parziali che, sommate tra loro, forniranno infine l'effettiva quantità rappresenta.

* prima cifra, simbolo 1, da cui $$1 \times 10^2 = 100$$
* seconda cifra, simbolo 2, da cui $$2 \times 10^1 = 20$$
* terza ed ultima cifra, simbolo 7, da cui $$7 \times 10^0 = 7$$
* risultante: $$100 + 20 + 7 = 127$$

Se il 10 è il sistema più naturale per la nostra civiltà, per i calcolatori le cose sono un po' differenti. Abbiamo ormai sottolineato più volte che il più conveniente in questi casi è un sistema binario, che si basi cioè su due simboli opposti, vuoto e pieno, zero e uno i quali, tra l'altro, rispecchiano due possibili stati della tensione elettrica applicata ai circuiti elettrici:
* 1 in genere associato ad un livello di tensione alto;
* 0 associato ad un livello di tensione basso;

Dal punto di vista dell'elaboratore, avere solo due simboli a disposizione non significa non essere in grado di rappresentare grandi quantità numeriche ma semplicemente l'esigenza di più cifre per farlo rispetto al sistema a base 10.

Continuiamo con il nostro esempio e cerchiamo di tradurre, usando lo stesso sistema visto precedentemente il numero 101 dalla base binaria:

| gerarchia (esponenti) | 2 | 1  | 0 |
| cifre | 1 | 0 | 1 |

Sapendo che la base è 2, la somma è costituita dai seguenti addendi:

* prima cifra, simbolo 1, da cui $$1 \times 2^2 = 4$$
* seconda cifra, simbolo 0, da cui $$0 \times 2^1 = 0$$
* terza ed ultima cifra, simbolo 1, da cui $$1 \times 2^0 = 1$$
* risultante: $$4 + 0 + 1 = 5$$

Il valore rappresentato è 5 e curiosamente, come possiamo vedere, il sistema binario richiede 3 cifre per rappresentarlo quando, nel sistema decimale, una sarebbe stata sufficiente.

TODO continua!






# Memoria di Arduino

Il microcontrollore che si trova montato sulla scheda Arduino UNO è l'ATmega328 il quale dispone di:
* 32KB (32.768 byte) di cui 0,5 occupati dal bootloader (512 byte) di memoria flash (MOSFET, non volatile, veloce scrivibile e cancellabile).
* 2 KB (2.048 byte) di SRAM (si tratta di memoria dinamica);
* 1 KB (1024 byte) di EEPROM;














----

TODO: DA SISTEMARE

### Commenti
Prima di passare ad altro vediamo soltanto un ultima cosa riguardo al codice.

Come siete abituati a prendere appunti?  A lezione alcuni di voi usano forse un quaderno? Oppure preferite scrivere un documento di testo con il vostro portatile?

Quando studio qualche nuovo linguaggio di programmzione, talvolta un metodo che utilizzo è quello di prendere appunti con il portatile, direttamente sul codcie sorgente così da arricchirlo con una spiegazione esaustiva a prova di amnesia.

Vi capiterà spesso, vedrete, di dover ritorare su di un vostro programma a distanza di settimane, mesi o forse anche anni. Il programma può essere semplice o complesso ma se è passato molto tempo dall'ultima volta che ci avete lavorato prbabilmente vi sarete dimenticati il perché di molte cose che avete scritto.

Molto meglio prevenire, aggiungendo, di tatno in tanto qualche riga di commento alle istruzioni più importanti, ai blocchi di codice principali.

Il commento è una sintassi offerta da tutti i linguaggi di programmazione per peremettere al programmatori di inserire all'interno del programma sezioni di testo che vengano ignorate dall'elaboratore ma che sono comunque molto utili per chi legge il programma e deve capire che cosa sta succedendo.

In Arduino, ci sono 2 modi per commentare.
commento a singola riga: il commento occupa una sola riga. Il testo del commento deve essere preceduto da due slash //.
commento multi-riga: il commento si estende su più righe. Esso è delimitato da /* e da */

La pratica di aggiungere i commenti al nostro codice è fondamentale anche in un ottica di scambio delle informazioni tra sviluppatori: lavorando assieme ad un progetto spesso capita che il codice sorgente dovrà essere letto e modificato da persono diverse rispetto a quelle che l'hanno scritto in origine.
Se il codice sorgente è corredato di una “documentazione” esaustiva, il lavoro d'insieme filerà liscio senza rallentamenti od intoppi!
