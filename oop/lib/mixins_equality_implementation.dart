//import 'package:uuid/uuid.dart';
void main(){
  //final uuid1= const Uuid();
}

mixin HasIdentifier{
  String get id;

  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HasIdentifier &&
              runtimeType == other.runtimeType &&
              id == other.id;
}

class Person with HasIdentifier{
  @override
  final String id;

  final String name;
  final int age;

  Person({required this.id, required this.name, required this.age});

}