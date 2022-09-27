import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/products.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function() press;
  final key;
   ItemCard({
     this.key,
    required this.product,
     required this.press,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPaddin),
                child: Hero(tag: "${product.id}",
                    child: Image.asset(product.image.toString())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title.toString(),
              style: TextStyle(
                color: kTextColor,
              ),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
