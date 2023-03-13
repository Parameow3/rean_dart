import 'package:meta/meta.dart' show protected;

//#region CAKE
abstract class Cake{
  @protected
  String? name;

  @protected
  double? rate;

  Cake(this.name, this.rate);

  double calcPrice();

  @override
  String toString(){
    return '$name &\t$rate';
  }
}
//#endregion

//#region ORDER_CAKE
class OrderCake extends Cake{
  double? _weight;

  @override
  double calcPrice() {
    return _weight! * super.rate!;
  }

  OrderCake(double weight, String name, double rate) : super(name, rate){
    _weight = weight;
  }
}
//#endregion

//#region READY_MADE_CAKE
class ReadyMadeCake extends Cake{
  int? _quantity;

  @override
  double calcPrice() {
    return super.rate! * _quantity!;
  }

  ReadyMadeCake(int quantity, String name, double rate) : super(name, rate){
    _quantity = quantity;
  }
}
//#endregion

void main(){
  print('<<<< -- Cake Application -- >>>>');

  List<Cake> cakes = [];

  for(int i = 0; i < 20; i++){
    Cake cake = ReadyMadeCake(i+1, 'cake$i', i+2.5);

    cake.name = 'cake$i';
    cake.rate = i+2.5;
    cakes.add(cake);
  }

  // c. display the total price for all types of cakes;
  double totalPrice = 0.0;
  double totalPriceReadyMadeCake = 0.0;
  double quantity = 0;
  double highestPrice = 0;
  for(Cake cake in cakes){
    totalPrice += cake.rate!;
    totalPriceReadyMadeCake += cake.calcPrice();
    quantity += cake.calcPrice()/cake.rate!;

    // check the highest price
    if(highestPrice < cake.rate!){
      highestPrice = cake.rate!;
    }
  }

  // display
  print('total price for all types of cake: $totalPrice');
  print('total price and the quantity sold for ready made cakes: $totalPriceReadyMadeCake\$ & ${quantity.toInt()} cakes');


  // e. display the information for the cake that has been sold for the highest price.
  for(Cake cake in cakes){
    if(highestPrice == cake.rate!){
      print('-----------------------');
      print('The highest price of all Cake');
      print('cake\'s name & cake\'s rate: ${cake.toString()}\$');
    }
  }
}