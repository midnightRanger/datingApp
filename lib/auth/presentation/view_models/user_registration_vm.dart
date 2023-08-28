import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_vm.freezed.dart';
part 'user_registration_vm.g.dart';

@freezed
class UserRegistration with _$UserRegistration {
  const factory UserRegistration({
    required String email,
    required String name, 
    required String surname, 
    required DateTime birthDate,
    required String password
  }) = _UserRegistration;

  factory UserRegistration.fromJson(Map<String, dynamic> json) =>  _$UserRegistrationFromJson(json);
}