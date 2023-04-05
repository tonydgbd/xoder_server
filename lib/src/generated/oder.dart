/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Order extends _i1.TableRow {
  Order({
    int? id,
    required this.id_restaurant,
    required this.id_table,
    required this.date_commande,
    required this.status,
    required this.id_produit,
    required this.additional_details,
  }) : super(id);

  factory Order.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Order(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      id_restaurant: serializationManager
          .deserialize<int>(jsonSerialization['id_restaurant']),
      id_table:
          serializationManager.deserialize<int>(jsonSerialization['id_table']),
      date_commande: serializationManager
          .deserialize<DateTime>(jsonSerialization['date_commande']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      id_produit: serializationManager
          .deserialize<int>(jsonSerialization['id_produit']),
      additional_details: serializationManager
          .deserialize<String>(jsonSerialization['additional_details']),
    );
  }

  static final t = OrderTable();

  int id_restaurant;

  int id_table;

  DateTime date_commande;

  String status;

  int id_produit;

  String additional_details;

  @override
  String get tableName => 'order';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_restaurant': id_restaurant,
      'id_table': id_table,
      'date_commande': date_commande,
      'status': status,
      'id_produit': id_produit,
      'additional_details': additional_details,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'id_restaurant': id_restaurant,
      'id_table': id_table,
      'date_commande': date_commande,
      'status': status,
      'id_produit': id_produit,
      'additional_details': additional_details,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'id_restaurant': id_restaurant,
      'id_table': id_table,
      'date_commande': date_commande,
      'status': status,
      'id_produit': id_produit,
      'additional_details': additional_details,
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
      case 'id_restaurant':
        id_restaurant = value;
        return;
      case 'id_table':
        id_table = value;
        return;
      case 'date_commande':
        date_commande = value;
        return;
      case 'status':
        status = value;
        return;
      case 'id_produit':
        id_produit = value;
        return;
      case 'additional_details':
        additional_details = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Order>> find(
    _i1.Session session, {
    OrderExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Order>(
      where: where != null ? where(Order.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Order?> findSingleRow(
    _i1.Session session, {
    OrderExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Order>(
      where: where != null ? where(Order.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Order?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Order>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required OrderExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Order>(
      where: where(Order.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    OrderExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Order>(
      where: where != null ? where(Order.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef OrderExpressionBuilder = _i1.Expression Function(OrderTable);

class OrderTable extends _i1.Table {
  OrderTable() : super(tableName: 'order');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final id_restaurant = _i1.ColumnInt('id_restaurant');

  final id_table = _i1.ColumnInt('id_table');

  final date_commande = _i1.ColumnDateTime('date_commande');

  final status = _i1.ColumnString('status');

  final id_produit = _i1.ColumnInt('id_produit');

  final additional_details = _i1.ColumnString('additional_details');

  @override
  List<_i1.Column> get columns => [
        id,
        id_restaurant,
        id_table,
        date_commande,
        status,
        id_produit,
        additional_details,
      ];
}

@Deprecated('Use OrderTable.t instead.')
OrderTable tOrder = OrderTable();
