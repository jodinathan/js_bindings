@JS('window')
library window;

import 'dart:convert' as conv;
import 'dart:js_util' as jsu;
import 'dart:collection';

import 'package:js/js.dart';
import 'package:js_bindings/bindings/dom.dart';
import 'package:js_bindings/bindings/html.dart';
import 'package:js_bindings/bindings/console.dart';

part 'manual/number.dart';
part 'manual/map.dart';
part 'manual/reflect.dart';
part 'manual/top.dart';
part 'manual/array.dart';

typedef EventHandlerNonNull<T extends Event> = Function(T event);

extension ListEnums<T extends Enum> on Iterable<T> {
  Iterable<String> get names => map((i) => i.name);

  Iterable<T> byNames(Iterable<String> names) => [
    for (final i in this)
      for (final name in names)
        if (i.name == name)
          i,
  ];
}

extension MoreWindow on Window {
  Console get console => jsu.getProperty(this, 'console');
}
