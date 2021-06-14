/// CSS Font Loading Module Level 3
///
/// https://drafts.csswg.org/css-font-loading/
@JS('window')
library css_font_loading_3;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@anonymous
@JS()
class FontFaceDescriptors {
  external String get style;
  external set style(String newValue);
  external String get weight;
  external set weight(String newValue);
  external String get stretch;
  external set stretch(String newValue);
  external String get unicodeRange;
  external set unicodeRange(String newValue);
  external String get variant;
  external set variant(String newValue);
  external String get featureSettings;
  external set featureSettings(String newValue);
  external String get variationSettings;
  external set variationSettings(String newValue);
  external String get display;
  external set display(String newValue);
  external String get ascentOverride;
  external set ascentOverride(String newValue);
  external String get descentOverride;
  external set descentOverride(String newValue);
  external String get lineGapOverride;
  external set lineGapOverride(String newValue);

  external factory FontFaceDescriptors(
      {String style = 'normal',
      String weight = 'normal',
      String stretch = 'normal',
      String unicodeRange = 'U+0-10FFFF',
      String variant = 'normal',
      String featureSettings = 'normal',
      String variationSettings = 'normal',
      String display = 'auto',
      String ascentOverride = 'normal',
      String descentOverride = 'normal',
      String lineGapOverride = 'normal'});
}

@JS()
enum FontFaceLoadStatus { unloaded, loading, loaded, error }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [FontFace] interface represents a single usable font face.
/// It allows control of the source of the font face, being a URL to
/// an external resource, or a buffer; it also allows control of when
/// the font face is loaded and its current status.
@JS()
class FontFace {
  external factory FontFace(
      {String family, dynamic source, FontFaceDescriptors? descriptors});

  ///  A [CSSOMString] that retrieves or sets the family of the font.
  /// It is equivalent to the [font-family] descriptor.
  external String get family;
  external set family(String newValue);

  ///  A [CSSOMString] that retrieves or sets the style of the font. It
  /// is equivalent to the [font-style] descriptor.
  external String get style;
  external set style(String newValue);

  ///  A [CSSOMString] that contains the weight of the font. It is
  /// equivalent to the [font-weight] descriptor.
  external String get weight;
  external set weight(String newValue);

  ///  A [CSSOMString] that retrieves or sets how the font stretches.
  /// It is equivalent to the [font-stretch] descriptor.
  external String get stretch;
  external set stretch(String newValue);

  ///  A [CSSOMString] that retrieves or sets the range of unicode
  /// codepoints encompassing the font. It is equivalent to the
  /// [unicode-range] descriptor.
  external String get unicodeRange;
  external set unicodeRange(String newValue);

  ///  A [CSSOMString] that retrieves or sets the variant of the font.
  /// It is equivalent to the [font-variant] descriptor.
  external String get variant;
  external set variant(String newValue);

  ///  A [CSSOMString] that retrieves or sets infrequently used font
  /// features that are not available from a font's variant properties.
  /// It is equivalent to the [font-feature-settings] descriptor.
  external String get featureSettings;
  external set featureSettings(String newValue);
  external String get variationSettings;
  external set variationSettings(String newValue);

  ///  A [CSSOMString] that determines how a font face is displayed
  /// based on whether and when it is downloaded and ready to use.
  external String get display;
  external set display(String newValue);
  external String get ascentOverride;
  external set ascentOverride(String newValue);
  external String get descentOverride;
  external set descentOverride(String newValue);
  external String get lineGapOverride;
  external set lineGapOverride(String newValue);

  ///  Returns an enumerated value indicating the status of the font,
  /// one of ["unloaded"], ["loading"], ["loaded"], or ["error"].
  external FontFaceLoadStatus get status;

  ///  Loads a font based on current object's constructor-passed
  /// requirements, including a location or source buffer, and returns
  /// a [Promise] that resolves with the current FontFace object.
  /// var promise = FontFace.load();
  external Promise<FontFace> load();

  ///  Returns a [Promise] that resolves with the current [FontFace]
  /// object when the font specified in the object's constructor is
  /// done loading or rejects with a [SyntaxError].
  external Promise<FontFace> get loaded;
}

@anonymous
@JS()
class FontFaceSetLoadEventInit extends EventInit {
  external Iterable<FontFace> get fontfaces;
  external set fontfaces(Iterable<FontFace> newValue);

  external factory FontFaceSetLoadEventInit(
      {Iterable<FontFace> fontfaces = const []});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Font Loading API is fired whenever a
/// [FontFaceSet] loads.
@experimental
@JS()
class FontFaceSetLoadEvent extends Event {
  external factory FontFaceSetLoadEvent(
      {String type, FontFaceSetLoadEventInit? eventInitDict});

  ///  Returns an array of [FontFace] instances each of which
  /// represents a single usable font.
  external Iterable<FontFace> get fontfaces;
}

@JS()
enum FontFaceSetLoadStatus { loading, loaded }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Font Loading API manages the loading of
/// font-faces and querying of their download status.It is available
/// as document.fonts.
@experimental
@JS()
class FontFaceSet extends EventTarget {
  external factory FontFaceSet({Iterable<FontFace>? initialFaces});

  /// Adds a font to the font set.
  external FontFaceSet add(FontFace font);

  ///  Removes a manually-added font from the font set. CSS-connected
  /// fonts are unaffected.
  external bool delete(FontFace font);

  ///  Removes all manually-added fonts from the font set.
  /// CSS-connected fonts are unaffected.
  external Object clear();
  external EventHandlerNonNull? get onloading;
  external set onloading(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadingdone;
  external set onloadingdone(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadingerror;
  external set onloadingerror(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] which resolves to a list of font-faces for a
  /// requested font.
  /// result = aFontFaceSet.load(font);
  ///
  /// result = aFontFaceSet.load(font, text);
  ///
  external Iterable<Promise<FontFace>> load(String font, [String? text = ' ']);

  ///  A [Boolean] that indicates whether a font is loaded, but doesn't
  /// initiate a load when it isn't.
  /// bool = aFontFaceSet.check(font);
  /// bool = aFontFaceSet.check(font, text);
  ///
  external bool check(String font, [String? text = ' ']);

  ///  [Promise] which resolves once font loading and layout operations
  /// have completed.
  external Promise<FontFaceSet> get ready;

  ///  Indicates the font-face's loading status. It will be one of
  /// ['loading'] or ['loaded'].
  external FontFaceSetLoadStatus get status;
}

@JS()
mixin FontFaceSource {
  external FontFaceSet get fonts;
}
