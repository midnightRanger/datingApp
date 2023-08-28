import 'package:dating_app/auth/presentation/bloc/auth_listener.dart';
import 'package:dating_app/auth/presentation/bloc/auth_state.dart';
import 'package:dating_app/auth/presentation/view_models/user_login_vm.dart';
import 'package:dating_app/auth/presentation/view_models/user_registration_vm.dart';
import 'package:dating_app/core/domain/models/model_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/impl/auth_impl.dart';

class AuthCubit extends Cubit<AuthState> implements AuthListener {
  final _authRepository = AuthRepositoryImpl();

  AuthCubit(AuthState initialState): super (initialState);

  Future<void> registerUser(UserRegistration user) async {
    await _authRepository.registerUser(user: user, authRegistrationListener: this);
  }

  Future<void> authUser(UserLogin user) async {
    await _authRepository.authUser(user: user, authListener: this);
  }
  
  @override
  emailAlreadyInUse() {
    emit(AuthState.emailAlreadyInUse);
  }
  
  @override
  failed() {
    emit(AuthState.initial);
    emit(AuthState.failed);
  }
  
  @override
  invalidEmail() {
    emit(AuthState.initial);
    emit(AuthState.invalidEmail);
  }
  
  @override
  operationNotAllowed() {
    emit(AuthState.initial);
    emit(AuthState.operationNotAllowed);
  }
  
  @override
  successLogin() {
    emit(AuthState.successLogin);
  }
  
  @override
  successRegister() {
    emit(AuthState.successRegister);
  }
  
  @override
  userDisabled() {
    emit(AuthState.initial);
    emit(AuthState.userDisabled);
  }
  
  @override
  userNotFound() {
    emit(AuthState.initial);
    emit(AuthState.userNotFound);
  }
  
  @override
  weakPassword() {
    emit(AuthState.initial);
    emit(AuthState.weakPassword);
  }
  
  @override
  wrongPassword() {
    emit(AuthState.initial);
    emit(AuthState.wrongPassword);
  }

  

} 