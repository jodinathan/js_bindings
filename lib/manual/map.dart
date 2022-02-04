part of '../manual.dart';

@JS('Object')
abstract class JSObject {
  external static Iterable<K> keys<K extends Object, V>(JsMap<K, V> obj);
  external static Iterable<V> values<K extends Object, V>(JsMap<K, V> obj);
}

@JS()
@anonymous
class JsMap<K extends Object, V> {}

extension DartMap<K extends Object, V> on JsMap<K, V> {
  V? operator[](K key) => jsu.getProperty(this, key);

  void operator[]=(String key, V? value) =>
      jsu.setProperty<V>(this, key, value);

  V? remove(K key) {
    final value = this[key];

    Reflect.deleteProperty(this, key);
    return value;
  }

  void removeAll(Iterable<K> keys) {
    for (final key in keys) {
      remove(key);
    }
  }

  Iterable<K> get keys => JSObject.keys(this);

  Iterable<V> get values => JSObject.values(this);

  bool containsKey(K key) => jsu.hasProperty(this, key);

  String asString() => conv.json.encode(this);

  bool containsValue(V value) => JSObject.values(this).contains(value);

  void clear() {
    for (final key in keys) {
      Reflect.deleteProperty(this, key);
    }
  }

  void forEach(void Function(K, V) fn) {
    final keys = this.keys;
    final values = this.values;
    final len = keys.length;

    for (var x = 0; x < len; x++) {
      fn(keys.elementAt(x), values.elementAt(x));
    }
  }

  bool get isEmpty => keys.isEmpty;

  bool get isNotEmpty => keys.isNotEmpty;
}
