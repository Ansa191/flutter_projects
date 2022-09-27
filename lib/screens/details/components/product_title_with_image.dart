import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';

class ProductTitle extends StatelessWidget {
  final Product product;
  const ProductTitle({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Professional Handbag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title.toString(),
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image.toString(),fit: BoxFit.fill,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
