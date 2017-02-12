---
layout: page
title: Capitolo 3 - Cominciamo a scrivere
---

> Le parole sono tutto quello che abbiamo, perciò è meglio che siano quelle giuste"
Raymond Carver^[tratta da da _Niente trucchi da quattro soldi_ di Raymond Carver]

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

* nota: ogni programma mostrato in questo testo verrà mostrato come qui sopra: alla sinistra di ogni riga sarà mostrato un numero progressivo al quale potremo riferirci per esaminare il programma più approfonditamente.
* Inoltre alcune delle parole di questi programmi verranno mostrate usando un particolare codice colore così che sia possibile, a colpo d'occhi, individuare le parole chiave del linguaggio di programmazione Arduino!

A cosa serve questo programma? Lasciamo la risposta per dopo, nel frattempo cerchiamo di esaminare il codice da un punto di vista macroscopico.

Tanto per co

## Blocchi di codice

A prima vista è facile notare come questo programma sia costituito da due strutture visivamente separate.


{% comment %}

## Digitale Analogico
[fonte: https://it.wikipedia.org/wiki/Digitale_%28informatica%29]
discorso del passaggio dal mondo fisico al mondo dei numeri (Analogico / Digitale).

{% endcomment %}
