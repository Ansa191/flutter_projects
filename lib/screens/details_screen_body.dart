import 'package:flutter/material.dart';
import 'package:lil_sikh_application/constants.dart';
import 'package:lil_sikh_application/screens/read_more_screen.dart';
class Deatils_Body extends StatelessWidget {
  final item;
  const Deatils_Body({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
        child: Column(
          children: [
            hindi_text_box(),
            buildImage(),
            buildLastContainer(context),
          ],
        ),
      ),
    );
  }

  Padding buildImage() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin/2),
            child: Image.asset(single_images[item],
            height: 250,),
          );
  }

  Container buildLastContainer(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(top:kdefaultPaddin,bottom: kdefaultPaddin),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
                  child: Text(" Those who listen to the Guru, eat and are totally satisfied.",
                    textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 18,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin, vertical: kdefaultPaddin/2),
                  child: Text("Nanak bhusaria pakaaeeaa paaeeaa thaale mahe.",
                    textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 18,

                    ),),
                ) ,
                TextButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadMore(),),);},
                  child: Text("FULI SHABAD HERE",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.blue),),
                )

              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/icons/english_language_box.png'),
                fit: BoxFit.fill,
              ),
            ),
          );
  }

  Padding hindi_text_box() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin),
            child: Container(
              alignment: Alignment.center,
              child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin),
                child: Column(
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(top: kdefaultPaddin/2, left:kdefaultPaddin,right: kdefaultPaddin),
                     child: Text("Nanak bhusaria pakaaeeaa paaeeaa thaale mahe.",
                     textAlign: TextAlign.center,style: TextStyle(
                       fontSize: 20,
                       color: Colors.grey,
                     ),),
                   ) ,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin),
                      child: Image.asset("assets/icons/play_icon.png",
                      height: 40,
                      width: 40,),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/icons/hindi_language_box.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
  }
}
