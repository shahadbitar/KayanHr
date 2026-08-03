import 'package:flutter/material.dart';

void main() {
  test();
}

class Person{
  final String firstName;
  final String lastName;
  Person(this.firstName, this.lastName);
}
extension FullName on Person{
  String get fullName => '$firstName $lastName';
}
extension on String {
  String get reversed => split('').reversed.join('');
}

void test (){
  final person = Person('John','Doe');
  print(person.fullName);
  print('hello'.reversed);
  print(person.fullName.reversed);

}
