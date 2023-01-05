import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';

import 'screenbody.dart';

class DetailScreenNew extends StatelessWidget {
  final Clothes clothes;

  DetailScreenNew({super.key, required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.tealAccent),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('ShopZy',
            style: TextStyle(color: Colors.tealAccent, fontSize: 25)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_sharp, color: Colors.tealAccent),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_shopping_cart_rounded,
                color: Colors.tealAccent),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ScreenBody(clothes: clothes),
    );
  }
}
