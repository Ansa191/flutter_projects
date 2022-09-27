import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/products.dart';
import 'package:online_shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
const DetailsScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg",
        color: Colors.white,),
        onPressed: (){Navigator.pop(context);},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
            ),
          onPressed: (){},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
            ),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPaddin/2,),
      ],
    );
  }
}
