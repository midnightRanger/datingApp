// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegistration _$$_UserRegistrationFromJson(Map<String, dynamic> json) =>
    _$_UserRegistration(
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserRegistrationToJson(_$_UserRegistration instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate.toIso8601String(),
      'password': instance.password,
    };
