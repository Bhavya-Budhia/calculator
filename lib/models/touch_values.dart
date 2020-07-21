import 'package:flutter/cupertino.dart';


class TouchValues extends ChangeNotifier {
  int _touchValue = 0;
  List<int> digits = [];
  int get touchValue => _touchValue;

  void printValue(int number) {
    _touchValue = digitToNumber();
    digits.add(_touchValue);

    notifyListeners();
  }

  int digitToNumber() {
//    double dec = 0;
//    double n = digits.length.toDouble() - 1;
////    print(n);
//    for (double x = n; x >= 0; x--) {
////      print(x);
//      for (double digit in digits) {
//        dec += digit * pow(10, x);
//        continue;
//      }
//    }
//    print(dec);
    int y = 0;
    String s = '';
    digits.forEach((element) {
      s = s + element.toString();
    });
    y = int.tryParse(s);
    return y;
  }
}
