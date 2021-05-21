import 'package:flutter/material.dart';

import '../constants.dart';


class DetailsContainer extends StatelessWidget {
  final IconData icon;
  final String detail;
  final String description;

  DetailsContainer({this.description, this.detail, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: kPurple,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail,
                style: kSmallGreyText,
              ),
              Text(description)
            ],
          )
        ],
      ),
    );
  }
}