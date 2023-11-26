import 'package:fingerprintauthdemo/app/app.locator.dart';
import 'package:fingerprintauthdemo/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
