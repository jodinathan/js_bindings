import 'dart:html' as html;
import 'package:js_bindings/js_bindings.dart';

void main() {
  print(document);
  html.window.console.log(document);
  print(html.document);

  var div2 = html.document.createElement('div')..innerHtml = 'Ohayo!';

  html.document.body!.append(div2);

  var div = document.createElement('div')
    ..innerHTML = 'Hello world =]';

  document.body!.appendChild(div);
}
