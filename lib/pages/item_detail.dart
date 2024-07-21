import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleapp/pages/home_page.dart';
import 'package:vehicleapp/pages/payment_page.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Stack(
                children: [
                  Container(
                    height: screenHeight * 0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                    ),
                    child: Image.asset('assets/car.png', width: screenWidth * 0.8),
                  ),
        
                  Positioned(
                    left: screenWidth * 0.03,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => const HomePage()
                        ));
                      },
                      child: const Icon(Icons.keyboard_arrow_left_rounded, size: 40,)))
                ],
              ),
            ),
        
            SizedBox(height: screenHeight * 0.02,),
        
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bugatti Chiron', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, color: Colors.black87)),
                      
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                  
                          SizedBox(width: screenWidth * 0.002,),
                  
                          Text('4.9', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black87)),
                  
                          SizedBox(width: screenWidth * 0.01,),
                  
                          Text('(80 review)', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.grey[600])),
                        ],
                      )
                    ],
                  ),
              
                  SizedBox(height: screenHeight * 0.03,),
              
                  Text(
                    'Chiron is a luxirous car with very few flows of one. Sure its is not perfect, but with that price hog, you get a lot of the Italian muscle for your moeny.',
                    style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.grey[600])
                  ),
              
                  SizedBox(height: screenHeight * 0.03,),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: screenHeight * 0.07,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: const Center(child: Icon(Icons.chair)),
                          ),
              
                          SizedBox(height: screenHeight * 0.005,),
              
                          Text('2 Seats', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black87))
                        ],
                      ),
              
                      Column(
                        children: [
                          Container(
                            height: screenHeight * 0.07,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: const Center(child: Icon(Icons.flash_on_rounded)),
                          ),
              
                          SizedBox(height: screenHeight * 0.005,),
              
                          Text('315 hp', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black87))
                        ],
                      ),
              
                      Column(
                        children: [
                          Container(
                            height: screenHeight * 0.07,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: const Center(child: Icon(Icons.speed)),
                          ),
              
                          SizedBox(height: screenHeight * 0.005,),
              
                          Text('250 km/h', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black87))
                        ],
                      ),
              
                      Column(
                        children: [
                          Container(
                            height: screenHeight * 0.07,
                            width: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: const Center(child: Icon(Icons.garage)),
                          ),
              
                          SizedBox(height: screenHeight * 0.005,),
              
                          Text('Auto', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black87))
                        ],
                      ),
                    ],
                  ),
              
                  SizedBox(height: screenHeight * 0.03,),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('N1,000,000', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.07, color: Colors.black87)),
                    ],
                  ),
              
                  SizedBox(height: screenHeight * 0.03,),
              
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => const PaymentPage()
                      ));
                    },
                    child: SizedBox(
                      height: screenHeight * 0.07,
                      // width: screenWidth * 0.9,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color:  const Color.fromRGBO(2, 253, 253, 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.shopping_cart, color: Colors.white),
                            SizedBox(width: screenWidth * 0.02),
                            Text('Buy Now', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}