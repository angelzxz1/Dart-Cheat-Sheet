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

