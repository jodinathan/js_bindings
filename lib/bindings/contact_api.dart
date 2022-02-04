/// Contact Picker API
///
/// https://wicg.github.io/contact-api/spec/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library contact_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ContactProperty { address, email, icon, name, tel }

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
class ContactAddress implements PaymentAddress {
  external ContactAddress();
}

@anonymous
@JS()
@staticInterop
class ContactInfo {
  external factory ContactInfo(
      {required Iterable<ContactAddress> address,
      required Iterable<String> email,
      required Iterable<Blob> icon,
      required Iterable<String> name,
      required Iterable<String> tel});
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
  external factory ContactsSelectOptions({bool? multiple = false});
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
  external ContactsManager();
}

extension PropsContactsManager on ContactsManager {
  ///  Returns a [Future] which resolves with an [Array] of [strings]
  /// indicating which contact properties are available.
  ///
  /// var ContactProperties = ContactsManager.getProperties();
  ///
  Future<Iterable<ContactProperty>> getProperties() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getProperties', []));

  ///  Returns a [Future] which, when resolved, presents the user with
  /// a contact picker which allows them to select contact(s) they wish
  /// to share.
  ///
  /// var ContactInfo = ContactsManager.select(properties, options);
  ///
  Future<Iterable<ContactInfo>> select(Iterable<ContactProperty> properties,
          [

          /// Options are as follows:
          ///
          ///
          ///      [multiple]: A Boolean that allows multiple contacts to be
          /// selected.
          ///     The default is [false].
          ///
          ///
          ///
          ContactsSelectOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'select', [properties.names, options]));
}
