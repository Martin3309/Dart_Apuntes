void main (){

  print('Inicio del programa');
  
  httpGet('http://fernando-herrara.com/curso')
    .then( 
      (value) {
        print(value);
      })
    .catchError( (err){
    print('Error: $err');
  });
  
  print('Fin del programa');
  
}

// Debemos ponerle el tipo de dato, para no tener dynamic
Future<String> httpGet( String url ){
  //Se ejecuta todo, pasa un seg, y se ejecuta lo siguiente:
  return Future.delayed( const Duration(seconds: 1),() {
    
    throw 'Error en la peticion http';
    
    //return 'Respuesta de la peticion http';
  });
  
}