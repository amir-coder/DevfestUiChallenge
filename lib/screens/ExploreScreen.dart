import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_order/models/handlers.dart';
import 'package:food_order/models/labeledPic.dart';
import 'package:food_order/models/style.dart';
import 'package:google_fonts/google_fonts.dart';


class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

 
String getNewLineString() {
    var readLines = ['Explore Our','Delicious Offers'];
    StringBuffer sb = new StringBuffer();
    for (String line in readLines) {
      sb.write(line + "\n");
    }
    return sb.toString();
}



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,size: 30,color: grey0,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications ,size: 30,color: grey0,),
                        ),
                      ],
                    ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(getNewLineString(),
                textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    fontSize: 28,
                  ),
                ),
              ),
              ListView(
                children: map(offersPics, offersHandler),
                scrollDirection: Axis.horizontal,
              )
            ],
          ),
          padding: const EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}

