import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:great_santorini/customs/primary_color.dart';
class Omma extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/omma.jpg",
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
              minChildSize: 0.05,
              maxChildSize: 0.6,
              initialChildSize: 0.05,
              builder: (context, controller) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: SingleChildScrollView(
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                          color: Colors.black,
                          indent: 100,
                          endIndent: 100,
                          height: 30,
                          thickness: 1.6,
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Omma Hotel",style: TextStyle(fontSize: 30,fontFamily: "Righteous"),),
                            FavoriteButton(
                                iconDisabledColor: primaryColor,
                                iconColor: Colors.grey,
                                iconSize: 30,
                                isFavorite:true,
                                valueChanged:(){}
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              "description :",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Righteous"),
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text(
                          "Just a 5-minute walk of the centre of Oía Village of Santorini and surrounded by greenery, Santo Maris Oia Luxury Suites & Spa offers views of the Aegean Sea, 5 infinity pools and a 24-hour fitness...",style: TextStyle(fontSize: 20,fontFamily: "Satisfy"),),
                        SizedBox(height: 20,),

                        Text("Price", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Righteous"),),
                        SizedBox(height: 10,),
                        Text("150\$", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Satisfy"),),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(

                              radius: 30,
                              backgroundColor:primaryColor,
                              child:Icon(Icons.arrow_back,size: 20,color:Colors.white,)),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
