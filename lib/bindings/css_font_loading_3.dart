/// CSS Font Loading Module Level 3
///
/// https://drafts.csswg.org/css-font-loading/
@JS('window')
@staticInterop
library css_font_loading_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

@anonymous
@JS()
@staticInterop
class FontFaceDescriptors {
  external factory FontFaceDescriptors(
      {String style = 'normal',
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

enum FontFaceLoadStatus { unloaded, loading, loaded, error }

///  The interface represents a single usable font face. It allows
/// control of the source of the font face, being a URL to an
/// external resource, or a buffer; it also allows control of when
/// the font face is loaded and its current status.
@JS()
@staticInterop
class FontFace {
  external FontFace(String family, dynamic source,
      [FontFaceDescriptors? descriptors]);
}

extension PropsFontFace on FontFace {
  ///  A [String] that retrieves or sets the family of the font. It is
  /// equivalent to the [font-family] descriptor.
  ///
  String get family => js_util.getProperty(this, 'family');
  set family(String newValue) {
    js_util.setProperty(this, 'family', newValue);
  }

  ///  A [String] that retrieves or sets the style of the font. It is
  /// equivalent to the [font-style] descriptor.
  ///
  String get style => js_util.getProperty(this, 'style');
  set style(String newValue) {
    js_util.setProperty(this, 'style', newValue);
  }

  ///  A [String] that contains the weight of the font. It is
  /// equivalent to the [font-weight] descriptor.
  ///
  String get weight => js_util.getProperty(this, 'weight');
  set weight(String newValue) {
    js_util.setProperty(this, 'weight', newValue);
  }

  ///  A [String] that retrieves or sets how the font stretches. It is
  /// equivalent to the [font-stretch] descriptor.
  ///
  String get stretch => js_util.getProperty(this, 'stretch');
  set stretch(String newValue) {
    js_util.setProperty(this, 'stretch', newValue);
  }

  ///  A [String] that retrieves or sets the range of unicode
  /// codepoints encompassing the font. It is equivalent to the
  /// [unicode-range] descriptor.
  ///
  String get unicodeRange => js_util.getProperty(this, 'unicodeRange');
  set unicodeRange(String newValue) {
    js_util.setProperty(this, 'unicodeRange', newValue);
  }

  ///  A [String] that retrieves or sets the variant of the font. It is
  /// equivalent to the [font-variant] descriptor.
  ///
  String get variant => js_util.getProperty(this, 'variant');
  set variant(String newValue) {
    js_util.setProperty(this, 'variant', newValue);
  }

  ///  A [String] that retrieves or sets infrequently used font
  /// features that are not available from a font's variant properties.
  /// It is equivalent to the [font-feature-settings] descriptor.
  ///
  String get featureSettings => js_util.getProperty(this, 'featureSettings');
  set featureSettings(String newValue) {
    js_util.setProperty(this, 'featureSettings', newValue);
  }

  ///  A [String] that retrieves or sets the variation settings of the
  /// font. It is equivalent to the [font-variation-settings]
  /// descriptor.
  ///
  String get variationSettings =>
      js_util.getProperty(this, 'variationSettings');
  set variationSettings(String newValue) {
    js_util.setProperty(this, 'variationSettings', newValue);
  }

  ///  A [String] that determines how a font face is displayed based on
  /// whether and when it is downloaded and ready to use.
  ///
  String get display => js_util.getProperty(this, 'display');
  set display(String newValue) {
    js_util.setProperty(this, 'display', newValue);
  }

  ///  A [String] that retrieves or sets the ascent metric of the font.
  /// It is equivalent to the [ascent-override] descriptor.
  ///
  String get ascentOverride => js_util.getProperty(this, 'ascentOverride');
  set ascentOverride(String newValue) {
    js_util.setProperty(this, 'ascentOverride', newValue);
  }

  ///  A [String] that retrieves or sets the descent metric of the
  /// font. It is equivalent to the [descent-override] descriptor.
  ///
  String get descentOverride => js_util.getProperty(this, 'descentOverride');
  set descentOverride(String newValue) {
    js_util.setProperty(this, 'descentOverride', newValue);
  }

  ///  A [String] that retrieves or sets the line-gap metric of the
  /// font. It is equivalent to the [line-gap-override] descriptor.
  ///
  String get lineGapOverride => js_util.getProperty(this, 'lineGapOverride');
  set lineGapOverride(String newValue) {
    js_util.setProperty(this, 'lineGapOverride', newValue);
  }

  ///  Returns an enumerated value indicating the status of the font,
  /// one of ["unloaded"], ["loading"], ["loaded"], or ["error"].
  ///
  FontFaceLoadStatus get status => js_util.getProperty(this, 'status');
  Future<FontFace> load() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', []));

  ///  Returns a [Future] that resolves with the current [FontFace]
  /// object when the font specified in the object's constructor is
  /// done loading or rejects with a [SyntaxError].
  ///
  Future<FontFace> get loaded =>
      js_util.promiseToFuture(js_util.getProperty(this, 'loaded'));
}

@anonymous
@JS()
@staticInterop
class FontFaceSetLoadEventInit implements EventInit {
  external factory FontFaceSetLoadEventInit(
      {Iterable<FontFace> fontfaces = const []});
}

extension PropsFontFaceSetLoadEventInit on FontFaceSetLoadEventInit {
  Iterable<FontFace> get fontfaces => js_util.getProperty(this, 'fontfaces');
  set fontfaces(Iterable<FontFace> newValue) {
    js_util.setProperty(this, 'fontfaces', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Font Loading API is fired whenever a
/// [FontFaceSet] loads.
@experimental
@JS()
@staticInterop
class FontFaceSetLoadEvent implements Event {
  external FontFaceSetLoadEvent(String type,
      [FontFaceSetLoadEventInit? eventInitDict]);
}

extension PropsFontFaceSetLoadEvent on FontFaceSetLoadEvent {
  ///  Returns an array of [FontFace] instances each of which
  /// represents a single usable font.
  ///
  Iterable<FontFace> get fontfaces => js_util.getProperty(this, 'fontfaces');
}

enum FontFaceSetLoadStatus { loading, loaded }

///  The interface of the CSS Font Loading API manages the loading of
/// font-faces and querying of their download status. It is available
/// as [Document.fonts].
@JS()
@staticInterop
class FontFaceSet implements EventTarget {
  external FontFaceSet([Iterable<FontFace>? initialFaces]);
}

extension PropsFontFaceSet on FontFaceSet {
  /// Adds a font to the font set.
  ///
  /// FontFaceSet.add(font)
  ///
  FontFaceSet add(

          /// A [FontFace] to be added to the set.
          ///
          FontFace font) =>
      js_util.callMethod(this, 'add', [font]);

  ///  Removes a manually-added font from the font set. CSS-connected
  /// fonts are unaffected.
  ///
  /// FontFaceSet.delete(font)
  ///
  bool delete(

          /// A [FontFace] to be removed from the set.
          ///
          FontFace font) =>
      js_util.callMethod(this, 'delete', [font]);

  ///  Removes all manually-added fonts from the font set.
  /// CSS-connected fonts are unaffected.
  ///
  /// FontFaceSet.clear()
  ///
  Object clear() => js_util.callMethod(this, 'clear', []);

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

  ///  Returns a [Future] which resolves to a list of font-faces for a
  /// requested font.
  ///
  /// aFontFaceSet.load(font);
  /// aFontFaceSet.load(font, text);
  ///
  Future<Iterable<FontFace>> load(

          ///  a font specification using the CSS value syntax, e.g. "italic
          /// bold 16px Roboto"
          ///
          String font,
          [

          ///  limit the font faces to those whose Unicode range contains at
          /// least one of the characters in text. This does not check for
          /// individual glyph coverage.
          ///
          String? text = ' ']) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', [font, text]));

  ///  A boolean value that indicates whether a font is loaded, but
  /// doesn't initiate a load when it isn't.
  ///
  /// aFontFaceSet.check(font);
  /// aFontFaceSet.check(font, text);
  ///
  bool check(

          ///  a font specification using the CSS value syntax, for example
          /// ["italic bold 16px Roboto"]
          ///
          String font,
          [

          ///  limit the font faces to those whose Unicode range contains at
          /// least one of the characters in text. This does not check for
          /// individual glyph coverage.
          ///
          String? text = ' ']) =>
      js_util.callMethod(this, 'check', [font, text]);

  ///  [Future] which resolves once font loading and layout operations
  /// have completed.
  ///
  Future<FontFaceSet> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));

  ///  Indicates the font-face's loading status. It will be one of
  /// ['loading'] or ['loaded'].
  ///
  FontFaceSetLoadStatus get status => js_util.getProperty(this, 'status');
}

@JS()
@staticInterop
class FontFaceSource {
  external FontFaceSource();
}

extension PropsFontFaceSource on FontFaceSource {
  FontFaceSet get fonts => js_util.getProperty(this, 'fonts');
}
