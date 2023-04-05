/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Availability extends _i1.TableRow {
  Availability({
    int? id,
    required this.id_product,
    required this.jour_semaine,
    required this.heure_debut,
    required this.heure_fin,
  }) : super(id);

  factory Availability.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Availability(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      id_product: serializationManager
          .deserialize<int>(jsonSerialization['id_product']),
      jour_semaine: serializationManager
          .deserialize<int>(jsonSerialization['jour_semaine']),
      heure_debut: serializationManager
          .deserialize<DateTime>(jsonSerialization['heure_debut']),
      heure_fin: serializationManager
          .deserialize<DateTime>(jsonSerialization['heure_fin']),
    );
  }

  static final t = AvailabilityTable();

  int id_product;

  int jour_semaine;

  DateTime heure_debut;

  DateTime heure_fin;

  @override
  String get tableName => 'availability';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_product': id_product,
      'jour_semaine': jour_semaine,
      'heure_debut': heure_debut,
      'heure_fin': heure_fin,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'id_product': id_product,
      'jour_semaine': jour_semaine,
      'heure_debut': heure_debut,
      'heure_fin': heure_fin,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'id_product': id_product,
      'jour_semaine': jour_semaine,
      'heure_debut': heure_debut,
      'heure_fin': heure_fin,
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
      case 'id_product':
        id_product = value;
        return;
      case 'jour_semaine':
        jour_semaine = value;
        return;
      case 'heure_debut':
        heure_debut = value;
        return;
      case 'heure_fin':
        heure_fin = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Availability>> find(
    _i1.Session session, {
    AvailabilityExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Availability>(
      where: where != null ? where(Availability.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Availability?> findSingleRow(
    _i1.Session session, {
    AvailabilityExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Availability>(
      where: where != null ? where(Availability.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Availability?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Availability>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AvailabilityExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Availability>(
      where: where(Availability.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Availability row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Availability row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Availability row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AvailabilityExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Availability>(
      where: where != null ? where(Availability.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AvailabilityExpressionBuilder = _i1.Expression Function(
    AvailabilityTable);

class AvailabilityTable extends _i1.Table {
  AvailabilityTable() : super(tableName: 'availability');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final id_product = _i1.ColumnInt('id_product');

  final jour_semaine = _i1.ColumnInt('jour_semaine');

  final heure_debut = _i1.ColumnDateTime('heure_debut');

  final heure_fin = _i1.ColumnDateTime('heure_fin');

  @override
  List<_i1.Column> get columns => [
        id,
        id_product,
        jour_semaine,
        heure_debut,
        heure_fin,
      ];
}

@Deprecated('Use AvailabilityTable.t instead.')
AvailabilityTable tAvailability = AvailabilityTable();
