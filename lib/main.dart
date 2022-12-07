import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class nbb extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("Hello"));
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: ((context) => nbb())))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("Images/img.png"),
              width: 600,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitThreeBounce(
              color: Color.fromARGB(255, 18, 78, 7),
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
