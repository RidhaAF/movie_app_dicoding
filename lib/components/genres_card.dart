import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key key, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: kFillStarColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: GoogleFonts.poppins(
          color: kFillStarColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
