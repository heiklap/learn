

var localTest = new LocalTest();

void main() {

  localTest.init();
  //  this solves unused      print(localTest._localB);
  print(localTest.publicB);


}


class LocalTest{
  bool _localB = false;  //  unused  NOT ANYMORE
  bool publicB = false;
  void init() {
    _localB = true;     //  still unused
    publicB = true;
  }
  void solve( ){
     if (_localB == true) {print('it is true');}
  }

  ///  so variable _localB  must be  READ  for to be used

}



//  void callInit() => init();  />/  still unused
// this solves  if (_localB == true) {print('it is true':)}
//  void test() => print(localTest._localB);
//




