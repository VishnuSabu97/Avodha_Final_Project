import 'package:flutter/material.dart';
import '../../models/clothes1.dart';
import 'best_clothes.dart';

class BestSell extends StatelessWidget {
  BestSell({Key? key}) : super(key: key);

  final clothesList1 = Clothes1.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: clothesList1.length,
        itemBuilder: (context, index) {
          return BestClothes(clothes1: clothesList1[index]);
        },
      ),
    );
  }
}
