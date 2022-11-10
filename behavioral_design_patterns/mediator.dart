void main() {
  UserRepository.instance.getUser("id");
}

class User {}

abstract class UserRepository {
  static UserRepositoryImpl get instance => UserRepositoryImpl.implInstance;
  User? getUser(String id);
}

/// mediator
class UserRepositoryImpl implements UserRepository {
  late final LocalDatabase _localDatabase;
  late final RemoteDatabase _remoteDatabase;
  static final UserRepositoryImpl implInstance = UserRepositoryImpl._internal();
  UserRepositoryImpl._internal() {
    _localDatabase = LocalDatabase();
    _remoteDatabase = RemoteDatabase();
  }

  @override
  User? getUser(String id) {
    final localData = _localDatabase.readUserData();
    if (localData != null) {
      return localData;
    } else {
      final remoteData = _remoteDatabase.fetchUserData();
      return remoteData;
    }
  }
}

class LocalDatabase {
  static final LocalDatabase _instance = LocalDatabase._internal();
  factory LocalDatabase() {
    return _instance;
  }
  LocalDatabase._internal();
  User? readUserData() {
    return User();
  }
}

class RemoteDatabase {
  static final RemoteDatabase _instance = RemoteDatabase._internal();
  factory RemoteDatabase() {
    return _instance;
  }
  RemoteDatabase._internal();
  User? fetchUserData() {
    return User();
  }
}
