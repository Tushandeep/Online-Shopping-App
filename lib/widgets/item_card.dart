import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag: "${product.id}",child: Image.asset(product.image))
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title, 
              style: const TextStyle(color: kTextLightColor)
            ),
          ),
          Text('\$ ${product.price}', style: const TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}