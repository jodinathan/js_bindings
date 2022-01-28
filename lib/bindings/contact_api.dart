/// Contact Picker API
///
/// https://wicg.github.io/contact-api/spec/
@JS('window')
@staticInterop
library contact_api;

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
  external factory ContactAddress();
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
  external Iterable<ContactAddress> get address;
  external set address(Iterable<ContactAddress> newValue);
  external Iterable<String> get email;
  external set email(Iterable<String> newValue);
  external Iterable<Blob> get icon;
  external set icon(Iterable<Blob> newValue);
  external Iterable<String> get name;
  external set name(Iterable<String> newValue);
  external Iterable<String> get tel;
  external set tel(Iterable<String> newValue);
}

@anonymous
@JS()
@staticInterop
class ContactsSelectOptions {
  external factory ContactsSelectOptions({bool multiple = false});
}

extension PropsContactsSelectOptions on ContactsSelectOptions {
  external bool get multiple;
  external set multiple(bool newValue);
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
  ///  Returns a [Promise] which resolves with an [Array] of [strings]
  /// indicating which contact properties are available.
  ///
  /// var ContactProperties = ContactsManager.getProperties();
  ///
  external Iterable<Promise<ContactProperty>> getProperties();

  ///  Returns a [Promise] which, when resolved, presents the user with
  /// a contact picker which allows them to select contact(s) they wish
  /// to share.
  ///
  /// var ContactInfo = ContactsManager.select(properties, options);
  ///
  external Iterable<Promise<ContactInfo>> select(
      Iterable<ContactProperty> properties,
      [ContactsSelectOptions? options]);
}
