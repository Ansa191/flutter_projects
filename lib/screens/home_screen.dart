import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: (){},
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg",
          color: kTextColor,),
        onPressed: (){},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/cart.svg",
          color: kTextColor,),
        onPressed: (){},
      ),
      SizedBox(width: kDefaultPaddin/2,),
    ],
    );
  }
}
