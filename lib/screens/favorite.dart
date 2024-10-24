import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeup/model/product.dart';
import 'package:makeup/screens/tabs.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
    required this.title,
    required this.products,
  });

  final String title;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/brokenheart.png'),
           Text(
            'Nothing Here Yet!',
            style: GoogleFonts.neuton(textStyle:const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),),
          ),
           Text(
            'Try to add products you like',
            style: GoogleFonts.neuton(textStyle:const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 16),)
          ),
        ],
      ),
    );

    if (products.isNotEmpty) {
      content = ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                    child: Image.asset(
                      products[index].imageUrl,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                   SizedBox(
                    width: 200,
                     child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            products[index].title,
                            style: GoogleFonts.neuton(textStyle:const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),), 
                          ),
                          Text(
                            products[index].price,
                            style: GoogleFonts.neuton(textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),)
                          )
                        ],
                      ),
                   ),
                  
                ],
              ),
            );
          });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Favorite',
          style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 24)),
        ),
        backgroundColor: const Color.fromARGB(255, 252, 147, 115),
        leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) =>const TabsScreen(),),);
              },
              icon: const Icon(Icons.arrow_back,size: 35,),),
      ),
      body: content,
    );
  }
}
