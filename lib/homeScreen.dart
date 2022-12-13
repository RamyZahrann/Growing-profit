import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'TheHome.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);
  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int index = 0;
  final Screens = [
    HomePage(),
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
