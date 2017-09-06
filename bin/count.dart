

int xRet() {
  return 7;
}


void failCount() {
  print('------   failCount ------');
  List<int> mondayR = [3, 0, 1, 0];

  int successC, failedC;
  successC = 0;
  failedC = 0;

successC == 0? failedC++ : '';
  print(failedC);
  for (var z in mondayR  ) {
    print(z);
    successC = successC +10;
    successC++;
    successC == 0?  failedC++ : '';
    print(successC);
  }
  print('------------');
  print(successC);
}


void main() {
  boolCount();
}


  void someCounts() {
  int x, y;
  x = 0;

  x = x + xRet();

  print(x);
  print(y);
  failCount();
}

void boolCount() {
  int i = 17;
  if (i == 17) {
    print(' i is  17 ');
  }
    if (i < 17) {
      print(' i is < 17 ');  //  no print
    }
    if (i != 18) {
      print(' i is NOT  18 ');
    }
    if (( i != 16 ) &&  (i != 16) ) {
      print(' i is NOT 16 NOT 18 ');
    }
  }

//