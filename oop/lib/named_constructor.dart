void main() {
  const me = Person("shahad", 10);
  print("${me.name},${me.age}");
  print("---------------------");

  const foo = Person.foo();
  print("${foo.name},${foo.age}");
  print("---------------------");

  const bar = Person.bar(30);
  print("${bar.name},${bar.age}");
  print("---------------------");

  const baz = Person.other();
  print("${baz.name},${baz.age}");
  print("---------------------");

  const John = Person.other(name: 'John');
  print("${John.name},${John.age}");
  print("---------------------");
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  const Person.foo() : name= "foo", age=20; // const named constructor
  //const Person.foo() : this("foo",20); const named constructor

  const Person.bar(this.age): name = "Bar";

  const Person.other({
    String? name,
    int? age,
}) : name = name ?? 'Baz',
     age = age ?? 40;
}
