import 'package:flutter/material.dart';

class CatogoriesList extends StatelessWidget {
  final String title;

  const CatogoriesList({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              )),
          Row(
            children: [
              const Text(
                'View all',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.arrow_forward,
                    color: Colors.lightBlue, size: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
