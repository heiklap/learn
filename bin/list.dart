///
/// list explorations
///
/// //  List.skip(40).take(20) gets you an iterable
///  someList.getRange(40, 60)
/// //  List.skip(40).take(20) gets you an iterable
///someList.getRange(40, 60)
/// //  List.skip(40).take(20) gets you an iterable
///  someList.getRange(40, 60)
/// List.skip(40).take(20) gets you an iterable
/// //  List.skip(40).take(20) gets you an iterable
///   someList.getRange(40, 60)


List<int> yValuesL = ['1, 2, 3, 4, 5, 6, 7, 8, 9'];
List<int> yList = [];

List<List<int>> xListList = [];
List<int> xList = [];


void main() {
  //  addAllTest();



  final List<int> posValuesL = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(posValuesL);   //  avoid unused:


  var posGenL =  new List<int>.generate(9, (v) => v+1);
  print(posGenL); //  [1, 2, 3, 4, 5, 6, 7, 8, 9]
}



///  TODO  List error  the operator [] is not defined for class int
///  TODO  Error commented out ::  List
void myListVoid() {
  // new List<int>.generate(3, (int index) => index * index); // [0, 1, 4]
  //  no success with with fixedFlag bool
  //  error  the operator [] is not defined for class int
  /*
  var myList =  new List<int>.generate(3, (value) => value * 3 [false] ); //{false;} ;
  print(myList); // [0, 3, 6]

  myList.forEach(print);
  ///  so this is not a fixed size List
  myList.add(7);  //  No error   =  growAble
  print(myList); // [0, 3, 6]
  */

}

void fixedList() {


}




void mainRemove() {

  removeWhere();
  //  twoListsPlus();
  //  deleteTestWithAdd();
  //  deleteTestWithAddAll();

  //  yList.forEach((x) => print(x + 100));

}



//  fruits.where((f) => f.startsWith('a')).toList();


void removeWhere() {
  print('----- removeWhere function  ---------------------------');
  List<int> outL = [];
  outL.addAll([1, 3, 7, 9]);

  List<int> retL = [];
  retL.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9]);



  List<int> getListMini(List<int> delList, List<int> retList  ) {
    List<int> _delList = [];
    _delList.addAll( delList);

    List<int> _retList = [];
   _retList.addAll(retList);

    print(_delList.length);
    print(_retList.length);

    print(delList.length);
    print(retList.length);

    for (var x = 0; x < delList.length; x ++  ) {
      print('running..');
      _retList.removeWhere((value) => _delList.indexOf(value) > -1);
    }
    return _retList;
  }

  List<int> l = [];
  //  removeWhere(bool test(E element));
 //  retL.removeWhere((x) =>  outL.  );
  l.addAll(getListMini(outL, retL));

  print('outL:    $outL');
  print('retL:    $retL');
  print(' l :    $l');

}

void twoListsPlus() {
  List<int> lList = [2,5,6,9];
  List<int> jL = [13, 16, 11, 19];

  int x, z;

    int y = (lList[3] + jL[2]  );
    x = lList[2];
    z = jL[1];
    print(x + z);
    print(y);



}

void deleteTestWithAdd() {

  //List<int> yValuesL =['1, 2, 3, 4, 5, 6, 7, 8, 9'];

  //  List<int> yValuesL =[];  // ['1, 2, 3, 4, 5, 6, 7, 8, 9'];
  List<int> yValuesL = [];
  yValuesL.add(1);
  yValuesL.add(2);
  yValuesL.add(3);
  yValuesL.add(4);
  yValuesL.add(5);
  yValuesL.add(6);
  yValuesL.add(7);
  yValuesL.add(8);
  yValuesL.add(9);


  List<int> yList = [];
  //  yList.add(yValuesL);  ERROR
  yValuesL.forEach((x)  => yList.add(x) );
  print(yList);
  print(yList[0]);
  print('-------  for each add  -------------');
  print(yList.length);
  print(yList);
  print('-------  for each add done  -------------');
  print('-------  for var x in List   -------------');
  for (var x in yValuesL   ) {
    yList.add(x + 100);
  }
  print(yList.length);
  print(yList[2]);
  print(yList);
  yList.removeWhere((value) => value == 104);
  yList.removeWhere((value) => value == 8);
  yList.removeWhere((value) => value == 5);

  print(yList);
  print(yList.length);
  print(' ----------- ALL  and 2 4 5 6  nodes  ---------------------------');
  print(yList);
  print(yList[2]);
  print(yList[4]);
  print(yList[5]);
  print(yList[6]);
  print('-------   for var x in List done  -------------');

  yList.removeWhere((x) => x == 3);
  yList.removeWhere((x) => x == 7);
  print(yList.length);
  print(yList);
  //  yList.removeWhere((x) => (x < 3));
  print(yList.length);

  print(yList);
  print('--- remove last  ------');
  yList.removeLast();
  print(yList);

}


void deleteTestWithAddAll() {
  List<int> yValuesL = ['1, 2, 3, 4, 5, 6, 7, 8, 9'];
  List<int> yList = [];
  yList.addAll(yValuesL);
  print(yList.length);
  print(yList);
  yList.removeWhere((x) => x == 3);
  print(yList.length);
  print(yList);
  //  yList.removeWhere((x) => (x < 3));
  print(yList.length);

  print(yList);
  print('--- remove last  ------');
  yList.removeLast();
  print(yList);

}

void addAllTest() {
  print('------ addAll Test--------------------');
  List<int> twoValue = [2,3];
  yList.addAll(yValuesL);  //  addAll
  yList.add(3);
  print('LIST:  $yList');
  String lS = yList.length.toString();
  print('LENGTH:   $lS');
  print('----------- remove:::  ');
  yList.removeWhere((x) => x == 5);
  yList.remove(5);
  print('REMOVE 2::      $yList');

  String lS2 = yList.length.toString();
  print('LENGTH:   $lS2');
  print('-------------------');
  yList.addAll([26, 55, 77]);  //    addAll
  yList.addAll(twoValue);
  print(yList);
  print('-----forEach::   --------------');
  yList.forEach(print);
  print('------- yList length:: and 4 nodes::  ------------');
  print(yList.length);
  print(yList[0]);
  print(yList[1]);
  print(yList[2]);
  print(yList[3]);
  print(yList[4]);
  print(yList[5]);
  print(yList[6]);
 //  ??   print(yList[7]); //  not exists
  // print(yList[8]); //  not exists
  print('------ addAll Test-------------------- \n');
  print(yList);
  String lS3 = yList.length.toString();
  print('-----------  length ------');
  print('LENGTH:   $lS3');
}

//