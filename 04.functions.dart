main(){
    // function with no parameters
    void myFunction() {
        print('Hello, world!');
    }
    // function with parameters and return value
    int add(int a, int b) {
        return a + b;
    }
    // named parameters
    void myFunction({String name, int age}) {
        print('Name: $name, Age: $age');
    }
    myFunction(name: 'John', age: 30);
    // optional parameters
    void myFunction(String name, [int age]) {
        print('Name: $name, Age: $age');
    }

    myFunction('John');

    // default parameter values
    void myFunction(String name, {int age = 30}) {
        print('Name: $name, Age: $age');
    }
}