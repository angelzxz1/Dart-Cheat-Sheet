class CanSwim {
  void swim() {
    print('Swimming...');
  }
}

class CanFly {
  void fly() {
    print('Flying...');
  }
}

class Duck implements CanSwim, CanFly {
  @override
  void swim() {
    print('Duck is swimming.');
  }

  @override
  void fly() {
    print('Duck is flying.');
  }
}

Duck duck = new Duck();
duck.swim(); // prints "Duck is swimming."
duck.fly(); // prints "Duck is flying."

// The `is` keyword can be used to check if an object implements a specific interface.

if (duck is CanSwim) {
  duck.swim();
}

if (duck is CanFly) {
  duck.fly();
}
