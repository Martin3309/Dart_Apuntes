void main() {
  
  final Map<String,dynamic> pokemon = {
    "name" : "Ditto",
    "hp" : 100,
    "isAlive" : true,
    "abilities" : <String>['impostor'],
    "sprites": <int, dynamic> {
      11: 'ditto/front',
      2: 'ditto/back'
    }
  };
  
  // Ejemplo  
  // final Map<int,dynamic> pokemons = {
  //   1 : 'ABC',
  //   2 : 'BDW'
  // };
  
  print(pokemon);
  
  //Utilizar mapas
  
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  
  //Va el valor de la llave en la []
  print('Front: ${ pokemon['sprites'][11] } ');
  print('Back: ${ pokemon['sprites'][2] } ');
  
  
}