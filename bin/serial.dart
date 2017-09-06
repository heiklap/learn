


import 'dart:convert';

///  TODO  move to web folder
//  import 'dart:http';
///   Dart SDK dart:html HttpRequest

//  A client-side XHR request for getting data from a URL,
//  formally known as XMLHttpRequest.


///Serialize
///  from   gitter
///
//





class Article {
  int id;
  String author;
  String link;

  Article.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    author = map['author'];
    link = map['permalink'];
    }
}

List<Map<String, dynamic>> json = JSON.decode('');  //  example_text
var articles = json.map((m) => new Article.fromMap(m)).toList();




///  Also, by default the JSON.encode method will call toJson on
///  an object if it's defined. So if you return a simple map
///  from that function then it will encode your object cleanly.
///
//
class Test {
  String field = 'test';
  int value = 10;

  Map<String, dynamic> toJson() => {
    'field': field,
    'value': value
  };
}

void main() {
  var test = new Test();
  print(JSON.encode(test));
}





//

