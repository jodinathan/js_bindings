import 'package:js_bindings/js_bindings.dart';

void main() {
  var div = document.createElement('div')
    ..innerHTML = 'Hello world =]';

  document.body!.appendChild(div);
}
