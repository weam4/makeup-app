import 'package:flutter/material.dart';

import 'package:makeup/model/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.category, required this.onSelectCategory});
  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: const Color.fromARGB(255, 252, 147, 115),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(248, 169, 142, 1),
            Color.fromRGBO(244, 197, 152, 0.544),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topLeft),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            category.title,
            style: GoogleFonts.neuton(textStyle:const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
          ),
        ),
      ),
    );
  }
}
