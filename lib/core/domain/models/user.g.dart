// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      int: json['int'],
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'int': instance.int,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate.toIso8601String(),
    };
