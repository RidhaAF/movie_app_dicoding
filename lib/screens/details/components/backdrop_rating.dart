import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(movie.backdrop),
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  kDefaultShadow,
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star_fill.svg'),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '${movie.rating}/',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: kTextColor,
                              ),
                            ),
                            TextSpan(
                              text: '10\n',
                              style: GoogleFonts.poppins(
                                color: kTextColor,
                              ),
                            ),
                            TextSpan(
                              text: '${movie.numOfRatings}',
                              style: GoogleFonts.poppins(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        color: kTextLightColor,
                      ),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        'Rate This',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: kTextColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: movie.metascoreRating > 50
                              ? Color(0XFF51CF66)
                              : Colors.orange.shade700,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          '${movie.metascoreRating}',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        'Metascore',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kTextColor,
                        ),
                      ),
                      Text(
                        '${movie.criticsReview} critic review',
                        style: GoogleFonts.poppins(
                          color: kTextLightColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
