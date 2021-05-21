import 'package:flutter/material.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';
import 'package:movie_app_dicoding/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Body(movie: movie),
    );
  }
}
