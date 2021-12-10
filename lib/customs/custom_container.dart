import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_santorini/customs/primary_color.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final String image, name;


  CustomContainer({required this.height, required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: (){

            },
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image,),
                  fit: BoxFit.cover,
                ),
              ),
              height: height,
              width: 140,

            ),
          ),
          SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 44,
          ),
          Row(
            children: [
              Text(
               name,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
             FavoriteButton(
               iconDisabledColor: primaryColor,
               iconColor: Colors.grey,
               iconSize: 20,
                 isFavorite:true,
                 valueChanged:(){}
             ),
            ],
          )
        ],
      ),
    );
  }
}
