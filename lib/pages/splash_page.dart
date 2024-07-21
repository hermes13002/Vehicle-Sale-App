// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleapp/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    super.initState();
    // Timer(
    //   const Duration(seconds: 5),
    //   () => Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => const SecondScreen()
    //     )
    //   )
    // );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 196, 196, 196),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: screenHeight * 0.17,),

            Image.asset('assets/splash.png', width: double.infinity,),

            // SizedBox(height: screenHeight * 0.09,),
            
            Text('Start your journey with us today', style: GoogleFonts.poppins(fontSize: screenWidth * 0.1, fontWeight: FontWeight.bold, color: Colors.white)),
            
            SizedBox(height: screenHeight * 0.02,),
            
            Text('Pick your style, rent or buy your ideal with ease', style: GoogleFonts.poppins(fontSize: screenWidth * 0.04, color: Colors.white54)),

            SizedBox(height: screenHeight * 0.05,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomePage()
                      )
                    );
                  },
                  child: Container(
                    height: screenHeight * 0.09,
                    width: screenWidth * 0.18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        )
                      ]
                    ),
                    child: const Icon(Icons.keyboard_arrow_right_rounded, color: Colors.black, size: 50),
                  ),
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}