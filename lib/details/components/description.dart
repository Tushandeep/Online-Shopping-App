import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(product.description, style: const TextStyle(height: 1.5)),
    );
  }
}