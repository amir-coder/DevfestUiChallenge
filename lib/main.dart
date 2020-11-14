import 'package:flutter/material.dart';
import 'package:food_order/screens/ExploreScreen.dart';
import 'package:food_order/screens/OfferScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=>Explore(),
      '/offer': (context)=>Offer(),
    }
  ));
}


//useful data

//colors:

