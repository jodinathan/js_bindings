/// URLPattern API
///
/// https://wicg.github.io/urlpattern/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library urlpattern;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///
///  The interface matches URLs or parts of URLs against a pattern.
///   The pattern can contain capturing groups that extract parts of
/// the matched URL.
///   More information about the syntax of patterns can be found on
/// the API overview
///  page: URL Pattern API
///
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
@staticInterop
class URLPattern {
  external factory URLPattern._([dynamic input, String? baseURL]);

  factory URLPattern([dynamic input, String? baseURL]) =>
      URLPattern._(input ?? undefined, baseURL ?? undefined);
}

extension PropsURLPattern on URLPattern {
  bool test([dynamic input, String? baseURL]) =>
      js_util.callMethod(this, 'test', [input, baseURL]);

  URLPatternResult? exec([dynamic input, String? baseURL]) =>
      js_util.callMethod(this, 'exec', [input, baseURL]);

  String get protocol => js_util.getProperty(this, 'protocol');
  String get username => js_util.getProperty(this, 'username');
  String get password => js_util.getProperty(this, 'password');
  String get hostname => js_util.getProperty(this, 'hostname');
  String get port => js_util.getProperty(this, 'port');
  String get pathname => js_util.getProperty(this, 'pathname');
  String get search => js_util.getProperty(this, 'search');
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
}

@anonymous
@JS()
@staticInterop
class URLPatternInit {
  external factory URLPatternInit(
      {String? protocol,
      String? username,
      String? password,
      String? hostname,
      String? port,
      String? pathname,
      String? search,
      String? hash,
      String? baseURL});
}

extension PropsURLPatternInit on URLPatternInit {
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }

  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  String get baseURL => js_util.getProperty(this, 'baseURL');
  set baseURL(String newValue) {
    js_util.setProperty(this, 'baseURL', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class URLPatternResult {
  external factory URLPatternResult(
      {Iterable<dynamic>? inputs,
      URLPatternComponentResult? protocol,
      URLPatternComponentResult? username,
      URLPatternComponentResult? password,
      URLPatternComponentResult? hostname,
      URLPatternComponentResult? port,
      URLPatternComponentResult? pathname,
      URLPatternComponentResult? search,
      URLPatternComponentResult? hash});
}

extension PropsURLPatternResult on URLPatternResult {
  Iterable<dynamic> get inputs => js_util.getProperty(this, 'inputs');
  set inputs(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'inputs', newValue);
  }

  URLPatternComponentResult get protocol =>
      js_util.getProperty(this, 'protocol');
  set protocol(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  URLPatternComponentResult get username =>
      js_util.getProperty(this, 'username');
  set username(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  URLPatternComponentResult get password =>
      js_util.getProperty(this, 'password');
  set password(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'password', newValue);
  }

  URLPatternComponentResult get hostname =>
      js_util.getProperty(this, 'hostname');
  set hostname(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  URLPatternComponentResult get port => js_util.getProperty(this, 'port');
  set port(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  URLPatternComponentResult get pathname =>
      js_util.getProperty(this, 'pathname');
  set pathname(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  URLPatternComponentResult get search => js_util.getProperty(this, 'search');
  set search(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  @JS('hash')
  @staticInterop
  URLPatternComponentResult get mHash => js_util.getProperty(this, 'hash');
  set mHash(URLPatternComponentResult newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class URLPatternComponentResult {
  external factory URLPatternComponentResult({String? input, dynamic groups});
}

extension PropsURLPatternComponentResult on URLPatternComponentResult {
  String get input => js_util.getProperty(this, 'input');
  set input(String newValue) {
    js_util.setProperty(this, 'input', newValue);
  }

  dynamic get groups => js_util.getProperty(this, 'groups');
  set groups(dynamic newValue) {
    js_util.setProperty(this, 'groups', newValue);
  }
}
