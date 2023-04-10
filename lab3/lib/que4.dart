class Camera {
  late int _id;
  late String _brand;
  late String _color;
  late double _price;

  int get id => _id;
  set id(int value) => _id = value;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get color => _color;
  set color(String value) => _color = value;

  double get price => _price;
  set price(double value) => _price = value;
}

void main() {
  Camera camera1 = Camera();
  camera1.id = 1;
  camera1.brand = 'Nikon';
  camera1.color = 'Black';
  camera1.price = 599.99;

  Camera camera2 = Camera();
  camera2.id = 2;
  camera2.brand = 'Canon';
  camera2.color = 'Silver';
  camera2.price = 799.99;

  Camera camera3 = Camera();
  camera3.id = 3;
  camera3.brand = 'Sony';
  camera3.color = 'Red';
  camera3.price = 899.99;

  print('Camera 1 Details:');
  print('ID: ${camera1.id}');
  print('Brand: ${camera1.brand}');
  print('Color: ${camera1.color}');
  print('Price: ${camera1.price}\n');

  print('Camera 2 Details:');
  print('ID: ${camera2.id}');
  print('Brand: ${camera2.brand}');
  print('Color: ${camera2.color}');
  print('Price: ${camera2.price}\n');

  print('Camera 3 Details:');
  print('ID: ${camera3.id}');
  print('Brand: ${camera3.brand}');
  print('Color: ${camera3.color}');
  print('Price: ${camera3.price}\n');
}
