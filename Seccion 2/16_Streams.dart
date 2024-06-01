void main (){
  
  emitNumbers().listen((value){
    print('Stream Value: $value');
  });
  
}

//Emite valores enteros
Stream<int> emitNumbers(){
  
  // Cada segundo estara emitiendo
  return Stream.periodic( const Duration(seconds: 1), (value){
    //print('Desde periodic $value');
    return value;
  }).take(5); // Cantidad de emisiones
  
}