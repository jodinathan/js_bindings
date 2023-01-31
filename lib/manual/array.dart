part of '../manual.dart';

@JS('Array')
@staticInterop

/// A [List] that proxies a JavaScript array.
class JsArray<E> {
  /// Creates an empty JavaScript array.
  external factory JsArray(
      [E variadic1, E variadic2, E variadic3, E variadic4, E variadic5]);

  /// Creates a new JavaScript array and initializes it to the contents of
  /// [other].
  external factory JsArray.from(Iterable<E> other);
}

extension AdvJsArray<E> on JsArray<E> {
  List<E> toList() => JsArrayWrapper(this);

  void forEach(void Function(E, int) fn) {
    jsu.callMethod(this, 'forEach', [allowInterop(fn)]);
  }

  E operator [](int key) => jsu.getProperty(this, key);

  void operator []=(int key, E value) => jsu.setProperty<E>(this, key, value);

  int get length => jsu.getProperty(this, 'length');

  set length(int value) {
    jsu.setProperty(this, 'length', value);
  }

  // Methods overridden for better performance
  void add(E element) => jsu.callMethod(this, 'push', [element]);

  void addAll(Iterable<E> iterable) =>
      jsu.callMethod(this, 'push', iterable.toList());

  void insert(int index, E element) =>
      jsu.callMethod(this, 'insert', [index, element]);

  E removeAt(int index) => jsu.callMethod(this, 'removeAt', [index]);

  E removeLast() => jsu.callMethod(this, 'removeLast', []);

  void removeRange(int start, int end) =>
      jsu.callMethod(this, 'removeRange', [start, end]);

  String join(Object separator) => jsu.callMethod(this, 'join', [separator]);

  void setRange(int start, int end, Iterable<E> iterable,
          [int skipCount = 0]) =>
      jsu.callMethod(this, 'setRange', [start, end, iterable, skipCount]);

  void sort([int Function(E a, E b)? compare]) =>
      jsu.callMethod(this, 'sort', [compare]);
}

class JsArrayWrapper<E> extends ListBase<E> {
  JsArrayWrapper(this._jsArray);

  final JsArray<E> _jsArray;

  @override
  set length(int newLength) {
    _jsArray.length = newLength;
  }

  @override
  int get length => _jsArray.length;

  @override
  E operator [](int index) => _jsArray[index];

  @override
  void operator []=(int index, E value) {
    _jsArray[index] = value;
  }
}
