import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/details/components/body.dart';
import 'package:online_shopping_app/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  
  const DetailsScreen({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
        splashRadius: 24,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white),
          splashRadius: 24,
          onPressed: () {

          },
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: Colors.white),
          splashRadius: 24,
          onPressed: () {

          },
        ),
        const SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}