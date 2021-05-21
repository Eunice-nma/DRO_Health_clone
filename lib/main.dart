import 'package:dro_health/pages/home.dart';
import 'package:dro_health/pages/details_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',

  routes: {
    '/': (context) => Home(),
    '/details': (context) => DetailsPage()
  },
));
