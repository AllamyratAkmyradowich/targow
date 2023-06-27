import 'package:flutter/material.dart';
import 'package:targow/dashboard.dart';
import 'package:targow/pages/profile/login.dart';
import 'package:targow/pages/profile/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Targow app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      ),
      home: const Dashboard(),
      routes: {
        'register': (context) => const MyRegister(),
        'login': (context) => MyLogin(),
      },
    );
  }
}

