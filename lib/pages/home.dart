import 'package:dro_health/custom_widgets/Card.dart';
import 'package:dro_health/custom_widgets/custom_appbar.dart';
import 'package:dro_health/custom_widgets/slide_up_panel.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../custom_widgets/circle_icons.dart';
import '../custom_widgets/search_fields.dart';
import 'package:dro_health/Drugs.dart';
import 'details_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearching = false;
  List<Drugs> items = Drugs.drugs;
  String searchValue = '';
  final controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: BorderRadius.circular(25),
      minHeight: 65,
      maxHeight: MediaQuery.of(context).size.height - 50,
      panelBuilder: (scrollController) => BuildSlidingPanel(
          // scrollController: scrollController
          ),
      body: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            '${items.length} item(s)',
            style: kBigBlackText,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleIcon(
                    icon: Icons.sort,
                    onPress: () {},
                  ),
                  CircleIcon(
                    icon: Icons.filter_alt_outlined,
                    onPress: () {},
                  ),
                  CircleIcon(
                    icon: Icons.search,
                    onPress: () {
                      setState(() {
                        isSearching = !isSearching;
                      });
                    },
                  ),
                ],
              ),
              Container(
                child: isSearching
                    ? SearchField(
                        textEditingController: controller,
                        onPress: () {
                          setState(() {
                            isSearching = false;
                          });
                        },
                        // onChanged: (){
                        //   setState(() {
                        //     searchValue = controller.text;
                        //     print(searchValue);
                        //   });
                        // },
                      )
                    : null,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: items.map((drug) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                name: drug.drugName,
                                description: drug.description,
                                type: drug.type,
                                image: drug.image,
                                price: drug.price,
                              ),
                            ),
                          );
                        },
                        child: CardItem(
                          drugName: '${drug.drugName}',
                          description: '${drug.description}',
                          type: '${drug.type}',
                          price: (drug.price).toString(),
                          image: '${drug.image}',
                        ),
                      );
                    }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

