abstract class Animal {
  String name;

  void makeSound();

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog is barking.');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat is meowing.');
  }
}

Animal animal = new Animal(); // Error: can't instantiate abstract class
Dog dog = new Dog();
Cat cat = new Cat();

dog.name = 'Fido';
cat.name = 'Whiskers';

dog.makeSound(); // prints "Dog is barking."
cat.makeSound(); // prints "Cat is meowing."

dog.eat(); // prints "Fido is eating."
cat.eat(); // prints "Whiskers is eating."
// Abstract classes cannot be instantiated, but they can
// be used as types for variables and parameters.