import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carusel extends StatefulWidget {
  const Carusel({super.key});

  @override
  State<Carusel> createState() => _CaruselState();
}

class _CaruselState extends State<Carusel> {
  int _activeIndex = 0;
    final slideImgs = [
      'slide1',
      'slide2',
      'slide3',
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CarouselSlider.builder(
            itemCount: slideImgs.length,
            itemBuilder: (context, index, realIndex) {
              final imgs = slideImgs[index];
              return buildImage(imgs, index);
            },
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _activeIndex = index;
                });
              },
            ),
          ),
        ),
        //****************/ three dots of indicator
        Container(
          //alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(top: 5),
          child: buildIndicator(),
        ),
      ],
    );
  }
      //container for slider
  Widget buildImage(String slideImgs, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'images/$slideImgs.jpg',
            fit: BoxFit.cover,
          ),
        ),
      );

// method of dot indicator
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: _activeIndex,
      count: slideImgs.length,
      effect: const JumpingDotEffect(
        dotHeight: 10,
        dotWidth: 10,
        dotColor: Color.fromARGB(255, 231, 222, 220),
        activeDotColor: Color.fromARGB(255, 252, 147, 115),
      ),
    );
  }
}
