import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class VehicleSpeedTest extends StatefulWidget {
  const VehicleSpeedTest({super.key});

  @override
  State<VehicleSpeedTest> createState() => _VehicleSpeedTestState();
}

class _VehicleSpeedTestState extends State<VehicleSpeedTest> {
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
            height: 30,
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
                "Vehicle Speed Test",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 39),
            child: Text(
              "Please turn on your GPS.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 5),
            child: Text(
              "Check how fast you are travelling online with this speedometer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFB4ADAD),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 78, right: 78, top: 30),
            child: Container(
              height: 272,
              width: 300,
              padding: const EdgeInsets.all(10),
              child: KdGaugeView(
                minSpeed: 0,
                maxSpeed: 100,
                speed: 100,
                animate: true,
                duration: const Duration(seconds: 5),
                alertSpeedArray: [40, 80, 90],
                alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
                speedTextStyle: TextStyle(color: Colors.white),
                minMaxTextStyle: TextStyle(color: Colors.white),
                unitOfMeasurement: "Km/h",
                unitOfMeasurementTextStyle: TextStyle(color: Colors.white),
                gaugeWidth: 20,
                fractionDigits: 1,
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
                          Icons.speed,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "Max Speed",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFB4ADAD)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "100",
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
                          Icons.speed_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "Average Speed",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFB4ADAD)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, bottom: 2),
                          child: Text(
                            "154s",
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
        ],
      )),
    ));
  }
}
