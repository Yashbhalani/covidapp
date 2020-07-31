import 'package:flutter/material.dart';

class Affected extends StatelessWidget {
  final List countrylist;

  const Affected({Key key, this.countrylist}) : super(key: key);
  
  @override
   Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:10),
      height: 110.0,
         child: ListView.builder(
           //physics: NeverScrollableScrollPhysics(),
	      scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,index)
{
return Container(
margin: EdgeInsets.only(right: 20.0),
child:Card(
color: Colors.white,
child: Padding( 
padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
child:  Row(
              children: <Widget>[
                Image.network(countrylist[index]['countryInfo']['flag'],height: 25,),
                SizedBox(width:20),
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[
                    
      Text(countrylist[index]['country'].toString(), style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
                 //SizedBox(width:10),
                 Text('Deaths:-' + countrylist[index]['deaths'].toString(),
                 style: TextStyle(color:Colors.red,fontFamily: 'Poppins'),)

                  ]
                ),
              ],


),
      

 ),
      
),



);
}
)

);
   }}