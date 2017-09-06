
/*
Map<String, int> scores = {'Bob': 36};
for (var key in ['Bob', 'Rohan', 'Sophena']) {
  scores.putIfAbsent(key, () => key.length);
}
scores['Bob'];      // 36
scores['Rohan'];    //  5
scores['Sophena'];  //  7



 */


///
void main(){
  triggerMapHandler();

  //  mainMapPad();

}


///  trigger handler
void triggerMapHandler() {
  print('----  Map trigger handler   ----');

  void helloMessage(String msg) => print(msg);

  //TODO  use this
  Map<String, Function> triggerHandler = {'Firs Act': (t) => helloMessage(t)};
  print('----  MTH  Print all keys    ----');
  triggerHandler.keys.forEach(print);
  print('----  Map trigger handler  done  ----');
}





void mainMapPad() {
  [0, 1, 2, 3, 4]
      .map((i) => 'hello ${i + 1}')
      .forEach(print);
}

void mainMap() {

  Map<int,int> dMap = new Map();
  dMap.putIfAbsent(3, () => 4);
  //dMa.putIfAbsent(4, () => key.length);
  //dMa.putIfAbsent(4, () => key.length);
  dMap.putIfAbsent(4, () => 5);
  dMap.putIfAbsent(5, () => 5);
  dMap.putIfAbsent(6, () => 5);


  dMap.addAll({7:2});

  dMap.forEach((k,v)=>print("out: $k $v"));

  //  map1.forEach((k,v)=>print("out: $k $v"));
}


//