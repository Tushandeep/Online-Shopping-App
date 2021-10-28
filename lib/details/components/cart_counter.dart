import 'package:flutter/material.dart';
import 'package:online_shopping_app/constants/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({ Key? key }) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 32,
          width: 40,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed:() {
              setState(() {(numOfItems > 1) ? numOfItems-- : numOfItems;});
            },
            child: const Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            (numOfItems <= 9) ? '0$numOfItems' : '$numOfItems',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 32,
          width: 40,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed:() {
              setState(() {numOfItems++;});
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}