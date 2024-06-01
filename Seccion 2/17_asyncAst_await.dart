// Se usa async para regresar un Future.
// Se usa un async* para regresar un Stream

void main() {
  
  emitNumber()
    .listen( (value) {
    
      print('Stream value $value');
      
  });
  
}

// Metodo o Funcion que me regresa un Stream
Stream emitNumber() async* {
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit) {
    await Future.delayed( const Duration (seconds : 1));
    yield i; // No se usa return... "ten este valor ahora, ten este valor ahora,"
  } 
}