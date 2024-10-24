import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:makeup/model/product.dart';

class FavoriteProductNotifier extends StateNotifier<List<Product>> {
  FavoriteProductNotifier() : super([]); //initial value

  //method
  bool toggleProductFavoriteStatus(Product product) {
    final productIsFavorite = state.contains(product);

    //if it is fav we will remove it
    if (productIsFavorite) {
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

final favoriteProductsProvider =
    StateNotifierProvider<FavoriteProductNotifier, List<Product>>(
  (ref) => FavoriteProductNotifier(),
);
