import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: kTextColor,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: kTextLightColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
