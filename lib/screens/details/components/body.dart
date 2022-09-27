import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app/screens/details/components/cart_counter.dart';
import 'package:online_shop_app/screens/details/components/color_with_size.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  //height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: kDefaultPaddin),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Color_with_Size(product: product),
                      productDescription(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Cart_Counter(),
                          buildHeart(),
                        ],
                      ),
                      Add_to_Cart(product: product),
                    ],
                  ),
                ),
                ProductTitle(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildHeart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        width: 30,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/icons/heart.svg",
          ),
        ),
      ),
    );
  }

  Padding productDescription() {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddin / 2),
      child: Text(
        "${product.description}",
        style: TextStyle(
          color: kTextColor,
          wordSpacing: 2,
          letterSpacing: 0.5,
          height: 1.5,
        ),
      ),
    );
  }
}
