import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
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
        child: const SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 48, right: 49, top: 35),
                child: SizedBox(
                  height: 648,
                  width: 331,
                  child: SingleChildScrollView(
                    child: Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. A ut nulla tortor, convallis habitasse morbi gravida. Pretium convallis nam amet convallis. Eget quis egestas mauris viverra. Tempor bibendum in ullamcorper elementum risus, elit, leo in aliquam. Aenean neque semper ultrices consectetur. Ac ante suspendisse convallis eget adipiscing duis nunc at at. Convallis sit leo enim arcu cras morbi nullam sagittis. Felis orci venenatis, massa dictumst tincidunt suspendisse. Suspendisse et ligula nunc maecenas. Sit eu odio dui praesent eget. Risus ac nullam pellentesque tempus nisi, tortor ornare pellentesque. Nec enim condimentum convallis ut pulvinar pellentesque. Duis eget aliquam vitae lectus vulputate elementum. Aliquam ridiculus quis porttitor elit, quis nibh faucibus commodo justo. Consequat lectus venenatis at netus sit metus, id. Vestibulum nulla gravida ut non et varius duis scelerisque. Pellentesque et ac, aenean eget cursus. A, enim nam eu sodales. Amet amet enim sit pellentesque donec. Sed semper ultricies facilisis sit sapien in rutrum lacus, vitae. Interdum ipsum euismod dolor nulla amet ac. Facilisis quis ipsum pulvinar nisi condimentum vulputate integer. Sed amet aliquet pellentesque vel ultricies fermentum, neque vivamus.''',
                      style: TextStyle(
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
