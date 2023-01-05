import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    required this.clothes,
  });

  final Clothes clothes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            clothes.detailUrl,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            clothes.title,
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
                      text: "\$${clothes.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Hero(
                  tag: clothes.subtitle,
                  child: Image.asset(
                    clothes.imageUrl,
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
