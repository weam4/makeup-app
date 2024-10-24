import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:  Text('Profile',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 24)),),
          backgroundColor: const Color.fromARGB(255, 252, 147, 115)),
      body: Container(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 18,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/weam.jpg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 252, 147, 115),
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_2_outlined),
                      prefixIconColor: const Color.fromRGBO(248, 169, 142, 1),
                      labelText: 'Name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelStyle: GoogleFonts.neuton(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(248, 169, 142, 1),
                              fontSize: 24)),
                      hintText: 'Enter your name',
                      labelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(fontSize: 22),
                      ),
                      hintStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 169, 142, 1),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      prefixIconColor: const Color.fromRGBO(248, 169, 142, 1),
                      labelText: 'Email',
                      labelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(fontSize: 22),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(248, 169, 142, 1),
                            fontSize: 24),
                      ),
                      hintText: 'name@domain.com',
                      hintStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 169, 142, 1),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_outlined),
                      prefixIconColor: const Color.fromRGBO(248, 169, 142, 1),
                      labelText: 'Password',
                      labelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(fontSize: 22),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(248, 169, 142, 1),
                            fontSize: 24),
                      ),
                      hintText: '1234567',
                      hintStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 169, 142, 1),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone_android_outlined),
                      prefixIconColor: const Color.fromRGBO(248, 169, 142, 1),
                      labelText: 'Phone No.',
                      labelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(fontSize: 22),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(248, 169, 142, 1),
                            fontSize: 24),
                      ),
                      hintText: '0771234567',
                      hintStyle: GoogleFonts.neuton(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 169, 142, 1),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 252, 147, 115),
                      foregroundColor: Colors.white,
                      //padding: EdgeInsets.all(20),
                      minimumSize: Size(MediaQuery.of(context).size.width, 60),
                    ),
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: GoogleFonts.neuton(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
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
