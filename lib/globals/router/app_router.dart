import 'package:dating_app/auth/presentation/auth_screen.dart';
import 'package:dating_app/globals/provider/app_state_provider.dart';
import 'package:dating_app/globals/router/router_utils.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter({required this.appStateProvider});

  AppStateProvider appStateProvider;

  get router => _router;

  late final _router = GoRouter(
    refreshListenable: appStateProvider,
    initialLocation: '/', 
    routes: 
      [
        GoRoute(
          path: AppPages.auth.routePath,
          name: AppPages.auth.routeName,
          builder: (context, state) => const AuthScreen(title: "Auth Page")), 
        
        GoRoute(
          path: AppPages.register.routePath,
          name: AppPages.register.routeName,
          builder: (context, state) => const AuthScreen(title: "Register Page")),

        GoRoute(
          path: AppPages.home.routePath,
          name: AppPages.home.routeName,
          builder: (context, state) => const AuthScreen(title: "Home Page")),
        
        GoRoute(
          path: AppPages.profile.routePath,
          name: AppPages.profile.routeName,
          builder: (context, state) => const AuthScreen(title: "Profile Page")),
        GoRoute(
          path: AppPages.likes.routePath,
          name: AppPages.likes.routeName,
          builder: (context, state) => const AuthScreen(title: "Likes Page")),
        GoRoute(
          path: AppPages.messages.routePath,
          name: AppPages.messages.routeName,
          builder: (context, state) => const AuthScreen(title: "Messages Page")),
        GoRoute(
          path: AppPages.onboard.routePath,
          name: AppPages.onboard.routeName,
          builder: (context, state) => const AuthScreen(title: "On Board")),
      ],
      redirect: (context, state) {
        final String onBoardPath = 
          state.namedLocation(AppPages.onboard.routeName);

          bool isOnboarding = state.matchedLocation == onBoardPath;

          if (state.matchedLocation == "/")
            return null;

          return null; 
      }
  );
}