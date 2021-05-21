import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';
import 'package:movie_app_dicoding/screens/details/details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(movie: movie),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [kDefaultShadow],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movie.poster),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                movie.title,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: kTextColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  '${movie.rating}',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: kTextLightColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
