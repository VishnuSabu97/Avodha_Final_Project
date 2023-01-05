import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';
import 'catogories_list.dart';
import 'clothes_item.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CatogoriesList(title: 'New Arrival'),
        SizedBox(
          height: 250,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  ClothesItem(clothes: clothesList[index]),
              separatorBuilder: (_, index) => const SizedBox(
                    width: 0.1,
                  ),
              itemCount: clothesList.length),
        )
      ],
    );
  }
}
