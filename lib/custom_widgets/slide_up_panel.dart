import 'package:dro_health/pages/details_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_appbar.dart';
import 'drag_handler.dart';

class BuildSlidingPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: kDarkPurple,
          borderRadius: BorderRadius.circular(
              25),
        ),
        child: Column(
          children: [
            Center(child: dragHandler()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: CustomAppbar(
                  sizedBox: SizedBox(height: 0,),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(8),
              child: Text('Tap on an items for add, remove and delete options', style: kSmallBlackText,),
            ),
            BagList()
          ],
        ),
      ),
    );
  }
}

class BagList extends StatelessWidget {

  // final String image;
  // final String name;
  // final String type;
  // final  int price;
  // final int packNum;
  //
  // const BagList({this.type, this.image, this.price, this.name, this.packNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/folic-acids.jpeg'),
          ),
          SizedBox(width: 15,),
          Text('1X', style: kSmallWhiteText,),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vitamin c', style: kSmallWhiteText,),
              Text('capsule', style: kSmallWhiteText,),
            ],
          ),
          Spacer(),
          Text('N550', style: kSmallWhiteText,)
        ],
      ),
    );
  }
}