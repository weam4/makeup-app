import 'package:flutter/material.dart';
import 'package:makeup/data/dummy_data.dart';
import 'package:makeup/model/category.dart';
import 'package:makeup/widgets/drawer.dart';

import 'package:makeup/screens/product.dart';
import 'package:makeup/screens/user.dart';
import 'package:makeup/widgets/carusel.dart';
import 'package:makeup/widgets/cat_grid_item.dart';
import 'package:makeup/widgets/staggered_img.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onSelectCat(BuildContext context, Category category) {
    final filteredProducts = dummyProducts
        .where((product) => product.category.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProductScreen(
          title: category.title,
          products: filteredProducts,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          /*leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 40,
              color: Color.fromARGB(255, 252, 147, 115),
            ),
          ),*/
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 35,
                color:  Color.fromARGB(255, 252, 147, 115),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                //borderRadius:BorderRadius.circular(50) ,
                //splashColor: Colors.amber,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const UserScreen(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/weam.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: const MainDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //11111111111
              const Carusel(),
              const SizedBox(
                height: 10,
              ),
              //22222222
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'Categories',
                    style: GoogleFonts.satisfy(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Text(
                          'See All',
                          style: GoogleFonts.satisfy(
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 14,
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            for (final category in availableCategories)
                              CategoryItem(
                                category: category,
                                onSelectCategory: () {
                                  _onSelectCat(context, category);
                                },
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //33333333
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'Recommened',
                    style: GoogleFonts.satisfy(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Text(
                          'See All',
                          style: GoogleFonts.satisfy(
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 14,
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Staggered(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
