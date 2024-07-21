import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // final mediaQuery = MediaQuery.of(context);
    // final screenHeight = mediaQuery.size.height;
    // final screenWidth = mediaQuery.size.width;
    
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Vehicle App', style: GoogleFonts.poppins(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold, color: Colors.white)),
      //   centerTitle: true,
      // ),

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
            Icons.shopping_cart,
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
          Center(child: Text('One'),),
          SettingsTab()
        ],
      ),
    );
  }
}