import 'package:logging/logging.dart';

abstract class Environment {
  const Environment();

  static Duration get httpConnectTimeout => const Duration(seconds: 60);
  static Duration get httpSendTimeOut => const Duration(seconds: 60);
  static Duration get httpReceiveTimeOut => const Duration(seconds: 60);
  static Duration get httpFakeDelayMin => const Duration(milliseconds: 100);
  static Duration get httpFakeDelayMax => const Duration(milliseconds: 1500);

  // HTTP
  static bool get httpIgnoreSSLErrors => false;
  static bool get httpHasFakeDelay => false;
  static bool get httpHasFakeErrors => false;

  // Logs
  static Level get logLevel => Level.FINE;
}
