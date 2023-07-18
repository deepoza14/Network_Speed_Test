import 'package:flutter/material.dart';
import 'package:networkspeedtest/screens/ip_address.dart';
import 'package:networkspeedtest/screens/sidebar.dart';
import 'package:networkspeedtest/screens/sound_test.dart';
import 'package:networkspeedtest/screens/speedtest.dart';
import 'package:networkspeedtest/screens/vehicle_speed.dart';
import 'package:networkspeedtest/screens/wheather_report.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
// for Non Colorful Icons

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> checkAndRequestLocationPermission() async {
    if (await Permission.location.isGranted) {
      return true;
    } else {
      var status = await Permission.location.request();
      return status.isGranted;
    }
  }

  void openGoogleMapsAppWithLocation() async {
    bool hasLocationPermission = await checkAndRequestLocationPermission();

    if (hasLocationPermission) {
      final Uri _url = Uri.parse('https://www.google.com/maps');

      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const SideBar(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 50),
                    child: Text(
                      "Network Tool",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20, top: 50),
                      child: Builder(
                        builder: (BuildContext context) {
                          return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(
                              Icons.dashboard,
                              color: Colors.white,
                              size: 25,
                            ),
                          );
                        },
                      ))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpeedTest()));
                    },
                    child: Container(
                      width: 150,
                      height: 133,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFF128A14)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00128a14), Color(0xFF128A24)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon1.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'Internet Speed Test',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IPAddressTest()));
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFFCF368E)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00964f7c), Color(0xFFC64790)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon2.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'IP Address Test',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SoundTest()));
                    },
                    child: Container(
                      width: 150,
                      height: 133,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFF5607D3)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00494949), Color(0xff5607d3)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon3.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'Sound Test',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleSpeedTest()));
                    },
                    child: Container(
                      width: 150,
                      height: 133,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFFFA0D44)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x00a0314b), Color(0xFFFA0D44)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon4.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'Vehicle Speed Test',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: openGoogleMapsAppWithLocation,
                    child: Container(
                      width: 150,
                      height: 133,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFF0D75ED)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x005a636e), Color(0xFF0D75ED)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon5.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'Map Navigation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WheatheReport()));
                    },
                    child: Container(
                      width: 150,
                      height: 133,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFFFEC136)),
                        borderRadius: BorderRadius.circular(23),
                        gradient: const RadialGradient(
                          colors: <Color>[Color(0x005c574b), Color(0xFFFEC136)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/icon6.png"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 28, right: 28, bottom: 18, top: 15),
                            child: Text(
                              'Weather Report',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
