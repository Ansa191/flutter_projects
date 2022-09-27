import 'package:flutter/material.dart';

import '../../../constants.dart';
class Cart_button extends StatelessWidget {
  final Function() press;
  final IconData icon;

  const Cart_button({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(icon,color: kTextColor,
        ),
      ),
    );
  }
}
