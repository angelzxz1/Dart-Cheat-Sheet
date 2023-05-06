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