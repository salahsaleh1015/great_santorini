import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:great_santorini/customs/primary_color.dart';

class CustomResturant extends StatelessWidget {
  CustomResturant({
    required this.name,
    required this.image,
  });
  // int num = 5;
  late final String name, image;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio: 1 / 1,
      actions: [
        IconSlideAction(
          color: primaryColor,
          icon: Icons.favorite,
          caption: "favorite",
        )
      ],
      child: GestureDetector(
        onTap: (){},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.favorite_outlined,
                        color: primaryColor,
                      ),
                      Text('4'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
