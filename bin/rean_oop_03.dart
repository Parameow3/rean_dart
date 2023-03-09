
import 'dart:io';

class Date {
  //#region FIELD
  // field
  int? _month;
  int? _day;
  int? _year;
  //#endregion

  //#region GETTER
  // getter
  int get month => _month!;
  int get day => _day!;
  int get year => _year!;
  //#endregion

  //#region SETTER
  // setter
  set month(int value) {
    _month = value;
  }
  set day(int value) {
    _day = value;
  }
  set year(int value) {
    _year = value;
  }
  //#endregion

  // Constructors
  Date(int month, int day, int year){
    _month = month;
    _day = day;
    _year = year;
  }

  void displayDate(){
    // check date before display
    monthCheck(_month!);
    yearCheck(_year!);
    dayCheck(_month!, _day!, _year!);

    print('Date: ${'$_month'.padLeft(2, '0')}/${'$_day'.padLeft(2, '0')}/$_year');
  }

  //#region CHECK_DATE
  void monthCheck(int month){
    if(month < 1){
      _month = 1;
    }
    else if(month > 12){
      _month = 12;
    }
    else{
      _month = month;
    }
  }

  void dayCheck(int month, int day, int year){
    var thirty1Day = [4, 6, 9, 11];
    if(day < 1){
      _day = 1;
    }
    else if(day > 28){
      if(month == 2){
        if(year % 4 == 0){
          _day = 29;
        }
        else{
          _day = 28;
        }
      }
      else if(thirty1Day.where((months) => months == month).isNotEmpty){
        _day = 31;
      }
      else{
        _day = 30;
      }
    }
    else {
      _day = day;
    }
  }

  void yearCheck(int year){
    if(year < 1900){
      _year = 1900;
    }
    else if(year > 2123){
      _year = 2123;
    }
    else{
      _year = year;
    }
  }
  //#endregion
}

void main(){
  Date date = Date(2, 50, 2024);
  print('<<<--- DateTest --->>>');
  date.displayDate();
}