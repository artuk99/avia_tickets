import 'package:avia_tickets/src/feature/avia_tickets/home/data/offers_repository.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Composed dependencies from the [CompositionRoot].
///
/// This class is used to pass dependencies to the application.
///
base class Dependencies {
  const Dependencies({
    required this.offersRepository,
    required this.ticketsRepository,
    required this.sharedPreferences,
  });

  /// [SharedPreferences] instance, used to store Key-Value pairs.
  final SharedPreferences sharedPreferences;

  /// [OffersRepository] instance, used to fetch flight offers.
  final OffersRepository offersRepository;

  /// [TicketsRepository] instance, used to fetch tickets.
  final TicketsRepository ticketsRepository;
}

/// Result of composition
///
final class CompositionResult {
  const CompositionResult({
    required this.dependencies,
    required this.msSpent,
  });

  /// The dependencies
  final Dependencies dependencies;

  /// The number of milliseconds spent
  final int msSpent;

  @override
  String toString() => '$CompositionResult('
      'dependencies: $dependencies, '
      'msSpent: $msSpent'
      ')';
}
