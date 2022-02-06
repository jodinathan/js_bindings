part of '../manual.dart';

@JS('Array')
@staticInterop
/// A [List] that proxies a JavaScript array.
class JsArray<E> {
  /// Creates an empty JavaScript array.
  external JsArray();

  /// Creates a new JavaScript array and initializes it to the contents of
  /// [other].
  external JsArray.from(Iterable<E> other);
}

extension AdvJsArray<E> on JsArray<E> {
  // Methods required by ListMixin
  E? operator[](Object key) => jsu.getProperty(this, key);

  void operator[]=(Object key, E? value) =>
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

  external void setRange(int start, int end, Iterable<E> iterable,
      [int skipCount = 0]);

  external void sort([int Function(E a, E b)? compare]);
}
