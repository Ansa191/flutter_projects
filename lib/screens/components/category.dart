import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List categories = ['Handbags', 'Jewellery', 'Footwears', 'Dresses', 'Tops'];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, item) => buildCategory(item),
        ),
      ),
    );
  }

  Widget buildCategory(int item) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedItem=item;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[item],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedItem==item ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:kDefaultPaddin/4), //5 from top
              height: 2,
              color: selectedItem==item? Colors.black: Colors.transparent,
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
