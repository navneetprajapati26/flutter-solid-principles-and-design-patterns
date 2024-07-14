import 'dart:developer';

class NumberGen{

  NumberGen._internal();

  static final NumberGen _instance = NumberGen._internal();

  factory NumberGen() {
    return _instance ;
  }

  int _a = 0;

  int getNextNumber(){

    int ans = _a + 5;
    _a = ans;


    log(ans.toString(),name: "getNextNumber()");
    return ans;
  }


}

