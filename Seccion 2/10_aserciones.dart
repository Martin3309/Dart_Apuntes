void main(){
 
  final miCuadrado = new Cuadrado(lado : -10);
  
  // Aqui entran las aserciones, cuando dejo que el lado sea negativo, y debo mitigar eso.
  
  
  // Sin metodos get y set no se nos permite cambiar el valor del lado.
  //miCuadrado.lado = 5;
  
  // Sin get
  print("Area: ${miCuadrado.calculateArea()}");
  // Con get
  print("Area: ${miCuadrado.area}");
}

class Cuadrado{
  
  double _lado;
  
  // Constructor
  Cuadrado({required double lado})
    : assert(lado >= 0, "Lado es menor a 0."), //Hace que se cumpla que lado debe ser sobre o igual a  0.
     _lado = lado;
  
  // Getters
  double get area {
    return _lado * _lado;
  }
  
  double calculateArea(){
    return _lado * _lado;
  }
  
  // Setters
  set lado( double value ){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0'; // Si el throw falla, se acaba todo.
    //Aqui se actua como un else
    _lado = value;
  }
  
}