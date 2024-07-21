import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleapp/pages/item_detail.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(
              context, MaterialPageRoute(
              builder: (context) => const ItemDetailPage()
            ));
          },
          child: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text('Payments', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.07, color: Colors.black)),
        backgroundColor: Colors.grey[200],
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: screenHeight * 0.3,
                width: double.infinity,
                color: Colors.grey[200],
                // decoration: const BoxDecoration(
                //   // color: Colors.white,
                // ),
                child: Image.asset('assets/car.png', width: screenWidth * 1.0),
              ),
            ),

            SizedBox(height: screenHeight * 0.02,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bugatti Chiron', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.065, color: Colors.black)),
                Text('N1,000,000', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.065, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),

            SizedBox(height: screenHeight * 0.02,),

            Text('Select Mode of Payments', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.055, color: const Color.fromRGBO(2, 253, 253, 1))),

            SizedBox(height: screenHeight * 0.02,),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context) => const PaymentPage()
                ));
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.paypal, color: Colors.blue, size: 40,),
                  title: Text('PayPal', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: Colors.black)),
                  trailing: const Icon(Icons.keyboard_arrow_right, size: 40,)
                )
              ),
            ),

            SizedBox(height: screenHeight * 0.02,),
            
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context) => const PaymentPage()
                ));
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.g_mobiledata, color: Colors.yellow, size: 40,),
                  title: Text('Google Pay', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: Colors.black)),
                  trailing: const Icon(Icons.keyboard_arrow_right, size: 40,)
                )
              ),
            ),

            SizedBox(height: screenHeight * 0.02,),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context) => const PaymentPage()
                ));
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.credit_card, color: Colors.red, size: 40,),
                  title: Text('**** **** **** 5633', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: Colors.black)),
                  trailing: const Icon(Icons.keyboard_arrow_right, size: 40,)
                )
              ),
            ),

            SizedBox(height: screenHeight * 0.01,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Color.fromRGBO(2, 253, 253, 1)), 
                  label: Text('Add New Account', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.045, color: const Color.fromRGBO(2, 253, 253, 1)))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}