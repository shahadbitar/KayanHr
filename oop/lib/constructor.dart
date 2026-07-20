import 'package:flutter/material.dart';
//"What is the difference between a constructor with positional parameters and a constructor with named (required) parameters in Dart?"
void main() {
  final person1 = Person("shahad", 20);
  print(person1.name);
  //final person1 = Person(name: "Shahad",age: 20);
}
class Person {
  final String name;
  final int age;

  Person(this.name,this.age);// → positional parameters
  //Order matters — لازم تحطي القيم بنفس ترتيب تعريفهم

  //Person({required this.name,required this.age}); → named parameters
  //Order doesn't matter — بتحددي كل قيمة باسمها
}

