part of '../manual.dart';

@JS('Array')
@staticInterop
class JsArray<E> {
  /// Do not use this. Use List directly, ie: final array = [];
  factory JsArray() => throw 'Use List directly, ie: final array = [];';
}

extension AdvJsArray<E> on JsArray<E> {
  /// The at() method is equivalent to the bracket notation when index
  /// is non-negative.
  /// For example, array[0] and array.at(0) both return the first item.
  /// However, when counting elements from the end of the array, you cannot use
  /// array[-1] like you may in Python or R, because all values inside the square
  /// brackets are treated literally as string properties, so you will end up
  /// reading array["-1"], which is just a normal string property instead of
  /// an array index.
  ///
  /// The usual practice is to access length and calculate the index from
  /// that — for example, array[array.length - 1].
  /// The at() method allows relative indexing, so this can be shortened
  /// to array.at(-1).
  ///
  /// The at() method is generic. It only expects the this value to have a
  /// length property and integer-keyed properties.
  E? at(int index) => jsu.callMethod(this, 'at', [index]);

  /// The concat method creates a new array.
  /// The array will first be populated by the elements in the object on
  /// which it is called. Then, for each argument, its value will be
  /// concatenated into the array — for normal objects or primitives,
  /// the argument itself will become an element of the final array;
  /// for arrays or array-like objects with the property
  /// Symbol.isConcatSpreadable set to a truthy value, each element of
  /// the argument will be independently added to the final array.
  /// The concat method does not recurse into nested array arguments.
  ///
  /// The concat() method is a copying method. It does not alter this or any
  /// of the arrays provided as arguments but instead returns a shallow copy
  /// that contains the same elements as the ones from the original arrays.
  ///
  /// The concat() method preserves empty slots if any of the source
  /// arrays is sparse.
  ///
  /// The concat() method is generic. The this value is treated in the same
  /// way as the other arguments (except it will be converted to an object first),
  /// which means plain objects will be directly prepended to the resulting array,
  /// while array-like objects with truthy @@isConcatSpreadable will
  /// be spread into the resulting array.
  JsArray<E> concat(JsArray array1, [JsArray? array2, JsArray? array3]) =>
      jsu.callMethod(this, 'concat', [array1, array2, array3]);

  /// The copyWithin() method works like C and C++'s memmove, and is a
  /// high-performance method to shift the data of an Array.
  /// This especially applies to the TypedArray method of the same name.
  /// The sequence is copied and pasted as one operation; the pasted sequence
  /// will have the copied values even when the copy and paste region overlap.
  ///
  /// The copyWithin() method is a mutating method. It does not alter the
  /// length of this, but it will change the content of this and create
  /// new properties or delete existing properties, if necessary.
  ///
  /// The copyWithin() method preserves empty slots. If the region to be
  /// copied from is sparse, the empty slots' corresponding new indices are
  /// deleted and also become empty slots.
  ///
  /// The copyWithin() method is generic. It only expects the this value to
  /// have a length property and integer-keyed properties.
  /// Although strings are also array-like, this method is not suitable to
  /// be applied on them, as strings are immutable.
  JsArray<E> copyWithin(int target, [int? start, int? end]) =>
      jsu.callMethod(this, 'copyWithin', [target, start, end]);

  /// When used on sparse arrays, the entries() method iterates empty slots as
  /// if they have the value undefined.
  ///
  /// The entries() method is generic. It only expects the this value to have
  /// a length property and integer-keyed properties.
  JsArray<JsArray> entries() => jsu.callMethod(this, 'entries', []);

  /// The every() method is an iterative method.
  /// It calls a provided callbackFn function once for each element in an
  /// array, until the callbackFn returns a falsy value. If such an element
  /// is found, every() immediately returns false and stops iterating through
  /// the array. Otherwise, if callbackFn returns a truthy value for all
  /// elements, every() returns true.
  ///
  /// every acts like the "for all" quantifier in mathematics. In particular,
  /// for an empty array, it returns true. (It is vacuously true that all
  /// elements of the empty set satisfy any given condition.)
  ///
  /// callbackFn is invoked only for array indexes which have assigned values.
  /// It is not invoked for empty slots in sparse arrays.
  ///
  /// every() does not mutate the array on which it is called, but the function
  /// provided as callbackFn can. Note, however, that the length of the array
  /// is saved before the first invocation of callbackFn. Therefore:
  ///
  /// callbackFn will not visit any elements added beyond the array's initial
  /// length when the call to every() began.
  /// Changes to already-visited indexes do not cause callbackFn to be invoked
  /// on them again.
  /// If an existing, yet-unvisited element of the array is changed by
  /// callbackFn, its value passed to the callbackFn will be the value at the
  /// time that element gets visited. Deleted elements are not visited.
  bool every(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'every', [allowInterop(fn)]);

