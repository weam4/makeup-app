import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeup/model/product.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid(
      {super.key, required this.product, required this.selectedProduct});

  final Product product;
  final void Function(BuildContext context, Product product) selectedProduct;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectedProduct(context, product);
      },
      //splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 250, 228, 222),
                Color.fromARGB(255, 252, 147, 115),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(159, 158, 158, 158),
                //blurStyle: BlurStyle.outer,
                spreadRadius: 2,
                blurRadius: 5,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 95,
                child: Image.asset(
                  product.imageUrl,
                  //width: 300,
                  //height: 200,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      product.title,
                      style: GoogleFonts.neuton(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product.price,
                        style: GoogleFonts.neuton(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Icon(Icons.add),
                        ),
                      )
                      /*ElevatedButton(
                            
                              onPressed: () {},
                              child: const Icon(Icons.add,size:20,color: Color.fromARGB(255, 252, 147, 115),),
                            ),*/
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
