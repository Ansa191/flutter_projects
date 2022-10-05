import 'package:flutter/material.dart';
import 'package:lil_sikh_application/constants.dart';
import 'package:lil_sikh_application/screens/details_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kdefaultPaddin / 2,
          mainAxisSpacing: kdefaultPaddin / 4,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, item) => ItemCard(press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> new DetailsScreen(index:item)));}, index: item),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Function() press;
  final int index;

  const ItemCard({Key? key, required this.press, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Image.asset(images[index]),
      ),
    );
  }
}
