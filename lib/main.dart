import 'dart:async';

import 'package:avia_tickets/src/core/utils/logger.dart';
import 'package:avia_tickets/src/feature/app/logic/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
