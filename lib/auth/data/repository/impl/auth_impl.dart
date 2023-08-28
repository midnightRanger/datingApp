import 'dart:async';

import 'package:dating_app/auth/data/repository/interface/auth_repository.dart';
import 'package:dating_app/auth/presentation/view_models/user_registration_vm.dart';
import 'package:dating_app/core/domain/models/model_response.dart';
import 'package:dating_app/auth/presentation/bloc/auth_listener.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../presentation/view_models/user_login_vm.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  FutureOr<ModelResponse>? authUser(
      {required UserLogin user, required AuthListener authListener}) async {
    final auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: user.email!, password: user.password!);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          {
            authListener.invalidEmail();
            return ModelResponse(
                error: "Invalid Email", data: user, message: "Invalid Email");
          }
        case "user-disabled":
          {
            authListener.userDisabled();
            return ModelResponse(
                error: "User disabled", data: user, message: "User Disabled");
          }
        case "user-not-found":
          {
            authListener.userNotFound();
            return ModelResponse(
                error: "User not found", data: user, message: "User not found");
          }
        case "wrong-password":
          {
            authListener.wrongPassword();
            return ModelResponse(
                error: "Wrong Password", data: user, message: "Wrong Password");
          }
      }
    }
    authListener.successLogin();
    return const ModelResponse(
        error: null, data: UserRegistration, message: "Completely Registered");
  }

  @override
  FutureOr<ModelResponse>? registerUser(
      {required UserRegistration user,
      required AuthListener authRegistrationListener}) async {
    final auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: user.email, password: user.password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          {
            authRegistrationListener.weakPassword();
            return ModelResponse(
                error: "Weak Password", data: user, message: "Weak Password");
          }
        case 'operation-not-allowed':
          {
            authRegistrationListener.operationNotAllowed();
            return ModelResponse(
                error: "Operation not allowed",
                data: user,
                message: "Operation not allowed");
          }
        case 'email-already-in-use':
          {
            authRegistrationListener.emailAlreadyInUse();
            return ModelResponse(
                error: "Email already in use",
                data: user,
                message: "Email already in use");
          }
        case 'invalid-email':
          {
            authRegistrationListener.invalidEmail();
            return ModelResponse(
                error: "Invalid Email", data: user, message: "Invalid Email");
          }
      }
    }
    authRegistrationListener.successRegister();
    return const ModelResponse(
        error: null, data: UserRegistration, message: "Completely Registered");
  }
}
