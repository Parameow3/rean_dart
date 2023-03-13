//#region BANK
import 'dart:math';

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

  // constructor
  Saving(double this.saveRate);
}
//#endregion

//#region CURRENT
class Current extends Bank{

  bool? fixedDep;  //whether the customer keeps the fixed
                  // deposit with the bank or not
  double? curRate; //percent interest rate per year

  @override
  double calcBalance() {
    if(fixedDep == false) {
      return curBal!;
    } else {
      curBal = curBal! - 33.20;
      return curBal! + (curRate! * curBal!);
    }
  }

  //constructor
  Current(bool this.fixedDep, double this.curRate);
}
//#endregion


void main(){
  List<Bank> iteBank = [];

  for(int i = 0; i <20; i++){

    double tempCurBal = Random().nextDouble() * 999;

    Bank bank = Current(Random().nextBool(), 0.015);

    bank.accNo = '00000${i+1}';
    bank.custName = 'customer${i+1}';
    bank.custGender = Random().nextInt(2) + 1;
    bank.cusJob = 'job0${i+1}';
    bank.curBal = tempCurBal;

    iteBank.add(bank);
  }

  // search customer information based on customer number
  searchCustomer('000002', iteBank);

  // Count how many customer that have the concurrent account with
  // bank and the total balance
  int count = 0;
  double totalBal = 0.0;
  for(Bank bank in iteBank){
    double currentBal = bank.calcBalance() - bank.curBal!;
    if(currentBal != 0.0){
      count++;
      totalBal += bank.curBal!;
    }
  }
  print('------------------');
  print('Amount of Concurrent Account: $count');
  print('Total balance of the concurrent account: ${totalBal.toStringAsFixed(2)}\$');

}

//#region SEARCH_CUSTOMER
void searchCustomer(String accNo, List<Bank> bankList){
  bool found = false;
  for(Bank bank in bankList){
    if(accNo == bank.accNo){
      found = true;
      if(bank.custGender == 1){
        print('Here is his account information:');
        print('Account No: ${bank.accNo}');
        print('Name: ${bank.custName}');
        print('Gender: Male');
        print('Job: ${bank.cusJob}');
        print('Current Balance: ${bank.curBal?.toStringAsFixed(2)}\$');

      }
      else{
        print('Here is her account information:');
        print('Account No: ${bank.accNo}');
        print('Name: ${bank.custName}');
        print('Gender: Female');
        print('Job: ${bank.cusJob}');
        print('Current Balance: ${bank.curBal?.toStringAsFixed(2)}\$');
      }
    }
  }

  if(found == false){
    print('There is no customer account with this account Number!');
  }
}
//#endregion