// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_database.dart;

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  FloorUserDAO _userDAOInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `users` (`id` INTEGER, `role` TEXT, `token` TEXT, `first_name` TEXT, `last_name` TEXT, `email` TEXT, `gender` TEXT, `dob` TEXT, `phone` TEXT, `provider` TEXT, `password` TEXT, `photo` TEXT, `verified_at` INTEGER, `verification_sent_at` TEXT, `forgot_password_code_sent_at` TEXT, `created_at` TEXT, `updated_at` TEXT, `deleted_at` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  FloorUserDAO get userDAO {
    return _userDAOInstance ??= _$FloorUserDAO(database, changeListener);
  }
}

class _$FloorUserDAO extends FloorUserDAO {
  _$FloorUserDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        __$_FloorUserInsertionAdapter = InsertionAdapter(
            database,
            'users',
            (_$_FloorUser item) => <String, dynamic>{
                  'id': item.id,
                  'role': _floorRoleConverter.encode(item.role),
                  'token': item.token,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'email': item.email,
                  'gender': item.gender,
                  'dob': item.dateOfBirth,
                  'phone': item.phone,
                  'provider': item.provider,
                  'password': item.password,
                  'photo': item.photo,
                  'verified_at': item.isEmailVerified == null
                      ? null
                      : (item.isEmailVerified ? 1 : 0),
                  'verification_sent_at': item.verificationCodeSentAt,
                  'forgot_password_code_sent_at': item.forgotPasswordCodeSentAt,
                  'created_at': _floorDateTimeConverter.encode(item.createdAt),
                  'updated_at': _floorDateTimeConverter.encode(item.updatedAt),
                  'deleted_at': _floorDateTimeConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_FloorUserUpdateAdapter = UpdateAdapter(
            database,
            'users',
            ['id'],
            (_$_FloorUser item) => <String, dynamic>{
                  'id': item.id,
                  'role': _floorRoleConverter.encode(item.role),
                  'token': item.token,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'email': item.email,
                  'gender': item.gender,
                  'dob': item.dateOfBirth,
                  'phone': item.phone,
                  'provider': item.provider,
                  'password': item.password,
                  'photo': item.photo,
                  'verified_at': item.isEmailVerified == null
                      ? null
                      : (item.isEmailVerified ? 1 : 0),
                  'verification_sent_at': item.verificationCodeSentAt,
                  'forgot_password_code_sent_at': item.forgotPasswordCodeSentAt,
                  'created_at': _floorDateTimeConverter.encode(item.createdAt),
                  'updated_at': _floorDateTimeConverter.encode(item.updatedAt),
                  'deleted_at': _floorDateTimeConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_FloorUserDeletionAdapter = DeletionAdapter(
            database,
            'users',
            ['id'],
            (_$_FloorUser item) => <String, dynamic>{
                  'id': item.id,
                  'role': _floorRoleConverter.encode(item.role),
                  'token': item.token,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'email': item.email,
                  'gender': item.gender,
                  'dob': item.dateOfBirth,
                  'phone': item.phone,
                  'provider': item.provider,
                  'password': item.password,
                  'photo': item.photo,
                  'verified_at': item.isEmailVerified == null
                      ? null
                      : (item.isEmailVerified ? 1 : 0),
                  'verification_sent_at': item.verificationCodeSentAt,
                  'forgot_password_code_sent_at': item.forgotPasswordCodeSentAt,
                  'created_at': _floorDateTimeConverter.encode(item.createdAt),
                  'updated_at': _floorDateTimeConverter.encode(item.updatedAt),
                  'deleted_at': _floorDateTimeConverter.encode(item.deletedAt)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<_$_FloorUser> __$_FloorUserInsertionAdapter;

  final UpdateAdapter<_$_FloorUser> __$_FloorUserUpdateAdapter;

  final DeletionAdapter<_$_FloorUser> __$_FloorUserDeletionAdapter;

  @override
  Future<List<_$_FloorUser>> all() async {
    return _queryAdapter.queryList('SELECT * FROM users',
        mapper: (Map<String, dynamic> row) => _$_FloorUser(
            id: row['id'] as int,
            role: _floorRoleConverter.decode(row['role'] as String),
            token: row['token'] as String,
            firstName: row['first_name'] as String,
            lastName: row['last_name'] as String,
            email: row['email'] as String,
            gender: row['gender'] as String,
            dateOfBirth: row['dob'] as String,
            phone: row['phone'] as String,
            provider: row['provider'] as String,
            password: row['password'] as String,
            photo: row['photo'] as String,
            isEmailVerified: row['verified_at'] == null
                ? null
                : (row['verified_at'] as int) != 0,
            verificationCodeSentAt: row['verification_sent_at'] as String,
            forgotPasswordCodeSentAt:
                row['forgot_password_code_sent_at'] as String,
            createdAt:
                _floorDateTimeConverter.decode(row['created_at'] as String),
            updatedAt:
                _floorDateTimeConverter.decode(row['updated_at'] as String),
            deletedAt:
                _floorDateTimeConverter.decode(row['deleted_at'] as String)));
  }

  @override
  Stream<_$_FloorUser> getById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM users WHERE id = ? LIMIT 1',
        arguments: <dynamic>[id],
        queryableName: 'users',
        isView: false,
        mapper: (Map<String, dynamic> row) => _$_FloorUser(
            id: row['id'] as int,
            role: _floorRoleConverter.decode(row['role'] as String),
            token: row['token'] as String,
            firstName: row['first_name'] as String,
            lastName: row['last_name'] as String,
            email: row['email'] as String,
            gender: row['gender'] as String,
            dateOfBirth: row['dob'] as String,
            phone: row['phone'] as String,
            provider: row['provider'] as String,
            password: row['password'] as String,
            photo: row['photo'] as String,
            isEmailVerified: row['verified_at'] == null
                ? null
                : (row['verified_at'] as int) != 0,
            verificationCodeSentAt: row['verification_sent_at'] as String,
            forgotPasswordCodeSentAt:
                row['forgot_password_code_sent_at'] as String,
            createdAt:
                _floorDateTimeConverter.decode(row['created_at'] as String),
            updatedAt:
                _floorDateTimeConverter.decode(row['updated_at'] as String),
            deletedAt:
                _floorDateTimeConverter.decode(row['deleted_at'] as String)));
  }

  @override
  Future<_$_FloorUser> get(int id) async {
    return _queryAdapter.query('SELECT * FROM users WHERE id = ? LIMIT 1',
        arguments: <dynamic>[id],
        mapper: (Map<String, dynamic> row) => _$_FloorUser(
            id: row['id'] as int,
            role: _floorRoleConverter.decode(row['role'] as String),
            token: row['token'] as String,
            firstName: row['first_name'] as String,
            lastName: row['last_name'] as String,
            email: row['email'] as String,
            gender: row['gender'] as String,
            dateOfBirth: row['dob'] as String,
            phone: row['phone'] as String,
            provider: row['provider'] as String,
            password: row['password'] as String,
            photo: row['photo'] as String,
            isEmailVerified: row['verified_at'] == null
                ? null
                : (row['verified_at'] as int) != 0,
            verificationCodeSentAt: row['verification_sent_at'] as String,
            forgotPasswordCodeSentAt:
                row['forgot_password_code_sent_at'] as String,
            createdAt:
                _floorDateTimeConverter.decode(row['created_at'] as String),
            updatedAt:
                _floorDateTimeConverter.decode(row['updated_at'] as String),
            deletedAt:
                _floorDateTimeConverter.decode(row['deleted_at'] as String)));
  }

  @override
  Future<_$_FloorUser> last() async {
    return _queryAdapter.query('SELECT * FROM users ORDER BY ID DESC LIMIT 1',
        mapper: (Map<String, dynamic> row) => _$_FloorUser(
            id: row['id'] as int,
            role: _floorRoleConverter.decode(row['role'] as String),
            token: row['token'] as String,
            firstName: row['first_name'] as String,
            lastName: row['last_name'] as String,
            email: row['email'] as String,
            gender: row['gender'] as String,
            dateOfBirth: row['dob'] as String,
            phone: row['phone'] as String,
            provider: row['provider'] as String,
            password: row['password'] as String,
            photo: row['photo'] as String,
            isEmailVerified: row['verified_at'] == null
                ? null
                : (row['verified_at'] as int) != 0,
            verificationCodeSentAt: row['verification_sent_at'] as String,
            forgotPasswordCodeSentAt:
                row['forgot_password_code_sent_at'] as String,
            createdAt:
                _floorDateTimeConverter.decode(row['created_at'] as String),
            updatedAt:
                _floorDateTimeConverter.decode(row['updated_at'] as String),
            deletedAt:
                _floorDateTimeConverter.decode(row['deleted_at'] as String)));
  }

  @override
  Future<int> insert(_$_FloorUser user) {
    return __$_FloorUserInsertionAdapter.insertAndReturnId(
        user, OnConflictStrategy.replace);
  }

  @override
  Future<int> update(_$_FloorUser user) {
    return __$_FloorUserUpdateAdapter.updateAndReturnChangedRows(
        user, OnConflictStrategy.replace);
  }

  @override
  Future<void> dalete(_$_FloorUser user) async {
    await __$_FloorUserDeletionAdapter.delete(user);
  }

  @override
  Future<int> deleteAll(List<_$_FloorUser> users) {
    return __$_FloorUserDeletionAdapter.deleteListAndReturnChangedRows(users);
  }
}

// ignore_for_file: unused_element
final _floorRoleConverter = FloorRoleConverter();
final _floorDateTimeConverter = FloorDateTimeConverter();
