//  hkl  17.6.2017  a_archi/bin web-socket server
//

///  hklTry:  when running BEFORE server
///  SocketException: OS Error: Etätietokone hylkäsi verkkoyhteyden.
//  , errno = 1225, address = 127.0.0.1, port = 56297
//  Yeah!!  OK, when running server first


//  Using websockets client
//  Make a WebSocket connection using WebSocket.connect(), and send data
// over that connection using the WebSocket add() method.

import 'dart:io';

main() async {
  var socket = await WebSocket.connect('ws://127.0.0.1:4040/ws');
  socket.add('Hello again, World!');
}

//

