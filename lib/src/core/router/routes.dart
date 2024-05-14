import 'package:avia_tickets/src/feature/avia_tickets/home/bloc/offers_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/widget/home_screen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/bloc/recommendations_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/bloc/tickets_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/custom_journey/widget/custom_journey_sreen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/hot_tickets/widget/hot_tickets_sreen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/weekends_trip/widget/weekends_trip_sreen.dart';
import 'package:avia_tickets/src/feature/hotels/widget/hotels_screen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/widget/city_result_screen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/widget/all_tickets_screen.dart';
import 'package:avia_tickets/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:avia_tickets/src/feature/profile/widget/profile_screen.dart';
import 'package:avia_tickets/src/feature/recommendations/widget/recommendations_screen.dart';
import 'package:avia_tickets/src/feature/subscriptions/widget/subscriptions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    TypedStatefulShellBranch<AviaTicketsBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: '/avia_tickets',
          routes: [
            TypedGoRoute<CustomJourneyRoute>(path: 'custom_journey'),
            TypedGoRoute<WeekendsRoute>(path: 'weekends'),
            TypedGoRoute<HotTicketsRoute>(path: 'hot_tickets'),
            TypedGoRoute<SearchResultRoute>(
              path: 'result',
              routes: [
                TypedGoRoute<AllTicketsRoute>(path: 'all'),
              ],
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<HotelsBranch>(
      routes: [
        TypedGoRoute<HotelsRoute>(
          path: '/hotels',
        ),
      ],
    ),
    TypedStatefulShellBranch<RecommendationsBranch>(
      routes: [
        TypedGoRoute<RecommendationsRoute>(
          path: '/recommendations',
        ),
      ],
    ),
    TypedStatefulShellBranch<SubscriptionsBranch>(
      routes: [
        TypedGoRoute<SubscriptionsRoute>(
          path: '/subscriptions',
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: '/profile',
        ),
      ],
    ),
  ],
)
class RootRoute extends StatefulShellRouteData {
  const RootRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return Scaffold(
      // key: scaffoldKey,
      body: navigationShell,
      bottomNavigationBar: Material(
        clipBehavior: Clip.hardEdge,
        // borderRadius: BorderRadius.circular(24),
        shape: const Border(
          top: BorderSide(
            color: Color(0xff201D1D),
            width: 1,
          ),
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            height: 54,
            backgroundColor: const Color(0xff0C0C0C),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            indicatorColor: Colors.transparent,
            labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (Set<MaterialState> states) => states.contains(MaterialState.selected)
                  ? const TextStyle(
                      height: 1.1,
                      fontSize: 10,
                      fontFamily: 'SfProDisplay',
                      color: Color(0xff2261BC),
                    )
                  : const TextStyle(
                      height: 1.1,
                      fontSize: 10,
                      fontFamily: 'SfProDisplay',
                      color: Color(0xff9F9F9F),
                    ),
            ),
          ),
          child: NavigationBar(
            onDestinationSelected: (index) => navigationShell.goBranch(index),
            selectedIndex: navigationShell.currentIndex,
            destinations: [
              NavigationDestination(
                label: 'Авиабилеты',
                icon: SvgPicture.asset(
                  'assets/icons/plane.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                selectedIcon: SvgPicture.asset(
                  'assets/icons/plane.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2261BC),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                label: 'Отели',
                icon: SvgPicture.asset(
                  'assets/icons/hotel.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                selectedIcon: SvgPicture.asset(
                  'assets/icons/hotel.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2261BC),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                label: 'Короче',
                icon: SvgPicture.asset(
                  'assets/icons/target.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                selectedIcon: SvgPicture.asset(
                  'assets/icons/target.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2261BC),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                label: 'Подписки',
                icon: SvgPicture.asset(
                  'assets/icons/notification.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                selectedIcon: SvgPicture.asset(
                  'assets/icons/notification.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2261BC),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                label: 'Профиль',
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                selectedIcon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2261BC),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AviaTicketsBranch extends StatefulShellBranchData {}

class HomeRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      BlocProvider<OffersBloc>(
        create: (context) => OffersBloc(
          offersRepository: DependenciesScope.of(context).offersRepository,
        ),
        child: const HomeScreen(),
      );
}

class CustomJourneyRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CustomJourneyScreen();
}

class WeekendsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const WeekendsTripScreen();
}

class HotTicketsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const HotTicketsScreen();
}

class SearchResultRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      BlocProvider(
          create: (context) => RecommendationsBloc(
                ticketsRepository: DependenciesScope.of(context).ticketsRepository,
              ),
          child: const ResultPreviewScreen());
}

class AllTicketsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      BlocProvider(
          create: (context) => TicketsBloc(
                ticketsRepository: DependenciesScope.of(context).ticketsRepository,
              ),
          child: const AllTicketsScreen());
}

class HotelsBranch extends StatefulShellBranchData {}

class HotelsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const HotelsScreen();
}

class RecommendationsBranch extends StatefulShellBranchData {}

class RecommendationsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RecommendationsScreen();
}

class SubscriptionsBranch extends StatefulShellBranchData {}

class SubscriptionsRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SubscriptionsScreen();
}

class ProfileBranch extends StatefulShellBranchData {}

class ProfileRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const ProfileScreen();
}
