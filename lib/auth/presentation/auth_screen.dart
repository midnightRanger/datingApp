import 'package:dating_app/auth/presentation/bloc/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../data/repository/utils/auth_validator.dart';
import 'bloc/auth_state.dart';

class AuthScreen extends StatefulWidget {

  final String title;

  const AuthScreen({super.key, required this.title});

  @override
  State<AuthScreen> createState() => _AuthStatePage();
}

class _AuthStatePage extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthState.initial),
      child: AuthScreenWidget(), 
    );
  }
}

class AuthScreenWidget extends StatefulWidget {
  @override 
  _AuthScreenStateWidget createState() => _AuthScreenStateWidget();
}

class _AuthScreenStateWidget extends State<AuthScreenWidget>
{
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    AuthValidator authValidator = AuthValidator(context);

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        switch(state) {
          
          case AuthState.successRegister:
            // TODO: Handle this case.
            break;
          case AuthState.successLogin:
            // TODO: Handle this case.
            break;
          case AuthState.userNotFound:
            // TODO: Handle this case.
            break;
          case AuthState.wrongPassword:
            // TODO: Handle this case.
            break;
          case AuthState.weakPassword:
            // TODO: Handle this case.
            break;
          case AuthState.userDisabled:
            // TODO: Handle this case.
            break;
          case AuthState.emailAlreadyInUse:
            // TODO: Handle this case.
            break;
          case AuthState.operationNotAllowed:
            // TODO: Handle this case.
            break;
          case AuthState.invalidEmail:
            // TODO: Handle this case.
            break;
          case AuthState.failed:
            // TODO: Handle this case.
            break;
          case AuthState.initial:
            // TODO: Handle this case.
            break;
        }
        
      },
      builder: ((context, state) {
        return Scaffold(
          body: SafeArea(
            child: Container(padding: EdgeInsets.all(32), 
            child: Text(AppLocalizations.of(context)!.helloWorld),),
          )
        );
      })
    );
  } 
}