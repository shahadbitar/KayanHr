void main(){
  final car = Car();
  try{
    car.drive(speed: 10);
    car.drive(speed: -1);
  }catch(e){
    print(e);
  }
}

class Car{
  int _speed = 0;

  int get speed => _speed; //returns speed value
  set speed(int newSpeed){ //check speed value
    if(newSpeed < 0){
      throw Exception('Speed cannot be nagative');
  } //we dont need else because after throw Exception the program will stop but I can add else statement
     else {
      _speed = newSpeed;
    }
  }
  void drive({required int speed}){
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }
  void stop(){
    speed = 0;
    print('Stopping...');
    print('Stopped');
  }
}