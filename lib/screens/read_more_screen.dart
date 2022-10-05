import 'package:flutter/material.dart';
import 'package:lil_sikh_application/constants.dart';
class ReadMore extends StatelessWidget {
  const ReadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Image.asset(
                "icons/back_icon.png",
                fit: BoxFit.cover,
                height: 20,
                width: 20,
              ),
            ),
            SizedBox(width: 10,),
            Text(
              "BACK",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],),
        ),
        body: Body(),
      ),
    );
  }
}
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultPaddin),
      child: Column(
        children: [
          buildContainer("This pangti (line is from Sri Guru Granth Sahib Jee:"
             +" Ang (limb/page): 1340"+
         " Raag (medley to create the mood): Prabhati (seriousness mood)"+
         " Author: Guru Arjun Dev Jee – the fifth Guru"),
          buildContainer("Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath.")
        ],
      ),
    );
  }

  Container buildContainer(text) {
    return Container(
      padding: EdgeInsets.all(kdefaultPaddin/2),
         child: Padding(
            padding: const EdgeInsets.all(kdefaultPaddin),
          child: Text(text,
              textAlign: TextAlign.left,style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),),
          ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'icons/english_language_box.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

