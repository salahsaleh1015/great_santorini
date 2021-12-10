import 'package:flutter/material.dart';
import 'package:great_santorini/customs/custom_container.dart';
import 'package:great_santorini/customs/primary_color.dart';
class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
          ),
        ],
        title: Text(
          "Discover",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 35, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text(
                        'Get Inspired ,',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 31,
                            fontWeight: FontWeight.w500,fontFamily: "Righteous"),
                      ),
                      Text(
                        "find new Trails ",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,fontFamily: "Righteous"),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CustomContainer(
                          name: "oia",
                          image:"assets/aa.jpg" , height: 220,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "vira",
                          image:"assets/bb.jpg" , height: 200,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "Meconos",
                         image: "assets/cc.jpg",   height: 250,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "perissa",
                         image: "assets/dd.jpg",   height: 200,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomContainer(
                          name: "akrotini",
                      image: "assets/ee.jpg", height: 180,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "santorini",
                         image: "assets/ff.jpg", height: 210,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "Megalochory",
                         image: "assets/gg.jpg",  height: 220,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "Domaine Sigalas",
                          image: "assets/hh.jpg",  height: 200,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomContainer(
                          name: "oia",
                         image: "assets/ii.jpg", height: 180,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
