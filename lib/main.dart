import 'package:archery_companion/app/app.dart';
import 'package:archery_companion/services/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init Firebase
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // Logger
  initLogger();

  runApp(const AppWidget());
}
