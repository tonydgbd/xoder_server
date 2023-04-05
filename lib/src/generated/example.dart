/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Restaurant extends _i1.TableRow {
  Restaurant({
    int? id,
    required this.name,
    required this.user_id,
    required this.created_at,
    required this.enable_order,
    required this.pre_ordering,
    required this.welcome_message,
    required this.payement_by_card,
    required this.payement_by_orange,
    required this.payement_by_moov,
    required this.enable_billing,
    required this.activate_banner,
    required this.banner_url,
    required this.logo,
  }) : super(id);

  factory Restaurant.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Restaurant(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      user_id:
          serializationManager.deserialize<int>(jsonSerialization['user_id']),
      created_at: serializationManager
          .deserialize<DateTime>(jsonSerialization['created_at']),
      enable_order: serializationManager
          .deserialize<bool>(jsonSerialization['enable_order']),
      pre_ordering: serializationManager
          .deserialize<bool>(jsonSerialization['pre_ordering']),
      welcome_message: serializationManager
          .deserialize<String>(jsonSerialization['welcome_message']),
      payement_by_card: serializationManager
          .deserialize<bool>(jsonSerialization['payement_by_card']),
      payement_by_orange: serializationManager
          .deserialize<bool>(jsonSerialization['payement_by_orange']),
      payement_by_moov: serializationManager
          .deserialize<bool>(jsonSerialization['payement_by_moov']),
      enable_billing: serializationManager
          .deserialize<bool>(jsonSerialization['enable_billing']),
      activate_banner: serializationManager
          .deserialize<bool>(jsonSerialization['activate_banner']),
      banner_url: serializationManager
          .deserialize<String>(jsonSerialization['banner_url']),
      logo: serializationManager.deserialize<String>(jsonSerialization['logo']),
    );
  }

  static final t = RestaurantTable();

  String name;

  int user_id;

  DateTime created_at;

  bool enable_order;

  bool pre_ordering;

  String welcome_message;

  bool payement_by_card;

  bool payement_by_orange;

  bool payement_by_moov;

  bool enable_billing;

  bool activate_banner;

  String banner_url;

  String logo;

  @override
  String get tableName => 'restaurant';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'user_id': user_id,
      'created_at': created_at,
      'enable_order': enable_order,
      'pre_ordering': pre_ordering,
      'welcome_message': welcome_message,
      'payement_by_card': payement_by_card,
      'payement_by_orange': payement_by_orange,
      'payement_by_moov': payement_by_moov,
      'enable_billing': enable_billing,
      'activate_banner': activate_banner,
      'banner_url': banner_url,
      'logo': logo,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'user_id': user_id,
      'created_at': created_at,
      'enable_order': enable_order,
      'pre_ordering': pre_ordering,
      'welcome_message': welcome_message,
      'payement_by_card': payement_by_card,
      'payement_by_orange': payement_by_orange,
      'payement_by_moov': payement_by_moov,
      'enable_billing': enable_billing,
      'activate_banner': activate_banner,
      'banner_url': banner_url,
      'logo': logo,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'user_id': user_id,
      'created_at': created_at,
      'enable_order': enable_order,
      'pre_ordering': pre_ordering,
      'welcome_message': welcome_message,
      'payement_by_card': payement_by_card,
      'payement_by_orange': payement_by_orange,
      'payement_by_moov': payement_by_moov,
      'enable_billing': enable_billing,
      'activate_banner': activate_banner,
      'banner_url': banner_url,
      'logo': logo,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'user_id':
        user_id = value;
        return;
      case 'created_at':
        created_at = value;
        return;
      case 'enable_order':
        enable_order = value;
        return;
      case 'pre_ordering':
        pre_ordering = value;
        return;
      case 'welcome_message':
        welcome_message = value;
        return;
      case 'payement_by_card':
        payement_by_card = value;
        return;
      case 'payement_by_orange':
        payement_by_orange = value;
        return;
      case 'payement_by_moov':
        payement_by_moov = value;
        return;
      case 'enable_billing':
        enable_billing = value;
        return;
      case 'activate_banner':
        activate_banner = value;
        return;
      case 'banner_url':
        banner_url = value;
        return;
      case 'logo':
        logo = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Restaurant>> find(
    _i1.Session session, {
    RestaurantExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Restaurant>(
      where: where != null ? where(Restaurant.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Restaurant?> findSingleRow(
    _i1.Session session, {
    RestaurantExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Restaurant>(
      where: where != null ? where(Restaurant.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Restaurant?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Restaurant>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required RestaurantExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Restaurant>(
      where: where(Restaurant.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Restaurant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Restaurant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Restaurant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    RestaurantExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Restaurant>(
      where: where != null ? where(Restaurant.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef RestaurantExpressionBuilder = _i1.Expression Function(RestaurantTable);

class RestaurantTable extends _i1.Table {
  RestaurantTable() : super(tableName: 'restaurant');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final user_id = _i1.ColumnInt('user_id');

  final created_at = _i1.ColumnDateTime('created_at');

  final enable_order = _i1.ColumnBool('enable_order');

  final pre_ordering = _i1.ColumnBool('pre_ordering');

  final welcome_message = _i1.ColumnString('welcome_message');

  final payement_by_card = _i1.ColumnBool('payement_by_card');

  final payement_by_orange = _i1.ColumnBool('payement_by_orange');

  final payement_by_moov = _i1.ColumnBool('payement_by_moov');

  final enable_billing = _i1.ColumnBool('enable_billing');

  final activate_banner = _i1.ColumnBool('activate_banner');

  final banner_url = _i1.ColumnString('banner_url');

  final logo = _i1.ColumnString('logo');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        user_id,
        created_at,
        enable_order,
        pre_ordering,
        welcome_message,
        payement_by_card,
        payement_by_orange,
        payement_by_moov,
        enable_billing,
        activate_banner,
        banner_url,
        logo,
      ];
}

@Deprecated('Use RestaurantTable.t instead.')
RestaurantTable tRestaurant = RestaurantTable();
