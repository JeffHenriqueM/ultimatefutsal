import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router, // Use o GoRouter aqui
      title: 'Ultimate Futsal',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
