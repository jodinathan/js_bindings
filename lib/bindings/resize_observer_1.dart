/// Resize Observer
///
/// https://drafts.csswg.org/resize-observer/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library resize_observer_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ResizeObserverBoxOptions { borderBox, contentBox, devicePixelContentBox }

@anonymous
@JS()
@staticInterop
class ResizeObserverOptions {
  external factory ResizeObserverOptions._({String? box});

  factory ResizeObserverOptions(
          {ResizeObserverBoxOptions? box =
              ResizeObserverBoxOptions.contentBox}) =>
      ResizeObserverOptions._(box: box?.name);
}

extension PropsResizeObserverOptions on ResizeObserverOptions {
  ResizeObserverBoxOptions get box =>
      ResizeObserverBoxOptions.values.byName(js_util.getProperty(this, 'box'));
  set box(ResizeObserverBoxOptions newValue) {
    js_util.setProperty(this, 'box', newValue.name);
  }
}

@JS()
@staticInterop
class ResizeObserver {
  external ResizeObserver(ResizeObserverCallback callback);
}

extension PropsResizeObserver on ResizeObserver {
  Object observe(Element target, [ResizeObserverOptions? options]) =>
      js_util.callMethod(this, 'observe', [target, options]);

  Object unobserve(Element target) =>
      js_util.callMethod(this, 'unobserve', [target]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);
}

@JS()
@staticInterop
class ResizeObserverEntry {
  external ResizeObserverEntry();
}

extension PropsResizeObserverEntry on ResizeObserverEntry {
  Element get target => js_util.getProperty(this, 'target');
  DOMRectReadOnly get contentRect => js_util.getProperty(this, 'contentRect');
  Iterable<ResizeObserverSize> get borderBoxSize =>
      js_util.getProperty(this, 'borderBoxSize');
  Iterable<ResizeObserverSize> get contentBoxSize =>
      js_util.getProperty(this, 'contentBoxSize');
  Iterable<ResizeObserverSize> get devicePixelContentBoxSize =>
      js_util.getProperty(this, 'devicePixelContentBoxSize');
}

@JS()
@staticInterop
class ResizeObserverSize {
  external ResizeObserverSize();
}

extension PropsResizeObserverSize on ResizeObserverSize {
  /* double | NaN */ dynamic get inlineSize =>
      js_util.getProperty(this, 'inlineSize');
  /* double | NaN */ dynamic get blockSize =>
      js_util.getProperty(this, 'blockSize');
}
