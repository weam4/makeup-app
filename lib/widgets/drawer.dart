import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(248, 169, 142, 1),
                Color.fromRGBO(244, 197, 152, 0.544),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.asset(
                  'images/weam.jpg',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ),
          InkWell(
            child:  ListTile(
              leading:const Icon(Icons.settings),
              title: Text('Settings',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 20)),),
              
            ),
            onTap: (){},
          ),
          InkWell(
            child:  ListTile(
              leading:const Icon(Icons.share),
              title: Text('Share',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 20)),),
            ),
            onTap: (){},
          ),
         InkWell(
           child:  ListTile(
              leading:const Icon(Icons.person_add_alt_1),
              title: Text('Invite Friends',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 20)),),
            ),
            onTap: (){},
         ),
          InkWell(
            child:  ListTile(
              leading:const Icon(Icons.logout),
              title: Text('Log Out',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 20)),),
            ),
            onTap: (){},
          ),
          
        ],
      ),
    );
  }
}
