import 'package:flutter/material.dart';

class World extends StatelessWidget {
  final Map dataDisplay;

  const World({Key key, this.dataDisplay}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2),
        children: <Widget>[
          StatusData(
            title: "CONFIRMED", cardColor:Colors.black , textcolor:Colors.white ,count: dataDisplay['todayCases'].toString(),
          ),

          StatusData(
            title: "ACTIVE", cardColor:Colors.red[900] , textcolor:Colors.white,count: dataDisplay["active"].toString(),
          ),
          
          StatusData(
            title: "RECOVERED", cardColor:Colors.green[900] , textcolor:Colors.white ,count: dataDisplay["recovered"].toString(),
          ),

          
          StatusData(
            title: "DEATHS", cardColor:Colors.black54 , textcolor:Colors.white ,count: dataDisplay["deaths"].toString(),
          ),
        ],
         ),

    );
  }
}

class StatusData extends StatelessWidget {
 
 final Color cardColor;
 final Color textcolor;
 final String title;
 final String count;

 const StatusData({
   this.cardColor,
   this.textcolor, this.title,this.count
 });


  @override
   Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10),
      height: 80,
      //color: cardColor,
      width: width/2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          
          Text(title,style: TextStyle(fontWeight:FontWeight.bold,
          fontSize:16,color: textcolor,
          ),),
         Text(count,style: TextStyle(fontWeight:FontWeight.bold,
          fontSize:16,color: textcolor,
          ),),
 
 
 
        ]
      ),

    );
  }
}