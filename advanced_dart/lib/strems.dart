void main(){
  test();
}

Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Bar';
  });
}
void test() async{
  await for (final value in getName()){
    print(value);
  }
  print('Stream finished working');
}

//Stream<String> getName(){
//   return Stream.value('Foo'); //but this we can do it by future stream used with continuous
// }
//
// void test() async{
//   final value = getName(); // print actually the stream not the value
//   print(value);
//   await for (final value2 in getName()){
//     print(value2);
//   }
// }