//Nota importante, si recibimos un Json hay que abrirse a la posibilidad de que venga nulo.

void main(){
  
  final Map<String,dynamic> rawJson = {
    'name': 'Tony Test',
    'power': 'Dormir',
    'isAlive' : false
  };
  
//  final ironman = new Heroe(
//    isAlive: rawJson['isAlive'] ?? false, //Cabe la posibilidad que el json venga con null
    // ?? false -> Nos dice, si isAlive es null entonces que quede como false.
//    power: 'Money',
//    name: 'Tony Stark'
//  );
  
  //Con el constructor que crearemos...
  
  final ironman = Heroe.fromJson( rawJson );
  
  print(ironman);
  
  
}

class Heroe {
  String? name;
  String? power;
  bool isAlive;
  
  Heroe({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  // Creando asi el constructor nos permite poder manipular mejor los json de las APIS.
  Heroe.fromJson(Map<String,dynamic> json)
    : name = json["name"] ?? "No name found",
      power = json["power"] ?? "No power found",
      isAlive = json["isAlive"] ?? "No isAlive found";

  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'Yes!':'Nop!' }';
  }
  
}
