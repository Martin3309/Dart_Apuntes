// Clases abstractas y enumeraciones.
// extends e implements 
// Molde que me sirve a mi para crear otros moldes.
// Una clase abstracta no puedo ser instanciada por si misma
// Con el objetivo de poder aplicar distintos patrones de estructura.

void main(){
  
  final windPlant =  WindPlant( initialEnergy: 100);
  final nuclearPlant =  NuclearPlant( energyLeft: 9000 );
  
  print(windPlant);
  
  print('wind: ${ chargePhone( windPlant ) }');
  print('nuclear: ${ chargePhone( nuclearPlant ) }');
}

// Aplico un principio solid, puedo crear una planta y esta funcion no se vera afectada
double chargePhone( EnergyPlant plant ){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}


//enum del tipo de planta
enum PlantType { nuclear, wind, water }

// Clase abstracta - clase padre
abstract class EnergyPlant {
  //Atributos clase abstracta
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  // Constructor
  EnergyPlant({
    required this.energyLeft, 
    required this.type
    });
  
  // No es necesario integrar la logica en este metodo, solo es un molde
  void consumeEnergy( double amount );
  
}

// extends (es como herencia) o implements
// Clase extendida de la clase abstracta
class WindPlant extends EnergyPlant{
  
  // Para llamar al constructor del padre se le pone super.
  // Esto solo cuando se usa extends
  WindPlant({ required double initialEnergy })
    : super(  energyLeft: initialEnergy, type: PlantType.wind );
  
  // la funcion debe ser igual a la del padre, pero aqui se le agrega la logica
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
    
}

// Ambos sirven para herencia.
// Algunas veces solo querremos que una clase indque a un metodo.
// Buscar extends vs implements
class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  //Es final porque NUNCA va a cambiar
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
    
}