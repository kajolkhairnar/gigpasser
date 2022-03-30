import 'dart:async';


import 'package:flutter/material.dart';

import 'main.dart';

void main() {
   runApp(
     MaterialApp(
       home: Splash_Screen(),
       
       
     )
   );
}

class Splash_Screen extends StatefulWidget{
  @override
  State<StatefulWidget>createState()
  {

        return  Splash_Screen_State();
  }
}

class Splash_Screen_State extends State<Splash_Screen> {


  @override

  void initState(){
    super.initState();

    loadData();
  }
  @override

  Widget build(BuildContext context){


     return Container(

       decoration: BoxDecoration(
         image: DecorationImage(
           image:AssetImage('assets\images\book-reading-glasses-learning.jpg'),

             fit: BoxFit.cover
         )
       ),
       
     );

  }

  Future<Timer>loadData() async {
    return new Timer(Duration(seconds:3 ),onDoneLoading);
  }

   onDoneLoading() async {

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>MyApp()));
   }
}