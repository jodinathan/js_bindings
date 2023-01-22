/// Digital Goods API
///
/// https://wicg.github.io/digital-goods/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library digital_goods;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class DigitalGoodsService {
  external factory DigitalGoodsService();
}

extension PropsDigitalGoodsService on DigitalGoodsService {
  Future<Iterable<ItemDetails>> getDetails(Iterable<String> itemIds) => js_util
      .promiseToFuture(js_util.callMethod(this, 'getDetails', [itemIds]));

  Future<Iterable<PurchaseDetails>> listPurchases() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'listPurchases', []));

  Future<Iterable<PurchaseDetails>> listPurchaseHistory() => js_util
      .promiseToFuture(js_util.callMethod(this, 'listPurchaseHistory', []));

  Future<void> consume(String purchaseToken) => js_util
      .promiseToFuture(js_util.callMethod(this, 'consume', [purchaseToken]));
}

@anonymous
@JS()
@staticInterop
class ItemDetails {
  external factory ItemDetails._(
      {required String itemId,
      required String title,
      required PaymentCurrencyAmount price,
      required String type,
      required String description,
      required Iterable<String> iconURLs,
      required String subscriptionPeriod,
      required String freeTrialPeriod,
      required PaymentCurrencyAmount introductoryPrice,
      required String introductoryPricePeriod,
      required int introductoryPriceCycles});

  factory ItemDetails(
          {required String itemId,
          required String title,
          required PaymentCurrencyAmount price,
          required ItemType type,
          required String description,
          required Iterable<String> iconURLs,
          required String subscriptionPeriod,
          required String freeTrialPeriod,
          required PaymentCurrencyAmount introductoryPrice,
          required String introductoryPricePeriod,
          required int introductoryPriceCycles}) =>
      ItemDetails._(
          itemId: itemId,
          title: title,
          price: price,
          type: type.value,
          description: description,
          iconURLs: iconURLs,
          subscriptionPeriod: subscriptionPeriod,
          freeTrialPeriod: freeTrialPeriod,
          introductoryPrice: introductoryPrice,
          introductoryPricePeriod: introductoryPricePeriod,
          introductoryPriceCycles: introductoryPriceCycles);
}

extension PropsItemDetails on ItemDetails {
  String get itemId => js_util.getProperty(this, 'itemId');
  set itemId(String newValue) {
    js_util.setProperty(this, 'itemId', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  PaymentCurrencyAmount get price => js_util.getProperty(this, 'price');
  set price(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'price', newValue);
  }

  ItemType get type => ItemType.fromValue(js_util.getProperty(this, 'type'));
  set type(ItemType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  String get description => js_util.getProperty(this, 'description');
  set description(String newValue) {
    js_util.setProperty(this, 'description', newValue);
  }

  Iterable<String> get iconURLs => js_util.getProperty(this, 'iconURLs');
  set iconURLs(Iterable<String> newValue) {
    js_util.setProperty(this, 'iconURLs', newValue);
  }

  String get subscriptionPeriod =>
      js_util.getProperty(this, 'subscriptionPeriod');
  set subscriptionPeriod(String newValue) {
    js_util.setProperty(this, 'subscriptionPeriod', newValue);
  }

  String get freeTrialPeriod => js_util.getProperty(this, 'freeTrialPeriod');
  set freeTrialPeriod(String newValue) {
    js_util.setProperty(this, 'freeTrialPeriod', newValue);
  }

  PaymentCurrencyAmount get introductoryPrice =>
      js_util.getProperty(this, 'introductoryPrice');
  set introductoryPrice(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'introductoryPrice', newValue);
  }

  String get introductoryPricePeriod =>
      js_util.getProperty(this, 'introductoryPricePeriod');
  set introductoryPricePeriod(String newValue) {
    js_util.setProperty(this, 'introductoryPricePeriod', newValue);
  }

  int get introductoryPriceCycles =>
      js_util.getProperty(this, 'introductoryPriceCycles');
  set introductoryPriceCycles(int newValue) {
    js_util.setProperty(this, 'introductoryPriceCycles', newValue);
  }
}

enum ItemType {
  product('product'),
  subscription('subscription');

  final String value;
  static ItemType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const ItemType(this.value);
}

@anonymous
@JS()
@staticInterop
class PurchaseDetails {
  external factory PurchaseDetails(
      {required String itemId, required String purchaseToken});
}

extension PropsPurchaseDetails on PurchaseDetails {
  String get itemId => js_util.getProperty(this, 'itemId');
  set itemId(String newValue) {
    js_util.setProperty(this, 'itemId', newValue);
  }

  String get purchaseToken => js_util.getProperty(this, 'purchaseToken');
  set purchaseToken(String newValue) {
    js_util.setProperty(this, 'purchaseToken', newValue);
  }
}
