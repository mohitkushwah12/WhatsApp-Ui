import 'package:first_project/Screens/Splash/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF00A884)),
        useMaterial3: false,
        fontFamily: "Regular"
      ),
      home: SplashScreen()
    );
  }
}

