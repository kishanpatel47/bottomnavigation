import 'package:bottomnavigation/Homescreen.dart';
import 'package:bottomnavigation/Movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Bottomscreen());
}

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({super.key});

  @override
  State<Bottomscreen> createState() => _BottomscreenState();
}

class _BottomscreenState extends State<Bottomscreen> {
  int currentindex = 0;
  final screens = [Homescreen(), Movie()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie')
            ]),
      ),
    );
  }
}
