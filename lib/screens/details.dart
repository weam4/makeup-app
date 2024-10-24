import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeup/model/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:makeup/providers/cart_provider.dart';
import 'package:makeup/providers/favorite_provider.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteProducts = ref.watch(favoriteProductsProvider);
    final isFavorite = favoriteProducts.contains(product);

    final cartProduct = ref.watch(cartProductsProvider);
    final inCart = cartProduct.contains(product);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 252, 147, 115),
                Color.fromARGB(255, 250, 228, 222),
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                final wasAdded = ref
                                    .read(favoriteProductsProvider.notifier)
                                    .toggleProductFavoriteStatus(product);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    duration: const Duration(milliseconds: 800),
                                    content: Text(
                                      wasAdded
                                          ? 'Added to Favorite Successfully'
                                          : 'Product Removed',
                                      style: GoogleFonts.neuton(
                                          textStyle:
                                              const TextStyle(fontSize: 14)),
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                final addToCart = ref
                                    .read(cartProductsProvider.notifier)
                                    .toggleProductCartStatus(product);
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    duration: const Duration(milliseconds: 800),
                                    content: Text(
                                      addToCart
                                          ? 'Added To Cart Successfully'
                                          : 'Item Rremoved',
                                      style: GoogleFonts.neuton(
                                          textStyle:
                                              const TextStyle(fontSize: 14)),
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(
                                inCart
                                    ? Icons.shopping_cart
                                    : Icons.shopping_cart_outlined,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  padding: const EdgeInsets.all(10),
                  //color: Colors.deepPurple,
                  child: Image.asset(
                    product.imageUrl,
                    //width: double.infinity,
                    height: 500,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.add)),
                         Text(
                          '1',
                          style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.minus)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.title,
                            style: GoogleFonts.neuton(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 252, 147, 115),
                            ),
                            child:  Row(
                              children: [
                                const Icon(Icons.star),
                                Text('4.5',style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 16)),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit',
                        style: GoogleFonts.neuton(textStyle:const TextStyle(fontSize: 16),),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 252, 147, 115),
                          foregroundColor: Colors.black,
                          //minimumSize:const Size(300, 60),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                        ),
                        onPressed: () {},
                        child:  Center(
                          child: Text(
                            'Add To Cart',
                            style:GoogleFonts.neuton(textStyle:const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
