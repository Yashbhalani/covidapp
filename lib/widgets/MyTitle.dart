import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data.dart';

class MyTitle extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;

  const MyTitle({Key key, this.image, this.textTop, this.textBottom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
              alignment: Alignment.center,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                  Color(0xFF3383CD),
                  Color(0xFF3383CD),
                ]),
                image: DecorationImage(image: AssetImage("assets/images/virus.png"),
                )
              ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:20),
                  Expanded(
                    child: Stack(
                      children:<Widget>[
                        SvgPicture.asset(image,
                        width:230,
                        fit:BoxFit.fitWidth,
                        alignment:Alignment.topCenter,),
                    Positioned(
                      top: 20,
                      left: 150,
                      
                      child:Text(
                        "$textTop \n$textBottom",
                        
                        style: TextStyle(
                           fontSize: 22,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontFamily: 'Poppins'
                         ),
                      ) ,
                    
                    ),
                    Container(),
                      ]
                    )
                    
                    
                    
                    ),


                ],
              ),
              
              // padding: EdgeInsets.all(10) ,
              // child: Text(DataApp.quote,
              // style: TextStyle(color:Colors.white,
              // fontWeight:FontWeight.bold,
              // fontSize:30,)
              )
      
    );
              
                 
      
    
  }
}