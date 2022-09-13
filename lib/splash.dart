import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'main.dart';
import 'loginPage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(
                //title: 'HOSTEL RESERVE',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/hostel_logo2.webp', height: 150),
            const SizedBox(
              height: 50,
            ),
            const CupertinoActivityIndicator(color: Colors.black87, radius: 25),
            /*Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              child: Text('Splash Screen',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),*/
          ],
        ),
      ),
    );
  }
}
