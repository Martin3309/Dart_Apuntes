void main(){
  
  print( greetEveryone() );
  print( greetEveryone2() );
  
  print('Suma : ${addTwoNumbers(3,4)}' );
  print('Suma 2: ${addTwoNumbers(33,4)}' );
  
  //Aqui el nombre era obligatorio, pero el saludo no.
  print( greetPerson(name: 'Fernando'));
  
}

// funcion 1
String greetEveryone(){
  return 'Hello everyone';
}

// funcion 2
String greetEveryone2() => 'Hello everyone 2';

// funcion 3
int addTwoNumbers( int a, int b) {
  return a + b;
}

// Funcion 4
int addTwoNumbers2 (int a, int b) => a + b;

// funcion 5 con b opcional
int addTwoNumbersOptional(  int a, [int b = 0] ) {
  //b = b ?? 0; // Forma de confirmar si el valor de b tiene un número.
  //b ??= 0; // es la misma logica que b = b + 1 -> b++;
  
  return a + b;
}

// Funcion con argumentos NO posicionales
// Strings opcionales, gracias a las llaves.

//String greetPerson ( {required String name ,String? message } ){
//palabra required me lo hace requerido dentro de lo opcional de las llaves
String greetPerson ( {required String name ,String message = 'Hola, '} ){
  return '$message $name';
}