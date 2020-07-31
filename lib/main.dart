import 'package:flutter/material.dart';
import 'home.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return DynamicTheme(
    //   data: (brightness){
    //     return ThemeData(
    //       primaryColor:Colors.black,
    //       fontFamily:'Circular',
    //       brightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
    //       scaffoldBackgroundColor: brightness==Brightness.dark?Colors.grey[900]:Colors.white,
    //     );
    //   },

    //     themedWidgetBuilder: (context,theme){
      return MaterialApp(
        title: 'Covid App',
        debugShowCheckedModeBanner: false,
        
        // theme: theme,
         
        
      home:HomePage(),); 
  }}