///  hkl  19.3.2017


import 'dart:async';
import 'dart:isolate';



//  await new Future.delayed(const Duration(seconds: 2));

///  from punch/tools/signal
///  simple  sleep method
void sleep(int _wTime) {
  var gTime = new DateTime.now().add(new Duration(milliseconds: _wTime));
  do {
  } while (new DateTime.now().compareTo(gTime) < 0);
}


///  must this be future ??
void read_cams() {
  print(' ----    reading cams   -----');
}


//  must this be future
void read_users() {
  print('---- reading users   -----');

}

///
main() async{
  var done = await Future.wait([read_cams(), read_users()]);
  var users = done[1];
  var cams = done[0];


  for (String user in users) {
    print(user);
    sleep(200);
    Isolate.spawnUri(Uri.parse("./isolates/main.dart"), [user, "1", cams.toString()], null);
  }
}

//