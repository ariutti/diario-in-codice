{% comment %}
appoggio qui tutte quelle cose che in origine facevano parte del capitolo DAY2 ma che ona non mi piace più inserire
{% endcomment %}


_A questo microchip
AVR microcontroller molto popolari progettati da una azienda che si chiama Atmel.
C++ → tradotto in linguaggio macchina per il microcontrollore AVR (si tratta di cross-compiling).

Tutti questi pin sono connessi ad un microcontroller: in pratica di un vero e proprio mini computer. Ci sono tuttavia alcune differenze. Un computer ad esempio carica i programmi dall’hard drive mentre il microcontroller deve invece essere programmato. Per questo viene usato il cavo USB. Una volta che il programma è stato uploadato (con cancellazione del programma precedente) Arduino ne comincerà l’esecuzione. Quando si vuole forzare Arduino a ricominciare l’esecuzione del programma dall’inizio si usa il pulsante reset o l’ingresso pin corrispondente._

_* Batterie: Quando il progetto realizzato con Arduino ha necessità di essere portatile é possibile connettere il pacco batterie ai pin Vin e gnd.
Arduino può alimentare anche dispositivi esterni: ci sono infatti dei pins che sono dedicati a questo (3V3 e 5V).
I pins denominati gnd permettono ad altri dispositivi di condividere la stessa terra con Arduino._



_permettere il monitoring seriale;
alimentare la scheda direttamente con il computer senza bisogno di un alimentatore esterno._


_### Analog In

Arduino
Ci sono 6 pins dedicati agli ingressi analogici (A0 - A5) e possono essere utilizzati per connettere sensori analogici alla scheda. Il segnale elettrico in ingresso al pin viene campionato in 1024 intervalli di campionamento (2^10).
vedremo la parte teorica e pratica in una esperienza apposita

### Digital
Ci sono poi 14 ping denominati digitali (D0 - D13). A seconda delle necessità possono essere utilizzati come input o come output in modo tale da poter ad esempio leggere lo stato di un bottone o un interruttore oppure illuminare o spegere un LED.

### Analog Out (PWM)
6 di questi pin (D3, D5, D6, D9, D10 e D11) possono essere anche utilizzati come pin di uscita analogica sottoforma di sengale digitale modulato PWM._

---

_Per riuscire ad usarlo con una certa cognizione dobbiamo prima di tutto padroneggiare alcuni concetti fondamentali, tra i più importatni sicuramente
- Programmazione
- le basi dell'elettronica elettronica / elettrotecnica

Come abbiamo detto più volte, la scheda ha bisogno di essere programmata, occorre in altre parole, fornirle il comportamento. Questo comportamente è una caratteristica software: la scheda reagirà agli impulsi in base a quanto è stato scritto nel programma.

Quando abbiamo a che fare con un microcontrollore come Arduino possiamo anche non avere una conoscenza approfondita sull'elettricità per iniziare. Alvorare nel dominio digitale ci permette di bypassare le molte conoscenze che normalmente bisognerebbe possedere per cominciare a prototipare, la teoria delle componenti e le equazioni e leggi._
