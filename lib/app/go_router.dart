import 'package:go_router/go_router.dart';
import 'package:infinum_architecture/ui/home/home_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (ctx, state) => HomeScreen.route(state.pageKey),
    ),
  ],
);
