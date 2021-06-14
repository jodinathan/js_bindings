/// Contact Picker API
///
/// https://wicg.github.io/contact-api/spec/
@JS('window')
library contact_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'payment_request.dart';
import 'file_a_p_i.dart';

@JS()
enum ContactProperty { address, email, icon, name, tel }

@JS()
class ContactAddress extends PaymentAddress {
  external factory ContactAddress();
}

@anonymous
@JS()
class ContactInfo {
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

  external factory ContactInfo(
      {Iterable<ContactAddress> address,
      Iterable<String> email,
      Iterable<Blob> icon,
      Iterable<String> name,
      Iterable<String> tel});
}

@anonymous
@JS()
class ContactsSelectOptions {
  external bool get multiple;
  external set multiple(bool newValue);

  external factory ContactsSelectOptions({bool multiple = false});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Contact Picker API] allows users to select
/// entries from their contact list and share limited details of the
/// selected entries with a website or application.
///
///  The is available through the global [navigator.contacts]
/// property.
@JS()
class ContactsManager {
  ///  Returns a [Promise] which resolves with an [Array] of [strings]
  /// indicating which contact properties are available.
  /// var ContactProperties = ContactsManager.getProperties();
  external Iterable<Promise<ContactProperty>> getProperties();

  ///  Returns a [Promise] which, when resolved, presents the user with
  /// a contact picker which allows them to select contact(s) they wish
  /// to share.
  /// var ContactInfo = ContactsManager.select(properties, options);
  external Iterable<Promise<ContactInfo>> select(
      Iterable<ContactProperty> properties,
      [ContactsSelectOptions? options]);

  external factory ContactsManager();
}
