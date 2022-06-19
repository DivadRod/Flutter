import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatefulWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review · 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment, {Key? key})
      : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 5, right: 3),
      child: Icon(
        Icons.star,
        color: Color(0XFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(top: 5, right: 3),
      child: Icon(
        Icons.star_half,
        color: Color(0XFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(top: 5, right: 3),
      child: Icon(
        Icons.star_border,
        color: Color(0XFFf2C611),
      ),
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(widget.pathImage)),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            widget.details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13,
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        Row(
          children: <Widget>[star, star, star, starHalf, starBorder],
        ),
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        widget.name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        widget.comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w600),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
