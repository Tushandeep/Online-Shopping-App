import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/details/details_screen.dart';
import 'package:online_shopping_app/models/product.dart';
import 'package:online_shopping_app/widgets/categories.dart';
import 'package:online_shopping_app/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index]
                    )
                  )
                )
              )
            ),
          ),
        ),
      ],
    );
  }
}