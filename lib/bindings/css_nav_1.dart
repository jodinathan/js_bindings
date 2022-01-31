/// CSS Spatial Navigation Level 1
///
/// https://drafts.csswg.org/css-nav-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_nav_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum SpatialNavigationDirection { up, down, left, right }

enum FocusableAreaSearchMode { visible, all }

@anonymous
@JS()
@staticInterop
class FocusableAreasOption {
  external factory FocusableAreasOption({FocusableAreaSearchMode mode});
}

extension PropsFocusableAreasOption on FocusableAreasOption {
  FocusableAreaSearchMode get mode => js_util.getProperty(this, 'mode');
  set mode(FocusableAreaSearchMode newValue) {
    js_util.setProperty(this, 'mode', newValue);
  }
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
  Iterable<Node> get candidates => js_util.getProperty(this, 'candidates');
  set candidates(Iterable<Node> newValue) {
    js_util.setProperty(this, 'candidates', newValue);
  }

  Node? get container => js_util.getProperty(this, 'container');
  set container(Node? newValue) {
    js_util.setProperty(this, 'container', newValue);
  }
}

@JS()
@staticInterop
class NavigationEvent implements UIEvent {
  external NavigationEvent(String type, [NavigationEventInit? eventInitDict]);
}

extension PropsNavigationEvent on NavigationEvent {
  SpatialNavigationDirection get dir => js_util.getProperty(this, 'dir');
  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
}

@anonymous
@JS()
@staticInterop
class NavigationEventInit implements UIEventInit {
  external factory NavigationEventInit(
      {SpatialNavigationDirection dir, EventTarget? relatedTarget});
}

extension PropsNavigationEventInit on NavigationEventInit {
  SpatialNavigationDirection get dir => js_util.getProperty(this, 'dir');
  set dir(SpatialNavigationDirection newValue) {
    js_util.setProperty(this, 'dir', newValue);
  }

  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
  set relatedTarget(EventTarget? newValue) {
    js_util.setProperty(this, 'relatedTarget', newValue);
  }
}
