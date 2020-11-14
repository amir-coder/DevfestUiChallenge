import 'package:flutter/material.dart';
import 'package:food_order/models/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_order/models/labeledPic.dart';


Widget offersHandler(LabeledPic labeledPic){
  return Column(
    children: [
      Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(labeledPic.imgPath),fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Text(labeledPic.label,
        style: GoogleFonts.poppins(),
      ),
      Text('Chinese, South indian',
        style: GoogleFonts.poppins(color: grey0),
      ),
    ],
  );
}



Widget nearMeHandler(LabeledPic labeledPic){
  return Row(
    children: [
      Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(labeledPic.imgPath),fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(labeledPic.label,
                style: GoogleFonts.poppins()
              ),
            ],
          )
        ],
      )
    ],
  );
}