
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

class InvoiceTest{
  Invoice invoice = Invoice('11100221', 'Ram 32G 3200Mhz', 25, -90.5);

  void display(){
    print('Invoice Amount: ${invoice.getInvoiceAmount()}');
  }
}

void main(){
  InvoiceTest invoiceTest = InvoiceTest();
  invoiceTest.display();
}