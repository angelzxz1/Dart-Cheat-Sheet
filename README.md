# Dart-Cheat-Sheet

## Basic Syntax
- declaring a variable
```
int myVar = 10;
```

- declaring a constant
```
const myConst = 3.14;
```

- declaring a string
```
String myString = 'Hello, world!';
```

- declaring a boolean
```
bool myBool = true;
```

### Operators
- arithmetic operators
```
int a = 10 + 5;   // 15
int b = 10 - 5;   // 5
int c = 10 * 5;   // 50
double d = 10 / 5;  // 2.0
int e = 10 % 5;   // 0
```

- comparison operators
```
bool f = 10 > 5;   // true
bool g = 10 < 5;   // false
bool h = 10 >= 5;  // true
bool i = 10 <= 5;  // false
bool j = 10 == 5;  // false
bool k = 10 != 5;  // true
```

- logical operators
```
bool l = true && false;  // false
bool m = true || false;  // true
bool n = !true;   // false
```

- assignment operators
```
int o = 10;
o += 5;   // 15
o -= 5;   // 10
o *= 5;   // 50
o /= 5;   // 10
o %= 5;   // 0
```

### Control
- if statement
```
if (myVar > 5) {
  print('myVar is greater than 5');
} else {
  print('myVar is less than or equal to 5');
}
```

- for loop
```
for (int i = 0; i < 10; i++) {
  print('i is $i');
}
```

- while loop
```
int j = 0;
while (j < 10) {
  print('j is $j');
  j++;
}
```

- switch statement
```
switch (myVar) {
  case 5:
    print('myVar is equal to 5');
    break;
  case 10:
    print('myVar is equal to 10');
    break;
  default:
    print('myVar is not 5 or 10');
    break;
}
```
## Functions
- function with no parameters
```
void myFunction() {
  print('Hello, world!');
}
```

- function with parameters and return value
```
int add(int a, int b) {
  return a + b;
}
```
- named parameters
```
void myFunction({String name, int age}) {
  print('Name: $name, Age: $age');
}
myFunction(name: 'John', age: 30);
```
- optional parameters
```
void myFunction(String name, [int age]) {
  print('Name: $name, Age: $age');
}

myFunction('John');

```
- default parameter values
```
void myFunction(String name, {int age = 30}) {
  print('Name: $name, Age: $age');
}
```
## Classes

```
class Person {
  String name;
  int age;

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}
Person person = new Person();
person.name = 'John';
person.age = 30;
person.greet(); // prints "Hello, my name is John and I am 30 years old."

```
- Inheritance
```
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

```
- Polymorphism

```
class Animal {
  void makeSound() {
    print('Animal is making a sound.');
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

void makeAnimalSound(Animal animal) {
  animal.makeSound();
}

Animal animal = new Animal();
Dog dog = new Dog();
Cat cat = new Cat();

makeAnimalSound(animal); // prints "Animal is making a sound."
makeAnimalSound(dog); // prints "Dog is barking."
makeAnimalSound(cat); // prints "Cat is meowing."

```
- Abstraction
```
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
```
- Encapsulation

```
class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print('Insufficient funds.');
    }
  }
}

BankAccount account = new BankAccount('John', 1000);
account.deposit(500);
account.withdraw(200);
account.withdraw(1500); // prints "Insufficient funds."

// Getters and setters can be used to control access to
// object properties.

class Person {
  String _name;

  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }
}

Person person = new Person();
person.name = 'John';
print(person.name); // prints "John"

person.name = '';
print(person.name); // prints "John"
// Private members can be defined using the `_` prefix, and they are only accessible within the class.
```
- Interfaces
```
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

```