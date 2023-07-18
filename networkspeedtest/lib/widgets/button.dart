import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Adjust the elevation value as needed
      borderRadius: BorderRadius.circular(25),
      color: Colors.transparent, // Set the background color to transparent
      child: InkWell(
        onTap: () {
          // Handle button tap
        },
        customBorder: const CircleBorder(),
        child: Container(
          width: 50,
          // Adjust the width and height as needed
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue, // Set the border color
              width: 2.0, // Set the border width
            ),
          ),
          child: const Text(
            'Get Started',
            style: TextStyle(
              color: Colors.blue, // Set the text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
