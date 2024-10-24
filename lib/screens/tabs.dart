import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:makeup/providers/cart_provider.dart';
import 'package:makeup/screens/cart.dart';

import 'package:makeup/screens/favorite.dart';

import 'package:makeup/screens/home.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:makeup/providers/favorite_provider.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();
    if (_selectedPageIndex == 1) {
      final cartProduct = ref.watch(cartProductsProvider);
      activePage = CartScreen(title: 'cart', products: cartProduct);
    }

    if (_selectedPageIndex == 2) {
      final favoriteProduct = ref.watch(favoriteProductsProvider);
      activePage = FavoriteScreen(title: 'fav', products: favoriteProduct);
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: CurvedNavigationBar(
        
        color: const Color.fromARGB(255, 252, 147, 115),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        index: _selectedPageIndex,
        animationDuration: const Duration(milliseconds: 300),
        onTap: _selectedPage,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
