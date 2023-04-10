class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);

  @override
  String toString() {
    return "Animal ID: $id\nName: $name\nColor: $color";
  }
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  String toString() {
    return "${super.toString()}\nSound: $sound";
  }
}

void main() {
  Cat cat = Cat(1, "Cuckoo", "Brown", "Meow");

  print(cat);
}
