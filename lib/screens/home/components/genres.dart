import 'package:flutter/material.dart';
import 'package:movie_app_dicoding/components/genres_card.dart';
import 'package:movie_app_dicoding/constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Adventure',
      'Crime',
      'Drama',
      'Fantasy',
      'Mystery',
      'Sci-Fi',
      'Thriller',
    ];
    return Container(
      margin: EdgeInsets.fromLTRB(
        0,
        kDefaultPadding / 2,
        kDefaultPadding,
        kDefaultPadding / 2,
      ),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(
          genre: genres[index],
        ),
      ),
    );
  }
}
