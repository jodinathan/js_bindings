/// Contact Picker API
///
/// https://wicg.github.io/contact-api/spec/
@JS('window')
@staticInterop
library contact_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
payment_request
file_a_p_i */

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
      {Iterable<ContactAddress> address,
      Iterable<String> email,
      Iterable<Blob> icon,
      Iterable<String> name,
      Iterable<String> tel});
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
  external factory ContactsSelectOptions({bool multiple = false});
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
  ///  Returns a [Promise] which resolves with an [Array] of [strings]
  /// indicating which contact properties are available.
  ///
  /// var ContactProperties = ContactsManager.getProperties();
  ///
  Iterable<Promise<ContactProperty>> getProperties() =>
      js_util.callMethod(this, 'getProperties', []);

  ///  Returns a [Promise] which, when resolved, presents the user with
  /// a contact picker which allows them to select contact(s) they wish
  /// to share.
  ///
  /// var ContactInfo = ContactsManager.select(properties, options);
  ///
  Iterable<Promise<ContactInfo>> select(Iterable<ContactProperty> properties,
          [ContactsSelectOptions? options]) =>
      js_util.callMethod(this, 'select', [properties, options]);
}
