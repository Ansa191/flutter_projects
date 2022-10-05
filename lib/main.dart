import 'package:flutter/material.dart';
import 'package:lil_sikh_application/constants.dart';
import 'package:lil_sikh_application/screens/language.dart';
import 'package:lil_sikh_application/screens/main_screen_body.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: buildAppBar(),
          body: Body(),
        ),
      )
  );
}
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
      child: GestureDetector(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LanguageScreen(),),);},
        child: SizedBox(
          height: 20,
          width: 20,
          child:Image.asset("assets/icons/setting_icon.png"),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text("LIL' SIKHS DAILY PRAYER"),
    actions: [
      SizedBox(
        height: 20,
        width: 20,
        child:Image.asset("assets/icons/message_icon.png"),
      ),
      Settings(),
    ],
  );
}