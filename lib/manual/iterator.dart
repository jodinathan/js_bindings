part of '../manual.dart';

@JS()
@staticInterop
class Symbol {
  external factory Symbol();
}

@JS('Symbol.iterator')
external Symbol get _iterator;

@anonymous
@JS('Iterator')
@staticInterop
class JsIterator<T> {
  external factory JsIterator();
}

extension PropsIterator<T> on JsIterator<T> {
  Iterable<T> toIterable() sync* {
    final iterator = jsu.getProperty(this, _iterator);
    final callable = (jsu.callMethod(iterator, 'bind', [this]) as Function())();

    while (true) {
      final result = _next(callable);
      if (result.done) {
        break;
      }
      yield result.value;
    }
  }

  IteratorResult<T> _next(dynamic iteratorInstance) {
    return jsu.callMethod(iteratorInstance, 'next', []);
  }

  IteratorResult<T> next() => jsu.callMethod(this, 'next', []);
}

@JS('Symbol.asyncIterator')
external Symbol get _asyncIterator;

@anonymous
@JS()
@staticInterop
class AsyncIterator<T> {
  external factory AsyncIterator();
}

extension PropsAsyncIterator<T> on AsyncIterator<T> {
  Stream<T> toStream() async* {
    final iterator = jsu.getProperty(this, _asyncIterator);
    final callable = jsu.callMethod(iterator, 'call', []);

    while (true) {
      final result = await _next(callable);
      if (result.done) {
        break;
      }
      yield result.value;
    }
  }

  Future<IteratorResult<T>> _next(dynamic iteratorInstance) {
    return jsu.promiseToFuture(
      jsu.callMethod(iteratorInstance, 'next', []),
    );
  }
}

@anonymous
@JS()
@staticInterop
class IteratorResult<T> {
  external factory IteratorResult();
}

extension PropsIteratorResult<T> on IteratorResult<T> {
  bool get done => jsu.getProperty(this, 'done');
  T get value => jsu.getProperty(this, 'value');
}

@JS()
@staticInterop
class JsIterable<E> implements JsIterator<E> {}

extension PropsIterable<E> on JsIterable<E> {
  List<E> toList() => [...toIterable()];
}
