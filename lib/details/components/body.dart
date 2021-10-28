import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/details/components/add_to_cart.dart';
import 'package:online_shopping_app/details/components/color_and_size.dart';
import 'package:online_shopping_app/details/components/counter_with_fav_button.dart';
import 'package:online_shopping_app/details/components/description.dart';
import 'package:online_shopping_app/details/components/product_tile_with_image.dart';
import 'package:online_shopping_app/models/product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPadding, right: kDefaultPadding), 
                  height: size.height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: kDefaultPadding),
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding),
                      const CounterWithFavButton(),
                      const SizedBox(height: kDefaultPadding),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTileWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}