abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat();
  void sleep();
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void eat() {
    print('$name is eating fish.');
  }

  @override
  void sleep() {
    print('$name is sleeping.');
  }

  void meow() {
    print('$name says meow!');
  }
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void eat() {
    print('$name is eating meat.');
  }

  @override
  void sleep() {
    print('$name is sleeping.');
  }

  void bark() {
    print('$name says woof!');
  }
}

void main() {
  var cat = Cat('Whiskers', 2);
  cat.eat(); // Output: Whiskers is eating fish.
  cat.sleep(); // Output: Whiskers is sleeping.
  cat.meow(); // Output: Whiskers says meow!

  var dog = Dog('Rover', 3);
  dog.eat(); // Output: Rover is eating meat.
  dog.sleep(); // Output: Rover is sleeping.
  dog.bark(); // Output: Rover says woof!
}
