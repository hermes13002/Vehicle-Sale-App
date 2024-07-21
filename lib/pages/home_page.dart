import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vehicleapp/tabs/home_tab.dart';
import 'package:vehicleapp/tabs/settings_tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color.fromRGBO(2, 253, 253, 1),
        color: const Color.fromRGBO(2, 253, 253, 1),
        height: 50,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 35,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut
          );
        },
      ),

      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomeTab(),
          Center(child: Text('Favourite Collection'),),
          SettingsTab()
        ],
      ),
    );
  }
}