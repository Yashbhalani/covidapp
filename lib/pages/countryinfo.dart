import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryInfo extends StatefulWidget {
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo> {
  List countrydata;

  fetchCountryData() async{
    http.Response response = await http.get("https://corona.lmao.ninja/v2/countries");
    setState(() {
      countrydata = json.decode(response.body);
      print('success');
    });
  }

   @override
  void initState() {
    fetchCountryData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Status",style: TextStyle(fontFamily: 'Poppins'),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed:(){})
        ],
      ),
      body: countrydata == null ?Center(child: CircularProgressIndicator(),):
      ListView.builder(
      itemCount: countrydata==null?0:countrydata.length,
      itemBuilder: (context,index){
        return Card(
                  child: Container(
            height: 130,
            decoration: BoxDecoration(
              color:Colors.white,
              boxShadow: [
                BoxShadow(color:Colors.grey[100],
                blurRadius: 10,
                offset: Offset(0, 10),
              
              
              )]
            ),
            child: Row(
              children:<Widget>[
                Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Text(countrydata[index]['country'],style: TextStyle(color:Colors.black,fontFamily: 'Poppins'),),
                Image.network(countrydata[index]['countryInfo'] ['flag'], height: 50, width: 60,)
                   

                ],),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal:10),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children:<Widget>[
                //       Text(countrydata[index]['country'].toString(),style:TextStyle(fontWeight: FontWeight.bold,)),
                //       Image.network(countrydata[index]['countryInfo'] ['flag'], height: 50, width: 60,)
                //     ]
                //   ),

                // ),

                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('CONFIRMED '+countrydata[index]['cases'].toString(),style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontFamily: 'Poppins'),),
                      Text('ACTIVE  '+ countrydata[index]['active'].toString(),style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue,fontFamily: 'Poppins'),),
                      Text('RECOVERED '+countrydata[index]['recovered'].toString(),style: TextStyle(fontWeight:FontWeight.bold,color: Colors.green,fontFamily: 'Poppins'),),
                      Text('DEATHS  ' + countrydata[index]['deaths'].toString(),style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[800],fontFamily: 'Poppins'),),
                    ]
                  ) 
                )
              ]
            ),

            
          ),
        );
      },
      
      
    ) ,
    ); 
    
    
  }
}