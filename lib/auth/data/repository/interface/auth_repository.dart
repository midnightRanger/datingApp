import 'dart:async';

import 'package:dating_app/auth/presentation/bloc/auth_listener.dart';
import 'package:dating_app/auth/presentation/view_models/user_login_vm.dart';
import 'package:dating_app/core/domain/models/model_response.dart';

import '../../../presentation/view_models/user_registration_vm.dart';

abstract class AuthRepository {
  FutureOr<ModelResponse>? registerUser({required UserRegistration user, required AuthListener authRegistrationListener});
  FutureOr<ModelResponse>? authUser({required UserLogin user, required AuthListener authListener});
}