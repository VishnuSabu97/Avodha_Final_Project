import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';

import '../../../models/clothes1.dart';


class ProductTitleWithImage1 extends StatelessWidget {
  const ProductTitleWithImage1({
    required this.clothes1,
  });

  final Clothes1 clothes1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
           clothes1.detailUrl,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            clothes1.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${clothes1.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Hero(
                  tag: clothes1.subtitle,
                  child: Image.asset(
                    clothes1.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}