import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';
class Add_to_Cart extends StatelessWidget {
  const Add_to_Cart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),

              ),),),
          child: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            color: product.color,),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/2),
            child: TextButton(
              onPressed: (){},
              child: Text("BUY NOW", style: TextStyle(
                  color: Colors.white
              ),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(product.color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
