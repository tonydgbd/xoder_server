/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Product extends _i1.TableRow {
  Product({
    int? id,
    required this.name,
    required this.notes,
    required this.restaurant_id,
    required this.description,
    required this.categorie_id,
    required this.prix,
    this.option,
    required this.available,
    required this.picture,
  }) : super(id);

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      notes:
          serializationManager.deserialize<String>(jsonSerialization['notes']),
      restaurant_id: serializationManager
          .deserialize<int>(jsonSerialization['restaurant_id']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      categorie_id: serializationManager
          .deserialize<int>(jsonSerialization['categorie_id']),
      prix: serializationManager.deserialize<String>(jsonSerialization['prix']),
      option: serializationManager
          .deserialize<String?>(jsonSerialization['option']),
      available: serializationManager
          .deserialize<bool>(jsonSerialization['available']),
      picture: serializationManager
          .deserialize<String>(jsonSerialization['picture']),
    );
  }

  static final t = ProductTable();

  String name;

  String notes;

  int restaurant_id;

  String description;

  int categorie_id;

  String prix;

  String? option;

  bool available;

  String picture;

  @override
  String get tableName => 'product';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
      'restaurant_id': restaurant_id,
      'description': description,
      'categorie_id': categorie_id,
      'prix': prix,
      'option': option,
      'available': available,
      'picture': picture,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
      'restaurant_id': restaurant_id,
      'description': description,
      'categorie_id': categorie_id,
      'prix': prix,
      'option': option,
      'available': available,
      'picture': picture,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'notes': notes,
      'restaurant_id': restaurant_id,
      'description': description,
      'categorie_id': categorie_id,
      'prix': prix,
      'option': option,
      'available': available,
      'picture': picture,
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
      case 'description':
        description = value;
        return;
      case 'categorie_id':
        categorie_id = value;
        return;
      case 'prix':
        prix = value;
        return;
      case 'option':
        option = value;
        return;
      case 'available':
        available = value;
        return;
      case 'picture':
        picture = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Product>> find(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findSingleRow(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Product>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ProductExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ProductExpressionBuilder = _i1.Expression Function(ProductTable);

class ProductTable extends _i1.Table {
  ProductTable() : super(tableName: 'product');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final notes = _i1.ColumnString('notes');

  final restaurant_id = _i1.ColumnInt('restaurant_id');

  final description = _i1.ColumnString('description');

  final categorie_id = _i1.ColumnInt('categorie_id');

  final prix = _i1.ColumnString('prix');

  final option = _i1.ColumnString('option');

  final available = _i1.ColumnBool('available');

  final picture = _i1.ColumnString('picture');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        notes,
        restaurant_id,
        description,
        categorie_id,
        prix,
        option,
        available,
        picture,
      ];
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();
