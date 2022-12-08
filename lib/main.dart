import 'package:flutter/material.dart';

import 'mobx_3_mvvm/view/users_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
              headline5: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
              caption: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1)),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(backgroundColor: Colors.amber)),
          primarySwatch: Colors.purple,
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(primary: Colors.purple, secondary: Colors.blueAccent),
        ),
        title: 'Get Started Mobx',
        home: UsersView());
  }
}
