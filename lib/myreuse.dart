import 'package:flutter/material.dart';
class Myoutput extends StatelessWidget {

  String strMeal;
  String strMealThumb;

  Myoutput({required this.strMeal,required this.strMealThumb});



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
        ),

        Positioned(
        left: 18,
        top: 20,
         child: Row(
           children: [
    // Image Container
    Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
    fit: BoxFit.fill,
    image: NetworkImage(strMealThumb)),
    color: Colors.red,
    ),
    ),
             Container(
               margin: EdgeInsets.only(left: 20),
               child: Text(strMeal,style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w200
               ),),
             )




      ]
    ),
    ),
    ]
    );
  }
}
