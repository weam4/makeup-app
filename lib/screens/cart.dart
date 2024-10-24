import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeup/model/product.dart';
import 'package:makeup/screens/tabs.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
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
          Image.asset('images/empty.png'),
           Text(
            'Your Cart is EMPTY!',
            style: GoogleFonts.neuton(textStyle:const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),),
          ),
           Text(
            'Try to add products and make me Happy',
            style: GoogleFonts.neuton(textStyle:const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 16),)
          ),
        ],
      ),
    );

    if (products.isNotEmpty) {
      content = Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              products[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              products[index].price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.add_circled),
                            ),
                            Text(
                              (products[index].quantity).toString(),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.minus_circle),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(248, 169, 142, 1),
                  Color.fromRGBO(244, 197, 152, 0.544),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                //color: Color.fromARGB(255, 242, 205, 194),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child:  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'SubTotal',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 18, color: Colors.black54),), 
                      ),
                      trailing: Text(
                        '50\$',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 18, color: Colors.black54),),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Delivery',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 18, color: Colors.black54),),
                      ),
                      trailing: Text(
                        '6\$',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 18, color: Colors.black54),),
                      ),
                    ),
                    const Divider(color: Colors.black54),
                    ListTile(
                      title: Text(
                        'Total',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(
                            fontSize: 24,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),),
                      ),
                      trailing: Text(
                        '56\$',
                        style:GoogleFonts.neuton(textStyle:const TextStyle(
                            fontSize: 24,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Cart',
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
        body: content);
  }
}
