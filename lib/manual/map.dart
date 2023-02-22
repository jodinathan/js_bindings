part of '../manual.dart';

@JS('Object')
abstract class JSObject {
  external static Iterable<K> keys<K extends Object, V>(JsMap<K, V> obj);
  external static Iterable<V> values<K extends Object, V>(JsMap<K, V> obj);
}

@JS('Map')
@staticInterop
class JsMap<K extends Object, V> {
  external factory JsMap([Iterable<Iterable> initial]);
}

extension DartMap<K extends Object, V> on JsMap<K, V> {
  V? operator [](K key) => jsu.callMethod(this, 'get', [key]);

  operator []=(K key, V? value) {
    jsu.callMethod(this, 'set', [key, value]);
  }

  bool remove(K key) => jsu.callMethod(this, 'delete', [key]);

  void removeAll(Iterable<K> keys) {
    for (final key in keys) {
      remove(key);
    }
  }

  JsIterable<V> get keys => jsu.callMethod(this, 'keys', const []);

  JsIterable<V> get values =>
      jsu.callMethod(this, 'values', const []);

  bool containsKey(K key) => jsu.callMethod(this, 'has', [key]);

  String asString() => conv.json.encode(this);

  void clear() {
    jsu.callMethod(this, 'clear', const []);
  }

  void forEach(void Function(K, V?, JsMap<K, V>) fn) {
    jsu.callMethod(this, 'forEach', [allowInterop(fn)]);
  }

  // bool get isEmpty => keys.isEmpty;
  //
  // bool get isNotEmpty => keys.isNotEmpty;
}
