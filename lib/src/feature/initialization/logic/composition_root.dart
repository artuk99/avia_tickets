import 'package:avia_tickets/src/core/constant/config.dart';
import 'package:avia_tickets/src/core/utils/logger.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/data/offers_data_source.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/data/offers_repository.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_data_source.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_repository.dart';
import 'package:avia_tickets/src/feature/initialization/model/dependencies.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A place where all dependencies are initialized.
///
/// Composition of dependencies is a process of creating and configuring
/// instances of classes that are required for the application to work.
///
/// It is a good practice to keep all dependencies in one place to make it
/// easier to manage them and to ensure that they are initialized only once.
final class CompositionRoot {
  const CompositionRoot(this.config);

  /// Application configuration
  final Config config;

  /// Composes dependencies and returns result of composition.
  Future<CompositionResult> compose() async {
    final stopwatch = Stopwatch()..start();

    logger.info('Initializing dependencies...');
    // initialize dependencies
    final dependencies = await _initDependencies();
    logger.info('Dependencies initialized');

    stopwatch.stop();
    final result = CompositionResult(
      dependencies: dependencies,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    return result;
  }

  Future<Dependencies> _initDependencies() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final dioClient = Dio();
    final offersRepository = _initOffersRepository(dioClient);
    final ticketsRepository = _initTicketsRepository(dioClient);

    return Dependencies(
      sharedPreferences: sharedPreferences,
      offersRepository: offersRepository,
      ticketsRepository: ticketsRepository,
    );
  }

  OffersRepository _initOffersRepository(Dio client) {
    final offersRepository = OffersRepositoryImpl(
      remoteDataSource: OffersRemoteDataSourceImpl(
        client,
        baseUrl: config.baseUrl,
      ),
    );

    return offersRepository;
  }

  TicketsRepository _initTicketsRepository(Dio client) {
    final ticketsRepository = TicketsRepositoryImpl(
      remoteDataSource: TicketsRemoteDataSourceImpl(
        client,
        baseUrl: config.baseUrl,
      ),
    );

    return ticketsRepository;
  }
}
