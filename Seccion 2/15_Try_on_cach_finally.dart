
void main () async {

  print('Inicio del programa');
  
  try {
      final value = await httpGet('http://fernando-herrara.com/curso');
      print('Exito: $value');
  } on Exception catch(err) {
      print('Tenemos una excepcion: $err');
  } catch(err) {
      print('Tenemos un error: $err'); 
  } finally {
      print('Fin del try y catch'); // se ejecuta de todas maneras.
  }

  print('Fin del programa');
  
}

Future<String> httpGet( String url ) async {

  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
  
  //throw 'Error en la peticion'; //Error no controlado (manera de caer en el catch)
  
}