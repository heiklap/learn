

//  http://stackoverflow.com/questions/42176092/dartlang-wait-more-than-one-future
//  You can use Future.wait to wait for a list of futures:
import 'dart:async';
import 'dart:isolate';

int  startIsolate() {
  return 7;
}
int  sendTaskToIsolate(){
  return 8;
}
int receiveResult() {
  return 11;
}


///  from gitter, to keep GC  clean
Future myTask() async {
  await startIsolate();
  await sendTaskToIsolate();
  await receiveResult();
}



Future main() async {
  var data = [];
  var futures = [];
  for (var d in data) {
    futures.add(d.loadData());
  }
  await Future.wait(futures);
}

//  You can use map as well:
// await Future.wait(data.map((d)=>d.loadData()))

//

