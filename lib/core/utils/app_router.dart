import 'package:go_router/go_router.dart';
import 'package:qizz_app/home_page.dart';
import 'package:qizz_app/login_screen.dart';

// GoRouter configuration
abstract class AppRouter
{
  static const kLoginScreen= '/LoginScreen';

  static final router = GoRouter(

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MyHomePage(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) =>  LoginScreen(),
      ),
    ],
  );
}