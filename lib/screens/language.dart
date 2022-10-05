import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(context),
      ),
    );
  }

  Center buildBody(context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              width: size.width/1.6,
              child: Image.asset("icons/english_button.png"),
            ),
            SizedBox(
              width: size.width/1.6,
              child: Image.asset("icons/spanish_button.png"),
            ),
            Spacer(),
          ],
        ),
      );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset('icons/back_icon.png'),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "SAVE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
