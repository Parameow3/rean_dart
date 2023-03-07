import 'dart:io';

class Employee{
  //#region FIELD
  // field
  String? _firstName;
  String? _lastName;
  double? _monthlySalary;
  //#endregion

  //#region GETTER
  // getter
  String get firstName => _firstName!;

  String get lastName => _lastName!;

  double get monthlySalary => _monthlySalary!;
  //#endregion

  //#region SETTER
  // setter
  set firstName(String value) {
    _firstName = value;
  }

  set lastName(String value) {
    _lastName = value;
  }

  set salary(double value) {
    noNegative(value);
  }
  //#endregion

  // Constructor
  Employee(String firstName, String lastName, double salary){
    _firstName = firstName;
    _lastName = lastName;
    noNegative(salary);
  }

  // prevent negative salary
  void noNegative(double salary){
    if(salary < 0){
      _monthlySalary = 0.0;
    }
    else {
      _monthlySalary = salary;
    }
  }
}


void main(){
  Employee employee01 = Employee('Bunchhay', 'Tan', 600);
  Employee employee02 = Employee('You', 'me', 300);

  print('<<<--- Employee Test --->>>');
  print('-> employee01: ${employee01.firstName} ${employee01.lastName} >> Monthly salary: ${employee01.monthlySalary}\$');
  print('-> employee02: ${employee02.firstName} ${employee02.lastName} >> Monthly salary: ${employee02.monthlySalary}\$');
  print('<<<--- Annual Salary Calculator --->>>');
  print('1. Annual Salary (no raise)');
  print('2. Annual Salary (10% raise)');
  stdout.write('>>Choose: ');
  int choice = int.parse(stdin.readLineSync()!);
  switch(choice){
    case 1:{
      print('<<<--- Annual Salary (no raise) --->>>');
      print('-> employee01: ${employee01.firstName} ${employee01.lastName} >> Annual salary: ${employee01.monthlySalary * 12}\$');
      print('-> employee02: ${employee02.firstName} ${employee02.lastName} >> Annual salary: ${employee02.monthlySalary * 12}\$');
    }
    break;
    case 2:{
      print('<<<--- Annual Salary (10% raise) --->>>');
      print('-> employee01: ${employee01.firstName} ${employee01.lastName} >> Annual salary: ${(employee01.monthlySalary * 12) + (employee01.monthlySalary * 12)/10}\$');
      print('-> employee02: ${employee02.firstName} ${employee02.lastName} >> Annual salary: ${(employee02.monthlySalary * 12)  + (employee02.monthlySalary * 12)/10}\$');
    }
    break;
    default:{
      print('<<<--- Invalid Input --->>>');
    }
    break;
  }
}
