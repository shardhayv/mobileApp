class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  String toString() {
    return "Laptop ID: $id\nName: $name\nRAM: $ram GB";
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 8);
  Laptop laptop2 = Laptop(2, "HP Pavilion", 16);
  Laptop laptop3 = Laptop(3, "Macbook Pro", 32);

  print(laptop1);
  print("\n");
  print(laptop2);
  print("\n");
  print(laptop3);
}
