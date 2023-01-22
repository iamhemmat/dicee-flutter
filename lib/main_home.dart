import 'dart:math';

import 'package:flutter/material.dart';

class MainLudo extends StatefulWidget {
  const MainLudo({Key key}) : super(key: key);

  @override
  State<MainLudo> createState() => _MainLudoState();
}

class _MainLudoState extends State<MainLudo> {

  Random r1 = Random();
  Random r2 = Random();


  int d1 = 1;
  int d2 = 2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(

        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
           Expanded(
            flex: 1,
             child:  InkWell(
               onTap: (){
               setState(() {
                 d1 =r1.nextInt(6)+1;
               });
               },
               child: Image.asset('assets/images/dice$d1.png'),
             )
           ),
           SizedBox(
             width: 15,
           ),
           Expanded(
             flex:1,
             child:  InkWell(child: Image.asset('assets/images/dice$d2.png'),
             onTap: (){
               setState(() {
                 d2= r1.nextInt(6)+1;
               });
             },
             ),
           ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
