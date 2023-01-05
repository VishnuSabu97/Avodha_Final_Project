import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';
import 'Detailed_Page/detal_screen_new.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;

  const ClothesItem({required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailScreenNew(
                    clothes: clothes,
                  )));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image:
                          DecorationImage(image: AssetImage(clothes.imageUrl)),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite,
                          color: Colors.red, size: 15),
                    ),
                  ),
                ],
              ),
              Text(
                clothes.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                clothes.subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                clothes.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
