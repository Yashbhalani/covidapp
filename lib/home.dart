import 'dart:convert';

import 'package:covidapp/pages/countryinfo.dart';
import 'package:covidapp/widgets/MyTitle.dart';
import 'package:covidapp/widgets/affectedcountries.dart';
import 'package:covidapp/widgets/cards.dart';
import 'package:covidapp/widgets/info.dart';
import 'package:covidapp/widgets/worlddata.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  
  Map data;
  List countryData;
  String url = 'https://corona.lmao.ninja/v2/all';
  fetchData() async{
    http.Response response = await http.get(url);
    setState(() {
      data = json.decode(response.body);
    });
  }

  fetchCountry() async{
  http.Response response = await http.get("https://corona.lmao.ninja/countries?sort=cases");
    setState(() {
      countryData = json.decode(response.body);
    });
    
  }

  @override
  void initState() {
   
    fetchData();
    fetchCountry();
    super.initState();

  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
         IconButton(icon: Icon(Icons.info), onPressed: () {

         },
         padding: EdgeInsets.only(left:5),
         
         )        ],
        centerTitle:false,
         
        title: Text('COVID-19'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            
  MyTitle(
    image: "assets/icons/Drcorona.svg",
    textTop: "All you need",
    textBottom: "is stay at home.",
  ),       
            
  Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
    Text("International Scenario",
    style:TextStyle(color: Colors.black,fontSize:16,fontWeight:FontWeight.bold,fontFamily: 'Poppins')),
    //SizedBox(width: 100,),
    GestureDetector(
      onTap: ()  {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CountryInfo()
        )
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        
        padding: EdgeInsets.all(10),
        child: Text("Summary",style:TextStyle(color: Colors.white,fontSize:16,fontWeight:FontWeight.bold,fontFamily: 'Poppins')),

        
      ),
    ),
      ],
       ),
              
              ),
            //SizedBox(height:10),
            
            data==null ? CircularProgressIndicator():World(dataDisplay: data,),
            SizedBox(height: 10.0,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:10.0),
             child:Text("Most affected countries",
               style:TextStyle(color: Colors.black,fontSize:25,fontWeight:FontWeight.bold,fontFamily: 'Poppins')
               ),

             ),
            
             countryData==null?Container():Affected(countrylist : countryData),
            //InfoPart(),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardData(
                    name: 'FAQS',
                    icon:FontAwesomeIcons.questionCircle,
                  ),
                  CardData(
                    name: 'DONATE',
                    icon:FontAwesomeIcons.donate ,
                  ),
                  CardData(
                    name: 'MYTHS',
                    icon:FontAwesomeIcons.newspaper ,
                  ),
                  // CardData(
                  //   name: 'General\nCheck Up',
                  //   icon:Icons.alarm ,
                  // ),
                ],

              ),
            ),
            SizedBox(height:10),

          ]
        ),
      ),
      
    );
  }
}


