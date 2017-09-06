//


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

//

