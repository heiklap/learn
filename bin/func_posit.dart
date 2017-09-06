///  hkl  27.3.2017  positional and named    parameters
///
///
///
//



//Misc: I don't think the parameters should be positional because it would mean
// that order of field declarations would affect your public

//  Optional positional parameters
//  Wrapping a set of function parameters in []
// marks them as optional positional parameters:


///  TODO  askGitter
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}





//  https://www.dartlang.org/guides/language/language-tour#default-parameter-values

void doStuff(
    {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
  print('list:  $list');
  print('gifts: $gifts');
}


