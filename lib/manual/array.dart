part of '../manual.dart';

@JS('Array')
@staticInterop
/// A [List] that proxies a JavaScript array.
class JsArray<E> {
  /// Creates an empty JavaScript array.
  external factory JsArray([E variadic1, E variadic2, E variadic3,
    E variadic4, E variadic5]);

  /// Creates a new JavaScript array and initializes it to the contents of
  /// [other].
  external JsArray.from(Iterable<E> other);
}

class JsArrayWrapper<E> extends ListBase<E> {
  JsArrayWrapper(this._jsArray);

  final JsArray<E> _jsArray;

  @override
  set length(int newLength) { _jsArray.length = newLength; }

  @override
  int get length => _jsArray.length;

  @override
  E operator [](int index) => _jsArray[index];

  @override
  void operator []=(int index, E value) { _jsArray[index] = value; }
}

extension AdvJsArray<E> on JsArray<E> {
  List<E> toList() => JsArrayWrapper(this);

  void forEach(void Function(E, int) fn) {
    jsu.callMethod(this, 'forEach', [ allowInterop(fn)]);
  }

  E operator[](int key) => jsu.getProperty(this, key);

  void operator[]=(int key, E value) =>
      jsu.setProperty<E>(this, key, value);

  external int get length;

  external set length(int length);

  // Methods overridden for better performance
  external void add(E element);

  external void addAll(Iterable<E> iterable);

  external void insert(int index, E element);

  external E removeAt(int index);

  external E removeLast();

  external void removeRange(int start, int end);

  external String join(Object separator);

  external void setRange(int start, int end, Iterable<E> iterable,
      [int skipCount = 0]);

  external void sort([int Function(E a, E b)? compare]);
}
