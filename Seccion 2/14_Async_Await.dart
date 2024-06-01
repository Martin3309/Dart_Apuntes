// Con async y Future, simplificamos el codigo de la 13.

// void me soporta el sync, void me dice que da igual el valor de retorno

//solo puedo usar await si estoy en funciones asincronas.

void main () async {

  print('Inicio del programa');
  
  try {
      final value = await httpGet('http://fernando-herrara.com/curso');
      print(value);
  } catch(err) {
      print('Tenemos un error: $err'); 
  }

  
  print('Fin del programa');
  
}

// Debemos ponerle el tipo de dato, para no tener dynamic
// async nos ayudara a indicar que un metodo o funcion va a retornar un future
// Una funcion asincrona siempre regresara un future.
Future<String> httpGet( String url ) async{
  
  //Se ejecuta todo, pasa un seg, y se ejecuta lo siguiente:
  // await: nos permite que ese Future se realice
  // "Espera ese segundo y genero el return"
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la peticion'; //Genero un error no controlado
  
  //return 'Tenemos un valor de la peticion';
  
}