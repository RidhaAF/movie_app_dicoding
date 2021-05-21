import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app_dicoding/constants.dart';
import 'package:movie_app_dicoding/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBgColor,
      brightness: Brightness.dark,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding / 2),
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
