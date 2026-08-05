import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screens = [HomeScreen()];

  Map<String, IconData> bottomitem = {
    'home': Icons.home,
    'favorite': Icons.favorite,
  };

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: screens, index: index),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomitem.entries
            .map(
              (item) => BottomNavigationBarItem(
                label: item.key,
                icon: Icon(item.value),
              ),
            )
            .toList(),
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),
      ),
    );
  }
}
