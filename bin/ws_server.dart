//  hkl  17.6.2017  a_archi/bin web-socket server
//


import 'dart:io';



//  code:  https://www.dartlang.org/dart-vm/dart-by-example#websockets
///  Upgrade a regular HTTP request to a WebSocket request
///  using WebSocketTransformer.upgrade().
handleMsg(msg) {
  print('Message received: $msg');
}

main() async {
  try {
    var server = await HttpServer.bind('127.0.0.1', 4040);
    await for (HttpRequest req in server) {
      if (req.uri.path == '/ws') {
        // Upgrade an HttpRequest to a WebSocket connection.
        var socket = await WebSocketTransformer.upgrade(req);
        socket.listen(handleMsg);
      }
    }
  } catch (e) {
    print(e);
  }
}

//