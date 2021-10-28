import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';
import 'package:online_shopping_app/details/components/color_dot.dart';
import 'package:online_shopping_app/models/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Color', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),),
              Row(
                children: const <Widget>[
                  ColorDot(color: Color(0xFF356C95), isSelected: true),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold,)
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}