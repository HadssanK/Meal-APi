import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myfirstfast/myreuse.dart';
import 'package:myfirstfast/myservices.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Salarzi Hotel",style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.deepOrangeAccent,
        ),),
      ),
      body:FutureBuilder(
          future: MyService.apifetch(),
          builder: (context, snapshot) {
            Map map = jsonDecode(snapshot.data);
            List Mylist = map["meals"];
            return ListView.builder(
              itemCount: Mylist.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Myoutput(
                        strMeal: Mylist[index]["strMeal"],
                        strMealThumb: Mylist[index]["strMealThumb"],
                    ),

                  );

                },

            );


          },

      ) ,

    );
  }
}


