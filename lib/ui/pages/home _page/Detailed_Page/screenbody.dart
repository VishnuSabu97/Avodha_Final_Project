import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';
import 'add_to cart.dart';
import 'colour_and _size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_with_image.dart';


class ScreenBody extends StatelessWidget {
  final Clothes clothes;

  const ScreenBody({ required this.clothes});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left:20,
                    right:20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(clothes: clothes),
                      const SizedBox(height: 10),
                      Description(clothes: clothes),
                      const SizedBox(height: 10),
                      CounterWithFavBtn(),
                      const SizedBox(height: 10),
                      AddToCart(clothes: clothes),
                    ],
                  ),
                ),
                ProductTitleWithImage(clothes: clothes,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}