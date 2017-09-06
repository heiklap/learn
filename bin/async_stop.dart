///  23.3.2017

/// https://dartpad.dartlang.org/e0824ca595a8342f107c00200a1d61c8
///
//


import 'dart:async';

Future<Null> main() async {
  var ts = new Stopwatch();
  ts.start();
  var sum = await awaitLoop();
  print('Sum is: $sum');
  ts.stop();
  print('Await took: ${ts.elapsed}');

  ts.reset();
  ts.start();
  sum = await futuresWait();
  print('Sum is: $sum');
  ts.stop();
  print('Future.wait took: ${ts.elapsed}');
}

Future<int> awaitLoop() async {
  var sum = 0;
  for (int i = 0; i < 5; i++) {
    sum += await getValue(i);
  }
  return sum;
}

Future<int> futuresWait() async {
  var futs = <Future<int>>[];
  for (int i = 0; i < 5; i++) {
    futs.add(getValue(i));
  }
  var res = await Future.wait(futs);
  var sum = res.fold(0, (a, b) => a + b);
  return sum;
}

Future<int> getValue(int i) {
  return new Future.delayed(new Duration(seconds: 1), () => i);
}