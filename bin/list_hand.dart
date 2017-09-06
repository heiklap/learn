///  hkl  learn  2016-12 maybe







//zoechi	[2:07 PM]

//  unused:  import 'dart:collection';

List<int> listInt = [1, 3, 7, 18, 19, 27, 39, 102];
List<int> list2 = [1, 3, 7];
List<int> baseList = [0, 6, 13, 26];
List<int> baseList2 = [0, 3, 6];
List<int> resultList = [];
List<int> oneValueList = [];


//TODO  Learn:  successC == 0 ? failedC++ : '''

void nearestLover() {

//  List<int>
  int getNearestLower(int target, List<int> baseList) {
    final lowers = baseList.where((val) => val <= target);
    // return lowers.isEmpty ? null : lowers.last;
    return lowers.last;
  }

//oneValueList.addAll(getNearestLower(7, baseList));
//  oneValueList.forEach(print);
//  hkl try:
  resultList.addAll(listInt.map((val) => getNearestLower(val, baseList)).toList());
  print(resultList);
  resultList.clear();
  resultList.addAll(list2.map((val) => getNearestLower(val, baseList2)).toList());
  print(list2);
  print(resultList);
}

void missingBase() {
  List<int> baseList = [0, 3, 6];
  List<int> list = [1, 7];
  List<int> list2 = [ 4, 8];

  List<int> resultList = [];
  List<int> resultList2 = [];
  List<int> oneValueList = [];
  List<int> oneValueList2 = [];

  int getNearestLower(int target, List<int> baseList) {
    final lowers = baseList.where((val) => val <= target);
    // return lowers.isEmpty ? null : lowers.last;
    return lowers.last;
  }

  print('---------------  1  ----------------------');
  resultList.addAll(list.map((val) => getNearestLower(val, baseList)).toList());
  print(list);
  print(resultList);
  print (oneValueList);

  //  oneValueList.addAll(baseList);
//  oneValueList.any((v) => print(v));
  print (oneValueList);
  //  oneValueList.remove((x)  => baseList.indexOf(x > -1));
  for (var z in baseList){
    if (resultList.indexOf(z) == -1) {
      oneValueList.add(z);
    }
    }
        //  every((v) => (baseList.indexOf[v](v > 0));

  print (oneValueList);

  print('---------------  2  ----------------------');
  resultList2.addAll(list2.map((val) => getNearestLower(val, baseList)).toList());
  print(list2);
  print(oneValueList2);
  print(resultList2);
  oneValueList2.addAll(baseList2);
  print(oneValueList2);
  oneValueList2.remove((x)  => baseList.indexOf(x > -1));
  print(oneValueList2);
}

void main() {
  missingBase();

  //  nearestLover();





  void classify() {
    for (var target in listInt){
      resultList.addAll(baseList.where((val) => val < target));

    }
    //  resultList.forEach(print);
    print(resultList);
  }
  //  for to use that function
  classify();

}