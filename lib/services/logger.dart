import 'package:archery_companion/config/environnement.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void initLogger() {
  // minimum log level pour rentrer dans le stream onRecord
  Logger.root.level = !kReleaseMode ? Level.ALL : Environment.logLevel;

  // Reception d'un log à gérer
  Logger.root.onRecord.listen((LogRecord rec) {
    final message = '${rec.level.name}: ${rec.time}: ${rec.loggerName} - ${rec.message}';

    // error-type record (with an error or  severity at least SEVERE)
    if (rec.error != null || rec.level >= Level.SEVERE) {
      // dumping to console
      debugPrint('$message ${rec.error ?? ''} \n ${rec.stackTrace ?? ''}');
    }

    // standard-message record (fine/info/warning/etc without any error)
    else {
      // dumping message
      debugPrint(message);
    }
  });
}
