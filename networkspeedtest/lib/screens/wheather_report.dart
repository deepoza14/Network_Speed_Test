import 'package:flutter/material.dart';

class WheatheReport extends StatefulWidget {
  const WheatheReport({super.key});

  @override
  State<WheatheReport> createState() => _WheatheReportState();
}

class _WheatheReportState extends State<WheatheReport> {
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
