import 'package:go_router/go_router.dart';
import 'package:qizz_app/home_page_view.dart';
import 'package:qizz_app/login_screen_view.dart';

// GoRouter configuration
abstract class AppRouter
{
  static const kLoginScreen= '/LoginScreen';

  static final router = GoRouter(

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) =>  const LoginScreenView(),
      ),
    ],
  );
}