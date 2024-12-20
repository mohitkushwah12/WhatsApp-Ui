import 'dart:async';
import 'package:first_project/Screens/OnBoarding/onboardingscreen.dart';
import 'package:first_project/Widgets/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/whatsapp 1.png"),
            const SizedBox(height: 20,),
            UiHelper.customText(text: "WhatsApp", height: 18, fontweight: FontWeight.bold)
        ],),
      ),
    );
  }
}
