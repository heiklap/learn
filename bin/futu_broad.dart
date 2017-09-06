


//  https://dartpad.dartlang.org/e1ca49ba567ebcce62e57724f2bc1462
//TODO  error no-analyze async

import 'dart:async';
import 'dart:io';


///
void sleepIo() {
  sleep(const Duration(seconds:1));

}

///
Future sleep1() {
  return new Future.delayed(const Duration(seconds: 1), () => "1");
}


///
Future sleep2() {
  return new Future.delayed(const Duration(seconds: 2), () => "2");
}


///
void main() {
  var result = foo();
  result.then((r) {
    print('First listener: $r');
  });
  result.then((r) {
    print('Second listener: $r');
  });
}

///
Future<String> foo() async {
  print('Running async');
  return 'foo';
}



//   From gitter start of this discussion
// > i've got something like this (haven't tested it yet):
// TODO  Unsolved  saveReguested roor.rollback
//  TODO  AskGitter
/*
Future saving;
bool saveRequested = false;

_save() async {
  var data = root.save();
  if (data.isNotEmpty) {
    Map response = await repository.save(root.pk, data);
    root.commit(response);
  }
}

save() async {
  if (saving != null) {
    saveRequested = true;
    return saving;
  }
  try {
    saving = _save();
    await saving;
  } catch (e) {
    print(e);
    root.rollback();
  } finally {
    saving = null;
    if (saveRequested) {
      saveRequested = false;
      save();
    }
  }
}
*/

//