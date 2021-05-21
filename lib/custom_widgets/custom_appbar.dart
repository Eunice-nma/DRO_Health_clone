import 'package:dro_health/pages/details_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomAppbar extends StatelessWidget {

 final Widget sizedBox;

 CustomAppbar({this.sizedBox});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //TO CREATE A SPACE THAT IS HALF OF THE SCREEN, MINUS THE SIZE OF THE CONTAINER, SO ITS AT THE EXACT CENTER
        // SizedBox(width: MediaQuery.of(context).size.width/2 - 40),
        sizedBox,
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Bag',
          style: kSmallWhiteText,
        ),
        Spacer(),
        // SizedBox(width: MediaQuery.of(context).size.width/2),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            //borderRadius: BorderRadius.circular(30),
          ),
          child: Text('${bagItem.length}'),
        ),
      ],
    );
  }
}
