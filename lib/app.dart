import 'package:flutter/material.dart';
import 'package:flutter_integration_test/screens/home_screen.dart';
import 'package:flutter_integration_test/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Integration Test',
      theme: AppTheme.theme,
      home: HomeScreen(),
    );
  }
}
