import 'dart:async';

import 'package:avia_tickets/src/core/constant/config.dart';
import 'package:avia_tickets/src/core/utils/bloc_observer.dart';
import 'package:avia_tickets/src/core/utils/logger.dart';
import 'package:avia_tickets/src/feature/app/widget/app.dart';
import 'package:avia_tickets/src/feature/initialization/logic/composition_root.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

/// A class which is responsible for initialization and running the app.
final class AppRunner {
  const AppRunner();

  Future<void> initializeAndRun() async {
    final binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();

    // Override logging
    FlutterError.onError = logger.logFlutterError;
    WidgetsBinding.instance.platformDispatcher.onError = logger.logPlatformDispatcherError;

    // Setup bloc observer and transformer
    Bloc.observer = const AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();
    const config = Config();
    const initializationProcessor = CompositionRoot(config);

    initializeDateFormatting();

    Future<void> initializeAndRun() async {
      try {
        final result = await initializationProcessor.compose();
        // Attach this widget to the root of the tree.
        runApp(App(result: result));
      } catch (e, stackTrace) {
        logger.error('Initialization failed', error: e, stackTrace: stackTrace);
        // runApp(
        //   InitializationFailedApp(
        //     error: e,
        //     stackTrace: stackTrace,
        //     retryInitialization: initializeAndRun,
        //   ),
        // );
      } finally {
        // Allow rendering
        binding.allowFirstFrame();
      }
    }

    // Run the app
    await initializeAndRun();
  }
}
