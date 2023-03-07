
import 'dart:io';

class Invoice {
  //#region FIELD
  // field
  String? _partNumber;
  String? _partDescription;
  int? _purchasedQuantity;
  double? _price;

  //#endregion
  //#region GETTER
  // getter
  String get partNumber => _partNumber!;

  int get purchasedQuantity => _purchasedQuantity!;

  String get partDescription => _partDescription!;

  double get price => _price!;

  //#endregion
  //#region SETTER
  // setter
  set partNumber(String value) {
    _partNumber = value;
  }

  set purchasedQuantity(int value) {
    _purchasedQuantity = value;
  }

  set partDescription(String value) {
    _partDescription = value;
  }

  set price(double value) {
    _price = value;
  }

  //#endregion
  // Constructor
  Invoice(String partNumber, String partDescription, int purchasedQuantity,
      double price) {
    _partNumber = partNumber;
    _partDescription = partDescription;
    _purchasedQuantity = purchasedQuantity;
    _price = price;
  }

  double getInvoiceAmount() {
    if(_price! < 0.0) {
      _price = 0.0;
    }
    if(_purchasedQuantity! < 0) {
      _purchasedQuantity = 0;
    }
    return _price! * _purchasedQuantity!;
  }
}

void main(){

  print('<<<--- Please Input --->>>');
  stdout.write('Part Number: ');
  String? partNum = stdin.readLineSync();

  stdout.write('Part Description: ');
  String? partDes = stdin.readLineSync();

  stdout.write('Purchased Quantity: ');
  int? purchasedQuantity = int.parse(stdin.readLineSync()!);

  stdout.write('price: ');
  double price = double.parse(stdin.readLineSync()!);

  Invoice invoice = Invoice(partNum!, partDes!, purchasedQuantity, price);
  print('-----------------------------');
  print('Invoice Amount: ${invoice.getInvoiceAmount()}\$');
}