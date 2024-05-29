void main(){
 
  final miCuadrado = new Cuadrado(lado : 10);
  
  // Sin metodos get y set no se nos permite cambiar el valor del lado.
  miCuadrado.lado = 5;
  
  // Sin get
  print("Area: ${miCuadrado.calculateArea()}");
  // Con get
  print("Area: ${miCuadrado.area}");
}

class Cuadrado{
  
  double _lado;
  
  Cuadrado({required double lado})
    : _lado = lado;
  
  // Getters
  double get area {
    return _lado * _lado;
  }
  
  // Setters
  set lado( double value ){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0'; // Si el throw falla, se acaba todo.
    //Aqui se actua como un else
    _lado = value;
  }
  
  double calculateArea(){
    return _lado * _lado;
  }
  
}