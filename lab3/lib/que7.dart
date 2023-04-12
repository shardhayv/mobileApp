mixin Swimmable {
  void swim() {
    print('Swimming...');
  }
}

mixin Flyable {
  void fly() {
    print('Flying...');
  }
}

class Animal {}

class Fish extends Animal with Swimmable {}

class Bird extends Animal with Flyable {}

class Duck extends Animal with Swimmable, Flyable {}

void main() {
  var fish = Fish();
  fish.swim(); // Output: Swimming...

  var bird = Bird();
  bird.fly(); // Output: Flying...

  var duck = Duck();
  duck.swim(); // Output: Swimming...
  duck.fly(); // Output: Flying...
}
