import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.07, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('General Settings', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold, color: const Color.fromRGBO(2, 253, 253, 1))),
          
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SizedBox(
                  height: screenHeight * 0.09,
                  width: screenWidth * 0.18,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('AS', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, color: Colors.white)),
                  ),
                ),
                title: Text('Ayoigbala Soares', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text('Edit your profile', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.04, color: Colors.black)),
                trailing: const Icon(Icons.keyboard_arrow_right, size: 30,)
              ),
          
              const Divider(),
          
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Push Notifications', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text('Allow app to send notification on your device', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.035, color: Colors.grey[700])),
                value: _switchValue, 
                onChanged: (newValue) { 
                  setState(() { 
                    _switchValue = newValue; 
                  }); 
                }, 
              ),
          
              const Divider(),
          
              SwitchListTile( 
                contentPadding: EdgeInsets.zero,
                title: Text('Email Notifications', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text('Allow app to send email notifications on your device', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.035, color: Colors.grey[700])),
                value: _switchValue, 
                onChanged: (newValue) { 
                  setState(() { 
                    _switchValue = newValue; 
                  }); 
                }, 
              ), 
          
              // SwitchListTile.adaptive(
              //   value: value, 
              //   onChanged: onChanged
              // )
          
              SizedBox(height: screenHeight * 0.02,),
              Text('Support', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold, color: const Color.fromRGBO(2, 253, 253, 1))),
          
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Terms of Service', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                trailing: const Icon(Icons.keyboard_arrow_right, size: 30,)
              ),
          
              const Divider(),
          
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Data Policy', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                trailing: const Icon(Icons.keyboard_arrow_right, size: 30,)
              ),
          
              const Divider(),
          
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Help / FAQ', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                trailing: const Icon(Icons.keyboard_arrow_right, size: 30,)
              ),
          
              const Divider(),
          
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Contact Us', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold, color: Colors.black)),
                trailing: const Icon(Icons.keyboard_arrow_right, size: 30,)
              ),

              SizedBox(height: screenHeight * 0.02,),

              InkWell(
                onTap: () {
                
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
                        Text('Log Out', style: GoogleFonts.josefinSans(fontSize: screenWidth * 0.06, color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}