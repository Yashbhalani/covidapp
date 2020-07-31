import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class InfoPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget>[
          Container(

            padding: EdgeInsets.symmetric(vertical:10,horizontal:10),
            margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("FREQUENTLY ASKED QUESTIONS", style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                Icon(Icons.arrow_forward_ios,color:Colors.white),
              ],

            ),
          ),

          Container(

            padding: EdgeInsets.symmetric(vertical:10,horizontal:10),
            margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("DONATE", style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                Icon(Icons.arrow_forward_ios,color:Colors.white),
              ],

            ),
          ),

          GestureDetector(
              onTap : (){
                launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
              },
              child: Container(
              padding: EdgeInsets.symmetric(vertical:10,horizontal:10),
              margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("MYTHS", style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios,color:Colors.white),
                ],

              ),
            ),
          ),


        ]
      ),
    );
  }
}