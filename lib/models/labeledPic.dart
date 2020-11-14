
import 'package:flutter/cupertino.dart';

class LabeledPic {
  String imgPath;
  String label;

  //constructor
  LabeledPic({this.imgPath,this.label});
}


List <LabeledPic> offersPics = <LabeledPic>[
  LabeledPic(imgPath: 'assets/Images/Rectangle 9.png',label: 'Almost Famous'),
  LabeledPic(imgPath: 'assets/Images/Rectangle 10.png',label: 'Royal Parck'),
  LabeledPic(imgPath: 'assets/Images/Rectangle 12.png',label: 'Chef Choice'),
  LabeledPic(imgPath: 'assets/Images/Rectangle 17360.png',label: 'Egg Fav'),
];



List <LabeledPic> nearMePics = <LabeledPic>[
  LabeledPic(imgPath: 'assets/Images/Mask Group 1.png',label: 'Royal Food Court'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 5.png',label: 'Good Something'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 6.png',label: 'Something Good'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 7.png',label: 'Burger Junction'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 8.png',label: 'Tasty Spot'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 27.png',label: 'Food is Good'),
  LabeledPic(imgPath: 'assets/Images/Mask Group 28.png',label: 'Food is Life!'),
];


List <T>map<T>(List list,Function handler){
  List <T>result = [];
  for (var i=0; i < list.length; i++){
    result.add(handler(list[i]));
  }
  return result;
}
