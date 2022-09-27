import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/details/components/cart_button.dart';

import '../../../constants.dart';
class Cart_Counter extends StatefulWidget {
  const Cart_Counter({Key? key}) : super(key: key);

  @override
  State<Cart_Counter> createState() => _Cart_CounterState();
}

class _Cart_CounterState extends State<Cart_Counter> {
  int isNum = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Cart_button(
          press: () {
            if (isNum > 1) {
              setState(() {
                isNum --;
              });
            }
          },
          icon:Icons.remove,
        ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
    child: Text(
    isNum.toString().padLeft(2, '0'),
    style: Theme.of(context).textTheme.headline5,
    ),
    ),        Cart_button(
          press: () {
            setState(() {
              isNum ++;
            });
          },
          icon: Icons.add,

        ),
      ],
    );
  }
}

