import 'package:flutter/material.dart';
import '../../../models/clothes1.dart';

class Description1 extends StatelessWidget {
  const Description1({
    required this.clothes1,
  });

  final Clothes1 clothes1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        clothes1.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
