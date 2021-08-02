part of 'package:pexza/features/core/data/database/app_database.dart';

@freezed
@immutable
abstract class FloorUser implements _$FloorUser {
  static const String tableName = 'users';

  @Entity(tableName: FloorUser.tableName)
  const factory FloorUser({
    @primaryKey int id,
    @nullable
    @ColumnInfo(name: 'verification_status')
        ProfileVerificationStatus status,
    @nullable @ColumnInfo(name: 'balance') int accountBalance,
    @nullable Role role,
    @nullable String token,
    @nullable @ColumnInfo(name: 'first_name') String firstName,
    @nullable @ColumnInfo(name: 'last_name') String lastName,
    @nullable String email,
    @nullable String gender,
    @nullable @ColumnInfo(name: 'dob') String dateOfBirth,
    @nullable String phone,
    @nullable String provider,
    @nullable String password,
    @nullable String photo,
    @nullable
    @ColumnInfo(name: 'verified_at', nullable: false)
        bool isEmailVerified,
    @nullable @ColumnInfo(name: 'unreadNotifications') int unreadNotifications,
    @nullable
    @ColumnInfo(name: 'hasPendingAssignment', nullable: false)
        bool hasPendingAssignment,
    @nullable
    @ColumnInfo(name: 'verification_sent_at')
        String verificationCodeSentAt,
    @nullable
    @ColumnInfo(name: 'forgot_password_code_sent_at')
        String forgotPasswordCodeSentAt,
    @nullable @ColumnInfo(name: 'last_seen_at') DateTime lastSeenAt,
    @nullable @ColumnInfo(name: 'created_at') DateTime createdAt,
    @nullable @ColumnInfo(name: 'updated_at') DateTime updatedAt,
    @nullable @ColumnInfo(name: 'deleted_at') DateTime deletedAt,
  }) = _FloorUser;

  const FloorUser._();

  /// Maps the Domain instance to a Data Transfer Object.
  factory FloorUser.fromDTO(UserDTO dto) => FloorUser(
        id: dto?.id,
        status: dto?.status,
        accountBalance: dto?.balance,
        role: dto?.role,
        token: dto?.token,
        firstName: dto?.firstName,
        lastName: dto?.lastName,
        email: dto?.email,
        password: dto?.password,
        gender: dto?.gender,
        dateOfBirth: dto?.dateOfBirth,
        isEmailVerified: dto?.isEmailVerified,
        phone: dto?.phone,
        provider: dto?.provider,
        photo: dto?.phone,
        forgotPasswordCodeSentAt: dto?.forgotPasswordCodeSentAt,
        verificationCodeSentAt: dto?.verificationCodeSentAt,
        unreadNotifications: dto?.unreadNotifications,
        hasPendingAssignment: dto?.hasPendingAssignment,
        lastSeenAt:
            dto?.lastSeenAt != null ? DateTime.tryParse(dto?.lastSeenAt) : null,
        createdAt:
            dto?.createdAt != null ? DateTime.tryParse(dto?.createdAt) : null,
        updatedAt:
            dto?.updatedAt != null ? DateTime.tryParse(dto?.updatedAt) : null,
        deletedAt:
            dto?.deletedAt != null ? DateTime.tryParse(dto?.deletedAt) : null,
      );

  /// Maps the Data Transfer Object to a Domain instance.
  UserDTO get dto => UserDTO(
        id: id,
        status: status,
        token: token,
        balance: accountBalance,
        role: role,
        firstName: firstName,
        lastName: lastName,
        email: email,
        gender: gender,
        dateOfBirth: dateOfBirth,
        isEmailVerified: isEmailVerified,
        phone: phone,
        provider: provider,
        password: password,
        photo: phone,
        hasPendingAssignment: hasPendingAssignment,
        unreadNotifications: unreadNotifications,
        forgotPasswordCodeSentAt: forgotPasswordCodeSentAt,
        verificationCodeSentAt: verificationCodeSentAt,
        lastSeenAt: lastSeenAt?.toIso8601String(),
        createdAt: createdAt?.toIso8601String(),
        updatedAt: updatedAt?.toIso8601String(),
        deletedAt: deletedAt?.toIso8601String(),
      );

  /// Maps the Data Transfer Object to a Domain instance.
  User get domain => User(
        id: UniqueId<int>.fromExternal(id),
        verificationStatus: status,
        role: role,
        accountBalance:
            accountBalance != null ? BasicTextField(accountBalance) : null,
        firstName: firstName != null ? DisplayName(firstName) : null,
        lastName: lastName != null ? DisplayName(lastName) : null,
        email: email != null ? EmailAddress(email) : null,
        gender: !gender.isNullOrBlank
            ? Gender(GenderType.valueOf(gender?.capitalizeFirst()))
            : null,
        dateOfBirth: !dateOfBirth.isNullOrBlank
            ? DateTimeField(DateTime.parse(dateOfBirth))
            : null,
        isEmailVerified: isEmailVerified,
        phone: phone != null ? Phone(phone, Country.NG) : null,
        provider: provider != null ? AuthProvider.valueOf(provider) : null,
        password: Password.DEFAULT,
        photo: photo,
        hasPendingAssignment: hasPendingAssignment,
        unreadNotifications: unreadNotifications,
        forgotPasswordCodeSentAt: !forgotPasswordCodeSentAt.isNullOrBlank
            ? DateTime.tryParse(forgotPasswordCodeSentAt)
            : null,
        verificationCodeSentAt: !verificationCodeSentAt.isNullOrBlank
            ? DateTime.tryParse(verificationCodeSentAt)
            : null,
        lastSeenAt: lastSeenAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

@dao
abstract class FloorUserDAO {
  @Query('SELECT * FROM ${FloorUser.tableName}')
  Future<List<_$_FloorUser>> all();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insert(_$_FloorUser user);

  @Query('SELECT * FROM ${FloorUser.tableName} WHERE id = :id LIMIT 1')
  Stream<_$_FloorUser> getById(int id);

  @Query('SELECT * FROM ${FloorUser.tableName} WHERE id = :id LIMIT 1')
  Future<_$_FloorUser> get(int id);

  @Query('SELECT * FROM ${FloorUser.tableName} ORDER BY ID DESC LIMIT 1')
  Future<_$_FloorUser> last();

  @Update(onConflict: OnConflictStrategy.replace)
  Future<int> update(_$_FloorUser user);

  @delete
  Future<void> dalete(_$_FloorUser user);

  @delete
  Future<int> deleteAll(List<_$_FloorUser> users);

  Future<int> updateOrInsert(_$_FloorUser user) async {
    try {
      return update(user);
    } catch (e) {
      log.w(e);
      return insert(user);
    }
  }
}
