import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeup/model/product.dart';
import 'package:makeup/screens/details.dart';

import 'package:makeup/widgets/product_grid.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    required this.title,
    required this.products,
  });

  final String title;
  final List<Product> products;

  void onSelectProduct(BuildContext context, Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailsScreen(product: product),
      ),
    );
  }

//if doesnot work take the body ,make it another widget and define final Product product
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title,style: GoogleFonts.neuton(textStyle: TextStyle()),),
        ),
        body: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => ProductGrid(
            product: products[index],
            selectedProduct: (context, product) =>
                onSelectProduct(context, product),
          ),
        ));
  }
}
