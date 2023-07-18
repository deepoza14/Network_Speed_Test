import 'package:flutter/material.dart';

class InternetSpeedTest extends StatefulWidget {
  const InternetSpeedTest({super.key});

  @override
  State<InternetSpeedTest> createState() => _InternetSpeedTestState();
}

class _InternetSpeedTestState extends State<InternetSpeedTest> {
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
          SizedBox(
            height: 30,
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
                "Internet Speed",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 20),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: const Color(0xFF04045E),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 25),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: const Color(0xFFCF368E)),
                            borderRadius: BorderRadius.circular(25),
                            gradient: const RadialGradient(
                              colors: <Color>[
                                Color(0x00964f7c),
                                Color(0xFFC64790)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.location_on_rounded,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFFB4ADAD)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "India , Maharashtra",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 20),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: const Color(0xFFFEC136)),
                            borderRadius: BorderRadius.circular(25),
                            gradient: const RadialGradient(
                              colors: <Color>[
                                Color(0x005c574b),
                                Color(0xFFFEC136)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.web_rounded,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "Server",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFFB4ADAD)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "Antimov_5G",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 20),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: const Color(0xFF0D75ED)),
                            borderRadius: BorderRadius.circular(25),
                            gradient: const RadialGradient(
                              colors: <Color>[
                                Color(0x005a636e),
                                Color(0xFF0D75ED)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.add_moderator_sharp,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "IP Address",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFFB4ADAD)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 2),
                              child: Text(
                                "192.168.05.1",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 78, right: 78, top: 30),
            child: Container(
              height: 272,
              width: 272,
              color: const Color(0xFF04045E),
              child: Column(
                children: [],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 30),
            child: Container(
              height: 91,
              width: 356,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF04045E),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFF128A14)),
                        borderRadius: BorderRadius.circular(25),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00128a14), Color(0xFF128A24)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.cloud_upload_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "Upload",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFB4ADAD)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "76 MB/s",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 41),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFFFA0D44)),
                        borderRadius: BorderRadius.circular(25),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00a0314b), Color(0xFFFA0D44)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.cloud_download_sharp,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "Download",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFB4ADAD)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "112 MB/s",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: TextButton(
              onPressed: () {},
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
                    'Retake Test',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    ));
  }
}
