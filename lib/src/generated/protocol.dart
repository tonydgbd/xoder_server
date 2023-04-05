/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'available.dart' as _i2;
import 'categorie.dart' as _i3;
import 'example.dart' as _i4;
import 'menu.dart' as _i5;
import 'oder.dart' as _i6;
import 'produit.dart' as _i7;
import 'table.dart' as _i8;
import 'user.dart' as _i9;
import 'package:serverpod/protocol.dart' as _i10;
export 'available.dart';
export 'categorie.dart';
export 'example.dart';
export 'menu.dart';
export 'oder.dart';
export 'produit.dart';
export 'table.dart';
export 'user.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Availability) {
      return _i2.Availability.fromJson(data, this) as T;
    }
    if (t == _i3.Category) {
      return _i3.Category.fromJson(data, this) as T;
    }
    if (t == _i4.Restaurant) {
      return _i4.Restaurant.fromJson(data, this) as T;
    }
    if (t == _i5.Menu) {
      return _i5.Menu.fromJson(data, this) as T;
    }
    if (t == _i6.Order) {
      return _i6.Order.fromJson(data, this) as T;
    }
    if (t == _i7.Product) {
      return _i7.Product.fromJson(data, this) as T;
    }
    if (t == _i8.Table) {
      return _i8.Table.fromJson(data, this) as T;
    }
    if (t == _i9.User) {
      return _i9.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Availability?>()) {
      return (data != null ? _i2.Availability.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Category?>()) {
      return (data != null ? _i3.Category.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Restaurant?>()) {
      return (data != null ? _i4.Restaurant.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Menu?>()) {
      return (data != null ? _i5.Menu.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Order?>()) {
      return (data != null ? _i6.Order.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Product?>()) {
      return (data != null ? _i7.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Table?>()) {
      return (data != null ? _i8.Table.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.User?>()) {
      return (data != null ? _i9.User.fromJson(data, this) : null) as T;
    }
    try {
      return _i10.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Availability) {
      return 'Availability';
    }
    if (data is _i3.Category) {
      return 'Category';
    }
    if (data is _i4.Restaurant) {
      return 'Restaurant';
    }
    if (data is _i5.Menu) {
      return 'Menu';
    }
    if (data is _i6.Order) {
      return 'Order';
    }
    if (data is _i7.Product) {
      return 'Product';
    }
    if (data is _i8.Table) {
      return 'Table';
    }
    if (data is _i9.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Availability') {
      return deserialize<_i2.Availability>(data['data']);
    }
    if (data['className'] == 'Category') {
      return deserialize<_i3.Category>(data['data']);
    }
    if (data['className'] == 'Restaurant') {
      return deserialize<_i4.Restaurant>(data['data']);
    }
    if (data['className'] == 'Menu') {
      return deserialize<_i5.Menu>(data['data']);
    }
    if (data['className'] == 'Order') {
      return deserialize<_i6.Order>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i7.Product>(data['data']);
    }
    if (data['className'] == 'Table') {
      return deserialize<_i8.Table>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i9.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i10.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.Availability:
        return _i2.Availability.t;
      case _i3.Category:
        return _i3.Category.t;
      case _i4.Restaurant:
        return _i4.Restaurant.t;
      case _i5.Menu:
        return _i5.Menu.t;
      case _i6.Order:
        return _i6.Order.t;
      case _i7.Product:
        return _i7.Product.t;
      case _i8.Table:
        return _i8.Table.t;
      case _i9.User:
        return _i9.User.t;
    }
    return null;
  }
}
