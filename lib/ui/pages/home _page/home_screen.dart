import 'package:flutter/material.dart';
import 'package:untitled/ui/pages/home%20_page/best_sell_sec.dart';
import 'catogories_list.dart';
import 'new_arrival_sec.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(width: 20),
            NewArrival(),
            const SizedBox(width: 10),
            const CatogoriesList(title: "Best Seller"),
            const SizedBox(width: 10),
            BestSell(),
          ],
        ),
      ),
    );
  }
}
