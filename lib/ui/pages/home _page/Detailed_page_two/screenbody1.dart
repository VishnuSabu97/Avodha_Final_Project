import 'package:flutter/material.dart';
import '../../../models/clothes1.dart';
import 'add_to cart1.dart';
import 'colour_and _size1.dart';
import 'counter_with_fav_btn1.dart';
import 'description1.dart';
import 'product_with_image1.dart';


class ScreenBody extends StatelessWidget {
  final Clothes1 clothes1;

  const ScreenBody({ required this.clothes1});
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
                     ColorAndSize1(clothes1: clothes1),
                      SizedBox(height: 10),
                      Description1(clothes1: clothes1),
                      SizedBox(height: 10),
                      CounterWithFavBtn(),
                      SizedBox(height: 10),
                      AddToCart(clothes1: clothes1),
                    ],
                  ),
                ),
                ProductTitleWithImage1(clothes1: clothes1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}