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
