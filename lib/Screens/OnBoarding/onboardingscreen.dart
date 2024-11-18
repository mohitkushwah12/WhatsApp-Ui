import 'package:first_project/Screens/Login/loginscreen.dart';
import 'package:first_project/Widgets/uihelper.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displaying the image
            Image.asset("assets/images/image 1.png"),
            const SizedBox(height: 20),

            // Welcome text
            UiHelper.customText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: const Color(0XFF000000),
            ),
            const SizedBox(height: 20),

            // Privacy policy text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: "Read out",
                  height: 14,
                ),
                UiHelper.customText(
                  text: " Privacy Policy.",
                  height: 14,
                  color: const Color(0XFF0C42CC),
                ),
                UiHelper.customText(
                  text: " Tap “Agree and continue” ",
                  height: 14,
                ),
              ],
            ),
            const SizedBox(height: 5),

            // Terms of Service text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: "to accept the",
                  height: 13,
                ),
                UiHelper.customText(
                  text: " Teams of Service.",
                  height: 13,
                  color: const Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),

      // Floating action button for navigation
      floatingActionButton: UiHelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
