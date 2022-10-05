import 'package:flutter/material.dart';
import 'package:lil_sikh_application/constants.dart';
import 'package:lil_sikh_application/screens/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  const DetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(context),
        body: Deatils_Body(item:index),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: Image.asset(
                  "assets/icons/back_icon.png",
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(title[index].toString(),
               ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            height: 20,
            width: 20,
            child:Image.asset("assets/icons/read_icon.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
            child: SizedBox(
              height: 20,
              width: 20,
              child:Image.asset("assets/icons/share_icon.png"),
            ),
          ),
        ],

      );
  }
}
