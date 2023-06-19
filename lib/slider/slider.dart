import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/constants.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width * 0.95, 
      child: Carousel(
        images: [
          Image.asset(
            'assets/images/kidimg1.jpg',
          ),
          Image.asset(
            'assets/images/kidimg1.jpg',
          ),
          Image.asset(
            'assets/images/kidimg1.jpg',
          ),
          Image.asset(
            'assets/images/kidimg1.jpg',
          ),
        ],
        hasBorderRadius: true,
        radius: Radius.circular(30),
        animationCurve: Curves.bounceIn,
        dotBgColor: Colors.transparent,
        dotIncreasedColor:kPrimaryColor,
        animationDuration: Duration(
          milliseconds: 800,
        ),
      ),
    );
  }
}
