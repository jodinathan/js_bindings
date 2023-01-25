/// Text Fragments
///
/// https://wicg.github.io/scroll-to-text-fragment/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library scroll_to_text_fragment;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface is an object representing the text fragments
/// highlighted in the current document.
/// It is accessed via the [Document.fragmentDirective] property.
@experimental
@JS()
@staticInterop
class FragmentDirective {
  external factory FragmentDirective();
}
