import 'package:flutter/material.dart';
import 'package:iu_design/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/people.jpg', 'Willian Alias', '1 review - 5 photos',
            'Amazing Place'),
        Review('assets/img/ann.jpg', 'Anahi Salgado Dias',
            '1 review - 5 photos', 'Amazing Place'),
        Review('assets/img/girl.jpg', 'Dowili Hela', '1 review - 5 photos',
            'Amazing Place'),
      ],
    );
  }
}
