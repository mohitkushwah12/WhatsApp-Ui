import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  String phoneNumber;
  OtpScreen({required this.phoneNumber});

  final List<TextEditingController> otpControllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: UiHelper.customText(
              text: "Verifying your number",
              height: 20,
              color: const Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          UiHelper.customText(
              text: "You’ve tried to register +91 $phoneNumber", height: 14),
          const SizedBox(
            height: 5,
          ),
          UiHelper.customText(
              text: "recently. Wait before requesting an sms or a call.",
              height: 14),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customText(text: "with your code.", height: 14),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                      text: "Wrong number?",
                      height: 15,
                      color: const Color(0XFF00A884)))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(otpControllers.length, (index) {
              return Row(
                children: [
                  UiHelper.customContainer(controller: otpControllers[index]),
                  if (index < otpControllers.length - 1)
                    const SizedBox(width: 10), // Add spacing between containers
                ],
              );
            }),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                      text: "Didn’t receive code?",
                      height: 15,
                      color: const Color(0XFF00A884)))
            ],
          ),
        ],
      ),
      floatingActionButton:
          UiHelper.customButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
