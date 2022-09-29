import 'package:flutter/material.dart';
import 'package:togoparts/constants.dart';
import 'package:togoparts/more_activities.dart';


class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
   int _selectedItem=0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin/2),
      child: ListView.separated(
        itemBuilder: (context, index)=> ListTile(
          onTap: (){
            setState(() {
              _selectedItem= index;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MoreActivitiesScreen(item: _selectedItem,),),);
            });
          },
         leading: Image.asset(images[index]),
          title: Text(text[index],),
        ) ,
        separatorBuilder: (context, index)=> Divider(),
        itemCount: text.length,
      ),
    );
  }
}




