import 'package:dating_app/auth/presentation/auth_screen.dart';
import 'package:dating_app/auth/presentation/bloc/auth_cubit.dart';
import 'package:dating_app/auth/presentation/bloc/auth_state.dart';
import 'package:dating_app/firebase_options.dart';
import 'package:dating_app/globals/DI.dart';
import 'package:dating_app/globals/provider/app_state_provider.dart';
import 'package:dating_app/globals/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: ((context) => AuthCubit(AuthState.initial))),
        ChangeNotifierProvider(create: (context) => AppStateProvider()),
        ProxyProvider<AppStateProvider, AppRouter>(
            update: (context, appStateProvider, _) =>
                AppRouter(appStateProvider: appStateProvider))
      ],
      child: FutureBuilder(
        future: DI.getInstance().init(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final GoRouter router = Provider.of<AppRouter>(context).router;
             
            return MaterialApp.router(
                routerConfig: router,
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en'),
                  Locale('es'),
                  Locale('ru')
                ],
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ));
          } else {
            return const CircularProgressIndicator();
          }
        }),
      ),
    );
  }
}
