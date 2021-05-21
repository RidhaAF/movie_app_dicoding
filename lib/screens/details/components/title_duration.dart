import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';

class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: kTextColor,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: GoogleFonts.poppins(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      '${movie.rate}',
                      style: GoogleFonts.poppins(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      '${movie.duration}',
                      style: GoogleFonts.poppins(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
