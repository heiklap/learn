




///TODO  convert
// unused:   import 'dart:convert';


///TODO  http  move to web folder
import 'dart:html';
///   Dart SDK dart:html HttpRequest

//  A client-side XHR request for getting data from a URL,
//  formally known as XMLHttpRequest.


///Serialize
///  from   gitter
///
//

void loadData() {
  var url = "https://api.steemjs.com/get_discussions_by_trending?query=%7B%22tag%22%3A%22beyondbitcoin%22%2C%20%22limit%22%3A%20%2210%22%7D";
  var request = HttpRequest.getString(url).then(onDataLoaded);


}

void onDataLoaded(String responseText) {
  var jsonString = responseText;
  print(jsonString);
  querySelector('#json').text = responseText;  //  hklTry  ;
}



//













