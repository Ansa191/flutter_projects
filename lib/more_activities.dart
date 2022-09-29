import 'package:flutter/material.dart';
import 'package:togoparts/constants.dart';
import 'package:togoparts/main.dart';
import 'package:togoparts/more.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoreActivitiesScreen extends StatelessWidget {
  final int item;
  const MoreActivitiesScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.black,
          title: Text(text[item].toString().toUpperCase()),
        ),
        body: WebView(
          initialUrl: more[item],
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}


