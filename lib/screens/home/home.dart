import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/widgets/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  
  
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: kTextColor),
        splashRadius: 24,
        onPressed: () {

        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor),
          splashRadius: 24,
          onPressed: () {

          },
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: kTextColor),
          splashRadius: 24,
          onPressed: () {

          },
        ),
        const SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}