  /// The fill() method is a mutating method. It does not alter the
  /// length of this, but it will change the content of this.
  ///
  /// The fill() method fills empty slots in sparse arrays with
  /// value as well.
  ///
  /// The fill() method is generic. It only expects the this value to
  /// have a length property. Although strings are also array-like,
  /// this method is not suitable to be applied on them, as strings are immutable.
  JsArray<E> fill(E value, [int? start, int? end]) =>
      jsu.callMethod(this, 'fill', [value, start, end]);

  /// The filter() method is an iterative method. It calls a provided callbackFn
  /// function once for each element in an array, and constructs a new array
  /// of all the values for which callbackFn returns a truthy value.
  /// Array elements which do not pass the callbackFn test are not included
  /// in the new array.
  ///
  /// callbackFn is invoked only for array indexes which have assigned values.
  /// It is not invoked for empty slots in sparse arrays.
  ///
  /// The filter() method is a copying method. It does not alter this but
  /// instead returns a shallow copy that contains the same elements as the
  /// ones from the original array (with some filtered out). However, the
  /// function provided as callbackFn can mutate the array. Note, however,
  /// that the length of the array is saved before the first invocation of
  /// callbackFn. Therefore:
  ///
  /// callbackFn will not visit any elements added beyond the array's initial
  /// length when the call to filter() began.
  /// Changes to already-visited indexes do not cause callbackFn to be invoked
  /// on them again.
  /// If an existing, yet-unvisited element of the array is changed by
  /// callbackFn, its value passed to the callbackFn will be the value at
  /// the time that element gets visited. Deleted elements are not visited.
  JsArray<E> filter(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'filter', [allowInterop(fn)]);

  /// The find() method is an iterative method. It calls a provided callbackFn
  /// function once for each element in an array in ascending-index order,
  /// until callbackFn returns a truthy value. find() then returns that
  /// element and stops iterating through the array. If callbackFn never
  /// returns a truthy value, find() returns undefined.
  ///
  /// callbackFn is invoked for every index of the array, not just those
  /// with assigned values. Empty slots in sparse arrays behave the same as
  /// undefined.
  ///
  /// find() does not mutate the array on which it is called, but the
  /// function provided as callbackFn can. Note, however, that the length
  /// of the array is saved before the first invocation of callbackFn. Therefore:
  ///
  /// callbackFn will not visit any elements added beyond the array's initial
  /// length when the call to find() began.
  /// Changes to already-visited indexes do not cause callbackFn to be invoked
  /// on them again.
  /// If an existing, yet-unvisited element of the array is changed by
  /// callbackFn, its value passed to the callbackFn will be the value at the
  /// time that element gets visited. Deleted elements are visited as if
  /// they were undefined.
  E? find(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'find', [allowInterop(fn)]);

  /// The findIndex() is an iterative method. It calls a provided callbackFn
  /// function once for each element in an array in ascending-index order,
  /// until callbackFn returns a truthy value. findIndex() then returns the
  /// index of that element and stops iterating through the array.
  /// If callbackFn never returns a truthy value, findIndex() returns -1.
  ///
  /// callbackFn is invoked for every index of the array, not just those
  /// with assigned values. Empty slots in sparse arrays behave the same
  /// as undefined.
  ///
  /// findIndex() does not mutate the array on which it is called, but
  /// the function provided as callbackFn can. Note, however, that the
  /// length of the array is saved before the first invocation of
  /// callbackFn. Therefore:
  ///
  /// callbackFn will not visit any elements added beyond the array's
  /// initial length when the call to findIndex() began.
  /// Changes to already-visited indexes do not cause callbackFn to be
  /// invoked on them again.
  /// If an existing, yet-unvisited element of the array is changed by
  /// callbackFn, its value passed to the callbackFn will be the value
  /// at the time that element gets visited. Deleted elements are visited
  /// as if they were undefined.
  int findIndex(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'findIndex', [allowInterop(fn)]);

