class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(2, 2);
  
  bike.speedUp(2);
  bike.speedUp(2);
  bike.speedUp(2);
  bike.speedUp(2);
  print(bike);
  
  bike.applyBrake(3);
  print("Speed After Brake " + bike.toString());
}
