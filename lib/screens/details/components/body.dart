import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';
import 'package:movie_app_dicoding/screens/details/components/backdrop_rating.dart';
import 'package:movie_app_dicoding/screens/details/components/cast_and_crew.dart';
import 'package:movie_app_dicoding/screens/details/components/title_duration.dart';
import 'package:movie_app_dicoding/screens/details/components/genres.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDuration(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              'Plot Summary',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: kTextColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: GoogleFonts.poppins(
                color: kTextLightColor,
              ),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          ),
        ],
      ),
    );
  }
}
