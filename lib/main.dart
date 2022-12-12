import 'package:flutter/material.dart';
import 'common/constants.dart';
import 'package:donorin/user_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donorin',
      theme: customTheme,
      debugShowCheckedModeBanner: false,
      home: const UserDashboardPage(),
    );
  }
}
