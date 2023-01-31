/// Permissions
///
/// https://w3c.github.io/permissions/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library permissions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The Permissions interface of the Permissions API provides the
/// core Permission API functionality, such as methods for querying
/// and revoking permissions
@experimental
@JS()
@staticInterop
class Permissions {
  external factory Permissions();
}

extension PropsPermissions on Permissions {
  Future<PermissionStatus> query(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'query', [permissionDesc]));

  Future<PermissionStatus> request(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'request', [permissionDesc]));

  Future<PermissionStatus> revoke(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'revoke', [permissionDesc]));
}

@anonymous
@JS()
@staticInterop
class PermissionDescriptor {
  external factory PermissionDescriptor({required String name});
}

extension PropsPermissionDescriptor on PermissionDescriptor {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Permissions API provides the state of an
/// object and an event handler for monitoring changes to said state.
///
///
///
///    EventTarget
///
///
///
///
///
///    PermissionStatus
///
///
@experimental
@JS()
@staticInterop
class PermissionStatus implements EventTarget {
  external factory PermissionStatus();
}

extension PropsPermissionStatus on PermissionStatus {
  PermissionState get state =>
      PermissionState.fromValue(js_util.getProperty(this, 'state'));
  String get name => js_util.getProperty(this, 'name');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum PermissionState {
  granted('granted'),
  denied('denied'),
  prompt('prompt');

  final String value;
  static PermissionState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PermissionState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PermissionState(this.value);
}

@anonymous
@JS()
@staticInterop
class PermissionSetParameters {
  external factory PermissionSetParameters._(
      {required PermissionDescriptor descriptor,
      required String state,
      bool? oneRealm = false});

  factory PermissionSetParameters(
          {required PermissionDescriptor descriptor,
          required PermissionState state,
          bool? oneRealm = false}) =>
      PermissionSetParameters._(
          descriptor: descriptor, state: state.value, oneRealm: oneRealm);
}

extension PropsPermissionSetParameters on PermissionSetParameters {
  PermissionDescriptor get descriptor =>
      js_util.getProperty(this, 'descriptor');
  set descriptor(PermissionDescriptor newValue) {
    js_util.setProperty(this, 'descriptor', newValue);
  }

  PermissionState get state =>
      PermissionState.fromValue(js_util.getProperty(this, 'state'));
  set state(PermissionState newValue) {
    js_util.setProperty(this, 'state', newValue.value);
  }

  bool get oneRealm => js_util.getProperty(this, 'oneRealm');
  set oneRealm(bool newValue) {
    js_util.setProperty(this, 'oneRealm', newValue);
  }
}
