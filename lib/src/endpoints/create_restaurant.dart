import 'package:serverpod/serverpod.dart';
import 'package:xoder_server/src/generated/example.dart';
import 'package:xoder_server/src/generated/protocol.dart';

class RestaurantEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  @override
  Set<Scope> get requiredScopes => {Scope.admin};

  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter. Supported
  // parameter types are `bool`, `int`, `double`, `String`, `DateTime`, and any
  // objects that are generated from your `protocol` directory. The methods
  // should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<String> create(Session session, Restaurant resto) async {
    return "";
  }
}