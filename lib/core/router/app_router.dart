import 'package:go_router/go_router.dart';
import 'package:task_home/feature/auth/page/login_pages.dart';
import 'package:task_home/feature/auth/page/register_page.dart';
import 'package:task_home/feature/task/page/task_page.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: LoginPage.route,
    routes: [
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RegisterPage.route,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: TasksPage.route,
        builder: (context, state) => const TasksPage(),
      ),
    ],
  );
}