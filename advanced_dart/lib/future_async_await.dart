void main(){
  test();
}

Future<int> heavyFutureThatMultiplyByTwo(int a){
  return Future.delayed(const Duration(seconds: 3), (){
    return a * 2;
  });
}
void test() async{
  final result = heavyFutureThatMultiplyByTwo(10); // print actually the future not the value
  print(result);
  final result2 = await heavyFutureThatMultiplyByTwo(10);
  print(result2);
}