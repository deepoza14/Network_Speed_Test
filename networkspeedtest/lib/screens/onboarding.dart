import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:networkspeedtest/model/privacy_policy.dart';
import 'package:networkspeedtest/model/terms.dart';
import 'package:networkspeedtest/screens/homepage.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool checkboxValue = false;
  bool checkboxError = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 340,
                  width: 337,
                  child: Image.asset('assets/images/onboarding.png'),
                ),
              ),
              const Text(
                "Welcome to",
                style: TextStyle(color: Color(0xFF0D75ED)),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "CyperTools- \nNetwork Analyzer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.orange,
                      activeColor: Colors.white,
                      value: checkboxValue,
                      onChanged: (value) {
                        setState(() {
                          checkboxValue = value ?? false;
                          checkboxError =
                              false; // Reset the checkbox error status
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "By clicking you are agreeing to ",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: const TextStyle(
                                color: Color(0xFF0D75ED),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PrivacyPolicy()));
                                },
                            ),
                            const TextSpan(
                              text: " and ",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: "Terms & Conditions",
                              style: const TextStyle(color: Color(0xFF0D75ED)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TermsConditions()));
                                },
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              if (checkboxError)
                const Text(
                  'Please agree to the Privacy policy',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              const SizedBox(height: 20), // Add this line for spacing
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    if (checkboxValue) {
                      // Checkbox is checked, proceed with login
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    } else {
                      // Checkbox is not checked, show an error message
                      setState(() {
                        checkboxError = true; // Set the checkbox error status
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    // Set the container width to occupy the full width
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff0d75ed)),
                      borderRadius: BorderRadius.circular(23),
                      gradient: const LinearGradient(
                        colors: <Color>[Color(0x005a636e), Color(0xff0d75ed)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
