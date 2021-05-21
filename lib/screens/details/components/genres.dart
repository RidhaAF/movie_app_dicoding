import 'package:flutter/material.dart';
import 'package:movie_app_dicoding/components/genres_card.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        kDefaultPadding / 2,
        kDefaultPadding,
        kDefaultPadding / 2,
      ),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genre.length,
          itemBuilder: (context, index) => GenreCard(
            genre: movie.genre[index],
          ),
        ),
      ),
    );
  }
}
