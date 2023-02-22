@TestOn('browser')
library primitives_testing;

import 'package:test/test.dart';
import 'package:js_bindings/js_bindings.dart';

void main() {
  final t1 = document.getElementById('t1');
  final t2 = document.getElementById('t2');
  final byClass = document.querySelectorAll('.foo');

  test('Query selector', () {
    expect(t1 != null, true);
    expect(t2 != null, true);
    expect(byClass.length, 1);
    expect(byClass.toList().first, t1);
    expect(document.querySelector('#t1'), t1);
  });

  test('DOM update', () {
    expect(t1!.textContent, '1');

    t1.innerHTML = 'foo';

    expect(t1.textContent, 'foo');
  });

  test('Anonymous ctor', () {
    final response = ResponseInit();

    expect(response.status, 200);
  });
}
