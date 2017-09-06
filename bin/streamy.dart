//  6.3.2017  hkl  some dart stream stuff






import 'dart:async';



////



//
void main() {
  aaStream();
  print('--------------------');
  mainStream();


}


////  http://stackoverflow.com/questions/42611880/difference-between-await-for-and-listen-in-dart
Future<int> aaStream() async {
  int _retInt = 3;
  Stream<String> stream = new Stream<String>.fromIterable(['mene', 'mene', 'tekel', 'parsin']);

  print('BEFORE');
  await for(String s in stream) { print(s); }
  print('AFTER');
  return _retInt;
}





/*
The main difference is when there's code afterwards. listen only register
the handler and the execution continue. await for will retain execution
until the stream is closed.

Thus if you add a print('hello'); at the end of your main you shouldn't
see hello in the output with  await for (because the request stream is
never closed). Try the following code on dartpad to see the differences :
*/



//  http://stackoverflow.com/questions/42611880/difference-between-await-for-and-listen-in-dart
mainStream () async {
  tenInts.listen((i) => print('int $i'));
  //await for (final i in tenInts) {
  //  print('int $i');
  //}
  print('hello');
}
Stream<int> get tenInts async* {
  for (int i = 1; i <= 10; i++) yield i;
}

//