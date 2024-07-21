import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleapp/pages/item_detail.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    
    return Scaffold(
      body: Padding(
          // padding: const EdgeInsets.only(top: 16, left: 16,),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Explore', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.07, color: Colors.black)),
                ],
              ),

              SizedBox(height: screenHeight * 0.02,),

              SearchBar(
                leading: const Icon(Icons.search),
                hintText: 'Search', 
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
                side: const MaterialStatePropertyAll(BorderSide(color: Colors.transparent)),
                padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
              ),

              SizedBox(height: screenHeight * 0.015,),

              SizedBox(
                height: screenHeight * 0.35,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(
                      builder: (context) => const ItemDetailPage()
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      // border: Border.all(color: Colors.black),
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 20, // Increased blur radius
                        offset: const Offset(0, 10),
                      )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/car.png', width: screenWidth * 0.6),
                                      
                            Text('450 Hp\n230 RPM\nElectric\nAuto', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.grey)),
                          ],
                        ),
                                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bugatti Chiron 2023', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, color: Colors.black, fontWeight: FontWeight.bold)),
                                Text('N1,000,000', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: Colors.black),),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right, color: Colors.grey[800], size: 60,)
                          ],
                        )
                      ],),
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.025,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Brands', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, color: const Color.fromRGBO(2, 253, 253, 1), fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){}, child: Text('See All', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: const Color.fromRGBO(2, 253, 253, 1)))),
                ],
              ),

              SizedBox(height: screenHeight * 0.005,),

              Flexible(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context,  index) {
                    return SizedBox(
                      // height: screenHeight * 0.1,
                      width: screenWidth * 0.3,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/car.png', width: screenWidth * 0.3),
                                          
                            Text('Ford', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black)),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        ),
    );
  }
}