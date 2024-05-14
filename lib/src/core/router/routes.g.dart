// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
    ];

RouteBase get $rootRoute => StatefulShellRouteData.$route(
      factory: $RootRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/avia_tickets',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'custom_journey',
                  factory: $CustomJourneyRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'weekends',
                  factory: $WeekendsRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'hot_tickets',
                  factory: $HotTicketsRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'result',
                  factory: $SearchResultRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'all',
                      factory: $AllTicketsRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/hotels',
              factory: $HotelsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/recommendations',
              factory: $RecommendationsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/subscriptions',
              factory: $SubscriptionsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CustomJourneyRouteExtension on CustomJourneyRoute {
  static CustomJourneyRoute _fromState(GoRouterState state) =>
      CustomJourneyRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets/custom_journey',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WeekendsRouteExtension on WeekendsRoute {
  static WeekendsRoute _fromState(GoRouterState state) => WeekendsRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets/weekends',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HotTicketsRouteExtension on HotTicketsRoute {
  static HotTicketsRoute _fromState(GoRouterState state) => HotTicketsRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets/hot_tickets',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchResultRouteExtension on SearchResultRoute {
  static SearchResultRoute _fromState(GoRouterState state) =>
      SearchResultRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets/result',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AllTicketsRouteExtension on AllTicketsRoute {
  static AllTicketsRoute _fromState(GoRouterState state) => AllTicketsRoute();

  String get location => GoRouteData.$location(
        '/avia_tickets/result/all',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HotelsRouteExtension on HotelsRoute {
  static HotelsRoute _fromState(GoRouterState state) => HotelsRoute();

  String get location => GoRouteData.$location(
        '/hotels',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RecommendationsRouteExtension on RecommendationsRoute {
  static RecommendationsRoute _fromState(GoRouterState state) =>
      RecommendationsRoute();

  String get location => GoRouteData.$location(
        '/recommendations',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SubscriptionsRouteExtension on SubscriptionsRoute {
  static SubscriptionsRoute _fromState(GoRouterState state) =>
      SubscriptionsRoute();

  String get location => GoRouteData.$location(
        '/subscriptions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
