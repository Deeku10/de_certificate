import 'package:de_certificate/screens/homePage.dart';
import 'package:de_certificate/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deeku_Certificate',
      theme: De_certTheme().themeData,
      routes: {
        HomeScreen.id: ((context) => const HomeScreen()),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
