import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int int, 
    required String email,
    required String name, 
    required String surname, 
    required DateTime birthDate
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>  _$UserFromJson(json);
}