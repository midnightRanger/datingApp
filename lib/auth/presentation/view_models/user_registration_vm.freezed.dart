// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegistration _$UserRegistrationFromJson(Map<String, dynamic> json) {
  return _UserRegistration.fromJson(json);
}

/// @nodoc
mixin _$UserRegistration {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationCopyWith<UserRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationCopyWith<$Res> {
  factory $UserRegistrationCopyWith(
          UserRegistration value, $Res Function(UserRegistration) then) =
      _$UserRegistrationCopyWithImpl<$Res, UserRegistration>;
  @useResult
  $Res call(
      {String email,
      String name,
      String surname,
      DateTime birthDate,
      String password});
}

/// @nodoc
class _$UserRegistrationCopyWithImpl<$Res, $Val extends UserRegistration>
    implements $UserRegistrationCopyWith<$Res> {
  _$UserRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? surname = null,
    Object? birthDate = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRegistrationCopyWith<$Res>
    implements $UserRegistrationCopyWith<$Res> {
  factory _$$_UserRegistrationCopyWith(
          _$_UserRegistration value, $Res Function(_$_UserRegistration) then) =
      __$$_UserRegistrationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String surname,
      DateTime birthDate,
      String password});
}

/// @nodoc
class __$$_UserRegistrationCopyWithImpl<$Res>
    extends _$UserRegistrationCopyWithImpl<$Res, _$_UserRegistration>
    implements _$$_UserRegistrationCopyWith<$Res> {
  __$$_UserRegistrationCopyWithImpl(
      _$_UserRegistration _value, $Res Function(_$_UserRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? surname = null,
    Object? birthDate = null,
    Object? password = null,
  }) {
    return _then(_$_UserRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegistration implements _UserRegistration {
  const _$_UserRegistration(
      {required this.email,
      required this.name,
      required this.surname,
      required this.birthDate,
      required this.password});

  factory _$_UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegistrationFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String surname;
  @override
  final DateTime birthDate;
  @override
  final String password;

  @override
  String toString() {
    return 'UserRegistration(email: $email, name: $name, surname: $surname, birthDate: $birthDate, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegistration &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, name, surname, birthDate, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegistrationCopyWith<_$_UserRegistration> get copyWith =>
      __$$_UserRegistrationCopyWithImpl<_$_UserRegistration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegistrationToJson(
      this,
    );
  }
}

abstract class _UserRegistration implements UserRegistration {
  const factory _UserRegistration(
      {required final String email,
      required final String name,
      required final String surname,
      required final DateTime birthDate,
      required final String password}) = _$_UserRegistration;

  factory _UserRegistration.fromJson(Map<String, dynamic> json) =
      _$_UserRegistration.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get surname;
  @override
  DateTime get birthDate;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegistrationCopyWith<_$_UserRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}
