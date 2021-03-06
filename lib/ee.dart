

//  Event emitter for dart package. from pub by:  @axetroy
//  https://pub.dartlang.org/packages/ee
//  https://www.crossdart.info/p/ee/0.0.3/ee.dart.html

library ee;

class EventEmitter {

  /**
   * storage for the event handler
   */
  Map<String, List<Function>> _events = new Map();

  /**
   * proxy the private property, make it readonly. cannot modify from outside
   */
  Map<String, List<Function>> get events => _events;

  EventEmitter() {
  }

  /**
   * listen the event
   * it will return a function to cancel this listening
   */
  Function on(String event, void handler(dynamic data)) {
    final List eventContainer = _events.putIfAbsent(event, () => new List<Function>());
    eventContainer.add(handler);
    void offThisListener() {
      eventContainer.remove(handler);
    };
    return offThisListener;
  }

  /**
   * listen the event once
   * it will remove listening once it trigger
   */
  void once(String event, void handler(dynamic data)) {
    final List eventContainer = _events.putIfAbsent(event, () => new List<Function>());
    eventContainer.add((dynamic data) {
      handler(data);
      this.off(event);
    });
  }

  /**
   * remove a event listening
   */
  void off(String event) {
    _events.remove(event);
  }

  /**
   * emit a event with a optional data
   */
  void emit(String event, [dynamic data]) {
    final List eventContainer = _events[event] ?? [];
    eventContainer.forEach((void handler(dynamic data)) {
      if (handler is Function) handler(data);
    });
  }

  /**
   * clear the all listening
   */
  void clear() {
    _events.clear();
  }
}