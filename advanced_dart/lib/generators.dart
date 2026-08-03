void main(){
  test();
}

Iterable<int> getOneTwoThree() sync*{
  yield 1;
  yield 1;
  yield 2;
  yield 3;
}

void test(){
  // print(getOneTwoThree()); another way
  for (final value in getOneTwoThree()){
    print(value);
    //if(value == 2){
    //       break;
    //     }
  }
}