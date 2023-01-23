/// CSS Font Loading Module Level 3
///
/// https://drafts.csswg.org/css-font-loading-3/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_font_loading_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class FontFaceDescriptors {
  external factory FontFaceDescriptors(
      {String? style = 'normal',
      String? weight = 'normal',
      String? stretch = 'normal',
      String? unicodeRange = 'U+0-10FFFF',
      String? variant = 'normal',
      String? featureSettings = 'normal',
      String? variationSettings = 'normal',
      String? display = 'auto',
      String? ascentOverride = 'normal',
      String? descentOverride = 'normal',
      String? lineGapOverride = 'normal'});
}

extension PropsFontFaceDescriptors on FontFaceDescriptors {
  String get style => js_util.getProperty(this, 'style');
  set style(String newValue) {
    js_util.setProperty(this, 'style', newValue);
  }

  String get weight => js_util.getProperty(this, 'weight');
  set weight(String newValue) {
    js_util.setProperty(this, 'weight', newValue);
  }

  String get stretch => js_util.getProperty(this, 'stretch');
  set stretch(String newValue) {
    js_util.setProperty(this, 'stretch', newValue);
  }

  String get unicodeRange => js_util.getProperty(this, 'unicodeRange');
  set unicodeRange(String newValue) {
    js_util.setProperty(this, 'unicodeRange', newValue);
  }

  String get variant => js_util.getProperty(this, 'variant');
  set variant(String newValue) {
    js_util.setProperty(this, 'variant', newValue);
  }

  String get featureSettings => js_util.getProperty(this, 'featureSettings');
  set featureSettings(String newValue) {
    js_util.setProperty(this, 'featureSettings', newValue);
  }

  String get variationSettings =>
      js_util.getProperty(this, 'variationSettings');
  set variationSettings(String newValue) {
    js_util.setProperty(this, 'variationSettings', newValue);
  }

  String get display => js_util.getProperty(this, 'display');
  set display(String newValue) {
    js_util.setProperty(this, 'display', newValue);
  }

  String get ascentOverride => js_util.getProperty(this, 'ascentOverride');
  set ascentOverride(String newValue) {
    js_util.setProperty(this, 'ascentOverride', newValue);
  }

  String get descentOverride => js_util.getProperty(this, 'descentOverride');
  set descentOverride(String newValue) {
    js_util.setProperty(this, 'descentOverride', newValue);
  }

  String get lineGapOverride => js_util.getProperty(this, 'lineGapOverride');
  set lineGapOverride(String newValue) {
    js_util.setProperty(this, 'lineGapOverride', newValue);
  }
}

enum FontFaceLoadStatus {
  unloaded('unloaded'),
  loading('loading'),
  loaded('loaded'),
  error('error');

  final String value;
  static FontFaceLoadStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FontFaceLoadStatus> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FontFaceLoadStatus(this.value);
}

///  The interface of the CSS Font Loading API represents a single
/// usable font face.
///
///   This interface defines the source of a font face, either a URL
/// to an external resource or a buffer, and font properties such as
/// [style], [weight], and so on.
///   For URL font sources it allows authors to trigger when the
/// remote font is fetched and loaded, and to track loading status.
///
@JS()
@staticInterop
class FontFace {
  external factory FontFace(String family, dynamic source,
      [FontFaceDescriptors? descriptors]);
}

extension PropsFontFace on FontFace {
  String get family => js_util.getProperty(this, 'family');
  set family(String newValue) {
    js_util.setProperty(this, 'family', newValue);
  }

  String get style => js_util.getProperty(this, 'style');
  set style(String newValue) {
    js_util.setProperty(this, 'style', newValue);
  }

  String get weight => js_util.getProperty(this, 'weight');
  set weight(String newValue) {
    js_util.setProperty(this, 'weight', newValue);
  }

  String get stretch => js_util.getProperty(this, 'stretch');
  set stretch(String newValue) {
    js_util.setProperty(this, 'stretch', newValue);
  }

  String get unicodeRange => js_util.getProperty(this, 'unicodeRange');
  set unicodeRange(String newValue) {
    js_util.setProperty(this, 'unicodeRange', newValue);
  }

  String get variant => js_util.getProperty(this, 'variant');
  set variant(String newValue) {
    js_util.setProperty(this, 'variant', newValue);
  }

  String get featureSettings => js_util.getProperty(this, 'featureSettings');
  set featureSettings(String newValue) {
    js_util.setProperty(this, 'featureSettings', newValue);
  }

  String get variationSettings =>
      js_util.getProperty(this, 'variationSettings');
  set variationSettings(String newValue) {
    js_util.setProperty(this, 'variationSettings', newValue);
  }

  String get display => js_util.getProperty(this, 'display');
  set display(String newValue) {
    js_util.setProperty(this, 'display', newValue);
  }

  String get ascentOverride => js_util.getProperty(this, 'ascentOverride');
  set ascentOverride(String newValue) {
    js_util.setProperty(this, 'ascentOverride', newValue);
  }

  String get descentOverride => js_util.getProperty(this, 'descentOverride');
  set descentOverride(String newValue) {
    js_util.setProperty(this, 'descentOverride', newValue);
  }

  String get lineGapOverride => js_util.getProperty(this, 'lineGapOverride');
  set lineGapOverride(String newValue) {
    js_util.setProperty(this, 'lineGapOverride', newValue);
  }

