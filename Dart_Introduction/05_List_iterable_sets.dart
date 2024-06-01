void main() {
  
  //List
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,9,0];
  
  //Borrar los duplicados -> numbers.toSet().toList();
  
  print('List original: $numbers');
  print('Largo List original: ${numbers.length}');
  // Tomar el primer valor
  print('Primer elemento List original: ${numbers[0]}');
  print('Primer elemento List original: ${numbers.first}');
  //Tomar ultimo elemento
  print('Ultimo elemento List original: ${numbers[13]}');
  print('Ultimo elemento List original: ${numbers.last}');
  //Orden inverso -> Se transforma en un iterable
  print('Reversed: ${numbers.reversed}');
  
  // Se transforma en un iterable (elemento que se puede iterar)
  final reversedNumbers = numbers.reversed;
  
  print('Iterable: $reversedNumbers');
  // Pasar de iterable a List
  print('Iterable: ${reversedNumbers.toList() }');
  // Pasar de iterable a Set (El set no acepta duplicados)
  print('Set: ${reversedNumbers.toSet() }');
  
  // El where se introduce en la lista, pero este devuelve un iterable.
  final numbersGreatherThan5 = numbers.where( (int num) {
    return num > 5; // true si es mayor a 5
    } 
  );
  
  print('>5: ${numbersGreatherThan5}');
  print('>5 sin duplicados: ${numbersGreatherThan5.toSet()}');
  
}