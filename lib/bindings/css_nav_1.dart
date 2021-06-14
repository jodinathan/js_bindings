/// CSS Spatial Navigation Level 1
///
/// https://drafts.csswg.org/css-nav-1/
@JS('window')
library css_nav_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'uievents.dart';

@JS()
enum SpatialNavigationDirection { up, down, left, right }

@JS()
enum FocusableAreaSearchMode { visible, all }

@anonymous
@JS()
class FocusableAreasOption {
  external FocusableAreaSearchMode get mode;
  external set mode(FocusableAreaSearchMode newValue);

  external factory FocusableAreasOption({FocusableAreaSearchMode mode});
}

@anonymous
@JS()
class SpatialNavigationSearchOptions {
  external Iterable<Node> get candidates;
  external set candidates(Iterable<Node> newValue);
  external Node? get container;
  external set container(Node? newValue);

  external factory SpatialNavigationSearchOptions(
      {Iterable<Node> candidates, Node? container});
}

@JS()
class NavigationEvent extends UIEvent {
  external factory NavigationEvent(
      {String type, NavigationEventInit? eventInitDict});
  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}

@anonymous
@JS()
class NavigationEventInit extends UIEventInit {
  external SpatialNavigationDirection get dir;
  external set dir(SpatialNavigationDirection newValue);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? newValue);

  external factory NavigationEventInit(
      {SpatialNavigationDirection dir, EventTarget? relatedTarget});
}
