import 'package:first_project/Widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: UiHelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          SizedBox(height: 35,),
          UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 14),
          SizedBox(height: 5,),
          UiHelper.CustomText(text: "number. Carrier charges may apply.", height: 14),
          SizedBox(height: 5,),
          UiHelper.CustomText(text: "What’s my number?", height: 16,color: Color(0XFF00A884)),

          SizedBox(height: 30,),
          UiHelper.CustomText(text: "India", height: 16)
        ],
      ),
    );
  }
}
