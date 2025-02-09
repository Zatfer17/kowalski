import 'package:flutter/material.dart';
import 'package:kowalski/src/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kowalski",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomeScreen()
    );
  }
}