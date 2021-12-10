import 'package:flutter/material.dart';
import 'package:great_santorini/customs/custom_resturant.dart';
import 'package:great_santorini/customs/primary_color.dart';
class BestResturant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Best",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600,fontFamily: "Righteous"),
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: 50,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,fontFamily: "Righteous"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomResturant(
                    name: "Selene",
                    image: "https://www.elitetraveler.com/wp-content/uploads/2020/04/bg-rst-img-7-632x474.jpg",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                    indent: 30,
                    endIndent: 0.1,
                    thickness: 1,
                  ),
                  SizedBox(height: 15,),

                  CustomResturant(
                    name: "Lycabettus",
                    image: "https://www.elitetraveler.com/wp-content/uploads/2017/10/Screenshot-2020-04-15-at-12.14.44-726x475.png",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                    indent: 30,
                    endIndent: 0.1,
                    thickness: 1,
                  ),
                  SizedBox(height: 15,),

                  CustomResturant(
                    name: "To Psaraki",
                    image: "https://www.elitetraveler.com/wp-content/uploads/2017/10/Screenshot-2020-04-15-at-12.04.14.png",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                    indent: 30,
                    endIndent: 0.1,
                    thickness: 1,
                  ),
                  SizedBox(height: 15,),

                  CustomResturant(
                    name: "Floga",
                    image: "https://www.elitetraveler.com/wp-content/uploads/2017/10/Screenshot-2020-04-15-at-12.02.18.png",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                    indent: 30,
                    endIndent: 0.1,
                    thickness: 1,
                  ),
                  SizedBox(height: 15,),

                  CustomResturant(
                    name: "La Maison ",
                    image: "https://www.elitetraveler.com/wp-content/uploads/2017/09/lamaisonrestaurant-563x544.jpg",
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
