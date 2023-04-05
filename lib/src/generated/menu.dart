/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Menu extends _i1.TableRow {
  Menu({
    int? id,
    required this.name,
    required this.notes,
    required this.restaurant_id,
  }) : super(id);

  factory Menu.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Menu(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      notes:
          serializationManager.deserialize<String>(jsonSerialization['notes']),
      restaurant_id: serializationManager
          .deserialize<int>(jsonSerialization['restaurant_id']),
    );
  }

  static final t = MenuTable();

  String name;

  String notes;

  int restaurant_id;

  @override
  String get tableName => 'menu';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
      'restaurant_id': restaurant_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
      'restaurant_id': restaurant_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
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
      case 'notes':
        notes = value;
        return;
      case 'restaurant_id':
        restaurant_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Menu>> find(
    _i1.Session session, {
    MenuExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Menu>(
      where: where != null ? where(Menu.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Menu?> findSingleRow(
    _i1.Session session, {
    MenuExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Menu>(
      where: where != null ? where(Menu.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Menu?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Menu>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MenuExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Menu>(
      where: where(Menu.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Menu row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Menu row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Menu row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MenuExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Menu>(
      where: where != null ? where(Menu.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MenuExpressionBuilder = _i1.Expression Function(MenuTable);

class MenuTable extends _i1.Table {
  MenuTable() : super(tableName: 'menu');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final notes = _i1.ColumnString('notes');

  final restaurant_id = _i1.ColumnInt('restaurant_id');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        notes,
        restaurant_id,
      ];
}

@Deprecated('Use MenuTable.t instead.')
MenuTable tMenu = MenuTable();
