class House {
  int id;
  String name;
  int price;

  House(this.id, this.name, this.price);

  String toString() {
    return "House ID: $id\nName: $name\nPrice: \$$price";
  }
}

void main() {
  List<House> houses = [
    House(1, "Cozy Cottage", 100000),
    House(2, "Spacious Villa", 500000),
    House(3, "Luxury Mansion", 1000000),
  ];

  for (var house in houses) {
    print(house);
    print("\n");
  }
}
