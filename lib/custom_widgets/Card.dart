import 'package:flutter/material.dart';

import '../constants.dart';

class CardItem extends StatelessWidget {
  final String drugName;
  final String description;
  final String type;
  final String price;
  final String image;

  CardItem({this.drugName, this.description, this.type, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset('assets/$image'),
              ),
            ),
            Text(
              drugName,
              style: kBigBlackText,
            ),
            Text(
              description,
              style: kSmallGreyText,
            ),
            Text(
              type,
              style: kSmallGreyText,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Text(
                  'N$price',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
