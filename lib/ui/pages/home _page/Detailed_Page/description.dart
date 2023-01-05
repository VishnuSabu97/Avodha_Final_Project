import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';


class Description extends StatelessWidget {
  const Description({
    required this.clothes,
  });

  final Clothes clothes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        clothes.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}