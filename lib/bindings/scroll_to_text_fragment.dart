/// Text Fragments
///
/// https://wicg.github.io/scroll-to-text-fragment/
@JS('window')
library scroll_to_text_fragment;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';

@JS()
class FragmentDirective {
  external factory FragmentDirective();
}
