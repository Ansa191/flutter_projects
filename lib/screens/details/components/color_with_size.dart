import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';


class Color_with_Size extends StatelessWidget {
  const Color_with_Size({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Row(
                children: [
                  ColorDot(
                    color: Colors.black,
                  ),
                  ColorDot(
                    color: Colors.green,
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Colors.purple,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: kDefaultPaddin,),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Size", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: kTextColor),),
                Text("${product.size} cm", style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),),
              ],
            )
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}