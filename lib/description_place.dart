import 'dart:ui';

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  //const DescriptionPlace({Key? key}) : super(key: key);
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3),
        child: Icon(
          Icons.star,
          color:Color(0XFFf2C611),
        ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3),
        child: Icon(
          Icons.star_half,
          color:Color(0XFFf2C611),
        ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3),
        child: Icon(
          Icons.star_border,
          color:Color(0XFFf2C611),
        ),
    );

    final titleStars = 
    Row (
      children: <Widget> [
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
            bottom: 10
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
          
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border],
          ),
        ],
    );

    final descriptionText = Container(
          margin:  const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 10,
            bottom: 10
          ),
          child: Text(
          descriptionPlace,
          style : const TextStyle(
            fontSize: 19,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
            ),
            textAlign: TextAlign.left,
          ),
    );

    return Column(
      children: [
        titleStars,
        descriptionText
      ],
    );
  }
}