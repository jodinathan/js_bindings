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

  JsIterable<V> get keys => JsIterable(jsu.callMethod(this, 'keys', const []));

  JsIterable<V> get values =>
      JsIterable(jsu.callMethod(this, 'values', const []));

  bool containsKey(K key) => jsu.callMethod(this, 'has', [key]);

  String asString() => conv.json.encode(this);

  bool containsValue(V value) => values.contains(value);

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

@JS()
@anonymous
class IteratorItem<E> {
  external E? get value;
  external bool get done;
}

@JS()
@anonymous
class JsIterator<E> {
  external JsIterator();
}

extension AdvJsIterator<E> on JsIterator<E> {
  IteratorItem next() =>
      jsu.callMethod<IteratorItem<E>>(this, 'next', const []);
}

class JsIterable<E> extends Iterable<E> implements Iterator<E> {
  JsIterable(this.jsIterator);

  final JsIterator<E> jsIterator;

  @override
  Iterator<E> get iterator => this;

  @override
  bool moveNext() {
    final n = jsIterator.next();

    _value = n.value;
    return !n.done;
  }

  late E _value;

  @override
  E get current => _value;
}
