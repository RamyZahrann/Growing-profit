import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final Screens = [
    Center(child: Text("abc")),
    Center(child: Text("Favourite")),
    Center(child: Text("HOME")),
    Center(child: Text("HOME")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screens[index],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GNav(
                selectedIndex: index,
                onTabChange: (index) => setState(() => this.index = index),
                gap: 8,
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey.shade800,
                padding: EdgeInsets.all(16),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.favorite_border_outlined,
                    text: "Favourite",
                  ),
                  GButton(icon: Icons.search, text: "Search"),
                  GButton(
                    icon: Icons.settings,
                    text: "Settings",
                  ),
                ]),
          ),
        ));
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
              CupertinoPageRoute(builder: ((context) => HomePage())))
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
              image: AssetImage("Images/logo-removebg.png"),
              width: 800,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitFadingFour(
              color: Color.fromARGB(255, 18, 78, 7),
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
