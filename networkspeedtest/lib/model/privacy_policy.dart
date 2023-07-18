import 'package:flutter/material.dart';
import 'package:networkspeedtest/model/privacy.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
              const SizedBox(
                height: 35,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 49, top: 35),
                child: SizedBox(
                  height: 648,
                  width: 331,
                  child: SingleChildScrollView(
                    child: Text(
                      privacyPolicyText,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffe1dddd),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
