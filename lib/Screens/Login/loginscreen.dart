import 'package:first_project/Screens/Otp/otpscreen.dart';
import 'package:first_project/Widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  String selectedCountry = 'India';  // Default country code

  List<String> countries = [
    "Afghanistan",
    "Australia",
    "Germany",
    "Italy",
    "Japan",
    "France",
    "India"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: UiHelper.customText(
                text: "Enter your phone number",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            UiHelper.customText(
              text: "WhatsApp will need to verify your phone",
              height: 16,
            ),
            const SizedBox(height: 5),
            UiHelper.customText(
              text: "number. Carrier charges may apply.",
              height: 16,
            ),
            const SizedBox(height: 5),
            UiHelper.customText(
              text: "What’s my number?",
              height: 16,
              color: const Color(0XFF00A884),
            ),
            const SizedBox(height: 35),
            // Country Dropdown
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countries.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedCountry = newValue;
                    });
                  }
                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  labelText: 'Select Country',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884))
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                ),
                const SizedBox(width: 10,),
                SizedBox(width: 320,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){
        login(phoneController.text.toString());
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phoneNumber) {
    if(phoneNumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter Your Phone Number"),backgroundColor: Color(0XFF00A884),));
    }
    else {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen(phoneNumber: phoneNumber,)));
    }
  }
}


