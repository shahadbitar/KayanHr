void main(){
  final v = Vehicle(4);
  print(v.toString());
  final c = Car(4);
  //print(Car());
  print(Bicycle());
}
class Vehicle{
  final int wheelCount;
  const Vehicle(this.wheelCount);
  @override
  String toString(){
    return '$runtimeType with $wheelCount wheels'; //runtimeType give the type of the class
  }
}
class Car extends Vehicle{
  const Car(super.wheelCount);
  // const Car() : super (4); another way to extend
}
class Bicycle extends Vehicle{
  const Bicycle() : super(2);
}
// special function ندرسها الي ما بنعمللها  inhert