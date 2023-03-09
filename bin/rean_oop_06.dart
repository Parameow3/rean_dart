//#region BANK
abstract class Bank {
  String? accNo; //customer account number with Bank
  String? custName; //customer name
  int? custGender; //customer gender –  1 = Male, 2 =Female
  String? cusJob; //customer job position
  double? curBal;  //customer balance in the bank account

  @override
  String toString();

  double calcBalance();
 }
//#endregion

//#region SAVING
class Saving extends Bank{
  double? saveRate;

  @override
  double calcBalance() {
    return curBal! + (saveRate! * curBal!);
  } //percent interest rate per year
}
//#endregion

//#region CURRENT
class Current extends Bank{

  bool? fixedDep;  //whether the customer keeps the fixed
                  // deposit with the bank of not
  double? curRate; //percent interest rate per year

  @override
  double calcBalance() {
    return curBal! + (curRate! * curBal!);
  }
}
//#endregion


void main(){
  
}

