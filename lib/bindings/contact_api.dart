/// Contact Picker API
///
/// https://w3c.github.io/contact-api/spec/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library contact_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ContactProperty {
  address('address'),
  email('email'),
  icon('icon'),
  name('name'),
  tel('tel');

  final String value;
  static ContactProperty fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ContactProperty> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ContactProperty(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Contact Picker API represents a physical
/// address. Instances of this interface are retrieved from the
/// [address] property of the objects returned by
/// [ContactManager.getProperties()].
///  It may be useful to refer to the Universal Postal Union web
/// site's Addressing S42 standard materials, which provide
/// information about international standards for postal addresses.
@JS()
@staticInterop
class ContactAddress {
  external factory ContactAddress();
}

extension PropsContactAddress on ContactAddress {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get city => js_util.getProperty(this, 'city');
  String get country => js_util.getProperty(this, 'country');
  String get dependentLocality =>
      js_util.getProperty(this, 'dependentLocality');
  String get organization => js_util.getProperty(this, 'organization');
  String get phone => js_util.getProperty(this, 'phone');
  String get postalCode => js_util.getProperty(this, 'postalCode');
  String get recipient => js_util.getProperty(this, 'recipient');
  String get region => js_util.getProperty(this, 'region');
  String get sortingCode => js_util.getProperty(this, 'sortingCode');
  Iterable<String> get addressLine => js_util.getProperty(this, 'addressLine');
}

@anonymous
@JS()
@staticInterop
class ContactInfo {
  external factory ContactInfo(
      {Iterable<ContactAddress>? address,
      Iterable<String>? email,
      Iterable<Blob>? icon,
      Iterable<String>? name,
      Iterable<String>? tel});
}

extension PropsContactInfo on ContactInfo {
  Iterable<ContactAddress> get address => js_util.getProperty(this, 'address');
  set address(Iterable<ContactAddress> newValue) {
    js_util.setProperty(this, 'address', newValue);
  }

  Iterable<String> get email => js_util.getProperty(this, 'email');
  set email(Iterable<String> newValue) {
    js_util.setProperty(this, 'email', newValue);
  }

  Iterable<Blob> get icon => js_util.getProperty(this, 'icon');
  set icon(Iterable<Blob> newValue) {
    js_util.setProperty(this, 'icon', newValue);
  }

  Iterable<String> get name => js_util.getProperty(this, 'name');
  set name(Iterable<String> newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  Iterable<String> get tel => js_util.getProperty(this, 'tel');
  set tel(Iterable<String> newValue) {
    js_util.setProperty(this, 'tel', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ContactsSelectOptions {
  external factory ContactsSelectOptions._({bool? multiple});

  factory ContactsSelectOptions({bool? multiple}) =>
      ContactsSelectOptions._(multiple: multiple ?? false);
}

extension PropsContactsSelectOptions on ContactsSelectOptions {
  bool get multiple => js_util.getProperty(this, 'multiple');
  set multiple(bool newValue) {
    js_util.setProperty(this, 'multiple', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Contact Picker API] allows users to select
/// entries from their contact list and share limited details of the
/// selected entries with a website or application.
///  The is available through the global [navigator.contacts]
/// property.
@JS()
@staticInterop
class ContactsManager {
  external factory ContactsManager();
}

extension PropsContactsManager on ContactsManager {
  Future<Iterable<ContactProperty>> getProperties() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getProperties', []));

  Future<Iterable<ContactInfo>> select(Iterable<ContactProperty> properties,
          [ContactsSelectOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'select', [properties.map((e) => e.value), options]));
}
