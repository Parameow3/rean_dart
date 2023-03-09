class Car{ // super class
  //#region FIELD
  int? _speed;
  double? _regularPrice;
  String? _color;
  //#endregion

  double getSalePrice(){
    return 0.0;
  }

}

class Truck extends Car{
  int? _weight;

  @override
  double getSalePrice(){
    return 0.0;
  }
}

class Ford extends Car{
  //#region FIELD
  int? _year;
  int? _manufacturerDiscount;
  //#endregion

  @override
  double getSalePrice(){
    return 0.0;
  }
}

class Sedan extends Car{
  int? _length;

  @override
  double getSalePrice(){
    return 0.0;
  }
}

class MyOwnAutoShop{
  void main(){

  }
}

void main(){
  MyOwnAutoShop myOwnAutoShop = MyOwnAutoShop();
  myOwnAutoShop.main();
}