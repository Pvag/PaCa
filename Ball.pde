class Ball {  
  // I dati vengono chiamati variabili di istanza, in quanto ogni istanza della classe ha i suoi propri dati.
  // Pensa ad un timbro: la macchina per fare i timbri è la classe; i timbri fatti sulla carta sono gli oggetti.
  // Sulla carta potrei avere stampato un timbro in blu, un altro in rosso. Il blu e il rosso sono informazioni
  // (dati) relativi alla istanza precisa di quell'oggetto e non alla classe (che definisce solo come deve
  // essere fatto il timbro, strutturalmente, ma nulla più; i particolari di ogni timbro - istanza - stanno
  // nell'oggetto, che è la concretizzazione - istanza - della sua classe). La classe timbro avrà una variabile per
  // memorizzare il valore del colore con cui realizzare il timbro, ma non specificherà il colore.
  // Sarà la singola istanza a specificarlo, magari mediante un costruttore che prenda come argomento il colore,
  // proprio come il costruttore di Ball prende in input il raggio della palla.
  
  // Ogni oggetto vede (scoping) solo i suoi dati.
  
  // Qui sono contenuti i dati dell'oggeto.
  int radius; // dato 1
  int x, y;   // dato 2. Nota che la classe non assegna i valori ai dati in maniera fissa - anche se a volte ha senso farlo,
              // ma è la particolare istanza a farlo, tramite il costruttore e tramite i vari metodi.
  
  // Questo è il costruttore.
  // Ogni classe deve averne almeno uno, che deve chiamarsi come la classe (che deve chiamarsi come il file che la contiene).
  // È il posto in cui, di solito, vengono inizializzate le variabili dell'oggetto.
  // Non si deve specificare il return type per il costruttore.
  Ball(int r) {
    radius = r;
    x = width/2;  // Ho scelto di far partire tutti gli oggetti Ball dal centro del canvas.
    y = height/2;
  }
  
  // Qui sotto ci sono i metodi - il comportamento - della classe Ball.
  
  void moveRight() {
    x++;
  }
  
  void moveUp() {
    y--;
  }
  
  // Prova ad implementare anche il metodo moveDown() e moveLeft() !
  
  void paint() {
    ellipse(x, y, radius, radius);
  }
}