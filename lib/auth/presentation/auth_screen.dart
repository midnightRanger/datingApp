import 'package:dating_app/auth/presentation/bloc/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        
      }
    )
  } 
}