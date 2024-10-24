import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class Staggered extends StatelessWidget {
  const Staggered({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        itemCount: 8,
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                gradient:const LinearGradient(colors: [
                    Color.fromRGBO(248, 169, 142, 1),
                      Color.fromRGBO(244, 197, 152, 0.544),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(25)),
            child: Image.asset('images/${index + 1}.png'),
          );
        });
  }
}
