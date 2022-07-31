import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/ui/details/image_details_screen.dart';
import 'package:picmore/ui/home/home_screen.dart';

final routerProvider = Provider(((ref) => Router()));

class Router {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (ctx, state) => HomeScreen.route(state.pageKey),
        routes: [
          GoRoute(
            name: 'image',
            path: 'image/:imid',
            pageBuilder: (ctx, state) =>
                ImageDetailsScreen.route(state.pageKey),
          ),
        ],
      ),
    ],
  );
}
