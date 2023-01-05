import 'package:flutter/material.dart';
import 'package:untitled/ui/models/clothes.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    required this.clothes,
  }) ;

  final Clothes clothes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Colors.cyan,
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart_sharp
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.lightBlue
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy  Now".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
