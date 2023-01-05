import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes1.dart';
import 'Detailed_page_two/detal_screen_new1.dart';

class BestClothes extends StatelessWidget {
  final Clothes1 clothes1;

  const BestClothes({required this.clothes1});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreenBest(clothes1: clothes1,)));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Image.asset(clothes1.imageUrl, fit: BoxFit.cover),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                clothes1.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                clothes1.subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                clothes1.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(right: 20.0, top: 10.0),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite, color: Colors.red, size: 15),
          ),
        ],
      ),
    );
  }
}
