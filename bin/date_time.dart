
/*
Dart tries to understand what you mean where it can.
For instance new DateTime(2017, 2, 30); isn't Feb 30th, but actually March 2nd.
So doing something like:
*/

var now = new DateTime.now();
var then = new DateTime(now.year, now.month + 1, now.day);

///  Can be pretty close to what you want (it'll carry the month to years for you too)