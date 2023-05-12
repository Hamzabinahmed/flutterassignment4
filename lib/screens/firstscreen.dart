import 'package:flutter/material.dart';
import 'package:flutterassignment4/componentss/customwidget.dart';
import 'package:flutterassignment4/groupscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    super.key,
  });

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;
  final tabs = [
    const FloatingButton(),
    const Text(
      "contact",
      style: TextStyle(fontSize: 40),
    ),
    const Groups(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: "Recent",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Groups",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
