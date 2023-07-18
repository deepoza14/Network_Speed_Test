import 'package:flutter/material.dart';

class SoundTest extends StatefulWidget {
  const SoundTest({super.key});

  @override
  State<SoundTest> createState() => _SoundTestState();
}

class _SoundTestState extends State<SoundTest> {
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
        children: [],
      )),
    ));
  }
}
