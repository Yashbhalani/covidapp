import 'package:covidapp/data.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Frequently Asked Questions',style: TextStyle(fontFamily: 'Poppins'),),
      ),

      body: ListView.builder(
        itemCount: DataApp.questionAnswers.length,
        itemBuilder: (context,index)
        {
          return ExpansionTile(
           //backgroundColor: Colors.blueGrey,
            title: Text( DataApp.questionAnswers[index]['question'],style: TextStyle(fontFamily: 'Poppins'), ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text( DataApp.questionAnswers[index]['answer'],style: TextStyle(color:Colors.black,fontFamily: 'Poppins'),)),
            ],
          
          
          
          );

        }
        
        
        ),


      
    );
  }
}