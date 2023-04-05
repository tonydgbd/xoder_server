/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Table extends _i1.TableRow {
  Table({
    int? id,
    required this.name,
    required this.place,
    required this.restaurant_id,
  }) : super(id);

  factory Table.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Table(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      place: serializationManager.deserialize<int>(jsonSerialization['place']),
      restaurant_id: serializationManager
          .deserialize<int>(jsonSerialization['restaurant_id']),
    );
  }

  static final t = TableTable();

  String name;

  int place;

  int restaurant_id;

  @override
  String get tableName => 'table';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'place': place,
      'restaurant_id': restaurant_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'place': place,
      'restaurant_id': restaurant_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'place': place,
      'restaurant_id': restaurant_id,
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
      case 'place':
        place = value;
        return;
      case 'restaurant_id':
        restaurant_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Table>> find(
    _i1.Session session, {
    TableExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Table>(
      where: where != null ? where(Table.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Table?> findSingleRow(
    _i1.Session session, {
    TableExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Table>(
      where: where != null ? where(Table.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Table?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Table>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TableExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Table>(
      where: where(Table.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Table row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Table row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Table row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TableExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Table>(
      where: where != null ? where(Table.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TableExpressionBuilder = _i1.Expression Function(TableTable);

class TableTable extends _i1.Table {
  TableTable() : super(tableName: 'table');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final place = _i1.ColumnInt('place');

  final restaurant_id = _i1.ColumnInt('restaurant_id');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        place,
        restaurant_id,
      ];
}

@Deprecated('Use TableTable.t instead.')
TableTable tTable = TableTable();
