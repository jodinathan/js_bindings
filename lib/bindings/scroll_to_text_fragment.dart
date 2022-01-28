/// Text Fragments
///
/// https://wicg.github.io/scroll-to-text-fragment/
@JS('window')
@staticInterop
library scroll_to_text_fragment;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

@JS()
@staticInterop
class FragmentDirective {
  external factory FragmentDirective();
}
