// Tipo de dato dynamic

//dynamic por defecto es null (dynamic == null)

void main(){
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $errorMessage
  """);

}