// Esempio di programmazione ad oggetti per Carlo!

// Un oggetto di una classe è una istanza di quella classe. (v. esempio del timbro nel file Ball.)

Ball ball1; // Dichiaro un oggetto di classe Ball: questo non crea l'oggetto, ma dichiara solo il puntatore!
Ball ball2; // Dichiaro un secondo oggetto di classe Ball.

void setup() {
  size(800, 300);
  frameRate(4); // pochi fps, così si vede bene l'animazione.
  
  // Creo (instanzio) un oggetto di classe Ball, con diametro 30.
  // Per fare ciò, devo chiamare il costruttore (v. commenti nel file Ball) di tale classe.
  // L'argomento richiesto dal costruttore è il diametro della palla.
  ball1 = new Ball(30); // new è una keyword che si usa con i costruttori.
  
  ball2 = new Ball(10); // Con la stessa classe, posso creare quanti oggetti voglio (v. esempio del timbro nel file Ball).
}

void draw() {
  background(100);
  // A differenza delle funzioni, che ricevono dati come input, nella programmazione ad oggetti
  // sono gli oggetti a ricevere le funzioni come azioni (messaggi) da svolgere sui loro dati: l'oggetto custodisce sia
  // lo stato (il valore attuale dei suoi dati, memorizzato nelle sue variabili di istanza - v. file Ball),
  // sia il comportamento (come agire su quei dati - quello che in programmazione procedurale
  // si chiama funzione e in programmazione ad oggetti si chiama metodo).
  ball1.moveRight(); // moveRight() è un metodo della classe Ball. Un metodo è in pratica una funzione.
  ball1.moveUp();    // Chiamare un metodo su un oggetto si dice "mandare un messaggio all'oggetto".
  
  // Prova a chiamare qui il metodo moveLeft() su ball1, dopo averlo implementato (v. file Ball)!
  
  ball1.paint();
  
  // ora la parte relativa alla palla 2
  ball2.moveUp();
  ball2.paint();
  
  // potrei anche implementare un gestore di oggetti di classe Ball che contenga tutte le istanze di quella
  // classe: in quel modo basterebbe dire al gestore .paint() e tutte gli oggetti Ball instanziati sarebbero
  // disegnati, al posto di scrivere .paint() su ognuno degli oggetti Ball!
}