import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/home_screen.dart';

class InvestXApp extends StatelessWidget {
  const InvestXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InvestX',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}