import 'dart:io';

import 'package:flutter/material.dart';
import 'package:togoparts/constants.dart';
import 'package:togoparts/more.dart';
import 'package:togoparts/webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
  int _selectedIndex = 0;

  List<String> list = ['Home', 'Board', 'Market', 'Post Ad', 'More'];

  @override
  Widget build(BuildContext context) {
    var items = [
      'Login',
      'Switch Country',
    ];
    List img = ["assets/icons/login.png", "assets/icons/country.png"];
    List urls = [
      HomeWebView(),
      BoardWebView(),
      MarketWebView(),
      PostWebView(),
      More(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: (_selectedIndex!=2)?Text(list[_selectedIndex].toString().toUpperCase()):BuildMenu(),
        actions: [
          SizedBox(
            child: Image.asset(appImages[0]),
            height: 27,
            width: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
            child: SizedBox(
              child: Image.asset(appImages[1]),
              height: 27,
              width: 27,
            ),
          ),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(children: [
                        Image.asset(img[0], height: 25, width: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(items[0],),
                        ),
                      ],),
                    ),
                PopupMenuItem(
                      child: Row(children: [
                        Image.asset(img[1], height: 25, width: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text(items[1]),
                        ),
                      ],),
                    ),

                  ]),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: urls[_selectedIndex],
    );
  }

  BottomNavigationBar buildBottomNavigationBar(context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.home_filled,
          ),
          label: list[0],
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.leaderboard_outlined,
          ),
          label: list[1],
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.wallet_travel_outlined,
          ),
          label: list[2],
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.post_add_rounded,
          ),
          label: list[3],
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.more_horiz_outlined,
          ),
          label: list[4],
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFF6871F),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}


class BuildMenu extends StatefulWidget {
  const BuildMenu({Key? key}) : super(key: key);

  @override
  State<BuildMenu> createState() => _BuildMenuState();
}

class _BuildMenuState extends State<BuildMenu> {
  @override
  Widget build(BuildContext context) {
    String? _value = 'MarketPlace';

    return Row(

      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new DropdownButton<String>(
          underline: SizedBox(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          dropdownColor: Colors.grey,
          icon: Image.asset("assets/icons/downArrow.png", height: 27,width: 27,),
          value: _value,
          items: <DropdownMenuItem<String>>[
            new DropdownMenuItem(
              child: new Text('MARKETPLACE'),
              value: 'MarketPlace',
            ),
            new DropdownMenuItem(
                child: new Text('BIKESHOPS'), value: 'Bikeshops',
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              _value= value;
            });
          },
        ),

      ],
    );
  }
}

