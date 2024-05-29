void main (){
  
  final Heroe wolverine = new Heroe(name: 'Logan', power: 'Volar');
    
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Heroe {
  
  String name;
  String power;
 
 // Alternativa codigo de constructor 1:
 // Heroe( String pName, String pPower )
 //  : this.name = pName,
 //     this.power = pPower;
  
 // Alternativa codigo de constructor 2:
  Heroe( {
    required this.name,
    this.power = 'Sin poder'
    } );
  
  // Le sobreescribimos el comportamiento al metodo que trae por defecto del toString
  @override
  String toString(){
    return '$name - $power';
  }
}