import 'package:flutter/material.dart';

class UiHelper {
  static customButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )),
        child: Text(buttonname,
            style: const TextStyle(fontSize: 14, color: Colors.white)),
      ),
    );
  }

  static customText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? const Color(0XFF5E5E5E),
        fontWeight: fontweight
      ),
    );
  }

  static Widget customContainer({
    required TextEditingController controller,
    String? hintText,
    TextInputType keyboardType = TextInputType.text,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFFD9D9D9), // Fixed color formatting
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 30),
          keyboardType: keyboardType,
          textAlign: textAlign,
          decoration: InputDecoration(
            hintText: hintText, // Optional hint text
            border: InputBorder.none, // No border for the text field
          ),
        ),
      ),
    );
  }
}
