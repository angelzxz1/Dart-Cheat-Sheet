class Animal {
  String name;

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  void bark() {
    print('Woof!');
  }
}

Dog dog = new Dog();
dog.name = 'Fido';
dog.eat(); // prints "Fido is eating."
dog.bark(); // prints "Woof!"

// `super` can be used to call the parent class
// constructor or methods.

class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void eat() {
    super.eat();
    print('...and wagging its tail.');
  }

  void bark() {
    print('Woof!');
  }
}

Dog dog = new Dog('Fido');
dog.eat(); // prints "Fido is eating....and wagging its tail."
dog.bark(); // prints "Woof!"
