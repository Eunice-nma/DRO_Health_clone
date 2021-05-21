import 'package:dro_health/constants.dart';
import 'package:dro_health/custom_widgets/MaterialButton.dart';
import 'package:dro_health/custom_widgets/details_container.dart';
import 'package:flutter/material.dart';
import '../Drugs.dart';
import '../bag-content.dart';



 List<Bag> bagItem = [];

class DetailsPage extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String type;
  final int price;

  DetailsPage(
      {Key key, this.image, this.description, this.type, this.name, this.price})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int packCount = 1;

  final String image;
  final String name;
  final String description;
  final String type;
  final int price;
  List<Drugs> items = Drugs.drugs;

  _DetailsPageState({this.image, this.description, this.type, this.name, this.price});


  showAlertBox(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: kPurple,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [Icon(Icons.shopping_bag), Text('${(bagItem.length).toString()}')],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset('assets/${widget.image}', width: 200, height: 200,),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "${widget.name}",
              style: kBigBlackText,
            ),
            Text(
              "${widget.type}",
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sold By',
                        style: kSmallGreyText,
                      ),
                      Text(
                        'Emzor Paracetamol',
                      ),
                    ])
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (packCount > 1) {
                              packCount--;
                            }
                          });
                        },
                      ),
                      Text(packCount.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            packCount++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Pack(s)',
                  style: kSmallGreyText,
                ),
                // SizedBox(
                //   width: 25.0,
                // ),
                Spacer(),
                Text(
                  'N' + (widget.price * packCount).toString(),
                  style: kBigBlackText,
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'PRODUCT DETAILS',
              style: kSmallGreyText,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      DetailsContainer(
                        icon: Icons.description,
                        detail: 'PACK SIZE',
                        description: '3x10',
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      DetailsContainer(
                        icon: Icons.filter_center_focus_outlined,
                        detail: 'PRODUCT ID',
                        description: 'PTY56HI90',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  DetailsContainer(
                    icon: Icons.bike_scooter,
                    detail: 'DEPENDS ON',
                    description: 'Pack',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  DetailsContainer(
                    icon: Icons.sick,
                    detail: 'CONSTITUTION',
                    description: 'Paracetamol',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                '1 pack of paracetamol contains 15tablet',
                style: kSmallGreyText,
              ),
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomMaterialButton(
                  onPressed: () {
                    setState(() {
                      if(bagItem.contains(widget.name)){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertBox(
                              title: 'Item already added',
                              content: '${widget.name} has already been added to your bag',
                            );
                          },
                        );

                      }else{
                        bagItem.add(Bag(name: widget.name, price: widget.price*packCount, packCount: packCount, image: widget.image, type: type));
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertBox(
                              title: 'Successful',
                              content: '${widget.name} has been added to your bag',
                            );
                          },
                        );
                        print(bagItem);

                      }
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),

                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add To Bag',
                        style: kSmallWhiteText,
                      )
                    ],
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}




class AlertBox extends StatelessWidget {

  final String title;
  final String content;

  AlertBox({this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CustomMaterialButton(
          onPressed: (){Navigator.of(context).pop();},
          child: Text('Done', style: kSmallWhiteText,),
        )
      ],
    );
  }
}

