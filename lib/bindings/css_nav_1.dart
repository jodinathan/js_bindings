/// CSS Spatial Navigation Level 1
///
/// https://drafts.csswg.org/css-nav-1/
@JS('window')
@staticInterop
library css_nav_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
uievents */

enum SpatialNavigationDirection { up, down, left, right }

enum FocusableAreaSearchMode { visible, all }

@anonymous
@JS()
@staticInterop
class FocusableAreasOption {
  external factory FocusableAreasOption({FocusableAreaSearchMode mode});
}

extension PropsFocusableAreasOption on FocusableAreasOption {
  external FocusableAreaSearchMode get mode;
  external set mode(FocusableAreaSearchMode newValue);
}

@anonymous
@JS()
@staticInterop
class SpatialNavigationSearchOptions {
  external factory SpatialNavigationSearchOptions(
      {Iterable<Node> candidates, Node? container});
}

extension PropsSpatialNavigationSearchOptions
    on SpatialNavigationSearchOptions {
  external Iterable<Node> get candidates;
  external set candidates(Iterable<Node> newValue);
  external Node? get container;
  external set container(Node? newValue);
}

@JS()
@staticInterop
class NavigationEvent implements UIEvent {
  external factory NavigationEvent(String type,
      [NavigationEventInit? eventInitDict]);
}

extension PropsNavigationEvent on NavigationEvent {
  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}

@anonymous
@JS()
@staticInterop
class NavigationEventInit implements UIEventInit {
  external factory NavigationEventInit(
      {SpatialNavigationDirection dir, EventTarget? relatedTarget});
}

extension PropsNavigationEventInit on NavigationEventInit {
  external SpatialNavigationDirection get dir;
  external set dir(SpatialNavigationDirection newValue);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? newValue);
}
