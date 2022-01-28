@JS('window')
library window;

import 'package:js/js.dart';
import 'package:js_bindings/bindings/dom.dart';
import 'dart:js_util' as jsu;

import 'package:js_bindings/bindings/html.dart';

@JS()
external Window get window;

@JS()
external Document get document;

@JS()
external dynamic get undefined;

@JS('NaN')
external num get nan;

@JS('Number.isNaN')
external bool isNaN(n);

@JS('Infinity')
external dynamic get infinity;

@JS()
class Promise<T> {
  external K then<K>(K Function(T) fn);
}

extension BindPromise<T> on Promise<T> {
  Future<T> get future => jsu.promiseToFuture(this);
}
