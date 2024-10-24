import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:makeup/model/product.dart';

class CartProductNotifier extends StateNotifier<List<Product>> {
  CartProductNotifier() : super([]); //initial value

  //method
  bool toggleProductCartStatus(Product product) {
    final productIsInCart = state.contains(product);

    //if it is fav we will remove it
    if (productIsInCart) {
      state = state.where((p) => p.id != product.id).toList();
      return false;
    }
    //if it is not fav we will add it
    else {
      state = [...state, product];
      return true;
    }
  }
}

final cartProductsProvider =
    StateNotifierProvider<CartProductNotifier, List<Product>>(
  (ref) => CartProductNotifier(),
);