  FontFaceLoadStatus get status =>
      FontFaceLoadStatus.fromValue(js_util.getProperty(this, 'status'));
  Future<FontFace> load() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', []));

  Future<FontFace> get loaded =>
      js_util.promiseToFuture(js_util.getProperty(this, 'loaded'));
  FontFaceFeatures get features => js_util.getProperty(this, 'features');
  FontFaceVariations get variations => js_util.getProperty(this, 'variations');
  FontFacePalettes get palettes => js_util.getProperty(this, 'palettes');
}

@JS()
@staticInterop
class FontFaceFeatures {
  external factory FontFaceFeatures();
}

@JS()
@staticInterop
class FontFaceVariationAxis {
  external factory FontFaceVariationAxis();
}

extension PropsFontFaceVariationAxis on FontFaceVariationAxis {
  String get name => js_util.getProperty(this, 'name');
  String get axisTag => js_util.getProperty(this, 'axisTag');
  double get minimumValue => js_util.getProperty(this, 'minimumValue');
  double get maximumValue => js_util.getProperty(this, 'maximumValue');
  double get defaultValue => js_util.getProperty(this, 'defaultValue');
}

@JS()
@staticInterop
class FontFaceVariations extends JsArray<FontFaceVariationAxis> {
  external factory FontFaceVariations();
}

@JS()
@staticInterop
class FontFacePalette extends JsArray<String> {
  external factory FontFacePalette();
}

extension PropsFontFacePalette on FontFacePalette {
  int get length => js_util.getProperty(this, 'length');
  bool get usableWithLightBackground =>
      js_util.getProperty(this, 'usableWithLightBackground');
  bool get usableWithDarkBackground =>
      js_util.getProperty(this, 'usableWithDarkBackground');
}

@JS()
@staticInterop
class FontFacePalettes extends JsArray<FontFacePalette> {
  external factory FontFacePalettes();
}

extension PropsFontFacePalettes on FontFacePalettes {
  int get length => js_util.getProperty(this, 'length');
}

@anonymous
@JS()
@staticInterop
class FontFaceSetLoadEventInit implements EventInit {
  external factory FontFaceSetLoadEventInit(
      {Iterable<FontFace>? fontfaces = const []});
}

extension PropsFontFaceSetLoadEventInit on FontFaceSetLoadEventInit {
  Iterable<FontFace> get fontfaces => js_util.getProperty(this, 'fontfaces');
  set fontfaces(Iterable<FontFace> newValue) {
    js_util.setProperty(this, 'fontfaces', newValue);
  }
}

///  The interface of the CSS Font Loading API represents events
/// fired at a [FontFaceSet] after it starts loading font faces.
///  Events are fired when font loading starts ([loading]), loading
/// completes ([loadingdone]) or there is an error loading one of the
/// fonts ([loadingerror]).
///
///
///
///    Event
///
///
///
///
///
///
///
///    FontFaceSetLoadEvent
///
///
@JS()
@staticInterop
class FontFaceSetLoadEvent implements Event {
  external factory FontFaceSetLoadEvent(String type,
      [FontFaceSetLoadEventInit? eventInitDict]);
}

extension PropsFontFaceSetLoadEvent on FontFaceSetLoadEvent {
  Iterable<FontFace> get fontfaces => js_util.getProperty(this, 'fontfaces');
}

enum FontFaceSetLoadStatus {
  loading('loading'),
  loaded('loaded');

  final String value;
  static FontFaceSetLoadStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FontFaceSetLoadStatus> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FontFaceSetLoadStatus(this.value);
}

///  The interface of the CSS Font Loading API manages the loading of
/// font-faces and querying of their download status.
///  This property is available as [Document.fonts], or [self.fonts]
/// in web workers.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    FontFaceSet
///
///
@JS()
@staticInterop
class FontFaceSet implements EventTarget {
  external factory FontFaceSet([Iterable<FontFace>? initialFaces]);
}

extension PropsFontFaceSet on FontFaceSet {
  FontFaceSet add(FontFace font) => js_util.callMethod(this, 'add', [font]);

  bool delete(FontFace font) => js_util.callMethod(this, 'delete', [font]);

  void clear() => js_util.callMethod(this, 'clear', []);

  EventHandlerNonNull? get onloading => js_util.getProperty(this, 'onloading');
  set onloading(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloading', newValue);
  }

  EventHandlerNonNull? get onloadingdone =>
      js_util.getProperty(this, 'onloadingdone');
  set onloadingdone(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadingdone', newValue);
  }

  EventHandlerNonNull? get onloadingerror =>
      js_util.getProperty(this, 'onloadingerror');
  set onloadingerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadingerror', newValue);
  }

  Future<Iterable<FontFace>> load(String font, [String? text = ' ']) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', [font, text]));

  bool check(String font, [String? text = ' ']) =>
      js_util.callMethod(this, 'check', [font, text]);

  Future<FontFaceSet> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  FontFaceSetLoadStatus get status =>
      FontFaceSetLoadStatus.fromValue(js_util.getProperty(this, 'status'));
}

@JS()
@staticInterop
class FontFaceSource {
  external factory FontFaceSource();
}

extension PropsFontFaceSource on FontFaceSource {
  FontFaceSet get fonts => js_util.getProperty(this, 'fonts');
}
