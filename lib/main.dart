import 'package:flutter/material.dart';

import 'screens/app/burger_page.dart';
import 'screens/app/dashboard.dart';

const principal = Colors.black87;
const branco = Colors.white;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Hamberger(),
      routes: {
        'Hamburger': (context) => const Hamberger(),
        'BurgerPage': (context) => const BurgerPage(
              name: 'Cheeseburger',
              image: 'assets/images/cheeseburger.png',
              description: 'Delicious cheeseburger with all the trimmings.',
              price: 15,
            ),
      },
      theme: ThemeData(
        primaryColor: principal,
        cardColor: principal,
        appBarTheme: const AppBarTheme(color: principal, centerTitle: true),
        bottomAppBarTheme: const BottomAppBarTheme(color: principal),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
          shape: CircleBorder(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
