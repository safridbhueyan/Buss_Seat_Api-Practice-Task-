part of 'part_of_import.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.homescreen,

    routes: [
      GoRoute(
        name: RouteName.homescreen,
        path: RouteName.homescreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
    ],
  );
}
