import 'package:flutter/material.dart';
import 'package:great_santorini/customs/custom_hotel_column.dart';
import 'package:great_santorini/customs/primary_color.dart';
import 'package:great_santorini/view/ambassador.dart';
import 'package:great_santorini/view/costa%20grand.dart';
import 'package:great_santorini/view/omma.dart';
import 'package:great_santorini/view/santomaris.dart';

import 'canavas.dart';
class BestHotel extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: 17,vertical: 20),
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Best",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,fontFamily: "Righteous"),),
                Text("5",style: TextStyle(fontSize: 50,color: primaryColor,fontWeight: FontWeight.bold,fontFamily: "Righteous"),)


              ],
            ),
          ),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Santomaris()));
            },
            child: CustomHotelColumn(
              image: "assets/santomaris.jpg",
              name: "Santomaris",
            ),
          ),
          SizedBox(height: 20,),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Canavas()));
             },
            child: CustomHotelColumn(
              image: "assets/canavas.jpg",
              name: "Canavas",
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CostaGrand()));
            },
            child: CustomHotelColumn(
              image: "assets/costa grand.jpg",
              name: "Costa grand",
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Omma()));
            },
            child: CustomHotelColumn(
              image: "assets/omma.jpg",
              name: "Omma",
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ambassador()));
            },
            child: CustomHotelColumn(
              image: "assets/ambassador.jpg",
              name: "Ambassador",
            ),
          ),


        ],
      ),
    );
  }
}
