import 'package:dating_app/auth/data/repository/utils/clippers/melon_clipper.dart';
import 'package:dating_app/auth/presentation/bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
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
      child: const AuthScreenWidget(),
    );
  }
}

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({super.key});

  @override
  _AuthScreenStateWidget createState() => _AuthScreenStateWidget();
}

class _AuthScreenStateWidget extends State<AuthScreenWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthValidator authValidator = AuthValidator(context);

    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      switch (state) {
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
    }, builder: ((context, state) {
      return Scaffold(
          body: Center(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(210, 31, 95, 100),
                      Color.fromRGBO(253, 251, 171, 100)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: SafeArea(
                    child: Container(
                        padding: const EdgeInsets.all(64),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomPaint(
                              size: const Size.fromRadius(50),
                              painter: WatermelonPainter(),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ))),
                                    onPressed: () {},
                                    child: Text(
                                        AppLocalizations.of(context)!.login,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black)))),
                            Container(height: 15),
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ))),
                                    onPressed: () {},
                                    child: Text(
                                        AppLocalizations.of(context)!.register,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black)))),
                          ],
                        )),
                  ))));
    }));
  }
}
