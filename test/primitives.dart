@TestOn('browser')
library primitives_testing;

import 'package:test/test.dart';
import 'package:js/js.dart';
import 'package:js_bindings/js_bindings.dart';

@JS()
external JsArray<String> testArray;

@JS()
external JsArray<String> testArray2;

void main() {
  test('Global arrays', () {
    expect(testArray.length, 2);
    expect(testArray[1], 'bar');
    expect(testArray2[2], 'xyz');
    // cant test functions that return JsArray for now.
    // see https://github.com/dart-lang/sdk/issues/51493
    //expect(testArray.slice(0, 1)[0], 'foo');
  });

  test('Map features', () {
    final map = JsMap([
      [1, 'one'],
      [2, 'two'],
      [3, 'three'],
    ]);

    expect(map.keys.toList().length, 3);
    expect(map[1], 'one');
  });
}