  E? findLast(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'findLast', [allowInterop(fn)]);

  int findLastIndex(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'findLastIndex', [allowInterop(fn)]);

  JsArray<E> flat() => jsu.callMethod(this, 'flat', []);

  JsArray<E> flatMap(
          dynamic Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'flatMap', [allowInterop(fn)]);

  void forEach(void Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'forEach', [allowInterop(fn)]);

  dynamic group(dynamic Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'group', [allowInterop(fn)]);

  JsMap groupToMap(
          dynamic Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'groupToMap', [allowInterop(fn)]);

  bool includes(E element, [int? fromIndex]) =>
      jsu.callMethod(this, 'includes', [element, fromIndex]);

  int indexOf(E element, [int? fromIndex]) =>
      jsu.callMethod(this, 'indexOf', [element, fromIndex]);

  String join([String? separator]) => jsu.callMethod(this, 'join', [separator]);

  JsArray keys() => jsu.callMethod(this, 'keys', []);

  int lastIndexOf(E element, [int? fromIndex]) =>
      jsu.callMethod(this, 'lastIndexOf', [element, fromIndex]);

  JsArray map(dynamic Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'map', [allowInterop(fn)]);

  E? pop() => jsu.callMethod(this, 'pop', []);

  int push(E element) => jsu.callMethod(this, 'push', [element]);

  T reduce<T>(
          T Function(T accumulator, T currentValue, int currentIndex,
                  JsArray<E> array)
              fn,
          T initialValue) =>
      jsu.callMethod(this, 'reduce', [allowInterop(fn), initialValue]);

  T reduceRight<T>(
          T Function(T accumulator, T currentValue, int currentIndex,
                  JsArray<E> array)
              fn,
          T initialValue) =>
      jsu.callMethod(this, 'reduceRight', [allowInterop(fn), initialValue]);

  JsArray<E> reverse() => jsu.callMethod(this, 'reverse', []);

  E? shift() => jsu.callMethod(this, 'shift', []);

  JsArray<E> slice([int? start, int? end]) =>
      jsu.callMethod(this, 'slice', [start, end]);

  bool some(bool Function(E element, int index, JsArray<E> array) fn) =>
      jsu.callMethod(this, 'some', [allowInterop(fn)]);

  JsArray<E> sort([int Function(E left, E right)? fn]) =>
      jsu.callMethod(this, 'sort', [fn]);

  JsArray<E> splice([int? start, int? deleteCount]) =>
      jsu.callMethod(this, 'splice', [start, deleteCount]);

  JsArray<E> toLocaleString([dynamic locales, dynamic options]) =>
      jsu.callMethod(this, 'toLocaleString', [locales, options]);

  int unshift(E element) => jsu.callMethod(this, 'unshift', [element]);

  JsArray values() => jsu.callMethod(this, 'values', []);

  List<E> toList() => JsArrayWrapper(this);

  E operator [](int key) => jsu.getProperty(this, key);

  void operator []=(int key, E value) => jsu.setProperty<E>(this, key, value);

  int get length => jsu.getProperty(this, 'length');

  set length(int value) {
    jsu.setProperty(this, 'length', value);
  }

  // Methods overridden for better performance
  void add(E element) => push(element);

  void addAll(Iterable<E> iterable) =>
      jsu.callMethod(this, 'push', iterable.toList());

  // void insert(int index, E element) =>
  //     jsu.callMethod(this, 'insert', [index, element]);

  // E removeAt(int index) => jsu.callMethod(this, 'removeAt', [index]);

  // E removeLast() => jsu.callMethod(this, 'removeLast', []);

  // void removeRange(int start, int end) =>
  //     jsu.callMethod(this, 'removeRange', [start, end]);

  // void setRange(int start, int end, Iterable<E> iterable,
  //         [int skipCount = 0]) =>
  //     jsu.callMethod(this, 'setRange', [start, end, iterable, skipCount]);
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
