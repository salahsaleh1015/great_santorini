import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_santorini/customs/primary_color.dart';


class CustomHotelColumn extends StatelessWidget {
final String image;
final String name;

  const CustomHotelColumn({required this.image,required this.name}) ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .30,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(32),
    image: DecorationImage(image:AssetImage(image),fit: BoxFit.cover,
            ),
    ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.star,
              color: primaryColor,
            ),
            Icon(Icons.star, color: primaryColor),
            Icon(Icons.star, color: primaryColor),
            Icon(Icons.star, color: primaryColor),
            Icon(Icons.star, color: primaryColor),
          ],
        )
      ],
    );
  }
}
