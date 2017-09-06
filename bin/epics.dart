///  hkl 7.3.2017


//  https://github.com/brianegan/dart_redux_epics



/// unused  import 'dart:async';
///  import 'package:redux_epics/redux_epics.dart';
//  import 'package:redux_epics/redux_epics.dart';
///  import 'package:redux/redux.dart';


///TODO  github code.  solve  redux   unsolved
///
//

//  hklTry   create  Action   and  State classes

class Action{
  String name = ' This is action class';

}

class State{
  String name = ' This is State class';

}



/*
class ExampleEpic extends Epic<State, Action> {
  @override
  Stream<Action> map(Stream<Action> actions, EpicStore<State, Action> store) {
    return actions
        .where((action) => action is PerformSearchAction)
        .asyncMap((action) =>
    // Pseudo api that returns a Future of SearchResults
    api.search((action as PerformSearch).searchTerm)
        .then((results) => new SearchResultsAction(results))
        .catchError((error) => new SearchErrorAction(error)));
  }
}

///  Connecting the Epic to the Redux Store

/// Now that we've got an epic to work with, we need to wire it up to our Redux store so it can receive a stream of actions. In order to do this, we'll employ the EpicMiddleware.

var reducer = new FakeReducer();
var epicMiddleware = new EpicMiddleware(new ExampleEpic());
var store = new Store<State, Action>(reducer, middleware: [epicMiddleware]);
*/

///
void main() {


}

//