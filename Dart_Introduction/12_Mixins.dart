// Ejercicio Mixins
// Mixins son niveles de especializacion de otras clases.
// Si una clase hereda de otra, entonces a esas les asigno distintas especializaciones.

void main(){
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  
  final patito = Pato();
  patito.volar();
}


abstract class Animal {  }

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Volador{
  void volar() => print('Estoy volando');
}

mixin Nadador{
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {  }
class Murcielago extends Mamifero with Volador, Caminante {  }
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}
class Pato extends Mamifero with Volador, Caminante, Nadador { }

class Tiburon extends Pez with Nadador { }
class PezVolador extends Pez with Nadador, Volador {}