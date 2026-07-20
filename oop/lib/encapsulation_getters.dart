//retrieve a value with a getter
void main(){
const foo = Person(firstName: 'Foo', lastName: 'Bar');
print(foo.fullName);
}
class Person{
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person({required this.firstName,required this.lastName}) ;
}

// normal constructor
//void main(){
//   const foo = Person(firstName: 'Foo', lastName: 'Bar');
//   print(foo.fullName);
// }
// class Person{
//   final String firstName;
//   final String lastName;
//   final String fullName;
//
//   const Person({required this.firstName,required this.lastName}) : fullName = '$firstName $lastName';
// }