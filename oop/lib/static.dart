void main(){
  print(Car._carInstantiated);
  Car(name: 'my car');
  print(Car._carInstantiated);
  Car(name: 'your car');
  print(Car._carInstantiated);
}

class Car{
  static int _carInstantiated = 0;

  static int get carsInstantiated => _carInstantiated;
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({required this.name}){
    _incrementCarsInstantiated();
  }
}