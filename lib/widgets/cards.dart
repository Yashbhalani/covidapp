import 'package:covidapp/pages/faqs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardData extends StatelessWidget {
  final String name;
  final IconData icon;
  //final Color color;

  const CardData({Key key, this.name, this.icon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
     return GestureDetector(
       onTap: () => {
         if(name == 'DONATE')
         {
            launch("https://www.youtube.com/watch?v=XFGf_jMJSfw&t=2766s")
         }

        else if(name =='FAQS'){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>  FaqPage())
              
              
              )
          },
            

       },

      child: Container(
        margin: EdgeInsets.all(8),
        height: 170,
        width: 150,
        child: Stack(
          //alignment: Alignment.bottomLeft,
          fit: StackFit.loose,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                child: Container(
                  height: 156,
                  width: 134,
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(name, style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontFamily: 'Poppins')),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
                child: Container(
                  height: 84,
                  width: 84,
                  child: Center(
                    child: Icon(icon,size: 44,color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
    ),
    // switch (name) {
    //      case 'FAQS':
    //       onTap: (){
    //       launch("https://github.com/mlayah/covid-19-ui-concept/blob/master/lib/widgets/service_card.dart");
    //     };
           
    //        break;


    //        case 'DONATE':
    //       onTap: (){
    //       launch("https://www.youtube.com/watch?v=XFGf_jMJSfw&t=2766s");
    //     };
           
    //        break;
    //      default:
    //    }
  
     );
  
     
  }
    
}