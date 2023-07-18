import 'package:flutter/material.dart';
import 'package:networkspeedtest/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigate();
  }
  void _navigate() async {

    await Future.delayed(const Duration(milliseconds: 1500));
    if(context.mounted) {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
          const OnBoarding()), // Replace `LoginScreen` with your login screen widget
    );
    }
  }


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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 118,
                      width: 118,
                      child: Image.asset('assets/images/splash.png'),
                    ),
                    const Text(
                      "Network Tool",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
