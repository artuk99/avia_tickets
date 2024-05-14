import 'package:avia_tickets/src/core/router/routes.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MaterialContext extends StatefulWidget {
  const MaterialContext({super.key});

  static final _globalKey = GlobalKey();

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    _router = GoRouter(
      initialLocation: '/avia_tickets',
      routes: $appRoutes,
      restorationScopeId: 'avia_tickets_navigation',
      navigatorKey: navigatorKey,
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final theme = SettingsScope.themeOf(context).theme;

    return MaterialApp.router(
      key: MaterialContext._globalKey,
      restorationScopeId: 'avia_tickets_app',
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ru', 'RU'),
      // theme: theme.lightTheme,
      // darkTheme: theme.darkTheme,
      builder: (context, child) => MediaQuery.withClampedTextScaling(
        minScaleFactor: 1.0,
        maxScaleFactor: 2.0,
        child: SearchScope(child: child!),
      ),
    );
  }
}
