import 'package:avia_tickets/src/feature/app/widget/material_context.dart';
import 'package:avia_tickets/src/feature/initialization/model/dependencies.dart';
import 'package:avia_tickets/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/cupertino.dart';

class App extends StatelessWidget {
  const App({required this.result, super.key});

  /// The result from the [CompositionRoot].
  final CompositionResult result;

  @override
  Widget build(BuildContext context) => DependenciesScope(
        dependencies: result.dependencies,
        child: const MaterialContext(),
      );
}
