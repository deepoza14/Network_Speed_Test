import 'package:flutter/material.dart';
import 'package:networkspeedtest/screens/splash_screen.dart';
import 'package:networkspeedtest/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Speed Test',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system, // Use light or dark theme based on device settings
      home: const SplashScreen(),
    );
  }
}
