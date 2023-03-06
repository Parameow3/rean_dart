import 'dart:io';

import 'package:rean_dart/rean_dart.dart' as rean_dart;

void main(List<String> arguments) {

}

//#region INPUT
void getData(){
  print('---welcome to noob AI---');
  print('Please input your name:');

  var name = stdin.readLineSync();

  print('F*ck you $name!');
}
//#endregion
//#region LOOP
/// for loop
void forLoop() {
  for (int i = 0; i <= 15; i++) {
    print('song#$i');
    if(i % 5 == 0 && i != 15){
      print('---Album#${(i~/5)+1}---');
    }
  }
}
///

/// loop in list
void loopInList(){
 var ls = ['gg', 'chhay', 'lyly', 'nita'];
 for(var l in ls){
   print(l);
 }
}
///

/// while loop

///
//#endregion
//#region STRING_VALIDATION
///String check
void strCheck() {
  const text = 'I love you';
  print('Start with I: ${text.startsWith('I')}');
  print('End with you: ${text.endsWith('you')}');
  print('Text contain love: ${text.contains('love')}');
  print('Text contain Flutter: ${text.contains('Flutter')}');
}

///Regular Expressions (regex)
void regexTest() {
  final regex = RegExp('cat');
  print('Hash Match');
  print('concatenation: ${regex.hasMatch('concatenation')}');
  print('dog: ${regex.hasMatch('dog')}');
  print('cats: ${regex.hasMatch('cats')}');
  print('---------------');
  print('contain');
  print('concatenation: ${'concatenation'.contains(regex)}');
  print('dog: ${'dog'.contains(regex)}');
  print('cats: ${'cats'.contains(regex)}');
}

///Matching any single character
void regexMatch() {
  final matchSingle = RegExp('c.t');

  print(matchSingle.hasMatch('cat'));
  print(matchSingle.hasMatch('cot'));
  print(matchSingle.hasMatch('cut'));
  print(matchSingle.hasMatch('ct'));
}

///Matching Multiple Character
void regexMutiMatch() {
  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww'));
  print(oneOrMore.hasMatch('wow'));
  print(oneOrMore.hasMatch('wooow'));
  print(oneOrMore.hasMatch('woooooooow'));

  print('--------- \nzero or more');

  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww'));
  print(zeroOrMore.hasMatch('wow'));
  print(zeroOrMore.hasMatch('wooow'));
  print(zeroOrMore.hasMatch('woooooooow'));
}

///Matching Sets of Character
void setMatching() {
  final set = RegExp('b[oa]t');

  print(set.hasMatch('bat'));
  print(set.hasMatch('bot'));
  print(set.hasMatch('but'));
  print(set.hasMatch('boat'));
  print(set.hasMatch('bt'));
}

///Matching set in specify range
void matchingInRange() {
  final letters = RegExp('[a-zA-Z]');

  print(letters.hasMatch('a'));
  print(letters.hasMatch('H'));
  print(letters.hasMatch('3z'));
  print(letters.hasMatch('2'));
}

///Escaping Special Characters
void escapeSpecChar() {
  final escaped = RegExp(r'c\.t');

  print(escaped.hasMatch('c.t'));
  print(escaped.hasMatch('cat'));
}

///Matching The Beginning and End
void matchBigEnd() {
  final numbers = RegExp(r'[0-9]');

  print(numbers.hasMatch('5552021'));
  print(numbers.hasMatch('abcefg2'));
}

//#endregion
//#region STRING_BUILDER
void buildingStr() {
  var msg = 'Hello' + ' my name is ';
  const name = 'Chhay';
  msg += name;
  print(msg);
}

///But using the + operator isn’t efficient when building up long strings one piece at a time.
///The reason is that Dart strings are immutable — that is, they can’t be changed —
///so every time you add two strings together, Dart has to create a new object for the concatenated string.
/// Improving Efficiency With String Buffers
void stringBuffer() {
  final msg = StringBuffer();
  msg.write('Hello');
  msg.write(' my name is ');
  msg.write('Chhay');

  print(msg.toString());
}

///Building String in a loop
void stringLoop() {
  final bufferStr = StringBuffer();
  for (int i = 2; i <= 2048; i *= 2) {
    bufferStr.write(i);
    bufferStr.write(' ');
  }
  print(bufferStr);
}

/// Exercise
void exercise02() {
  final stars = StringBuffer();
  for (int i = 0; i <= 10; i++) {
    for (int j = 0; j <= 10; j++) {
      if (j == i) {
        stars.write(' ');
      } else {
        stars.write('*');
      }
    }
    stars.write('\n');
  }
  print(stars);
}

//#endregion
//#region STRING
///EXERCISE01
void exercise01() {
  print(
      '1.Take a multiline string, such as the text below, and split it into a list of single lines. Hint: Split at the newline character.');
  const mutilineStr = 'France\nUSA\nGermany\nBenin\nChina\nMexico\nMongolia';
  final splitMutiLine = mutilineStr.split('\n');
  print(splitMutiLine);

  print('2.Find an emoji online to replace :]');

  print('កូនខ្មែរ 🇰🇭');
}

///#region Replacing
void replace() {
  const phrase = 'live and learn';
  final withUnderscore = phrase.replaceAll(' ', '_');
  print('replacing: $withUnderscore');
}

///#endregion

///#region Splitting and Joining
void splitAndJoin() {
  print("split");
  const csvFileLine = 'Martin ,Emma ,12 ,Paris ,France';
  final fields = csvFileLine.split(' ,');
  print("This is csvFileLine after split: $fields");
  print("------------------------");

  print("join");
  final joined = fields.join('-');
  print("String Join: $joined");
}

///#endregion
//#endregion
