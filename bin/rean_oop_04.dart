//#region CAR
class Car{ // super class
  //#region FIELD
  int? _speed;
  double? _regularPrice;
  String? _color;
  //#endregion

  double? getSalePrice(){
    return _regularPrice;
  }

  Car(int speed, double price, String color){
    _speed = speed;
    _regularPrice = price;
    _color = color;
  }
}
//#endregion

//#region TRUCK
class Truck extends Car{
  int? _weight;

  Truck(super.speed, super.price, super.color);

  double? getSalePrice(){
    return super.getSalePrice();
  }
}
//#endregion

//#region FORD
class Ford extends Car{
  //#region FIELD
  int? _year;
  int? _manufacturerDiscount;
  //#endregion

  @override
  double? getSalePrice(){
    return super.getSalePrice();
  }

  // constructor
  Ford(int year, int manufacturerDiscount, int speed, double price, String color) : super(speed, price, color){
    _year = year;
    _manufacturerDiscount = manufacturerDiscount;
  }

}
//#endregion

//#region SEDAN
class Sedan extends Car{
  int? _length;

  @override
  double? getSalePrice(){
    return super.getSalePrice();
  }

  Sedan(int length, int speed, double price, String color) : super(speed, price, color){
    _length = length;
  }
}
//#endregion

//#region MY_OWN_AUTO_SHOP
class MyOwnAutoShop{
  void main(){
    // Create an instance of Sedan class and initialize all the fields
    Sedan sedan = Sedan(12, 200, 5000, 'Red');

    // Create two instances of the Ford class and initialize all the fields with appropriate
    Ford ford2020 = Ford(2020, 10, 220, 10000, 'white');
    Ford ford2022 = Ford(2022, 5,  250, 20000, 'black');

    // Car class and initialize all the fields with appropriate values.
    Car car = Car(50, 2000, 'Grean');

    // Display the sale prices of all instance.
    print('Price of Sedan: ${sedan.getSalePrice()}\$');
    print('Price of Ford2020: ${ford2020.getSalePrice()}\$');
    print('Price of Ford2022: ${ford2022.getSalePrice()}\$');
    print('Price of Car: ${car.getSalePrice()}\$');
  }
}
//#endregion

void main(){
  MyOwnAutoShop myOwnAutoShop = MyOwnAutoShop();
  myOwnAutoShop.main();
}