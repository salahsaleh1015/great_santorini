import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_santorini/customs/primary_color.dart';
class Road extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height*.4,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.only( bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/gg.jpg"),fit: BoxFit.cover,)),
      ),
        SizedBox(height: 10,),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(

           children: [
           Text("Greece",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: "Righteous",color: primaryColor),),
             Text("incredible Santorini",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Righteous"),),
           Text("Sailmyth Catamaran Cruises invites you to be part of the unique view of the island of Santorini.   Combine luxury and action and turn your vacation into an unforgettable experience.",style: TextStyle(fontFamily: "Satisfy"),),
           Text("Swim in the crystal clear blue waters of the world famous Red and White beach.  Explore the numerous natural caves which are all around the coastline. ",style: TextStyle(fontFamily: "Satisfy"),),
           Text("Visit the breathtaking Black Mountain and enjoy sailing inside the historical volcanic caldera before you swim in the hotsprings.",style: TextStyle(fontFamily: "Satisfy"),),
           Text("Book now a private catamaran cruise and make your day a fairytale.  ",style: TextStyle(fontFamily: "Satisfy"),),

         ],),
       )
      ],
      ),
    );
  }
}
