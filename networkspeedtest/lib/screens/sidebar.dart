import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 85),
              child: Text(
                "LOGO",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xFFCF368E)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const RadialGradient(
                    colors: <Color>[Color(0x00964f7c), Color(0xFFC64790)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.other_houses_rounded),
                ),
              ),
              title: const Text(
                "More Apps",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xFF128A14)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const RadialGradient(
                    colors: <Color>[Color(0x00128a14), Color(0xFF128A24)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.star_rate),
                ),
              ),
              title: const Text(
                "Rate Us",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xFFFA0D44)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const RadialGradient(
                    colors: <Color>[Color(0x00a0314b), Color(0xFFFA0D44)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.private_connectivity_outlined),
                ),
              ),
              title: const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xFFFEC136)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const RadialGradient(
                    colors: <Color>[Color(0x005c574b), Color(0xFFFEC136)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.more_horiz),
                ),
              ),
              title: const Text(
                "Terms & Conditions",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
    );
  }
}
